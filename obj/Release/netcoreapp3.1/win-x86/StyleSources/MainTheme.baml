   M S B A M L   `   `   `  ���� E  ALifeRunner, Version=1.2.0.0, Culture=neutral, PublicKeyToken=null1clr-namespace:LifeRunner.ViewLifeRunner.View  \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089   PanelColorBrush  �� Color  UIElementNormalColorBrush  ForegroundColorBrush  FOregroundButtonColorBrush  NewAppColor  NewAppBrightColor  NewPanelColor  NewUIItemsColor  AppColor 	 
PanelColor 
 UIItemsColor �� 
TargetType 	 Label �� Property �� Value  	TextBlock  FlatTextBox  CheckBox  ComboBoxNormalBorderBrush ! ComboBoxNormalBackgroundBrush # ComboBoxDisabledForegroundBrush # ComboBoxDisabledBackgroundBrush  ComboBoxDisabledBorderBrush �� 
TargetType   ComboBoxToggleButtonTemplate � ColumnDefinitions �� CornerRadius �� Triggers P� Property	 P� Value
 �� 
TargetName  ComboBoxFlatStyle �� 	ClickMode d� 	IsChecked �� Path �� RelativeSource �� Mode J� IsHitTestVisible �� SelectionBoxItem �� SelectionBoxItemTemplate �� 
IsReadOnly �� 
IsReadOnly � AllowsTransparency �� IsDropDownOpen J� SnapsToDevicePixels � ActualWidth �� MaxDropDownHeight-   'System.Windows.Input.KeyboardNavigation    DirectionalNavigation 
 Button  
TextButton �� BasedOn  	ImgButton  ListBoxTheme�� F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     :x,http://schemas.microsoft.com/winfx/2006/xaml     %imgclr-namespace:LifeRunner.View  %  &	        &	      &	 *     &	 @     &	 T     &	 i     &	 ~     &	 �     &	 �     &		 �     &	
 �     &	 �     7  &	 �    7  &	 .    7  &	     &	 �    &	 �    &	 �    &	 �    &	     &	     7  7  7  7  7  7  7  &	 �    7  7  7  7  7  &	 6    &	 �    7  7  &	 �    7  &	     �� $  	#FF5D2978���� $  	#FF39174B���� $  
WhiteSmoke���� $  DarkGray���� $  	#FF17212B���� $  	#FF242F3D���� $  	#FF0E1621���� $  	#FF182533���� $  	#E5282866���� $  	#FF071640���� $  	#FF1C2B74���� " ��.���  � ��
 ���� ��  � ��8   ��  � ��$	 150����  � ��$ 30����  � ��$
 Left=���  � ��$ Center=���  � ��$ Sitka Small)���  � ��$	 0,5q��� " ��.���  � ��
 ���� ��  � ��8   ��  � ��$	 100����  � ��$ 27����  � ��$	 0,5q��� " ��.���  � ��$	 150����  � ��$ 30����  �@��TextWrapping$ WrapWithOverflow=���  � ��$	 2,5q���  � ��
 ���� ��  � ��$ 0q���  � ��
 �   ���  �@��TextWrapping$
 Wrap=���  � ��$ Center=���  � ��$ Center=���  � ��$ Sitka Small)���  � ��8   �� " ��.���  � ��$
 1, 5q���  � ��$ Center=��� $  	#FF5D2978���� $  	#FF5D2978���� $
  #888���� $
  #eee���� $
  #888���� " d�.R��  �� �� $��20 �.+��� $��Border��$��2��8��  $ 2��$��
1, 1, 1, 1q�8�� �� $��ButtonBorder��$��1��$��
1, 1, 1, 1q����#444$ 1��$��
0, 0, 0, 0q�8�� F� $��Arrow��$��1��=����        �    �� � 	= ��[ � z �� � z     � 	=  	= 	$��Center=����#444$��Center=� P�  �@J�IsMouseOver$
	 True��. ��� $
 ButtonBorder�� � ��
 �����P�  �@d�	IsChecked$
	 TrueY�. ��� $
 ButtonBorder�� � ��
 ������� $
 Arrow�� � �� �	#FF8D979EP�  � {�$	 False��. ��� $
 Border��8   � ���� $
 ButtonBorder��8   � ���� $
 ButtonBorder��8   � ���� 8   � ���� $
 Arrow�� � �� �#999�� " ��.���  � ��$	 100����  � ��$ 27����  � ��$
 Left=���  �@J�SnapsToDevicePixels$
 True����  �@�OverridesDefaultStyle$
 True����  � ��$
 Auto=���  � ��$
 Auto=���  � ��$
 True����  � ��8   ��  �@�FocusVisualStyle Z� ��  � �� �� " ��.R�� .+�d� $��ToggleButton��$��2��$ Press=�$|�False��8��  �� $ IsDropDownOpen� �� *TemplatedParent+$ TwoWay=��� $��ContentSite��$��5, 3, 23, 3q�$ False��$
��Left=�$��Center=�#��z #��z #��z���� $��PART_EditableTextBox��$��3, 3, 23, 3q�# z $y�Hidden=�
������ $��Center=�$��Center=�$
|�True��.������ " ��.R��� $��PART_ContentHost��$|�False��.��� $��Popup��$��Bottom=�$|�False��$
 True��#��z $��Slide=�.��� $��DropDown��$
 True��#��z #��z .+��� $��DropDownBorder��8�� $��
0, 1, 0, 0q�$ 2��$��1,1,1,1q�8�� �� $��4q�$
 True��.���� $ 	Contained=� P�  �@��HasItems$	 False��. ��� $
 DropDownBorder�� � ��$ 95��P�  � {�$	 False��. ��� 8   � ��P�  �@��
IsGrouping$
	 True��. ���  � ��$ False��P�  �@��
IsEditable$
	 True��. ���  �@  	IsTabStop$ False���� $
 PART_EditableTextBox�� � y�$ Visible=��� $
 ContentSite�� � y�$ Hidden=��� " ��.���  � ��
 ���� ��  � ��$ 0q���  � ��$	 1,5q���  � ��$ 30����  � ��$	 150���� " ��8   .���  � �� �� " ��.R�� .+��� $��
ButtonText��#��z��8�� $��Center=�$	��Top=�$��12(�$
��Bold"� P�  �@J�IsMouseOver$
	 True��. ��� $
 
ButtonText�� � ��
 �����P�  � {�$	 False��. ��� $
 
ButtonText�� � ��
 �   ��� " ��8   .���  � ��$ 30����  � ��$ 30����  � �� �� " ��.R��� $��border��$ 3��
������ 
���   �$��0q�._���  P�  �@J�IsMouseOver$
	 True��. ��� $
 border�� � ��$ 1q�P�  � {�$	 False��. ��� $
 border�� � ��$ 1q��� $
 border�� � ��
 �  ���� " ��.���  � ��
 ���� ��  � ��$ 0q���  � ��$ Center=���  � ��$ Center=���  � �� �� .R�� ��  � ��$ Disabled=�