   M S B A M L   `   `   `  ����E  AWpfImtahan, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null?$clr-namespace:WpfImtahan.Views.PagesWpfImtahan.Views.Pages  5      &     WpfImtahan.Views.Pages.AdminPage   5      W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      6local$clr-namespace:WpfImtahan.Views.Pages     5      -   5        $
��page��5	        N� Title$  	AdminPage��5      .��5      �� $	��300��6   $	��400��5       �� CornerRadius$ 6��5      ��5   
   �� 5       �� 
StartPoint$	 0,0&�6"    �� EndPoint$	 1,1&�63   .��5      �  � Color$
 Blue��6    � Offset$	 0.1Q�6,   � 5      $ Orange��6   $
 0.25Q�6.   � 5      $ Green��6   $
 0.75Q�6-   � 5      $	 Red��6   $	 1.0Q�6+   5       J� Effect 5   
   3  -System.Windows.Media.Effects.DropShadowEffect  5         
BlurRadius$ 15Q�6      	Direction$	 -90Q�5      	   RenderingBias$	 Quality=�5      
   ShadowDepth$
 2Q�5         Color$
 Gray��5      ._�5    
   ��  �� Orientation$ Vertical=�6   $��20q�5!   
   .+�5"      �� $ 
Horizontal=�6   $��20q�62   .+�5#      �� $��Center=�6   $��Center=�66   $��40��6Q   $��40��6]   ��6h   �� *AdminBackCommand+��6�   ��  �� ElementName$
 page��.��5$      �� $��\Images\BackIcon.jpeg��6   5%      �� 5'      $��Admin��6   $��25(�5(      $��Center=�5)      $��Center=�5*      $
��Bold"�5+       �� Padding$ 10q�5,      $��15q�5-      �� 5/      $
��0,25q�6   $
��Left=�6'   $	��Top=�6B   $��40��6Z   ��6e   �� *AdminPageHomeCommand+��6�   �� $
 page��.��50      �� $��\Images\Home.png��6   51      53      � 57      $��Center=�6    � RowDefinitions 58      �� 59      $��* �6$   �� 5:      $��* �6$   �� 5;      $��* �6$   �� 5<      $��* �6$   .+�5>      �� $��
Admin Name��6   $��0��5?   	   $
��0,15q�5@   	   $
��Left=�5A   	   �� 5B      -   5        $��AdminNameTb��5B   +   $��1��6   $��1��5C      $	��0,5q�5D      $	��255��5E      $��0,0,0,1q�5F      $
��Left=�5G      $�� ��5H      �� 5I      $��Password��6   $��2��5J   	   $
��0,15q�5K   	   $
��Left=�5L   	   �� 5M      -   5        $��AdminPasswordTb��5M   '   $��3��6   $	��0,5q�5O      $	��255��5P      $��0,0,0,1q�5Q      $
��Left=�5R      5S      �� 5U      -   5         ��Name$ LoginBtn��5U      $��Login��5V   
   
���   �
����� �$
��0,25q�5[   
   $��35��5\   
   $	��250��5]   
   ��5W   
   �� *AdminLoginCommand+��5X   
   �� $
 page����5^      �� 5_       �� 
TargetType" ��6   .�5`      ��  �� Property � �� �� Value 5a      �� 5b   "    �� 
TargetType" ��62   .R�5c   &   ��  ��Name$ LoginBorder��6-   #��z��6B   $ 16��5d   "   ._�5e   *   �� $��Center=�6;   $��Center=�5f   0   5g   '    �� Triggers 5h   &   P� 5i   *    P� Property �@J�IsMouseOver P� Value$
 True��6I   . �5j   .   ��  �� 
TargetName$ LoginBorder��6]    � ��
 ������� 5k   .   $ LoginBorder��6d    � ��
 �   �5l   +   5n   #   5p      5q      5s      5v      5w      5y      