   M S B A M L   `   `   `  ���� I  EBookCollection, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null/clr-namespace:BookCollectionBookCollection      BookCollection.MainWindow   W SPresentationCore, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     .localclr-namespace:BookCollection       � Title$  
MainWindow��$	��450��$	��800�� � 	Resources    ListBoxTemplate ��Name �� CornerRadius � ColumnDefinitions �� Path �� UpdateSourceTrigger �� Triggers �� Value	 �� Binding
 �� 
TargetName �� Property �� Value �� 
TargetType  
BookHeader �� 
TargetType  
btTemplate �� Triggers P� Property P� Value��%�  &	        '�� �    '	� 
    &	 s    &	 �    �� .R��� $ 
bookBorder��$ 15��
�����_�$��2q�
����ح�$��40��$	��600��._��  �� $��* ��� �� �� .+��� $��Author������ $ Author�$ PropertyChanged=��� $��Title��$��1������ $ Title�$ PropertyChanged=��� $
��Year��$��2������ $ YearPublication�$ PropertyChanged=��� $��Theme��$��3������ $ Theme�$ PropertyChanged=� �� $ 	Biography��	 �� *Theme+.a��� $
 Author�� � ��$
 Bold"��� $
 Title�� � ��$
 Bold"��� $

 Year�� � ��$
 Bold"��� $
 Theme�� � ��$
 Bold"��� $
 
bookBorder�� � ��
 �  ���� $
 
bookBorder�� � ��$ 3q��� $
 
bookBorder�� � ��
 ��  ��� " ��.���  � ��$ Verdana)���  � ��$ 5q��� " 	�.���  � ��
 �  ����  � ��$ 14(���  � ��
 ��+����  � ��$ 12q��� .���  � ��$ Verdana)���  � ��
 �  ����  � ��$ 20(��� " ��.R��� $ 10��
�����_�$��2q�
���  ��$��40��#��z��._��� $��5q�$��Center=�$��Center=�
�������#��z�� P�  �@J�IsMouseOver$
 true��. ���  � ��$ 14(���  � ��$
 Bold"�.���  �� $
��1.5* ���  � RowDefinitions �� �� $��8* ��� .+��� $��Book Collection��$��Center=�#��[ �� $��1��$��1��.+�	�  d� 	IsChecked �� *Rb1+$ PropertyChanged=�.��*(Сортировать по автору	�  �� *Rb2+$ PropertyChanged=�.��53Сортировать по году издания�� $��1��#��[   �� SelectedItem �� *SelectedItem+$ PropertyChanged=����� *Books+$ PropertyChanged=��� $��2�� �� Orientation$ 
Horizontal=�.+��� #��[ $	��170������ *	AddButton+$ PropertyChanged=�.��!Добавить позицию�� #��[ $	��170������ *UpdateButton+$ PropertyChanged=�.��!Изменить позицию�� #��[ $	��170������ *DeleteButton+$ PropertyChanged=�.��Удалить позицию