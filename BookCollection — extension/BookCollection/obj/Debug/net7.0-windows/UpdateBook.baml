   M S B A M L   `   `   `  ����I  EBookCollection, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null/clr-namespace:BookCollectionBookCollection  5          BookCollection.UpdateBook   5   	   W SPresentationCore, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      .localclr-namespace:BookCollection     5        � Title$  
UpdateBook��5	      $	��400��6   $	��300��6'    � 	Resources 5
       �� 
TargetType �� Triggers �� Binding �� ElementName �� Path �� Value �� Property	 �� Value   validationFailed
 �� Orientation �� 
TargetType  
btTemplate �� CornerRadius �� Triggers P� Property P� Value��%�  '��       &	  
    &	 �    �� 5   
   " ��6    5      �� 5       6   �� $ 	AddAuthor��$
 Text�  5      .a�5      ��  � {�$	 False��62   5      �� 5       6   �� $ AddTitle��$
 Text�  5      .a�5      ��  � {�$	 False��62   5      �� 5       6   �� $ AddYear��$
 Text�  5      .a�5      ��  � {�$	 False��62   5      �� 5       6   �� $ AddTheme��$
 Text�  5      .a�5      ��  � {�$	 False��62   5      5      �� 5   
   .R�5       �� $
 
Horizontal=�6   .+�5!      �� 
���  ��$��1q�6+   ._�5"      �� 5#      �� 5$      
���  ��$��14(�6-   $
��Bold"�6;   *6P   5%      5&      �� 5'   
   " ��6   .R�5(      �� $ 10��6   
�����_�$��1q�6?   
����  �#��z��5)   '   ._�5*      �� $��5q�6!   $��Center=�6,   $��Center=�6I   $��Verdana)�6d   
�������#��z��6�   5+       5,      P� 5-       �@J�IsMouseOver$
 True��61   . �5.      ��  � ��
	 ���_�63   �� 5/       � ��$	 14(�61   �� 50       � ��
	 �  ��63   �� 51       � ��$
	 Bold"�63   52      54      55      .��56      � .+�57   
   �� $	��200��6   .+�58      �� .��6   
Автор6   �� 59      -   5         ��Name$ 	AddAuthor��59      $��10q�6�    =� ErrorTemplate# [  6�   ��6)   �� *Author+ �� ValidatesOnDataErrors$
 True�� �� UpdateSourceTrigger$ PropertyChanged=� � ToolTip 6�   �� *ErrorCollection[Author]+�� 5:      .��6   Название6   �� 5;      -   5        $ AddTitle��5;      $��10q�6�   # [  6�   ��6(   �� *Title+$
 True��$ PropertyChanged=�6�   �� 5<      .��6   Год издания6!   �� 5=      -   5        $ AddYear��5=      $��10q�6�   # [  6�   ��6'   �� *YearPublication+$
 True��$ PropertyChanged=� 6�   �� *" ErrorCollection[YearPublication]+�� 5>      .��6   Тематика6   �� 5?      -   5         ��Name$ AddTheme��5?      $��10q�6�   # [  6�    �� 
IsEditable$
 True��6�    �� Text 6)   �� *Theme+$
 True��$ PropertyChanged=�.@�5@      �� 
Romantic6&   �� 5A      	Detective6'   �� 5B      	Fantastic6'   �� 5C      	Biography6'   �� 5D      
Journeys6&   �� 5E      Tale6"   5F      �� 5G      -   5         ��Name$ UpdateButton��5G      #��[ 6q   $��Изменить��6�   $��5q�6�   ��6+   �� *UpdateButton+$ PropertyChanged=�6�   �� 5H      #��[ 6Z   $��Отменить��6�   $��5q�6�   ��6   �� *CloseButton+$ PropertyChanged=���6�   Z� 6�   5I      5K      5N      