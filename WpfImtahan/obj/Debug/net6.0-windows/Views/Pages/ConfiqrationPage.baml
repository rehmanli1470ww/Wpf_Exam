   M S B A M L   `   `   `  ����E  AWpfImtahan, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null?$clr-namespace:WpfImtahan.Views.PagesWpfImtahan.Views.Pages  5      -    'WpfImtahan.Views.Pages.ConfiqrationPage   5      W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      6local$clr-namespace:WpfImtahan.Views.Pages     5      -   5        $
��page��5        N� Title$  ConfiqrationPage��5
      .��5      �� $	��300��6   $	��400��5       �� CornerRadius$ 6��5      ��5   
   �� 5       �� 
StartPoint$	 0,0&�6"    �� EndPoint$	 1,1&�63   .��5      �  � Color$
 Blue��6    � Offset$	 0.1Q�6,   � 5      $ Orange��6   $
 0.25Q�6.   � 5      $ Green��6   $
 0.75Q�6-   � 5      $	 Red��6   $	 1.0Q�6+   5       J� Effect 5   
   3  -System.Windows.Media.Effects.DropShadowEffect  5         
BlurRadius$ 15Q�6      	Direction$	 -90Q�5      	   RenderingBias$	 Quality=�5      
   ShadowDepth$
 2Q�5         Color$
 Gray��5      ._�5   
   ��  �� Orientation$ Vertical=�6   $��20q�5       .+�5!      �� $��10,15,10,10q�6   $
��Left=�6*   $	��Top=�6E   $��40��6]   ��6h   �� *ConfrimationBackCommand+��6�   ��  �� ElementName$
 page��.��5"      �� $��\Images\BackIcon.jpeg��6   5#      �� 5$      $��Confrimation��6   $��25(�5%      $��Center=�5&      $	��Top=�5'      $
��Bold"�5(       �� Padding$ 10q�5)      � 5+      $��Center=�6    � RowDefinitions 5,      �� 5-      $��* �6$   �� 5.      $��* �6$   �� 5/      $��* �6$   �� 50      $��* �6$   .+�52      �� $
��Code��6   $��0��53      $
��0,15q�54      $
��Left=�55      �� 56      -   5         ��Name$ 
UserNameTb��56      $��1��6.   $��1��57      $	��0,5q�58      $	��255��59      $��0,0,0,1q�5:      $
��Left=�5;      $�� ��5<      5>      �� 5A      -   5         ��Name$ RegistrationBtn��5A      $��Confirm��5B      
���   �
����� �$
��0,25q�5E      $��35��5F      $	��250��5I      ��5G      �� *RegistrationCommand+��5H      �� $
 page����5J      �� 5K       �� 
TargetType" ��6   .�5L      ��  �� Property � �� �� Value 5M      �� 5N   "    �� 
TargetType" ��62   .R�5O   &   ��  ��Name$ LoginBorder��6-   #��z��6B   $ 16��5P      ._�5Q   *   �� $��Center=�6;   $��Center=�5R   $   5S   '    �� Triggers 5T   &   P� 5U   *    P� Property �@J�IsMouseOver P� Value$
 True��6I   . �5V   .   ��  �� 
TargetName$ LoginBorder��6]    � ��
 ������� 5W   .   $ LoginBorder��6d    � ��
 �   �5X   +   5Z   #   5\      5]      5`      5b      5c      5d      