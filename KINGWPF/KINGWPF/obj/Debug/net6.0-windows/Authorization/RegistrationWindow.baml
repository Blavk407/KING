   M S B A M L   `   `   `  ����B  >KINGWPF, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null=#clr-namespace:KINGWPF.AuthorizationKINGWPF.Authorization  5   	   .    (KINGWPF.Authorization.RegistrationWindow   5   	   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   5local#clr-namespace:KINGWPF.Authorization     5   	     � Title$  RegistrationWindow��5   	   $	��600��6$   $	��400��61   
������  � WindowStyle$
 None=�6V    � 
ResizeMode$ NoResize=�6i    � WindowStartupLocation$ CenterScreen=�6    � Icon$  \Resources\Images\icon.png��6�    � 	Resources 5	       �� 
TargetType   NoEvent �� Property �� Value��%�   &	        �� 5
   
   " ��6   .�5      ��  � ��$ 25(�6)   �� 5       � ��
 �����6+   �� 5       � ��$
 Left=�64   �� 5       � ��$ 	30,20,0,0q�6'   5      5      .��5      �� -   5        	 ��Name$	 WindowBorder��5        WindowBorder#��[ 6#   ._�5   
   � .+�5      r� -   5        
 r�Name$
 LoadingMediaElement��5   D    r� Stretch$ UniformToFill=�6    K� ZIndex$ 0��63    r� Source$# \Resources\Images\loading.gif?�6a   $��Center=�6�   $��Center=�6�    r� LoadedBehavior$ Manual=�6�   $y�Hidden=�6�   � 5      -   5         �Name$ 
AllContent��5       � RowDefinitions 5      �� 5      �� 5      $��2* �6$   .+�5      �� -   5         ��Name$ 
ExitButton��5      $��15��6-   $��15��69   $��Right=�6D   $	��Top=�6`   $��10q�6x     
ExitButton#���  6�   6�   �� 5      $'��!\Resources\Images\reg\newUser.png��6   $��UniformToFill=�6C   $��0,20,0,0q�6[   $	��150��6m   $	��220��6z   �� 5      $��1��6   .+�5      �� #���   6    $��35(�6B   $��Center=�6P   $��0,0,0,30q�6m   Регистрация6�   �� 5      -   5         ��Name$ LoginTextBox��5      $��
20,10,20,0q�64   
Логин��  TextBox#���  6V   $
��Left=�6x   $	��500��6�   6�   � 5      .+�5      �� -   5        $ PasswordTextBox��5   "   $��
20,10,20,0q�6;   Пароль��#���  6^   $
��Left=�6�   $	��500��6�   6�   G� 5       -   5         G�Name$ PasswordPasswordBox��5    &   $��
20,10,20,0q�6C    G� PasswordChar$	 ♕��6W   6�   5!      � 5"      .+�5#      �� -   5        $ PasswordRepeatTextBox��5#   "   $��
20,10,20,0q�6A   #Повторите пароль��#���  6n   $
��Left=�6�   $	��500��6�   6�   G� 5$      -	   5        $ PasswordRepeatPasswordBox��5$   &   $��
20,10,20,0q�6I   $	 ♕��6]   6�   5%      �� 5&      -
   5        $ EmaiTextBox��5&      $��
20,10,20,0q�63   
e-mail��#���  6V   $
��Left=�6x   $	��500��6�   6�   �� 5'      #���   6    Рассылка на e-mail6V   d� 5(      $��
30,0,30,20q�6#   $��30��67   $��15(�6C    � Cursor$
 Hand��6Q   6a   �� 5)      $��Center=�6   $	��170��6:   $��40��6F   .��6R   &$Зарегистрироваться6f   5*      5+      5,      5-      5.      