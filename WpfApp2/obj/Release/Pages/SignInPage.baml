   M S B A M L   `   `   `  ���� =  9UI, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null#clr-namespace:UI.PagesUI.Pages  E'clr-namespace:UI.UIPresenter.ConvertersUI.UIPresenter.Converters  E'clr-namespace:UI.UIPresenter.ViewModelsUI.UIPresenter.ViewModels      UI.Pages.SignInPage   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     @d2http://schemas.microsoft.com/expression/blend/2008     (localclr-namespace:UI.Pages     >
converters'clr-namespace:UI.UIPresenter.Converters     >
viewModels'clr-namespace:UI.UIPresenter.ViewModels       N� Title$  
SignInPage�� � 	Resources  ��Name   ToTransperentAnim g� Duration �� 
TargetName �� TargetProperty	 W� To  Anim 	 Links �� BasedOn �� 
TargetType	 �� Triggers
 :� RoutedEvent��%�   &	        &	 f     7  7   �� $ ToTransperentAnim��.��W� $ 0:0:0.1D�$ 
SignInForm��$ (UIElement.Opacity)�$ 0X��� 8   " ��	 :� $
 Label.MouseDown��.[��� 8�� .���   DarkBgBrush#��[  � ColumnDefinitions �� $��* ��� $��2* �.+��� -   $��SignInPanel��$��Center=�$��0��#��[ .+���   RegularText#��[ $��	40 0 0 40q�$��Sign In��$��30(��� -   $��SignInUserName��
 � Tag$ E-mail��$��0��  	DataField#��[ $��
40 0 40 20q����� *Email+�� -   $��SignInPassword��$ Password��$��1��#��[ $��	40 0 40 0q��� #��[   LightRedBrush#��[ $��
40 10 40 0q����� *ErrorMessage+�� $��2��#��[ $	��120��$��
40 10 0 30q�$
��Left=�$��Forgot Password?���� -   $��SignInButton�� �� IsInputMethodEnabled . $��3��  RegularButton#��[ $��SIGN IN������ *SignInCommand+����  �� ElementName$ SignInPassword�� �� Path$
 Text��� -   $��SignUpLabel��$��4��$��
SignUpPage��  
LinkButton#��[ $��
45 10 0 20q�$
��Left=�$��Sign Up������ *OpenNextPageCommand+�� $��1�� 	 GrayBGBrush#��[	  �� CornerRadius$ 10��._�� 