   M S B A M L   `   `   `  ���� E  ALifeRunner, Version=1.2.0.0, Culture=neutral, PublicKeyToken=null1clr-namespace:LifeRunner.ViewLifeRunner.View  =#clr-namespace:LifeRunner.PropertiesLifeRunner.Properties  $    LifeRunner.View.AdditionalView   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     @d2http://schemas.microsoft.com/expression/blend/2008     /localclr-namespace:LifeRunner.View     3res#clr-namespace:LifeRunner.Properties       � 	Resources   �� 
TargetType   	TextBlock �� BasedOn �� Property �� Value&   System.Windows.Controls.DataGrid��%  '��       7   '  �     7 �� " ��8   .���  � ��$	 150����  � ��$ 40����  � ��$
 Left=���  � ��$ 10,5,0,0q���  � ��$
 Wrap=��� "  8   .���  �@ AutoGenerateColumns$ False����  �@ 
IsReadOnly$
 True����  � ��$ 5q�.���   NewPanelColor#��[ .+��� $
��Auto=�$��Center=�.���  � ColumnDefinitions �� �� $
��0.4* �.+��� .+���  �� CornerRadius$ 10��  NewAppBrightColor#��[ $��10q�._�9� %   LifeRunner.Properties.Resources   Tasks#��Z $��Sitka Small)�  ForegroundColorBrush#��[  J� Opacity$	 0.6Q�.��  $��Sitka Small)�$	   HorizontalScrollBarVisibility$
	 Auto=�
���   �
������ ���� *
AllTasks+
   Columns
 4  .System.Windows.Controls.DataGridTemplateColumn  ,  &System.Windows.Controls.DataGridColumn   Header$ Id��   CellTemplate �� .R��� ����  �� Path$ Id�     Name# Z  �� .R��� ���� $
 Name�     Description# Z  �� .R��� ���� $ Discription�     Project# Z  �� .R��� ���� $ Project.Name�     Category# Z  �� .R��� ���� $ Category.Name�     Priority# Z  �� .R��� ���� $ Priority�     Date# Z  �� .R��� ���� $
 Date�     NeedTime# Z  �� .R��� ���� $ NeedTime�     
WastedTime# Z  �� .R��� ���� $ 
WastedTime�     Regular# Z  �� .R���  d� 	IsChecked �� $ 	IsRegular�     	Completed# Z  �� .R���  �� $ IsCompleted��� $ 10��#��[ $��10q�._�9� $��Projects��#��[ $	 0.6Q�.��  ���� *AllProjects+
   $ Id�� �� .R��� ���� $ Id�  # Z  �� .R��� ���� $
 Name�  # Z  �� .R��� ���� $ Description�  # Z  �� .R��� ���� $ NeedTime�  # Z  �� .R��� ���� $ 
WastedTime�  # Z  �� .R��� ���� $ Category.Name�  # Z  �� .R���  �� $ IsCompleted�     Progress# Z  �� .R��  � Value �� $ Progress��� $ 10��#��[ $��10q�$��1��._��� .+��� ��    TotalWastedTime#�Z  �� ��� *TotalWastedTime+�� ��    AccuracyOfTime#�Z  �� ��� *AccuracyNeedTime+�� ��    AvgTimePerDay#�Z  �� ��� *	AvgTime+