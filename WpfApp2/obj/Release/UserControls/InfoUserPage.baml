   M S B A M L   `   `   `  ���� =  9UI, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null1clr-namespace:UI.UserControlsUI.UserControls  E'clr-namespace:UI.UIPresenter.ViewModelsUI.UIPresenter.ViewModels  E'clr-namespace:UI.UIPresenter.ConvertersUI.UIPresenter.Converters  W0clr-namespace:UI.UIPresenter.ViewModels.Commands"UI.UIPresenter.ViewModels.Commands  %    UI.UserControls.InfoUserControl   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     @d2http://schemas.microsoft.com/expression/blend/2008     /localclr-namespace:UI.UserControls     >
viewModels'clr-namespace:UI.UIPresenter.ViewModels     >
converters'clr-namespace:UI.UIPresenter.Converters     Ecommands0clr-namespace:UI.UIPresenter.ViewModels.Commands     .����    GrayBGBrush#��[    �� CornerRadius$  10��._��  � ColumnDefinitions �� $��* ��� $
��auto �.+��� $��20 80 10 80q�  TabControlStyle1#���  .@���   CustomTabPanel#��[ $��Contacts��y��� *IsYourAccaunt+ �� 	Converter 9  3UI.UIPresenter.Converters.BoolToVisibilityConverter  .��"   UI.UserControls.ContactsList   � DataContext �� *ContactsList+�� #��[ $��Change profile info��y��� *IsYourAccaunt+   .���� $��50 20q�$��Center=�.+��� -   $��	NameField��
 � Tag$ Change Name��$	��300��$
��Left=�$��0 0 0 30q�  RegularTextBox#��[ �� -   $��
EmailField��$ Change E-mail��$
��Left=�$	��300��$��0 0 0 30q�#��[ �� -   $��BioField��$ 
Change Bio��$
��Left=�$	��300��$��0 0 0 10q�#��[ �� $��0 0 0 20q�  RegularText#��[   LightRedBrush#��[ ���� *ChangeUserInfoErrorMessage+�� $��Right=�$��Bottom=�$	��130��$��0 30 0 0q�$��30��  RegularButton#��[ $��Save changes������ *ChangeUserInfo+��`�  `� 	Converter :   4UI.UIPresenter.Converters.ParametersToArrayConverter  .1���  �� ElementName$ 	NameField�� �� Path$
 Text��� $ 
EmailField��$
 Text��� $ BioField��$
 Text��� #��[ $��Groups��y��� *IsYourAccaunt+    �� ConverterParameter$
 true��.��    UI.UserControls.GroupsList  �� #��[ $��Change Password��y��� *IsYourAccaunt+   .���� $��50 20q�$��Center=�.+��� -   $��OldPassField��$ Old Password��$	��300��$
��Left=�$��0 0 0 30q�#��[ �� -   $��NewPassField��$ New Password��$	��300��$
��Left=�$��0 0 0 30q�#��[ �� -   $��RepeatPassField��$ Repeat New Password��$
��Left=�$	��300��$��0 0 0 10q�#��[ �� $��0 0 0 20q�#��[ #��[ ���� *ChangePassErrorMessage+�� $��Right=�$	��150��$��Bottom=�$��0 30 0 0q�$��30��#��[ $��Change Password������ *ChangeUserPass+��`�    .1��� $ OldPassField��$
 Text��� $ NewPassField��$
 Text��� $ RepeatPassField��$
 Text��� $��Center=�$��1��$
��20 0q�  DarkBgBrush#��[ $	��240��$  10��._��� $��10 20q�.+��� #��[  $  10��$	��150��._��� 	 �� Orientation$	 
Horizontal=�$��	30 2 30 2q�$��Center=�$��Center=�.+��� $	����$��Black"�$��0 0 10 0q�$��12(�$��Center=� 
 Sumbol#��[ �� $��	User Info��$��Center=� 	 LightGrayBgBrush#��[	 #��[ �� $	��100��$	��100��$��0 20 0 0q�$  50��#��[  �� #��[ $��0 5 0 0q�$��Center=�$��15(�#��[	 ���� *
UserName+�� #��[ $��Center=�$��	0 -10 0 0q�$��10(� 
 MiddleGrayBgBrush#��[
 ���� *Online+ 3   -UI.UIPresenter.Converters.DateToTextConverter  y��� *IsYourAccaunt+   $
 true���� $��0 10 0 0q�$��Center=�$	 
Horizontal=�y��� *IsYourAccaunt+   $
 true��.+��� $	����7   1UI.UIPresenter.ViewModels.Commands.CommonCommands
   AddToContactList#��Z
 $��Center=�$��Center=�$��Black"�$��8q�$��14(�$ OrangeBrush��  IconicButton#��[ ���� *
UserInfo+y��� *IsYourContact+   $
 true���� $	����$��Center=�$��Center=�   DeleteFromContactList#��Z $��8q�$��14(�$ LightRedBrush��#��[ y��� *IsYourContact+   ���� *
UserInfo+�� $	����   	StartChat#��Z $��Center=�$��Center=�$��8q�$��14(�$��Black"�$ LightBlueBrush��#��[ ���� *
UserInfo+�� $	 
Horizontal=�$��0 10 0 0q�$��Center=�.+��� #��[  $  20��$��0 0 10 0q�$��Center=�._��� $	����$��12(�  LightBlueBrush#��[ $��Center=�$��Center=�#��[ �� #��[  $  5��$	��180��._��� $��Center=�$
��10 5q�$
��Wrap=�$��10(�#��[	 ���� *Bio+�� $	 
Horizontal=�$��0 10 0 0q�$��Center=�.+��� #��[  $  20��$��0 0 10 0q�$��Center=�._��� $	����$��12(�#��[ $��Center=�$��Center=�#��[ �� #��[  $  5��$	��180��._��� $��Center=�$
��10 5q�$
��Wrap=�$��10(�#��[	 ���� *Email+