   M S B A M L   `   `   `  ����E  AWpfImtahan, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null?$clr-namespace:WpfImtahan.Views.PagesWpfImtahan.Views.Pages  5      %    WpfImtahan.Views.Pages.ShowPage   5      W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      6local$clr-namespace:WpfImtahan.Views.Pages     5      -   5        $
��page��5        N� Title$  ShowPage��5
      .��5      � -   5         �Name$ GridShow��5       � RowDefinitions 5   
   �� 5      $��* �6   �� 5      $��6* �6   .+�5   
   � $��0��6   
���  ��.+�5      �� $��	Masin all��6   
���  �� �� TextAlignment$ Center=�6:   $��30(�6R   $��80��6a   $	��150��6m   
��� ���$
��Left=�6�   $��50,10q�6�   �� 5      $��10,20,10,10q�6   $��Right=�6*   $	��Top=�6F   $��30��6^   $��40��6j   ��6u   �� *UserShowHomeCommand+��6�   ��  �� ElementName$
 page��.��5      �� $��\Images\Home.png��6   5      �� 5      $��10,15,10,10q�6   $
��Left=�6*   $	��Top=�6E   $��40��6]   ��6h   �� *UserShowBackCommand+��6�   �� $
 page��.��5      �� $��\Images\BackIcon.jpeg��6   5      �� 5      -   5         ��Name$ SearchTextBox��5      $	��200��6.   $��30��6:   $��0,5,0,0q�6F   $��Center=�6W   �� 5      -   5         ��Name$ 	SearchBtn��5      $��Search��6(   $��30��69   $��70��6E   $��0q�6P   
�����H�$��Right=�6�   $��	5,5,225,0q�6�   ��6�   �� *SearchCommand+��6�   �� $ SearchTextBox�� �� Path$
 Text��� 5      -   5        $ 	MyCarsBtn��5      $��My Cars��6(   $��30��6:   $��70��6F   $��0q�6Q   
�����H�$��Right=�6�   $��5,5,60,0q�6�   ��6�   �� *MyCars+��6�   �� $ GridShow���� 5      -   5        $ AddCar��5      $��Ad Cars��6%   $��30��67   $��70��6C   $��0q�6N   
�����H�$��Right=�6   $��	5,5,140,0q�6�   ��6�   �� *
AddCommand+��6�   �� $
 page��5"      �� 5#   
   -   5        $��
viewMarket��5#   �   $��1��6   $��0q�6@   $��Disabled=�6U   ��6"   �� *cars+��5$      �� 5%      .R�5&      �  � Orientation$ 
Horizontal=�6    5'      ��5)      �� 5*      .R�5+      �� $	��220��6!   $	��150��6.   $��10q�6:   .+�5,      �� $	��150��6    $	��150��6-   ��69   �� *	ImagePath+�� 5-      $��Center=�6    $��12(�6D   ��6R   �� *Model+�� 5.      $��Center=�6    $��12(�6D   ��6R   �� *Money+�� 5/      $��Center=�6    $��12(�6D   ��6R   �� *Year+50      51      53      �� 57   
   -   5        $��viewMarketuser��57   �   $��1��6   $y�Hidden=�6G   $��0q�6\   $��Disabled=�6p   ��6"   �� *user.UserCar+��58      �� 59      .R�5:      � $ 
Horizontal=�6    5;      ��5=      �� 5>      .R�5?      �� $	��220��6!   $	��150��6.   $��10q�6:   .+�5@      �� $	��150��6    $	��150��6-   ��69   �� *	ImagePath+�� 5A      $��Center=�6    $��12(�6D   ��6R   �� *Model+�� 5B      $��Center=�6    $��12(�6D   ��6R   �� *Money+�� 5C      $��Center=�6    $��12(�6D   ��6R   �� *Year+5D      5E      5G      5J      5K      