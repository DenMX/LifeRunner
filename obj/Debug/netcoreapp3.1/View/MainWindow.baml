   M S B A M L   `   `   `  ����E  ALifeRunner, Version=1.1.0.0, Culture=neutral, PublicKeyToken=null1clr-namespace:LifeRunner.ViewLifeRunner.View  5   	   =#clr-namespace:LifeRunner.PropertiesLifeRunner.Properties  5   	        LifeRunner.View.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   /localclr-namespace:LifeRunner.View     5   	   3res#clr-namespace:LifeRunner.Properties     5   	   $	��550��5	   	   $	��950��6     � 
ResizeMode$  NoResize=�5
   	    � WindowStyle$
 None=�6   
������  � AllowsTransparency$
 True��5   "    � 	Resources 5      ��%    5      .��5      ��    NewAppColor#��[  6   ._�5   
   �  � ColumnDefinitions 5      �� 5      �� 5      $��4* �6#    � RowDefinitions 5      �� 5      $��0.05* �6    �� 5      .+�5      �� -   5        $��Border1��5   Y     NewAppBrightColor#��[ 6   $��2��6E   6Y   �� 5      $��1��6C   $��1��6S   ��6   �� *SelectedViewModel+6S   �� 5      -   5        $��1��5        	ImgButton#��[ 6%   $��15��6]   $��15��6i   $��Right=�6t   $
��20,0q�6�   .��5      �� $��Images/Close-Icon.png��6   5      � 5       $��1��6    5!      �� 5"      �� 5#      $
��0.5* �6$   .+�5&      �  5'      �� 5(      �� 5)      �� 5*      �� 5+      �� 5,      �� 5-      �� 5.      .+�50      ��  �� Orientation$ 
Horizontal=�6!   .+�51      �� $��Images/Icon_V2.png��6    �� 52      $��
LifeRunner��6    $��19(�65   $	��120��6C   $��Stretch=�6O   
�������$��Center=�6�   $��Center=�6�   $��Sitka Small)�6�   $��Italic$�6�   $��Normal"�6�   53      	� 54      %   LifeRunner.Properties.Resources   Tasks#��Z 6"    d� 	IsChecked$
 TrueY�6K   $��1��6\     
MenuButton#��[ 6i   $��Tasks��6�   	 	� 	GroupName$
	 Menu��6�   $��50��6�   
�������$��22(�6�   $��0,52,0,3q�6  $��2��6  ��6�   �� *
SwitchView+6  	� 55      
   Projects#��Z
 6"   $��3��6N   #��[ 6[   $��Projects��6�   $
	 Menu��6�   $��50��6�   
�������$��22(�6�   ��6   �� *
SwitchView+6�   	� 56         Calendar#��Z 6"   $��4��6N   #��[ 6[   $��Calendar��6�   $
	 Menu��6�   $��50��6�   
�������$��22(�6�   ��6   �� *
SwitchView+6�   	� 57         AddView#��Z 6"   $��5��6M   #��[ 6Z   $��AddView��6�   $
	 Menu��6�   $��50��6�   
�������$��22(�6�   ��6~   �� *
SwitchView+6�   �� 58      $��Images/Task.png��6   $��2��65   $
��Left=�6B   $��45��6]   �� 59      $��Images/List.png��6   $��3��65   $
��Left=�6B   $��40��6]   �� 5:      $��Images/Calendar.png��6   $��4��69   $
��Left=�6F   $��35��6a   $��5,0,0,0q�6m   �� 5;      $��Images/Graph.png��6   $��5��66   $
��Left=�6C   $��35��6^   $��5,0,0,0q�6j   5<      5=      �� 5>      $��1��6   $��20q�6&   $��Bottom=�62   $��Center=�6M   .+�5?      ��    LeftDays#��Z 6     	TextBlock#��[ 6E   $��18��6h   $��0q�6t   y�6   �� *TimeVisible+�� 5@      #��[ 66   $��0,0,0,10q�6Y   $��20��6k   ��6   �� *
TimeLeft+y�6w   �� *TimeVisible+�� 5A      #��[ 6   $��10,0,0,0q�6?   $	��120��6Q   �� 5B         	WillPower#�Z 6    �� 5C      �6   �� *Level+5D      � 5E      $��10��6>     NewPanelColor#��[ 6J   #��[ 6v    � Value 6   �� *LevelProgress+6v   5F      5G      5H      5I      