   M S B A M L   `   `   `  ����=  9UI, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null1clr-namespace:UI.UserControlsUI.UserControls  5      E'clr-namespace:UI.UIPresenter.ConvertersUI.UIPresenter.Converters  5      W0clr-namespace:UI.UIPresenter.ViewModels.Commands"UI.UIPresenter.ViewModels.Commands  5	      &     UI.UserControls.ContactsListItem   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      /localclr-namespace:UI.UserControls     5      >
converters'clr-namespace:UI.UIPresenter.Converters     5      Ecommands0clr-namespace:UI.UIPresenter.ViewModels.Commands     5	        � 	Resources  5       �� 
TargetType   Content �� Property �� Value  GrayBGBrush �� CornerRadius J� InputBindings d� MouseAction7   1UI.UIPresenter.ViewModels.Commands.CommonCommands   OpenUserInfo �� Command	 �� CommandParameter
 � ColumnDefinitions �� Orientation  DarkBgBrush J� Clip @� Center @� RadiusX @� RadiusY  LightGreenBrush K� ZIndex �� 	Converter9  3UI.UIPresenter.Converters.BoolToVisibilityConverter  LightGrayBgBrush �� ConverterParameter
 � Tag � ToolTip   InviteUserToChat  IconicButton   RemoveUserFromChat   DeleteFromContactList   AddToContactList   	StartChat �� Triggers :� RoutedEvent g� Duration �� 
TargetName �� TargetProperty  GrayBGHover	 �� To 
 GrayBG��%�  &	        7  7  7  7  7  7  7  7  7  7  7  7  �� 5   
   " ��6   .�5      ��  � �� 5      �� 5      .R�5      �� $��	Container��5   !   8��  $ 5��5   !   $	��0 3q�5   !    5      d� 5   "   $ 	LeftClicke�6/   # Z 6G   	 6�   �� *
UserInfo+._�5"      � 
 5$   "   �� 5'   &   $��* �67   �� 5*   &   $
��auto �67   .+�5/   "   �� $ 
Horizontal=�6-   .+�52   &   � .+�53   .   �� $��30��65   $
��10 5q�54   )   $��30��55   )   8�� $ 20��57   )   ._�59   .   � $��Center=�63   $��30��5:   3   $��30��5;   3   $��Center=�5<   3    5=   2   @� 5>   6   $ 15,15&�6F   $ 15Q�6U   $ 15Q�6b   .+�5@   2   �� $��Center=�5A   8   $��Center=�5B   8   ��5@   8   �� *ProfilePhoto+5B   8   5D   /   5F   +   �� 5H   *   8�� $��1q�5I   -   $��Bottom=�5J   -   $��Right=�5K   -   $��	0 0 10 10q�5L   -   8�� $��10��5O   -   $��10��5P   -   $ 5��5Q   -   $ 2��5R   -   y�5N   -   �� *
IsOnline+   5R   -   5T   '   �� 5W   &   $��Center=�5X   (   8�� ��5W   ,   �� *
UserName+5Y   (   5\   #   �� 5_   "   $ 
Horizontal=�6-   $
��10 0q�5a   -   $��1��5b   -   y�5`   -   �� *IfYou+   $
 true��.+�5d   &   �� $��InviteToGroup��6-   $ OrangeBrush��5e   -   $ Invite to the chat��5g   -   #��Z 5h   -   $	����5j   -   $	��8 5q�69   8�� ��5f   -   �� *
UserInfo+y�5i   -   �� *IsInviteList+   5m   '   �� 5o   &   $ 
Horizontal=�61   y�5p   1   �� *IsInviteList+   $
 true��.+�5r   *   � y�6/   �� *IsGroupContactsList+   .+�5t   .   �� $��RemoveFromGroup��65   $ Remove from the chat��5u   5   $ LightRedBrush��5v   5   #��Z 5y   5   $	����5z   5   $	��8 5q�6A   8�� ��5w   5   �� *
UserInfo+y�5x   5   �� *AreYouAdmin+   5}   /   5   +   �� 5�   *   $��DelateContact��61   $ Remove from the contacts��5�   1   $ LightRedBrush��5�   1   #��Z 5�   1   $	����5�   1   $	��8 5q�6=   8�� ��5�   1   �� *
UserInfo+y�5�   1   �� *IsYourContact+   �� 5�   *   $��
AddContact��61   #��Z 5�   1   $ Add to the contacts��5�   1   $ OrangeBrush��5�   1   $
��Bold"�5�   1   $	����5�   1   $	��8 5q�5�   1   8�� ��5�   1   �� *
UserInfo+y�5�   1   �� *IsYourContact+   $
 true���� 5�   *   $��	StartChat��61   #��Z 5�   1   $ 
Start chat��5�   1   $ LightBlueBrush��5�   1   $	����5�   1   $
��Bold"�5�   1   $	��8 5q�5�   1   8��	 ��5�   1   �� *
UserInfo+y�5�   1   �� *IsYourContact+   5�   1   5�   '   5�   #   5�      5�       5�      :� 5�      $ 
MouseEnter��6+   [�5�   "   �� 5�   &   .��5�   *   �� .��5�   .   �� $ 0:0:0.1D�6=   $ 	Container��6P   $1 +(Border.Background).(SolidColorBrush.Color)�6r   8 
 6�   5�   +   5�   '   5�      :� 5�      $ 
MouseLeave��6+   [�5�   "   �� 5�   &   .��5�   *   �� .��5�   .   �� $ 0:0:0.1D�6=   $ 	Container��6P   $1 +(Border.Background).(SolidColorBrush.Color)�6r   8  6�   5�   +   5�   '   5�      5�      5�      5�      5�      .��5�      �� #��[  6   5�      