   M S B A M L   `   `   `  ����E  ALifeRunner, Version=1.1.0.0, Culture=neutral, PublicKeyToken=null1clr-namespace:LifeRunner.ViewLifeRunner.View  5      =#clr-namespace:LifeRunner.PropertiesLifeRunner.Properties  5      "    LifeRunner.View.CalendarView   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      /localclr-namespace:LifeRunner.View     5      3res#clr-namespace:LifeRunner.Properties     5        � 	Resources  5
       �� 
TargetType 	  Label �� BasedOn  ListBoxTheme �� Property �� Value  ForegroundColorBrush  NewUIItemsColor  	TextBlock��%  '��       7   '�� "     7  7  '�� �     7  '�� -    7  �� 5   
   " ��6   8   6#   �� 5   
   " ��6   8   .�5      ��  � ��$ 2,20,0,0q�6'   �� 5       � ��8  6+   5      �� 5   
   " ��6   .�5      ��  �@��CornerRadius$ 10��6-   �� 5       � ��8   6+   �� 5       � ��$ 2q�6'   5      �� 5   
   " ��6   8   .�5      ��  � ��$	 Top=�62   �� 5       � ��$
 Left=�64   �� 5       � ��$ 5,0,0,0q�6'   5      5      .��5      �   NewPanelColor#��[ 6    � ColumnDefinitions 5   
   �� 5      �� 5      �� 5      �� 5        � RowDefinitions 5"   
   �� 5#      �� 5$      �� 5%      �� 5&      �� 5'      $��35 �6   .+�5)   
   �� ._�5*      � .+�5+      �� $��10(�6:   ��6   �� *Days[0].sDay+6:   �� 5,      ��6   �� *Days[0].Tasks+ �� SelectedItem 6@   �� *SelectedItem+ �� Mode$ TwoWay=���5-      �� 5.      .R�5/      �� ��6(   �� 	 �� Path$
	 Name�50      52      53      54      �� 55   
   $��1��6   ._�56      � .+�57      �� ��6   �� *Days[1].sDay+�� 58      ��6   �� *Days[1].Tasks+ 6@   �� *SelectedItem+$ TwoWay=���59      �� 5:      .R�5;      �� ��6$   �� $
	 Name�5<      5>      5?      5@      �� 5A   
   $��2��6   ._�5B      � .+�5C      �� ��6   �� *Days[2].sDay+�� 5D      ��6   �� *Days[2].Tasks+ 6@   �� *SelectedItem+$ TwoWay=���5E      �� 5F      .R�5G      �� ��6(   �� $
	 Name�5H      5J      5K      5M      �� 5N   
   $��3��6   ._�5O      � .+�5P      �� ��6   �� *Days[3].sDay+�� 5Q      ��6   �� *Days[3].Tasks+ 6@   �� *SelectedItem+$ TwoWay=���5R      �� 5S      .R�5T      �� ��6(   �� $
	 Name�5U      5W      5X      5Z      �� 5[   
   $��1��6   ._�5\      � .+�5]      �� ��6   �� *Days[4].sDay+�� 5^      ��6   �� *Days[4].Tasks+ 6@   �� *SelectedItem+$ TwoWay=���5_      �� 5`      .R�5a      �� ��6(   �� $
	 Name�5b      5d      5e      5g      �� 5h   
   $��1��6   $��1��6   ._�5i      � .+�5j      �� ��6   �� *Days[5].sDay+�� 5k      ��6   �� *Days[5].Tasks+ 6@   �� *SelectedItem+$ TwoWay=���5l      �� 5m      .R�5n      �� ��6(   �� $
	 Name�5o      5q      5r      5t      �� 5u   
   $��1��6   $��2��6   ._�5v      � .+�5w      �� ��6   �� *Days[6].sDay+�� 5x      ��6   �� *Days[6].Tasks+ 6@   �� *SelectedItem+$ TwoWay=���5y      �� 5z      .R�5{      �� ��6(   �� $
	 Name�5|      5~      5      5�      �� 5�   
   $��1��6   $��3��6   ._�5�      � .+�5�      �� ��6   �� *Days[7].sDay+�� 5�      ��6   �� *Days[7].Tasks+ 6@   �� *SelectedItem+$ TwoWay=���5�      �� 5�      .R�5�      �� ��6(   �� $
	 Name�5�      5�      5�      5�      �� 5�   
   $��2��6   ._�5�      � .+�5�      �� ��6   �� *Days[8].sDay+�� 5�      ��6   �� *Days[8].Tasks+ 6@   �� *SelectedItem+$ TwoWay=���5�      �� 5�      .R�5�      �� ��6(   �� $
	 Name�5�      5�      5�      5�      �� 5�   
   $��2��6   $��1��6   ._�5�      � .+�5�      �� ��6   �� *Days[9].sDay+�� 5�      ��6   �� *Days[9].Tasks+ 6@   �� *SelectedItem+$ TwoWay=���5�      �� 5�      .R�5�      �� ��6(   �� $
	 Name�5�      5�      5�      5�      �� 5�   
   $��2��6   $��2��6   ._�5�      � .+�5�      �� ��6   �� *Days[10].sDay+�� 5�      ��6   �� *Days[10].Tasks+ 6A   �� *SelectedItem+$ TwoWay=���5�      �� 5�      .R�5�      �� ��6(   �� $
	 Name�5�      5�      5�      5�      �� 5�   
   $��2��6   $��3��6   ._�5�      � .+�5�      �� ��6   �� *Days[11].sDay+�� 5�      ��6   �� *Days[11].Tasks+ 6A   �� *SelectedItem+$ TwoWay=���5�      �� 5�      .R�5�      �� ��6(   �� $
	 Name�5�      5�      5�      5�      �� 5�   
   $��3��6   ._�5�      � .+�5�      �� ��6   �� *Days[12].sDay+�� 5�      ��6   �� *Days[12].Tasks+ 6A   �� *SelectedItem+$ TwoWay=���5�      �� 5�      .R�5�      �� ��6(   �� $
	 Name�5�      5�      5�      5�      �� 5�   
   $��3��6   $��1��6   ._�5�      � .+�5�      �� ��6   �� *Days[13].sDay+�� 5�      ��6   �� *Days[13].Tasks+ 6A   �� *SelectedItem+$ TwoWay=���5�      �� 5�      .R�5�      �� ��6(   �� $
	 Name�5�      5�      5�      5�      �� 5�   
   $��3��6   $��2��6   ._�5�      � .+�5�      �� ��6   �� *Days[14].sDay+�� 5�      ��6   �� *Days[14].Tasks+ 6A   �� *SelectedItem+$ TwoWay=���5�      �� 5�      .R�5�      �� ��6(   �� $
	 Name�5�      5�      5�      5�      �� 5�   
   $��3��6   $��3��6   ._�5�      � .+�5�      �� ��6   �� *Days[15].sDay+�� 5�      ��6   �� *Days[15].Tasks+ 6A   �� *SelectedItem+$ TwoWay=���5�      �� 5�      .R�5�      �� ��6(   �� $
	 Name�5�      5�      5�      5�      �� 5�   
   
 �� Orientation$
 
Horizontal=�6   $��5��6.   $��0��6;   .+�5�      �� %   LifeRunner.Properties.Resources   
TasksCount#��Z 6   �� 5�      $��50��68   $��Center=�6C   ��6   �� *TotalTasksCount+6C   5�      �� 5�   
   $
 
Horizontal=�6   $��5��6.   $��1��6;   .+�5�      ��    TasksCompleted#��Z 6   �� 5�      $��50��67   $��Center=�6B   ��6   �� *CompletedTasks+6B   5�      �� 5�   
   $
 
Horizontal=�6   $��5��6.   $��5��6;   $��Right=�6K   .+�5�      ��    Edit � ToolTip# Z 65     	ImgButton#��[ 6]   $
��20,0q�6�   ��6   �� *EditCommand+.��5�      �� $��Images/Pencil.png��6   $��20��63   $��25��6?   5      �� 5        Delete# Z 67   #��[ 6a   $
��20,0q�6�   ��6   �� *CancelCommand+.��5     �� $��Images/Trash.png��6   $��23��62   $��20��6>   5     5     5     5     