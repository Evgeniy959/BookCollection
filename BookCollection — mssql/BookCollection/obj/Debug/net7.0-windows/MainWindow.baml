   M S B A M L   `   `   `  ����I  EBookCollection, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null/clr-namespace:BookCollectionBookCollection  5   	       BookCollection.MainWindow   5   	   W SPresentationCore, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   .localclr-namespace:BookCollection     5   	     � Title$  
MainWindow��5   	   $	��450��6   $	��800��6)    � 	Resources 5	         ListBoxTemplate ��Name �� CornerRadius � ColumnDefinitions ��Name �� Path �� UpdateSourceTrigger �� Triggers	 �� Value
 �� Binding �� 
TargetName �� Property �� Value �� 
TargetType  
BookHeader �� 
TargetType  
btTemplate �� Triggers P� Property P� Value��%�  &	        '��     '	� �    &	 �    &	 4    �� 5
   
   .R�5      �� $ 
bookBorder��6   $ 15��6)   
�����_�$��2q�6S   
����ح�$��40��5   ,   $	��600��68   ._�5      �  5      �� 5      $��* �6'   63   �� 5      6)   �� 5      6)   �� 5      6)   .+�5      �� $ Author��6   ��6(   �� $ Author�$ PropertyChanged=�6p   �� 5      $ Title��6   $��1��6'   ��67   �� $ Title�$ PropertyChanged=�6}   �� 5      $
 Year��6   $��2��6&   ��66   �� $ YearPublication�$ PropertyChanged=�6�   �� 5      $ Theme��6   $��3��6'   ��67   �� $ Theme�$ PropertyChanged=�6}   5      5       5      �� 5      $	 	Biography��68   
 6   �� *Theme+.a�5      �� $ Author��6    � ��$
 Bold"�6G   �� 5      $ Title��6    � ��$
 Bold"�6F   �� 5      $
 Year��6    � ��$
 Bold"�6E   �� 5       $ Theme��6    � ��$
 Bold"�6F   �� 5!      $ 
bookBorder��6    � ��
 �  ��6L   �� 5"      $ 
bookBorder��6    � ��$ 3q�6P   �� 5#      $ 
bookBorder��6    � ��
 ��  �6K   5$      5&      �� 5'   
   " ��6   .�5(      ��  � ��$ Verdana)�6+   �� 5)       � ��$ 5q�6'   5*      �� 5+   
   " 	�6   .�5,      ��  � ��
 ��+��6,   �� 5-       � ��$ 20(�6)   �� 5.       � ��
 ��+��6+   �� 5/       � ��$ 12q�6'   50      �� 51   
   .�52      ��  � ��$ Verdana)�63   �� 53       � ��
 �  ��63   �� 54       � ��$ 20(�61   55      �� 56   
   " ��6   .R�57      �� $ 10��6   
�����_�$��2q�6?   
���  ��$��40��58   &   #��z��62   ._�59      �� $��5q�6!   $��Center=�6,   $��Center=�6I   
�������#��z��6w   5:       5;      P� 5<       �@J�IsMouseOver$
 true��61   . �5=      ��  � ��$ 14(�61   �� 5>       � ��$
 Bold"�63   5?      5A      5B      .��5C      �  5D   
   �� 5E      $
��1.5* �6   6.   �� 5F      6!    � RowDefinitions 5H   
   �� 5I      6   �� 5J      $��8* �6   6*   �� 5K      6   .+�5N   
   �� $��Book Collection��6   $��Center=�6+   #��[ 6H   �� 5P   
   $��1��6   $��1��6"   .+�5Q      	�  d� 	IsChecked 6   �� *Rb1+$ PropertyChanged=�.��6Y   *(Сортировать по автору6p   	� 5R       6   �� *Rb2+$ PropertyChanged=�.��6Y   53Сортировать по году издания6v   5S      �� 5U   
   -   5         ��Name$
 List��5U      $��1��5W   3   #��[  6@    �� SelectedItem 5U       �� *SelectedItem+$ PropertyChanged=���5V   3   �� *Books+$ PropertyChanged=�5X      �� 5Y   
   $��2��6    �� Orientation$ 
Horizontal=�6"   .+�5Z      �� #��[ 6X   $	��170��6   ��6   �� *	AddButton+$ PropertyChanged=�.��6�   !Добавить позицию6�   �� 5[      #��[ 6[   $	��170��6�   ��6   �� *UpdateButton+$ PropertyChanged=�.��6�   !Изменить позицию6�   �� 5\      #��[ 6[   $	��170��6�   ��6   �� *DeleteButton+$ PropertyChanged=�.��6�   Удалить позицию6�   5]      5^      5`      