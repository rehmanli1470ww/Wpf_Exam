   M S B A M L   `   `   `  ����E  AWpfImtahan, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null?$clr-namespace:WpfImtahan.Views.PagesWpfImtahan.Views.Pages  5      &     WpfImtahan.Views.Pages.UsersPage   5      W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      6local$clr-namespace:WpfImtahan.Views.Pages     5      -   5          N�Name$
  page��5       N� Title$ 	UsersPage��5
      .��5      �� $	��300��6   $	��400��5   
    �� CornerRadius$ 6��5   
   ��5   
   �� 5       �� 
StartPoint$	 0,0&�6"    �� EndPoint$	 1,1&�63   .��5      �  � Color$
 Blue��6    � Offset$	 0.1Q�6,   � 5      $ Orange��6   $
 0.25Q�6.   � 5      $ Green��6   $
 0.75Q�6-   � 5      $	 Red��6   $	 1.0Q�6+   5       J� Effect 5   
   3  -System.Windows.Media.Effects.DropShadowEffect  5         
BlurRadius$ 15Q�6   	   	Direction$		 -90Q�5      
   RenderingBias$
 Quality=�5         ShadowDepth$ 2Q�5         Color$
 Gray��5      ._�5   
   ��  �� Orientation$ Vertical=�6   $��20q�5      .+�5       �� $ 
Horizontal=�6   .+�5!      �� $��30q�6   $
��Left=�6%   $	��Top=�6@   $��40��6X   ��6c   �� *UserPageBackCommand+��6�   ��  �� ElementName$
 page��.��5"      �� $��\Images\BackIcon.jpeg��6   5#      �� 5$      $
��User��6   $��25(�5%   	   $��Center=�5&   	   $��Center=�5'   	   $
��Bold"�5(   	   �� 5+      $��25,25q�6   $
��Left=�6(   $	��Top=�6C   $��40��6[   ��6f   �� *UserPageHomeCommand+��6�   �� $
 page��.��5,      �� $��\Images\Home.png��6   5-      5/      � 50      $��Center=�6    � RowDefinitions 51      �� 52      $��* �6$   �� 53      $��* �6$   �� 54      $��* �6$   �� 55      $��* �6$   .+�57      �� $��	User Name��6   $��0��58      $
��0,15q�59      $
��Left=�5:      �� 5;      -   5         ��Name$ 
UserNameTb��5;      $��1��6.   $��1��5<      $	��0,5q�5=      $	��255��5>      $��0,0,0,1q�5?      $
��Left=�5@      $�� ��5A      �� 5B      $��Password��6   $��2��5C      $
��0,15q�5D      $
��Left=�5E      �� 5F      -   5        $ 
PasswordTb��5F      $��3��6.   $	��0,5q�5H      $	��255��5I      $��0,0,0,1q�5J      $
��Left=�5K      5L      �� 5N      -   5         ��Name$ LoginBtn��5N      $��Login��5O      
���   �
����� �$
��0,25q�5R      $��35��5S      $	��250��5V      ��5T      �� *LoginCommand+��5U      �� $
 page����5W      �� 5X       �� 
TargetType" ��6   .�5Y      ��  �� Property � �� �� Value 5Z      �� 5[   "    �� 
TargetType" ��62   .R�5\   &   ��  ��Name$ LoginBorder��6-   #��z��6B   $ 16��5]   *   ._�5^   *   �� $��Center=�6;   $��Center=�5_   8   5`   '    �� Triggers 5a   &   P� 5b   *    P� Property �@J�IsMouseOver P� Value$
 True��6I   . �5c   .   ��  �� 
TargetName$ LoginBorder��6]    � ��
 ������� 5d   .   $ LoginBorder��6d    � ��
 �   �5e   +   5g   #   5i      5j      5l      �� 5m      -   5        $ RegistrationBtn��5m      $��Registration��5n      
���   �
����� �$��35��5q      $	��250��5t      ��5r      �� *RegistrationCommand+��5s      �� $
 page����5u      �� 5v      " ��6   .�5w      ��  � �� 5x      �� 5y   "   " ��62   .R�5z   &   �� $ LoginBorder��6-   #��z��6B   $ 16��5{      ._�5|   *   �� $��Center=�6;   $��Center=�5}   (   5~   '    5   &   P� 5�   *    �@J�IsMouseOver$
 True��6I   . �5�   .   �� $ LoginBorder��6]    � ��
 ������� 5�   .   $ LoginBorder��6d    � ��
 �   �5�   +   5�   #   5�      5�      5�      5�      5�      5�      