   M S B A M L   `   `   `  ����=  9UI, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null1clr-namespace:UI.UserControlsUI.UserControls  5      E'clr-namespace:UI.UIPresenter.ViewModelsUI.UIPresenter.ViewModels  5      E'clr-namespace:UI.UIPresenter.ConvertersUI.UIPresenter.Converters  5	      %    UI.UserControls.MessageListItem   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      /localclr-namespace:UI.UserControls     5      =	viewModel'clr-namespace:UI.UIPresenter.ViewModels     5      >
converters'clr-namespace:UI.UIPresenter.Converters     5	        � 	Resources  5       �� 
TargetType   ContentControl �� Property �� Value �Name � Triggers :� RoutedEvent g� Duration g� 
SpeedRatio	 �� 
TargetName
 �� TargetProperty R� KeyTime  System.Windows.Visibility   Visible R� Value t� From	 t� To	 W� To � RowDefinitions �� CornerRadius �� 	Converter9   3UI.UIPresenter.Converters.BoolToColorBrushConverterB   <UI.UIPresenter.Converters.BoolToHorizontalAlignmentConverter �� ConverterParameter  MiddleGrayBgBrush9  3UI.UIPresenter.Converters.BoolToVisibilityConverter   UI.UserControls.FilesList � DataContext  LightGrayBgBrush �� Orientation  RegularText8   2UI.UIPresenter.Converters.DateToTextHoursConverter 
 Sumbol  LightBlueBrush<   6UI.UIPresenter.Converters.MessageStatusToIconConverter J� Opacity � ColumnDefinitions  
LinkButton��%�
  &	        7  7  7  7  7  7  7  �� 5   
   " ��6   .�5      ��  � �� 5      �� 5      .R�5#      � $ MessageContainer��6    5%      :� 5'   &   $ 
MouseEnter��63   [�5(   *   �� 5)   .   .��5*   2   �� .��5,   6   T� $ 0D�6U   $ 90Q�5-   N   $	 OptionalButtons��5.   N   $
 (UIElement.Visibility)�5/   N   ..�51   :   i� $ 0��6R   # Z 6^   53   7   t� 55   6   $
 Margin�56   9   $	 OptionalButtons��57   9   $ 0:0:0.2D�6a   $ 	0,-10,0,0X�58   9   $ 0,0,0,0X�6J   W� 5:   6   $ 0:0:0.3D�6F   $ 90Q�5;   A   $	 OptionalButtons��5<   A   $
 Opacity�5=   A   $ 1X�5>   A   5@   /   5A   /   5C   '   :� 5E   &   $ 
MouseLeave��63   [�5F   *   �� 5G   .   .��5H   2   �� .��5K   2   W� $ 0:0:0.2D�6B   $ 90Q�5L   >   $	 OptionalButtons��5M   >   $
 Opacity�5N   >   $ 0X�5O   >   t� 5R   2   $
 Margin�5S   9   $	 OptionalButtons��5T   9   $ 0:0:0.2D�6a   $ 0,0,0,0X�5U   9   $ 	0,-10,0,0X�6H   T� 5X   2   $ 0:0:0.3D�6Q   $ 90Q�5Y   N   $	 OptionalButtons��5Z   N   $
 (UIElement.Visibility)�5[   N   ..�5]   6   i� $ 0:0:0.2��6N   # Z 6`   5_   3   5a   /   5b   /   5d   '    5h      �� 5k   "   $
��auto �60   �� 5n   "   $
��auto �60   .+�5r      �� $ 10��5s   %   $	��450��5t   %   $��0 2 0 2q�5u   %   $��10��5v   %   ��5r   %   �� *IsYourMessage+   ��5w   %   �� *IsYourMessage+   $ false��._�5y   "   � $��	10 5 10 2q�6'    5{   &   �� 5~   *   $
��auto �68   �� 5�   *   $
��auto �68   �� 5�   *   $
��auto �68   �� 5�   *   $
��auto �68   .+�5�   &   �� $��Anaiya Harrington��6,   8��  $��15(�5�   (   y�5�   (   �� *DisplayUserName+   � 5�   &   $��1��6+   $��Center=�68   $��Center=�5�   +   .+�5�   *      6:   �� *Attachments+5�   '   �� 5�   &   $��2��60   $
��Wrap=�5�   ,   8�� ��5�   ,   �� *MessageText+5�   ,   �� 5�   &   $��3��61   $ 
Horizontal=�5�   -   ��5�   -   �� *IsYourMessage+   $
 true��.+�5�   *   �� 8�� $��8(�5�   ,   8�� ��5�   ,   �� *MessageTime+   5�   ,   �� 5�   *   8�� 8�� $��8(�5�   ,   y�5�   ,   �� *IsYourMessage+   ��5�   ,   �� *MessageStatus+   5�   ,   5�   '   5�   #   5�      � 5�      $ OptionalButtons��6#   $ 0Q�5�   +   $y�	Collapsed=�5�   +   $��1��5�   +   $��	0 -10 0 0q�5�   +   ��5�   +   �� *IsYourMessage+   $ false�� 5�   "   �� 5�   &   $
��auto �67   �� 5�   &   $
��auto �67   .+�5�   "   �� $��Remove��6)   8�� y�5�   )   �� *IsYourMessage+   ��5�   )   �� *DeleteMessage+5�   1   5�      5�      5�      5�      5�      5�      .��5�      �� #��[  6   5�      