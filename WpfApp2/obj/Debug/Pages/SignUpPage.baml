   M S B A M L   `   `   `  ����=  9UI, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null#clr-namespace:UI.PagesUI.Pages  5      E'clr-namespace:UI.UIPresenter.ViewModelsUI.UIPresenter.ViewModels  5      E'clr-namespace:UI.UIPresenter.ConvertersUI.UIPresenter.Converters  5	          UI.Pages.SignUpPage   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      (localclr-namespace:UI.Pages     5      >
viewModels'clr-namespace:UI.UIPresenter.ViewModels     5      >
converters'clr-namespace:UI.UIPresenter.Converters     5	      -   5           UI.Pages.BasePage`1   Name$
  Page��5       N� Title$ 
SignUpPage��5      .��5      �    DarkBgBrush#��[  6    � ColumnDefinitions 5   
   �� 5      $��* �6   �� 5      $��2* �6   .+�5   
   �� -   5        $��SignUpPanel��5      $��Center=�6(   $��0��6C   #��[  6T   .+�5      ��   RegularText#��[ 6   $��	40 0 0 40q�69   $��Sign Up��6L   $��30(�6^   �� 5      -   5        $��SignUpUserName��5   p   
 � Tag$ 	User name��6   $��0��6&     	DataField#��[ 6M   $��
40 0 40 20q�6�   ��63   �� *
UserName+6�   �� 5      -   5        $��SignUpEmail��5   j   $ E-mail��6   $��0��6#   #��[ 6G   $��
40 0 40 20q�6}   ��60   �� *Email+6}   G� 5      -   5        $��SignUpPassword��5   a   $ Password��6   $��1��6)     DataPasswordField#��[ 66   $��
40 0 40 20q�6w   G� 5       -   5        $��SignUpRepeatPassword��5    h   $ Repeat Password��6   $��1��60   #��[ 6=   $��	40 0 40 0q�6�   �� 5#      #��[ 6     LightRedBrush#��[ 69   $��
40 10 40 0q�6�   ��6e   �� *ErrorMessage+6�   �� 5%      -   5        $��SignUpButton��5%   7   $��
40 50 40 0q�6K   $��3��6_     RegularButton#��[ 6l   $��SIGN UP��6�   ��6   �� *SignUpCommand+��6�   ��  �� ElementName$
 Page��6�   �� 5'      -   5        $��SignUpLabel��5'   "   $��4��6   $��
SignInPage��6]   $
��Left=�6|     
LinkButton#��[ 6�   $��
45 10 0 20q�6�   $��Sign In��6�   ��65   �� *OpenNextPageCommand+6�   5)      �� 5,   
   $��1��6     GrayBGBrush#��[ 6!    �� CornerRadius$ 10��6K   ._�5-      � 5/      50      51      52      