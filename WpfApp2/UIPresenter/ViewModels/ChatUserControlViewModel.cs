﻿using ClientLibs.Core;
using ClientLibs.Core.DataAccess;
using CommonLibs.Connections.Repositories;
using CommonLibs.Connections.Repositories.Tables;
using CommonLibs.Data;
using System;
using System.Collections.Generic;
using System.IO;
using System.Windows.Input;
using UI.InversionOfControl;
using UI.UIPresenter.ViewModels.Commands;
using WpfApp2;

namespace UI.UIPresenter.ViewModels
{
    public class ChatUserControlViewModel : BaseViewModel
    {
        
        #region Public Members

        public Contact Contact { get; set; }

        public Group CurrentChat { get; set; }

        /// <summary>
        /// Currently chosen attachments
        /// </summary>
        public ChatViewModel ChatViewModel => ApplicationService.GetChatViewModel;


        /// <summary>
        /// Command for send message button
        /// </summary>
        public ICommand SendMessage { set; get; }

        /// <summary>
        /// Toggle invite list visibility
        /// </summary>
        public ICommand InviteListButton { set; get; }

        /// <summary>
        /// Attaches file to a message
        /// </summary>
        public ICommand AttachFile { set; get; }

        /// <summary>
        /// If true shows invite list
        /// </summary>
        public bool ShowInviteList{ get; set; }

        /// <summary>
        /// Contain text of message from Typing Box
        /// </summary>
        public string MessageContent { get; set; } = String.Empty;

        /// <summary>
        /// List of all messages in the chat
        /// </summary>
        public MessageListViewModel MessageList { get; set; } = new MessageListViewModel();

        /// <summary>
        /// Invite list contacts
        /// </summary>
        public ContactsListViewModel ContactsInviteList { get; set; } = new ContactsListViewModel();


        public string GroupPhoto
        {
            get
            {
                var list = UnitOfWork.GetFilesByName(new List<string>() { CurrentChat.Image});
                return (list.Result)[0];
            }
        }


        /// <summary>
        /// Gets name of the group
        /// </summary>
        public string ChatName => CurrentChat?.Name;

        /// <summary>
        /// Gets count of online users except you
        /// </summary>
        public int UsersOnline => CurrentChat != null ? CurrentChat.UsersOnline - 1: 0;

        /// <summary>
        /// Define your status in a group
        /// </summary>
        public bool YouAnAdmin => CurrentChat != null? CurrentChat.AdminsIdList.Contains(UnitOfWork.User.Id) : false; 

        /// <summary>
        /// If true all users can send messages in the group
        /// </summary>
        public bool IsChat => CurrentChat != null? !CurrentChat.isChannel: false;

        /// <summary>
        /// Don't show type bar if it's channel and you're not an admin
        /// </summary>
        public bool ShowTypeBar => IsChat || YouAnAdmin;

        #endregion

        #region Public Methods

        /// <summary>
        /// Changes current chat
        /// </summary>
        /// <param name="group"></param>
        public void ChangeChat(Group group)
        {
            CurrentChat = group;

            //Cleat Message list and load messages
            MessageList = new MessageListViewModel();
            loadMessages();

            //Update UI
            OnPropertyChanged("ChatName");
            OnPropertyChanged("UsersOnline");
            OnPropertyChanged("IsChat");
        }

        #endregion

        #region Constructor


        public ChatUserControlViewModel()
        {
            //Set up handelrs
            ApplicationService.GetChatViewModel.OnCurrentChatChanged((sender, args) => ChangeChat(args));
            UnitOfWork.Database.MessagesTableRepo.AddDataChangedHandler((sender, args) => OnMessagesTableRepoChanged(sender, args));
            UnitOfWork.Database.GroupsTableRepo.AddDataChangedHandler((sender, args) => OnGroupsTableRepoChanged(sender, args));

            //Set up commands
            SendMessage = new RelayCommand(() => sendMessage());
            InviteListButton = new RelayCommand(() => inviteListButtonClick());
            AttachFile = new RelayCommand(() => attachFile());


            //Set current chat
            ChangeChat(ApplicationService.GetCurrentChoosenChat);

            ChatViewModel.Attachments = new List<string>();
        }

        #endregion

        #region Private Methods

        void attachFile()
        {
            var filePath = FileManager.OpenFileDialogForm("All fiels (*.*)|*.*");

            if (filePath != String.Empty)
            {
                bool add = true;
                foreach (var attachedFile in ChatViewModel.Attachments)
                    if (attachedFile == filePath)
                        add = false;

                if (add)
                {
                    ChatViewModel.Attachments.Add(filePath);
                    //Becouse Items is ObservableCollection we should update elements from the main thread
                    App.Current.Dispatcher.Invoke(() =>
                    {
                        ChatViewModel.AttachmentsList.Items.Add(new FilesListItemViewModel(filePath, true, false));
                    });
                }
            }
        }

        /// <summary>
        /// Togle visibility of invite list
        /// </summary>
        async void inviteListButtonClick()
        {

            ShowInviteList = !ShowInviteList;

            if(ShowInviteList)
                //Load contacts
                ContactsInviteList = new ContactsListViewModel(await UnitOfWork.GetUsersInfo(new List<int>(UnitOfWork.User.contactsIdList)), false, true);
        }

        void OnGroupsTableRepoChanged(object sender, DataChangedArgs<IEnumerable<Group>> args)
        {
            switch (args.Action)
            {
                case RepositoryActions.Update:
                    UpdateGroup((List<Group>)args.Data);
                    break;
                case RepositoryActions.Remove:
                    RemoveGroup((List<Group>)args.Data);
                    break;
                default:
                    break;
            }
        }

        private void RemoveGroup(List<Group> dataChanged)
        {
            foreach (var data in dataChanged)
            {
                //if deleted current chat
                if(CurrentChat.Id == data.Id)
                {
                    //Open user info page
                    CommonCommands.OpenUserInfo.Equals(UnitOfWork.User);
                    return;
                }

            }
        }

        private void UpdateGroup(List<Group> dataChanged)
        {
            foreach (var data in dataChanged)
                //If the group updated
                if (data.Id == CurrentChat.Id)
                {
                    //Set new chat
                    CurrentChat = data;

                    //Update UI
                    OnPropertyChanged("ChatName");
                    OnPropertyChanged("UsersOnline");
                    OnPropertyChanged("IsChat");
                }
        }

        void OnMessagesTableRepoChanged(object sender, DataChangedArgs<IEnumerable<Message>> args)
        {
            if (CurrentChat == null)
                return;

            switch (args.Action)
            {
                case RepositoryActions.Add:
                    AddMessagesToMessagesList((List<Message>)args.Data);
                    break;
                case RepositoryActions.Update:
                    UpdateMessagesInMessagesList((List<Message>)args.Data);
                    break;
                case RepositoryActions.Remove:
                    RemoveMessagesFromMessagesList((List<Message>)args.Data);
                    break;
                default:
                    break;
            }
        }

        /// <summary>
        /// Updates messages if they from the chat
        /// </summary>
        /// <param name="dataChanged"></param>
        private void UpdateMessagesInMessagesList(List<Message> dataChanged)
        {
            if (dataChanged == null)
                return;

            foreach (var data in dataChanged)
            {

                //If message from the chat
                if (data.ReceiverId == CurrentChat.Id)

                    //Find the message to update
                    for (int i = 0; i < MessageList.Items.Count; i++)
                    {

                        if (MessageList.Items[i].Message.Id == data.Id)
                        {
                            MessageList.Items[i].Message = data;
                            break;
                        }
                    }


            }
        }

        /// <summary>
        /// Removes messages if they from the chat
        /// </summary>
        /// <param name="dataChanged"></param>
        private void RemoveMessagesFromMessagesList(List<Message> dataChanged)
        {
            if (dataChanged == null)
                return;

            foreach (var data in dataChanged)
            {

                //If message from the chat
                if(data.ReceiverId == CurrentChat.Id)

                    //Find the message to delete
                    for(int i = 0; i < MessageList.Items.Count; i++)
                    {

                        if (MessageList.Items[i].Message.Id == data.Id)
                        {
                            //Becouse Items is ObservableCollection we should update elements from the main thread
                            App.Current.Dispatcher.Invoke(() =>
                            {
                                MessageList.Items.RemoveAt(i);
                            });

                            break;
                        }
                    }


            }
        }

        /// <summary>
        /// Adds messages if they from the chat 
        /// </summary>
        /// <param name="dataChanged"></param>
        private async void AddMessagesToMessagesList(List<Message> dataChanged)
        {
            if (dataChanged == null)
                return;

            foreach (var message in dataChanged)
            {
                if (CurrentChat.Id == message.ReceiverId)
                {
                    //get user info
                    var user = await UnitOfWork.GetUsersInfo(new List<int>() { message.SenderId });

                    //Update message
                    if (message.SenderId != UnitOfWork.User.Id)
                        if (message.Status == MessageStatus.Sended)
                        {
                            message.Status = MessageStatus.IsRead;
                            UnitOfWork.UpdateMessage(message);
                        }

                    //Becouse Items is ObservableCollection we should update elements from the main thread
                    await App.Current.Dispatcher.Invoke(async () =>
                    {
                        MessageList.Items.Add(new MessageListItemViewModel(user[0], message, UnitOfWork.User.Id == message.SenderId, CurrentChat.IsPrivateChat, await UnitOfWork.GetFilesByName(message.AttachmentsList)));
                    });

                }
            }

        }

        /// <summary>
        /// Loads all messages from the data base
        /// </summary>
        async void loadMessages()
        {
            //Get all messages whick match to the group Id
            var messages = UnitOfWork.Database.MessagesTableRepo.Find(MessagesTableFields.ReceiverId.ToString(), CurrentChat?.Id.ToString());

            //Get all users data from server
            var users = await UnitOfWork.GetUsersInfo(new List<int>(CurrentChat.MembersIdList));

            foreach (var message in messages)
                foreach (var user in users)
                    if(user.Id == message.SenderId)
                    {
                        //If it's chat and it's not you, than add to contact
                        if (CurrentChat.IsPrivateChat)
                            if (UnitOfWork.User.Email != user.Email)
                                Contact = user;

                        //Update message
                        if(message.SenderId != UnitOfWork.User.Id)
                            if (message.Status == MessageStatus.Sended)
                            {
                                message.Status = MessageStatus.IsRead;
                                UnitOfWork.UpdateMessage(message);
                            }

                        //Becouse Items is ObservableCollection we should update elements from the main thread
                        await App.Current.Dispatcher.Invoke(async () =>
                        {
                            MessageList.Items.Add(new MessageListItemViewModel(user, message, user.Email == UnitOfWork.User.Email, CurrentChat.IsPrivateChat, await UnitOfWork.GetFilesByName(message.AttachmentsList) ));
                        });
                    }
        }

        /// <summary>
        /// Sends message
        /// </summary>
        async void sendMessage()
        {
            if (CurrentChat == null || (this.MessageContent == null && ChatViewModel.Attachments.Count == 0))
                return;

            //Delete unnecessary spaces
            var text = System.Text.RegularExpressions.Regex.Replace(MessageContent, @"^(\s*)(\S*)(\s*)$", "$2");

            //Send command
            await UnitOfWork.SendMessage(new Message(UnitOfWork.User.Id, CurrentChat.Id, DataType.Text, DateTime.Now, text, MessageStatus.SendingInProgress, ChatViewModel.Attachments));

            MessageContent = "";
            ChatViewModel.Attachments = new List<string>();
            ChatViewModel.AttachmentsList = new FilesListViewModel();
        }

        #endregion
    }
}
