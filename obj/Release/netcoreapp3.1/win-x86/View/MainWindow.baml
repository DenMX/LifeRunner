   M S B A M L   `   `   `  ���� E  ALifeRunner, Version=1.2.0.0, Culture=neutral, PublicKeyToken=null1clr-namespace:LifeRunner.ViewLifeRunner.View  =#clr-namespace:LifeRunner.PropertiesLifeRunner.Properties       LifeRunner.View.MainWindow   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     /localclr-namespace:LifeRunner.View     3res#clr-namespace:LifeRunner.Properties     $	��550��$	��950��  � 
ResizeMode$  NoResize=� � WindowStyle$
 None=�
������  � AllowsTransparency$
 True�� � 	Resources ��%    .����    NewAppColor#��[  ._��  � ColumnDefinitions �� �� $��4* � � RowDefinitions �� $��0.05* ��� .+��� -   $��Border1��  NewAppBrightColor#��[ $��2���� $��1��$��1������ *SelectedViewModel+�� -   $��1��  	ImgButton#��[ $��15��$��15��$��Right=�$
��20,0q�.���� $��Images/Close-Icon.png��� $��1�� �� �� $
��0.5* �.+��  �� �� �� �� �� �� �� .+���  �� Orientation$ 
Horizontal=�.+��� $��Images/Icon_V2.png���� $��
LifeRunner��$��19(�$	��120��$��Stretch=�
�������$��Center=�$��Center=�$��Sitka Small)�$��Italic$�$��Normal"�	� %   LifeRunner.Properties.Resources   Tasks#��Z  d� 	IsChecked$
 TrueY�$��1��  
MenuButton#��[ $��Tasks��	 	� 	GroupName$
	 Menu��$��50��
�������$��22(�$��0,52,0,3q�$��2������ *
SwitchView+	� 
   Projects#��Z
 $��3��#��[ $��Projects��$
	 Menu��$��50��
�������$��22(����� *
SwitchView+	�    Calendar#��Z $��4��#��[ $��Calendar��$
	 Menu��$��50��
�������$��22(����� *
SwitchView+	�    AddView#��Z $��5��#��[ $��AddView��$
	 Menu��$��50��
�������$��22(����� *
SwitchView+�� $��Images/Task.png��$��2��$
��Left=�$��45���� $��Images/List.png��$��3��$
��Left=�$��40���� $��Images/Calendar.png��$��4��$
��Left=�$��35��$��5,0,0,0q��� $��Images/Graph.png��$��5��$
��Left=�$��35��$��5,0,0,0q��� $��1��$��20q�$��Bottom=�$��Center=�.+���   	TextBlock#��[ $��10,0,0,0q�$	��120����    	WillPower#�Z  �� ��� *Level+� $��10��  NewPanelColor#��[ #��[  � Value �� *LevelProgress+