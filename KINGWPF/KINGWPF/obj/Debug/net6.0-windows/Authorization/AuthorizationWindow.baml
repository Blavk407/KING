   M S B A M L   `   `   `  ����B  >KINGWPF, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null=#clr-namespace:KINGWPF.AuthorizationKINGWPF.Authorization  5   	   /    )KINGWPF.Authorization.AuthorizationWindow   5   	   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   5local#clr-namespace:KINGWPF.Authorization     5   	   -   5          � Title$  AuthorizationWindow��5   	   $	��450��5	   	   $	��300��5
   	    � WindowStyle$
 None=�5   	   
������  � WindowStartupLocation$ CenterScreen=�5   	    � 
ResizeMode$ NoResize=�5   	    � AllowsTransparency$
 True��5   	    � Icon$  \Resources\Images\icon.png��5   	   .��5      �� -   5         ��Name$ WindowBorder��5         WindowBorder#��[  6Z   ._�5   
   � .+�5      r� -   5         r�Name$ LoadingMediaElement��5   D    r� Stretch$ UniformToFill=�6   	 K� ZIndex$	 2��63   
 r� Source$<
 6D:\WS\EGS\KINGWPF\KINGWPF\Resources\Images\loading.gif?�6a   $��Center=�6�   $��Center=�6�    r� LoadedBehavior$ Manual=�6�   $y�Hidden=�6�   � 5      -   5         �Name$ 
AllContent��5       � RowDefinitions 5      �� 5      $��5* �6$   �� 5      $��4* �6$   �� 5      $��2* �6$   .+�5      �� -   5         ��Name$ 
ExitButton��5      $��15��6-   $��15��69   $��Right=�6D   $	��Top=�6`   $��10q�6x     
ExitButton#���  6�   6�   �� 5      $%��\Resources\Images\auth\back.png��6   $��UniformToFill=�6A   $��0,20,0,0q�6Y   $	��150��6k   $	��200��6x    J� Effect 5      3  -System.Windows.Media.Effects.DropShadowEffect  5         ShadowDepth$ 4Q�6+      Opacity$	 0.9Q�6;      Color$ 	LightGray��6I   6]   5      �� 5       $��1��6   .+�5!      ��  �� Orientation$ 
Horizontal=�6!   .+�5"      �� $��
35,10,0,10q�6    $%��\Resources\Images\auth\user.png��65   $��50��6^   �� 5#      $��10,0,0,0q�6"   $��30��64   $	��150��6@     TextBox#���  6L   6p   5$      �� 5%      $ 
Horizontal=�6!   .+�5&      �� $��
30,10,0,10q�6    $%��\Resources\Images\auth\pass.png��64   $��50��6]   G� 5'      $��15,0,0,0q�6&   $��30��68   $	��150��6D    G� PasswordChar$	 ♕��6P   6c   5(      �� 5)      $��12(�6    
�������$��Center=�6@   �� 5*      -   5         ��Name$ RegistrationTextblock��5*         ClickTextBlock#��[ 6?    � Cursor$
 Hand��6g   &$Зарегистрироваться6�    �� 5+      .�6   |6    �� 5,      -   5        $ NewPasswordTextblock��5,       #��[ 6>   $
 Hand��6f   Забыли пароль?6�   5-      5.      �� 5/      -   5        $ AuthorizationButton��5/      $
 Hand��66   $��2��6D   $��40��6Q   $	��150��6]   .��6�   Авторизоваться6�   50      51      52      53      