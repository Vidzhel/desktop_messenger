   M S B A M L   `   `   `  ����=  9UI, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null#clr-namespace:UI.PagesUI.Pages  5      E'clr-namespace:UI.UIPresenter.ConvertersUI.UIPresenter.Converters  5	      E'clr-namespace:UI.UIPresenter.ViewModelsUI.UIPresenter.ViewModels  5
          UI.Pages.SignInPage   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      (localclr-namespace:UI.Pages     5      >
converters'clr-namespace:UI.UIPresenter.Converters     5	      >
viewModels'clr-namespace:UI.UIPresenter.ViewModels     5
      -   5           UI.Pages.BasePage`1   Name$
  Page��5       N� Title$ 
SignInPage��5       � 	Resources 5       ��Name   ToTransperentAnim g� Duration �� 
TargetName �� TargetProperty	 W� To  Anim 	 Links �� BasedOn	 �� 
TargetType
 �� Triggers :� RoutedEvent��%6  &	        &	 �     7  7   �� 5   
   $ ToTransperentAnim��6   .��5      W� $ 0:0:0.1D�6   $ 
SignInForm��61   $ (UIElement.Opacity)�6U   $ 0X�6�   5      �� 5   
   8   "	 ��6>   
 5      :� 5      $ Label.MouseDown��6   .[�5      �� 8�� 6&   5      5      5!      .��5#      �   DarkBgBrush#��[ 6    � ColumnDefinitions 5$   
   �� 5%      $��* �6   �� 5&      $��2* �6   .+�5*   
   �� -   5        $��SignInPanel��5*      $��Center=�6(   $��0��6C   #��[ 6T   .+�5-      ��   RegularText#��[ 6   $��	40 0 0 40q�69   $��Sign In��6L   $��30(�6^   �� 50      -   5        $��SignInUserName��50      
 � Tag$ E-mail��6   $��0��6:     	DataField#��[ 6H   $��
40 0 40 20q�6k   ��6#   �� *Email+6   G� 51      -   5        $��SignInPassword��51   u   $ Password��6   $��1��6)     DataPasswordField#��[ 66   $��
40 0 40 20q�6a   6u   �� 56      #��[ 6     LightRedBrush#��[ 69   $��
40 10 40 0q�6�   ��6e   �� *ErrorMessage+6�   �� 59      $��2��6   #��[ 6!   $	��120��6@   $��
40 10 0 30q�6L   $
��Left=�6`   $��Forgot Password?��6{   �� 5<      -   5        $��SignInButton��5<   �    �� IsInputMethodEnabled . $��3��6�     RegularButton#��[ 6�   $��SIGN IN��6�   ��6   �� *SignInCommand+��67   ��  �� ElementName$
 Page��6�   �� 5?      -   5        $��SignUpLabel��5?   �   $��4��6   $��
SignUpPage��6J    	 
LinkButton#��[	 6h   $��
45 10 0 20q�6�   $
��Left=�6�   $��Sign Up��6�   ��6"   �� *OpenNextPageCommand+6�   5A      �� 5D   
   $��1��6    
 GrayBGBrush#��[
 6!    �� CornerRadius$ 10��6K   ._�5E      � 5G      5H      5I      5J      