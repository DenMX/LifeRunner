   M S B A M L   `   `   `  ���� E  ALifeRunner, Version=1.2.0.0, Culture=neutral, PublicKeyToken=null1clr-namespace:LifeRunner.ViewLifeRunner.View  =#clr-namespace:LifeRunner.PropertiesLifeRunner.Properties      LifeRunner.View.Task   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     @d2http://schemas.microsoft.com/expression/blend/2008     /localclr-namespace:LifeRunner.View     3res#clr-namespace:LifeRunner.Properties       � 	Resources   �� 
TargetType 	  Label �� BasedOn 
 Button  ComboBoxFlatStyle  ListBoxTheme  	TextBlock  CheckBox��%�   '��       7   '��      7  '��      7  '�� -     7  '�� <     7  '�� K     7  �� " ��8   �� " ��8   �� " ��8   �� " ��8   �� " ��8   �� " ��8   .���   NewPanelColor#��[  � RowDefinitions �� $
��0.6* ��� $��5* ��� $
��0.7* �.+�� $��3��� $��2��$��3��� $��1��.+��� %   LifeRunner.Properties.Resources   Task#��Z $��18(�$��Center=�$��32��$	��100��� $��1��$��1��$��5q� � ColumnDefinitions �� �� .+��� $
��Left=�$
��10,0q�.+��� $
��Left=�.������ " ��  FlatTextBox# [ .���  �� Property � �� �� Value ��  �� 
TargetType" ��.R��� 	 �� CornerRadius$	 5��  NewAppBrightColor#��[ ._�� .+��� $��1���� $��NameBox��$��1q�
������ $��0q�$��Stretch=�$��5q�$��Stretch=� 	 ForegroundColorBrush#��[	 ���� *	Task.Name+�� 
 J� IsHitTestVisible$
 False��   Name#��Z $��Center=�$
��Left=�$��10,0,0,0q�$��11(�
����������� " �� �� Triggers ��  �� Binding �� *Text+ �� ElementName$ NameBox�� �� Value  .a���  � y�$ Visible=�.���  � y�$ Hidden=�.���� $	��350��$	��200�� �� TextWrapping$
 Wrap=� �� AcceptsReturn$
 True��$	��0,5q�.������ " ��# [ .���  � �� �� " ��.R��� $	 5��#��[ ._�� .+��� $��1���� $��SubscriptionBox��$��1q�
������ $��0q�$��Stretch=�$��5q�$��Stretch=�#��[	 ���� *Task.Discription+�� $
 False��   Description#��Z $	��Top=�$
��Left=�$��	10,10,0,0q�$��11(�
����������� " �� ��  �� *Text+$ SubscriptionBox��  .a���  � y�$ Visible=�.���  � y�$ Hidden=�.���� $��1��.+�� $��1��$	��230��$	��Top=� �� �� $
��1.5* � �� �� �� �� �� �� .+���    NeedTime#��Z $	��120��$
��Left=�$
��Left=���    Priority#��Z $��1��$
��Left=�$
��Left=���    Date#��Z $��2��$
��Left=�$
��Left=���    Category#��Z $��3��$
��Left=�$
��Left=���    RelatedProject#��Z $��4��$	��150��$
��Left=�$
��Left=��� $��
2, 0, 0 ,0q�$��25��$��5��$
��Left=�$
��Left=� d� 	IsChecked �� *	IsRegular+.����    Regular#��Z $	��Top=��� $��1��$
��Left=�.������ " ��# [ .���  � �� �� " ��.R��� $	 5��#��[ ._�� .+��� $��1���� $��TimeToDo��$��1q�
������ $��0q�$��Stretch=�$��5q�$��Stretch=�#��[	 ���� *Task.NeedTime+��  �@�ToolTip$ hh:mm:ss��.���� $��1��$��1������ *	_Priority+ �� SelectedItem �� *Task.Priority+ �� Mode$ TwoWay=����� .R��� ���� (  "System.Windows.Controls.DatePicker  $��29��$��Center=�$��1��$��2��   DisplayDateStart 
2000-01-01   SelectedDate �� *	Task.Date+$ TwoWay=�{��� *
DateActive+��  �� Orientation$ 
Horizontal=�$
��Left=�$��1��$��3��.+��� $	��0,4q�$��Right=����� *
Categories+ �� *Task.Category+$ TwoWay=����� .R��� ����  �� Path$
 Name���     NewCategory! � ToolTip#! Z  $	��2,4q� 
 	ImgButton#��[
 $��Center=�$��40��$��Center=�$��Center=�$��Center=����� *AddCategory+.���� $��+��
�������$��18(�$��Center=�$��30��$��30��$��Center=�$��10,0,0,0q��� $	��0,4q�$��1��$��4������ *
Projects+ �� *Task.Project+$ TwoWay=����� .R��� ���� $
 Name��� $��1��$��5������ *SheduleTypes+ �� *SheduleType+{��� $ 	IsRegular�� $��Right=�$
��40,0q�.+��� $ 
Horizontal=�$	��Top=�y��� *IntervalVisibility+.+��� "   IntervalDays#��Z" $	��100���� .������ " ��# [ .���  � �� �� " ��.R��� $	 5��#��[ ._�� .+��� $��1���� $��SubscriptionBox��$��1q�
������ $��0q�$��Stretch=�$��5q�$��Stretch=�#��[	 ���� *
Interval+.����   NewAppColor#��[ # �� SelectionMode$# Multiple=�$	��150��y��� *DaysVisibility+���� *
DaysOfWeek+$ �� NotifyOnSourceUpdated$
$ True�� �� *SelectedDays+% �� UpdateSourceTrigger$% PropertyChanged=����� .R��� $	 2��#��[ ._��� #��[ $
��10,1q����� *Name+���� " ��.���  �@��
IsSelected �� $ TwoWay=�$ 
IsSelected��� &   Back#��Z&   
TextButton#��[ $
��20,0q�$��2��$
��Left=����� *BackCommand+�� '   Done#��Z' #��[ $
��20,0q�$��Right=�$��2������ *SaveCommand+