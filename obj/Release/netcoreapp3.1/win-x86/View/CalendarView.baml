   M S B A M L   `   `   `  ���� E  ALifeRunner, Version=1.2.0.0, Culture=neutral, PublicKeyToken=null1clr-namespace:LifeRunner.ViewLifeRunner.View  =#clr-namespace:LifeRunner.PropertiesLifeRunner.Properties  "    LifeRunner.View.CalendarView   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     @d2http://schemas.microsoft.com/expression/blend/2008     /localclr-namespace:LifeRunner.View     3res#clr-namespace:LifeRunner.Properties       � 	Resources   �� 
TargetType 	  Label �� BasedOn  ListBoxTheme �� Property �� Value  ForegroundColorBrush  NewUIItemsColor  	TextBlock��%>  '��       7   '��      7  7  '�� O     7  '�� �     7  �� " ��8   �� " ��8   .���  � ��$ 2,20,0,0q���  � ��8  �� " ��.���  �@��CornerRadius$ 10����  � ��8   ��  � ��$ 2q��� " ��8   .���  � ��$	 Top=���  � ��$
 Left=���  � ��$ 5,0,0,0q�.���   NewPanelColor#��[  � ColumnDefinitions �� �� �� ��  � RowDefinitions �� �� �� �� �� $��35 �.+��� ._�� .+��� $��10(����� *Days[0].sDay+�� ���� *Days[0].Tasks+ �� SelectedItem �� *SelectedItem+ �� Mode$ TwoWay=����� .R��� ���� 	 �� Path$
	 Name��� $��1��._�� .+��� ���� *Days[1].sDay+�� ���� *Days[1].Tasks+ �� *SelectedItem+$ TwoWay=����� .R��� ���� $
	 Name��� $��2��._�� .+��� ���� *Days[2].sDay+�� ���� *Days[2].Tasks+ �� *SelectedItem+$ TwoWay=����� .R��� ���� $
	 Name��� $��3��._�� .+��� ���� *Days[3].sDay+�� ���� *Days[3].Tasks+ �� *SelectedItem+$ TwoWay=����� .R��� ���� $
	 Name��� $��1��._�� .+��� ���� *Days[4].sDay+�� ���� *Days[4].Tasks+ �� *SelectedItem+$ TwoWay=����� .R��� ���� $
	 Name��� $��1��$��1��._�� .+��� ���� *Days[5].sDay+�� ���� *Days[5].Tasks+ �� *SelectedItem+$ TwoWay=����� .R��� ���� $
	 Name��� $��1��$��2��._�� .+��� ���� *Days[6].sDay+�� ���� *Days[6].Tasks+ �� *SelectedItem+$ TwoWay=����� .R��� ���� $
	 Name��� $��1��$��3��._�� .+��� ���� *Days[7].sDay+�� ���� *Days[7].Tasks+ �� *SelectedItem+$ TwoWay=����� .R��� ���� $
	 Name��� $��2��._�� .+��� ���� *Days[8].sDay+�� ���� *Days[8].Tasks+ �� *SelectedItem+$ TwoWay=����� .R��� ���� $
	 Name��� $��2��$��1��._�� .+��� ���� *Days[9].sDay+�� ���� *Days[9].Tasks+ �� *SelectedItem+$ TwoWay=����� .R��� ���� $
	 Name��� $��2��$��2��._�� .+��� ���� *Days[10].sDay+�� ���� *Days[10].Tasks+ �� *SelectedItem+$ TwoWay=����� .R��� ���� $
	 Name��� $��2��$��3��._�� .+��� ���� *Days[11].sDay+�� ���� *Days[11].Tasks+ �� *SelectedItem+$ TwoWay=����� .R��� ���� $
	 Name��� $��3��._�� .+��� ���� *Days[12].sDay+�� ���� *Days[12].Tasks+ �� *SelectedItem+$ TwoWay=����� .R��� ���� $
	 Name��� $��3��$��1��._�� .+��� ���� *Days[13].sDay+�� ���� *Days[13].Tasks+ �� *SelectedItem+$ TwoWay=����� .R��� ���� $
	 Name��� $��3��$��2��._�� .+��� ���� *Days[14].sDay+�� ���� *Days[14].Tasks+ �� *SelectedItem+$ TwoWay=����� .R��� ���� $
	 Name��� $��3��$��3��._�� .+��� ���� *Days[15].sDay+�� ���� *Days[15].Tasks+ �� *SelectedItem+$ TwoWay=����� .R��� ���� $
	 Name��� 
 �� Orientation$
 
Horizontal=�$��5��$��0��.+��� %   LifeRunner.Properties.Resources   
TasksCount#��Z �� $��50��$��Center=����� *TotalTasksCount+�� $
 
Horizontal=�$��5��$��1��.+���    TasksCompleted#��Z �� $��50��$��Center=����� *CompletedTasks+�� $
 
Horizontal=�$��5��$��5��$��Right=�.+���    Edit � ToolTip# Z   	ImgButton#��[ $
��20,0q����� *EditCommand+.���� $��Images/Pencil.png��$��20��$��25����    Delete# Z #��[ $
��20,0q����� *CancelCommand+.���� $��Images/Trash.png��$��23��$��20��