   M S B A M L   `   `   `  ���� =  9UI, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullE'clr-namespace:UI.UIPresenter.ConvertersUI.UIPresenter.Converters  1clr-namespace:UI.UserControlsUI.UserControls  E'clr-namespace:UI.UIPresenter.ViewModelsUI.UIPresenter.ViewModels  W0clr-namespace:UI.UIPresenter.ViewModels.Commands"UI.UIPresenter.ViewModels.Commands  "    UI.UserControls.ChatListItem   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     @d2http://schemas.microsoft.com/expression/blend/2008     >
converters'clr-namespace:UI.UIPresenter.Converters     /localclr-namespace:UI.UserControls     =	viewModel'clr-namespace:UI.UIPresenter.ViewModels     Ecommands0clr-namespace:UI.UIPresenter.ViewModels.Commands     $��60��  � 	Resources   �� 
TargetType   ContentControl �� Property �� Value �� 
TargetType  DarkBgBrush �� CornerRadius J� InputBindings d� MouseAction7   1UI.UIPresenter.ViewModels.Commands.CommonCommands   OpenChat	 �� Command
 �� CommandParameter � ColumnDefinitions  LightGrayBgBrush  MiddleGrayBgBrush  RegularText �� 	Converter3   -UI.UIPresenter.Converters.DateToTextConverter   OpenGroupInfo K� ZIndex  LightGreenBrush9  3UI.UIPresenter.Converters.BoolToVisibilityConverter  GrayBGBrush 
 Sumbol  LightBlueBrush<   6UI.UIPresenter.Converters.MessageStatusToIconConverter �� Triggers �� Value �� Binding �� 
TargetName :� RoutedEvent g� Duration �� 
TargetName �� TargetProperty 	 GrayBGHover	 �� To��%%  &	        7  7  7  7  7  7  7  7  7  7  7  7  7  7  7  7 	 �� " ��.���  � �� �� " ��.R��� $��
background��8��  $ 5 0 0 5�� d� $ 	LeftClicke�#	 Z 
 �� *	GroupData+._��� $��	container��
������ $ 5 0 0 5��._��  �� $��* ��� $��3* �.+�� $��1�� �� $��* ��� $��10 ��� $
��Auto �.+��� 8�� $��CharacterEllipsis=�$��0 3 0 0q�$��13(����� *
UserName+�� $��2��$��0 3 10 0q�$��10(�$	��Top=�$��Right=�8�� 8�� ���� *LastMessageTime+   � $��Bottom=�$��0 0 0 5q� d� $ 	LeftClicke�#	 Z 
 �� *	GroupData+.+��� $��OnlineCircle��$��14��$��0 0 7 3q�$��3q�8�� $ 2��$��Right=�$��Bottom=�$��14��8�� $ 25��y��� *
IsOnline+   �� $��Photo��$��40��$��40��8�� $ 25���� $��	MessageBG��$��1��$��30��$��Bottom=�$��0 0 10 7q�$ 
10 10 10 2��8�� ._��  �� $��* ��� $��27 �.+��� $��10 0 0 0q�$��13(�$��Center=�$��WordEllipsis=�8�� ���� *LastMessageText+�� 8��	 $��1��$��0 0 4 0q�8��
 $��Right=�$	��Top=�$��9(����� *MessageStatus+    �� $
 true�� �� *
IsSelected+.a��� $ 
background��8   � ���� $ 	MessageBG��8   � ���� $ Photo��8   � ���� $ OnlineCircle��8   � ��:� $ 
MouseEnter��.[��� .���� .���� $ 0:0:0.01D�$ 	container��$ Background.Color�8  :� $ 
MouseLeave��.[��� .���� .���� $ 0:0:0.01D�$ 	container��$ Background.Color�$ TransparentX�.���� #��[  