   M S B A M L   `   `   `  ����K  GMySweetyPhone-PC, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null?$clr-namespace:MySweetyPhone_PC.FormsMySweetyPhone_PC.Forms  5   	   D @FluentWPF, Version=0.8.0.6, Culture=neutral, PublicKeyToken=nullP6clr-namespace:SourceChord.FluentWPF;assembly=FluentWPFSourceChord.FluentWPF 5	   	   !    MySweetyPhone_PC.Forms.Main   5   	   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   6local$clr-namespace:MySweetyPhone_PC.Forms     5   	   U QMaterialDesignThemes.Wpf, Version=3.0.1.920, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	   ?fw6clr-namespace:SourceChord.FluentWPF;assembly=FluentWPF  5	   	   )  #SourceChord.FluentWPF.AcrylicWindow    Enabled  .    NoiseOpacity$
 0.01Q�5   	   $��15(�5   	   $	��600��6   $
��1080��6$   $	��600��61   $	��900��6A    � WindowStyle$
 None=�6P    � AllowsTransparency . 
������  � WindowStartupLocation$ CenterScreen=�6�   .��5      �  � ColumnDefinitions 5   
   �� 5      $	��300 �6   �� 5      $��* �6   .+�5   
   � *  $SourceChord.FluentWPF.PointerTracker   Enabled . ���	#101F1F1F.+�5      �� .+�5      �� $��Right=�6    �� Padding$ 10q�68   $��30(�6E   $��MySweetyPhone��6S   $
��Bold"�6h   $��Arial Black)�6z   ��5      �� 5       �� EndPoint$ 0.5,1&�6.   	 �� 
StartPoint$	 0.5,0&�6?   .��5      � 
 � Color$
 #d53869��6+    � Offset$ 0Q�6;   � 5      $
 #cbad6d��6+   $ 1Q�6;   5      5      �� 5       �� Orientation$ 
Horizontal=�6   $��RightToLeft=�66   ��. .+�5      �� -   5        ��5      Z� ��63   Z� .��5       '  !MaterialDesignThemes.Wpf.PackIcon     Kind$ 	ExitToApp=�62   $��20��6C   $��20��6O   5!      �� 5"      -   5        $��NameNav��5"       $��Stretch=�6/   $��15, 15,15,15q�6M   $��Меню��6c   $��DemiBold"�6o   6�   5#      �� 5$      -   5        $
��Menu��5$   .   
�������.@�5%      �� -   5        $��
SClientNav��5%   C   $��1q�6#   .��5&      �� $ 
Horizontal=�6%   .+�5'        $
 Leak=�66   $��15q�6B   �� 5(      $��Подключиться��6(   $��Center=�6<   $��16(�6W   5)      5*      �� 5+      -   5        $��
SServerNav��5+   C   $��1q�6#   .��5,      �� $ 
Horizontal=�6%   .+�5-        $
 Wifi=�66   $��15q�6B   �� 5.      $��Новая Сессия��6(   $��Center=�6<   $��16(�6W   5/      50      51      52      53      � 54   
   $��1��6   ���	#AF282828.+�55       � -   5          �Name$ Content��55      $��0,0,0,0q�6%     � NavigationUIVisibility$ Hidden=�66   57      58      59      