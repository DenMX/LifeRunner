   M S B A M L   `   `   `  ���� E  ALifeRunner, Version=1.2.0.0, Culture=neutral, PublicKeyToken=null1clr-namespace:LifeRunner.ViewLifeRunner.View  =#clr-namespace:LifeRunner.PropertiesLifeRunner.Properties      LifeRunner.View.Projects   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     @d2http://schemas.microsoft.com/expression/blend/2008     /localclr-namespace:LifeRunner.View     3res#clr-namespace:LifeRunner.Properties       � 	Resources   �� 
TargetType   ListBoxTheme �� BasedOn 	 Label  	TextBlock  CheckBox  FlatTextBox��%�   '��       7   '��      7  '��      7  '�� -     7  '�� <     7  �� " ��8   �� " ��8   �� " ��8   �� " ��8   �� " ��8   .���   NewPanelColor#��[  � ColumnDefinitions �� �� $
��0.4* � � RowDefinitions �� �� $
��0.1* �.+��  �� $
��0.1* ��� .+���   NewAppColor#��[ $��2,0,0,0q���  �� Orientation$ 
Horizontal=�.+��� %   LifeRunner.Properties.Resources   
NewProject#��Z $��	10,10,0,0q�  
TextButton#��[ ���� *NewProjectCommand+��    Edit � ToolTip# Z   	ImgButton#��[ $
��10,0q����� *EditProject+.���� $��Images/Pencil.png��$��20��$��20���� 	 J� Opacity$		 0.8Q�$��0,0,3,10q�$��1������ *
Projects+
 �� SelectedItem
 �� *SelectedProject+���� .R���  �� CornerRadius$ 10�� 	 NewUIItemsColor#��[	 $��Stretch=�._��� .+��� $ 
Horizontal=�.+���    Name#��Z $��12(���    WastedToday#��Z $��12(���    NeedTime#��Z $��12(��� $ 
Horizontal=�.+��� $��Center=�$��Center=�$��Center=�$��Center=�.������ .R��� $ 10�� 
 NewAppBrightColor#��[
 ._��� $��Stretch=�$��Stretch=�����  �� Path$
 Name�.���� $��Center=�$��Center=�$��Center=�$��Center=�.������ .R��� $ 10��#��[
 ._��� $��Stretch=�$��Stretch=����� $ 
WastedTime�.���� $��Center=�$��Center=�$��Center=�$��Center=�.������ .R��� $ 10��#��[
 ._��� $��Stretch=�$��Stretch=����� $ NeedTime�.���� $
��Left=�$	��5,0q�.+���    Progress#��Z � $��10��#��[
 #��[  � Value �� $ Progress�9�    More#��Z  9� 
IsExpanded$ False��  ForegroundColorBrush#��[ .��]� .+��� $	��300��$	��100�� �� AcceptsReturn$
 True��$��Center=�$��Center=�$��Center=�$��Center=�.������ .R��� $ 10��#��[
 ._��� $	��300��$	��100��$��Stretch=�$��Stretch=�$��Stretch=�$��Stretch=����� $ Description�.���� .+���    Complete# Z #��[ ���� $ CompleteCommand�.���� $��Images/Check.png���� $��0,20,0,0q�   Delete# Z #��[ ���� $ CancelCommand�.���� $��Images/Trash.png���� #��[
 $��1��$��1,0,0,0q��� $ 
Horizontal=�$��1��.+���    ProjectsCount#��Z �� $��50��$��40��$	��Top=�$��Center=����� *CurrentProjectsCount+��    ProjectsCompleted#��Z $
��10,0q��� $��50��$��40��$	��Top=�$��Center=����� *CompletedProjectsCount+�� #��[
 $��1��$��1��$��2,0,0,0q�._��� $ 
Horizontal=�$��1��$��1��$��Right=�.+��� # Z #��[ $
��10,0q����� *EditCommand+.���� $��Images/Pencil.png���� # Z #��[ $
��10,0q����� *CompleteCommand+.���� $��Images/Check.png���� # Z #��[ $
��10,0q����� *CancelCommand+.���� $��Images/Trash.png���� $��1��$��2,0,0,0q�#��[
 $��1q����� *SelectedProject.Tasks+
 �� *SelectedTask+���� .R��� $ 5��#��[	 $��2q�._��� .+��� .+���  �� 
IsReadOnly$
 True��$��Center=�$��Center=�$��Center=�$��Center=�.������ .R��� $ 10��#��[
 ._��� $��Stretch=�$��Stretch=�$��Stretch=�$��Stretch=����� $
 Name�.����    
WastedTime#��Z �� $
 True��$��Center=�$��Center=�$��Center=�$��Center=�.������ .R��� $ 10��#��[
 ._��� $��Stretch=�$��Stretch=�$��Stretch=�$��Stretch=����� $ 
WastedTime�.���� .+���    	Completed#��Z ${�False�� d� 	IsChecked �� $ IsCompleted���    Regular#��Z ${�False�� �� $ 	IsRegular�