   M S B A M L   `   `   `  ���� E  ALifeRunner, Version=1.2.0.0, Culture=neutral, PublicKeyToken=null1clr-namespace:LifeRunner.ViewLifeRunner.View  =#clr-namespace:LifeRunner.PropertiesLifeRunner.Properties      LifeRunner.View.Project   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     @d2http://schemas.microsoft.com/expression/blend/2008     /localclr-namespace:LifeRunner.View     3res#clr-namespace:LifeRunner.Properties       � 	Resources   �� 
TargetType   
TextButton �� BasedOn 	 Label  CheckBox  ComboBoxFlatStyle��%t   '��       7   '��      7  '��      7  '�� -     7  �� " ��8   �� " ��8   �� " ��8   �� " ��8   .���   NewPanelColor#��[  � ColumnDefinitions �� $
��Auto ��� �� $
��0.6* � � RowDefinitions �� $
��0.2* ��� �� $
��0.1* �.+��� %   LifeRunner.Properties.Resources   Project#��Z $��1��$
��Left=�$��Center=�$��20(�$
��Bold"�$��40��$	��150��$
��30,0q��� $��2��$��2��   Back#��Z ���� *BackCommand+�� $��1��$��5q�.+��� .������ " ��  FlatTextBox# [ .���  �� Property � �� �� Value$
 Left=���  � ��$
 Left=���  � �� �� 	 �� 
TargetType"	 ��.R��� 
 �� CornerRadius$
 10��  NewAppBrightColor#��[ ._�� .+���  ��Name$ NameBox��$
��Left=�$��Center=�#��[ ���� *Project.Name+��  J� IsHitTestVisible$ False��   Name#��Z $��Center=�$
��Left=�$��10,0,0,0q�$��11(�
����������� " �� �� Triggers ��  �� Binding �� *Text+ �� ElementName$ NameBox�� �� Value  .a���  � y�$ Visible=�.���  � y�$ Hidden=�.���� $	��200��$	��300��.������ " ��# [ .���  � ��$
 Left=���  � ��$ Center=���  � �� �� "	 ��.R��� $
 10��#��[ ._�� .+��� $ Description��#��[ $	��200��$	��300��$	��Top=�$
��Left=�$��Stretch=�$��Stretch=����� *Project.Description+�� $ False��   Description#��Z $��Stretch=�$��Stretch=�$��5,5,0,0q�$��11(�
����������� " �� ��  �� *Text+$ Description��  .a���  � y�$ Visible=�.���  � y�$ Hidden=�.���� $��1��$��1��$��5q�.+���    NeedTime#��Z $
��Left=�$
��Left=�$	��130���� $
��Left=�.������ " ��.���  � �� �� .R��� $
 10��#��[ ._�� .+��� $ NeedTime��#��[ $��Stretch=�$��Stretch=����� *
NeedTime+�� $ False��$��hh:mm��$��Center=�$��Center=�$��14(�
����������� " �� ��  �� *Text+$ NeedTime��  .a���  � y�$ Visible=�.���  � y�$ Hidden=�.����    Category#��Z $
��Left=�$
��Left=���  �� Orientation$ 
Horizontal=�.+��� $	��150��$
��Left=����� *
Categories+ �� SelectedItem �� *Project.Category+���� .R��� ����  �� Path$
 Name��� $��25��$��25��  	ImgButton#��[ ���� *AddCategory+���� "	 ��.R��� $��+��   NewCategory � ToolTip# Z   FOregroundButtonColorBrush#��[ $��16(�$
��Bold"�$��Center=���    Date#��Z $
��Left=�$
��Left=�(  "System.Windows.Controls.DatePicker     DisplayDateStart 
01.01.2000$	��200��$��Stretch=�$
��Left=�   SelectedDate �� *Project.Date+� $��1��$��2�� �� �� �� �� �� �� �� �� .+���    Done#��Z $��4��$	��200��$��40������ *CreateCommand+��    NewTask#��Z $��2��$	��200��$��40������ *CreateWithTaskCommand+