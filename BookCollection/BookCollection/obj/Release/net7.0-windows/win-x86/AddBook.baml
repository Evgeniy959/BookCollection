   M S B A M L   `   `   `  ���� I  EBookCollection, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null/clr-namespace:BookCollectionBookCollection      BookCollection.AddBook   W SPresentationCore, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     @d2http://schemas.microsoft.com/expression/blend/2008     .localclr-namespace:BookCollection       � Title$  AddBook��$	��400��$	��300�� � 	Resources  �� 
TargetType �� Triggers �� Binding �� ElementName �� Path �� Value �� Property	 �� Value   validationFailed
 �� Orientation �� 
TargetType  
btTemplate �� CornerRadius �� Triggers P� Property P� Value��%�  '��       &	  2    &	 �    �� " �� ��  �� $ 	AddAuthor��$
 Text�  .a���  � {�$	 False����  �� $ AddTitle��$
 Text�  .a���  � {�$	 False����  �� $ AddYear��$
 Text�  .a���  � {�$	 False����  �� $ AddTheme��$
 Text�  .a���  � {�$	 False���� .R��� $
 
Horizontal=�.+��� 
���  ��$��1q�._��� �� 
���  ��$��14(�$
��Bold"�*�� " ��.R��� $ 10��
�����_�$��1q�
����  �#��z��._��� $��5q�$��Center=�$��Center=�$��Verdana)�
�������#��z�� P�  �@J�IsMouseOver$
 True��. ���  � ��
	 ���_���  � ��$	 14(���  � ��
	 �  ����  � ��$
	 Bold"�.��� .+��� $	��200��.+��� .��
Автор�� -    ��Name$ 	AddAuthor��$��10q� =� ErrorTemplate# [  ���� *Author+ �� ValidatesOnDataErrors$
 True�� �� UpdateSourceTrigger$ PropertyChanged=� � ToolTip �� *ErrorCollection[Author]+�� .��Название�� -   $ AddTitle��$��10q�# [  ���� *Title+$
 True��$ PropertyChanged=��� .��Год издания�� -   $ AddYear��$��10q�# [  ���� *YearPublication+$
 True��$ PropertyChanged=� �� *" ErrorCollection[YearPublication]+�� .��Тематика�� -    ��Name$ AddTheme��$��10q�# [   �� 
IsEditable$
 True�� �� Text �� *Theme+$
 True��$ PropertyChanged=�.@��� 
Romantic�� 	Detective�� 	Fantastic�� 	Biography�� 
Journeys�� Tale�� -    ��Name$ 	AddButton��#��[ $��Добавить��$��5q����� *	AddButton+$ PropertyChanged=��� #��[ $��Отменить��$��5q����� *CloseButton+$ PropertyChanged=���Z� 