   M S B A M L   `   `   `  ����E  AWpfImtahan, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null?$clr-namespace:WpfImtahan.Views.PagesWpfImtahan.Views.Pages  5      +    %WpfImtahan.Views.Pages.AdminShowUsers   5      W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      6local$clr-namespace:WpfImtahan.Views.Pages     5      -   5        $
��page��5        N� Title$  AdminShowUsers��5
      .��5      �  � RowDefinitions 5   
   �� 5      $��* �6   �� 5      $��6* �6   .+�5   
   �� $��0��6    �� Orientation$ 
Horizontal=�6"   
��� ���.+�5      �� $��30,15,10,10q�6   $
��Left=�6*   $	��Top=�6E   $��40��6]   ��6h   �� *UserShowUsersBackCommand+��6�   ��  �� ElementName$
 page��.��5      �� $��\Images\BackIcon.jpeg��6   5      �� 5      $��	290,0,0,0q�6   $��Center=�6,   $	��Top=�6I   $��Users��6a   $��40(�6n   $
��Bold"�6}   ��5      �� 5       �� 
StartPoint$	 0,0&�6*    �� EndPoint$	 1,1&�6;   .��5      �  � Color$
 Blue��6'    � Offset$	 0.1Q�64   � 5      $ Orange��6'   $
 0.25Q�66   � 5      $ Green��6'   $
 0.75Q�65   � 5      $
 Cyan��6'   $	 1.0Q�64   5      5      �� 5      $��
80,15,20,0q�6   $��Right=�6*   $	��Top=�6F   $��40��6^   $��38��6i   ��6v   �� *DeleteCommand+��6�   �� $ 
viewMarket�� �� Path$ SelectedIndex�.��5       �� $��\Images\Delete.png��6   5!      �� 5#      $��100,15,0,10q�6   $��Right=�6*   $	��Top=�6F   $��40��6^   ��6i   �� *UserShowUsersHomeCommand+��6�   �� $
 page��.��5$      �� $��\Images\Home.png��6   5%      5&      �� 5'   
   -   5        $��
viewMarket��5'   �   $��1��6   $��0q�6@   $��Disabled=�6U   ��6!   �� *users+��5(      �� 5)      .R�5*      � 	 � Orientation$	 Vertical=�6    5+      ��5-      �� 5.      .R�5/      �� $��10q�6!   .+�50      �� $��Center=�6    $��12(�6D   ��6R   �� *
UserName+�� 51      $��Center=�6    $��12(�6D   ��6R   �� *	Surname+�� 52      $��Center=�6    $��12(�6D   ��6R   �� *City+�� 53      $��Disabled=�6C   ��6#   �� *	UserCar+��54      �� 55   "   .R�56   &   � $	 
Horizontal=�60   57   #   ��59      �� 5:   "   .R�5;   &   �� $	��220��61   $	��150��6>   $��10q�6J   .+�5<   *   �� $	��150��60   $	��150��6=   ��6I   �� *	ImagePath+�� 5=   *   $��Center=�60   $��12(�6T   ��6b   �� *Model+�� 5>   *   $��Center=�60   $��12(�6T   ��6b   �� *Money+�� 5?   *   $��Center=�60   $��12(�6T   ��6b   �� *Year+5@   '   5A   #   5C      5D      5E      5G      5H      5I      