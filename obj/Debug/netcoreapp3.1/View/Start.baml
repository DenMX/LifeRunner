   M S B A M L   `   `   `  ����E  ALifeRunner, Version=1.1.0.0, Culture=neutral, PublicKeyToken=null1clr-namespace:LifeRunner.ViewLifeRunner.View  5   	   =#clr-namespace:LifeRunner.PropertiesLifeRunner.Properties  5   	       LifeRunner.View.Start   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   /localclr-namespace:LifeRunner.View     5   	   3res#clr-namespace:LifeRunner.Properties     5   	   -   5        $	��440��5	   	   $	��600��6   
������   � 
ResizeMode$  NoResize=�6T   $��0q�6j    � WindowStyle$
 None=�6~    � 	Resources 5
       �� 
TargetType   	TextBlock �� BasedOn �� Property �� Value 
 Button��%T  '��       7   '�� �     7  �� 5   
   " ��6   8   .�5      ��  � ��$
 Bold"�6+   �� 5       � ��$ 14(�6)   �� 5       � �� �	#FFBBDE1A6+   5      �� 5   
   " ��6   8   .�5      ��  � ��
 �����6+   �� 5       � ��$ 18(�6)   �� 5       � ��$
 Bold"�6+   5      5      .��5      � .+�5   
   �� $ ��Images\Background_Bich.jpg��6   $��Stretch=�64   $��Stretch=�6R   �� 5   
   -   5         ��Name$ 	IntroText��5      $	��Top=�6'   $��0,20,0,0q�6?   $��Center=�6Q   %   LifeRunner.Properties.Resources   Intro1#��Z 6n   $	��500��6�   $	��300��6�   $��WrapWithOverflow=�6�   �� 5   
   -   5        	 ��Name$	 SecondPanel��5      $	��Top=�6*   $��Stretch=�6B   $��20q�6`   $y�Hidden=�6l   .+�5      �� 
   Intro2#��Z
 6   $	��400��6?   $��50��6K   $��WrapWithOverflow=�6W   �� 5      $��ChooseYourBirthDate��6   $	��150��63   (  "System.Windows.Controls.DatePicker  5      -   5        $��Birth��5      $��Center=�6&   $	��250��6C   6O   �� 5      -   5        $ LeftTimeText��5      $y�Hidden=�6.   5      �� 5   
    �� Orientation$ 
Horizontal=�6   $��Right=�6.   $��Bottom=�6J   $��20q�6e   .+�5       �� -   5        	   No#��Z 5    ,   �� 5!      -   5        
   Yes#��Z 5!   -   $��Right=�6T   5"      5$      5%      