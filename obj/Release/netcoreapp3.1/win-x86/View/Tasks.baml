   M S B A M L   `   `   `  ���� E  ALifeRunner, Version=1.2.0.0, Culture=neutral, PublicKeyToken=null1clr-namespace:LifeRunner.ViewLifeRunner.View  =#clr-namespace:LifeRunner.PropertiesLifeRunner.Properties      LifeRunner.View.Tasks   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     @d2http://schemas.microsoft.com/expression/blend/2008     /localclr-namespace:LifeRunner.View     3res#clr-namespace:LifeRunner.Properties       � 	Resources   �� 
TargetType   FlatTextBox �� BasedOn��%   '��       7   �� " ��8   .���   NewPanelColor#��[  � RowDefinitions �� $
��0.1* ��� �� $��30 �.+���   NewAppColor#��[ $��2,0,0,0q��� #��[ $��2��$��2,0,0,0q�._�� .+���  �� Orientation$ 
Horizontal=�.+��� %   LifeRunner.Properties.Resources   
TasksCount#��Z  	 Label#��[ $��Center=��� #��[ $��Center=�$��50������ *	TaskCount+��    TasksCompleted#��Z #��[ $
��Left=��� #��[ $��Center=�$��50������ *TaskCompleted+�� $ 
Horizontal=�.+���    NewTask#��Z   
TextButton#��[ $��
10,10,10,0q����� *NewTaskCommand+��   	ImgButton#��[    Edit	 � ToolTip#	 Z $
��Left=�$��10,0,0,0q����� *EditTaskCommand+.���� $��Images/Pencil.png��$��20��$��20���� -   
 ��Name$
 ListBox��$��Center=�$	��750��  ListBoxTheme#��[ $��1������ *Tasks+ �� SelectedItem �� *SelectedTask+���� Item��.R��� $	��Bor�� �� CornerRadius$ 10��  NewUIItemsColor#��[ $	��0,5q�._��� $��10,10q�.+��� $ 
Horizontal=�.+��� $��0q�$��Center=�.������ .R��� $ 10��  NewAppBrightColor#��[ $��Center=�._��� $��0q�$��Center=�$��Center=�����  �� Path$
 Name� �� Mode$ TwoWay=�.����  	 ComboBoxFlatStyle#��[	 $��5,0,5,0q����� *DataContext.PriorityLevels+ �� RelativeSource ��  �� AncestorType" �� �� $ Priority���    	Stopwatch#	 Z $��30,0,0,0q�#��[ ���� $ TimerCommand�.���� $��Images/Stopwatch.png���� $ 
Horizontal=�.+��� .+���    NeedTime#��Z #��[ ��  �� 
IsReadOnly$
 True��.������ .R��� $ 10��#��[ $��Center=�._��� $��0q�$��Center=�$��Center=����� $ NeedTime�.���� .+���    WastedToday#��Z #��[ �� $
 True��.������ .R��� $ 10��#��[ $��Center=�._��� $��0q�$��Center=�$��Center=����� $ WastedToday�.��9� .���� $ 
Horizontal=�$��Stretch=�.+��� .+��� $ 
Horizontal=�.+���    Project#��Z #��[ $��1���� $��1��$��1��$
 True��.������ .R��� $ 10��#��[ $��Center=�._��� $��0q�$��Center=�$��Center=����� $ Project.Name�.���� $
��10,0q� 
 CheckBox#��[
 $��2�� d� 	IsChecked �� $ 	IsRegular�����    Regular#��Z $��20��$��60��  	TextBlock#��[ $
��1,10q��� $ 
Horizontal=�.+���    Category#��Z #��[ �� $��1��$
 True��.������ .R��� $ 10��#��[ $��Center=�._��� $��0q�$��Center=�$��Center=����� $ Category.Name�.���� $ 
Horizontal=�$��Right=�.+��� $��0q�$	��400��$	��100��$��Stretch=�$��Stretch=�.������ .R��� $ 10��#��[ $��Center=�._��� $	��400��$	��100��$��Stretch=�$��Stretch=����� $ Discription�$ TwoWay=�.���� $
��10,0q�.+���    Complete#	 Z #��[ ���� $ CompleteCommand�.���� $��Images/Check.png����    Delete#	 Z $��0,20,0,0q�#��[ ���� *DeleteCommand+.���� $��Images/Trash.png���  � ColumnDefinitions �� $
��1.2* ��� $��* � �� �� �� �� 