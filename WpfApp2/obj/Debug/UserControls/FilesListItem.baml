   M S B A M L   `   `   `  ����=  9UI, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null1clr-namespace:UI.UserControlsUI.UserControls  5      E'clr-namespace:UI.UIPresenter.ConvertersUI.UIPresenter.Converters  5      W0clr-namespace:UI.UIPresenter.ViewModels.Commands"UI.UIPresenter.ViewModels.Commands  5	      #    UI.UserControls.FilesListItem   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      /localclr-namespace:UI.UserControls     5      >
converters'clr-namespace:UI.UIPresenter.Converters     5      Ecommands0clr-namespace:UI.UIPresenter.ViewModels.Commands     5	        � 	Resources  5       �� 
TargetType   Content �� Property �� Value  GrayBGBrush �� CornerRadius J� InputBindings d� MouseAction7   1UI.UIPresenter.ViewModels.Commands.CommonCommands   OpenFile �� Command	 �� CommandParameter
 �� 	Converter9  3UI.UIPresenter.Converters.BoolToVisibilityConverter �� ConverterParameter � ColumnDefinitions �� Orientation  DarkBgBrush 
 Sumbol  LightBlueBrush  LightGrayBgBrush
 � Tag � ToolTip  IconicButton �� Triggers :� RoutedEvent g� Duration �� 
TargetName �� TargetProperty  GrayBGHover	 �� To 
 GrayBG��%j  &	        7  7  7  7  7  7  7  7  �� 5   
   " ��6   .�5      ��  � �� 5      �� 5      .R�5      �� $��	Container��5   !   8��  $ 5��5   !   $��5 3 5 3q�5   !    5      d� 5   "   $ 	LeftClicke�6/   # Z 6G   	 6}   �� *
FilePath+._�5"      � .+�5$   "   � y�6'   �� *ShowImagePreview+
   .+�5&   &   �� ��6,   �� *
FilePath+��6H   �� *
ImageWidth+��6h   �� *ImageHeight+5(   #   � 5*   "   y�6'   �� *ShowImagePreview+
   $
 true�� 5.   "   �� 51   &   $��* �67   �� 54   &   $
��auto �67   .+�59   "   �� $ 
Horizontal=�6-   .+�5<   &   � .+�5>   *   �� $��30��61   $
��10 5q�5?   )   $��30��5@   )   8�� $ 20��5B   )   ._�5C   .   �� $	����64   8�� $��Center=�5E   4   8�� $��Black"�5G   4   $��Center=�5H   4   $��15(�5I   4   5K   /   5L   +   5N   '   �� 5Q   &   $��Center=�5R   (   8�� ��5Q   ,   �� *
FileName+5S   (   5V   #   �� 5Y   "   $ 
Horizontal=�6-   $
��10 0q�5Z   -   $��1��5[   -   .+�5^   &   �� $��RemoveFromAttachments��6-   $ LightRedBrush��5_   -   $ Remove From attachments��5a   -   $	����5b   -   $
��Bold"�5c   -   $	��8 5q�5d   -   8�� ��5`   -   �� *RemoveAttachedFile+y�5e   -   �� *IsAttachmentsList+
   5f   -   5j   #   5l      5n      5p       5s      :� 5u      $ 
MouseEnter��6+   [�5w   "   �� 5x   &   .��5y   *   �� .��5z   .   �� $ 0:0:0.1D�6=   $ 	Container��6P   $1 +(Border.Background).(SolidColorBrush.Color)�6r   8  6�   5{   +   5|   '   5      :� 5�      $ 
MouseLeave��6+   [�5�   "   �� 5�   &   .��5�   *   �� .��5�   .   �� $ 0:0:0.1D�6=   $ 	Container��6P   $1 +(Border.Background).(SolidColorBrush.Color)�6r   8  6�   5�   +   5�   '   5�      5�      5�      5�      5�      .��5�      �� #��[  6   5�      