   M S B A M L   `   `   `  ����K  GMySweetyPhone-PC, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null?$clr-namespace:MySweetyPhone_PC.FormsMySweetyPhone_PC.Forms  5   	   D @FluentWPF, Version=0.8.0.6, Culture=neutral, PublicKeyToken=nullP6clr-namespace:SourceChord.FluentWPF;assembly=FluentWPFSourceChord.FluentWPF 5	   	   '    !MySweetyPhone_PC.Forms.FileViewer   5   	   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   6local$clr-namespace:MySweetyPhone_PC.Forms     5   	   U QMaterialDesignThemes.Wpf, Version=3.0.1.920, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	   ?fw6clr-namespace:SourceChord.FluentWPF;assembly=FluentWPF  5	   	   )  #SourceChord.FluentWPF.AcrylicWindow    Enabled  .    NoiseOpacity$
 0.01Q�5   	   $��15(�5   	   $	��600��6   $
��1080��6$   $	��600��61   $	��900��6A    � WindowStyle$
 None=�6P    � AllowsTransparency . 
������  � WindowStartupLocation$ CenterScreen=�6�   .��5      �  � RowDefinitions 5   
   �� 5      $
��auto �6   �� 5      $��* �6   .+�5   
   � .+�5      ��  �� Orientation$ 
Horizontal=�6   .+�5      �� -   5        $
��auto��5   &   $
��auto��63   $��15q�6A   
�������.��5      '  !MaterialDesignThemes.Wpf.PackIcon     Kind$ 	ArrowLeft=�6.   $��20��6?   $��20��6K   5      �� 5      -   5        $
��auto��5   .   $
��auto��6;   $��15q�6I   
�������.��5        $ Reload=�6.   $��20��6<   $��20��6H   5      �� 5      -   5        $
��auto��5   ,   $
��auto��69   $��15q�6G   
�������.��5        $ Upload=�6.   $��20��6<   $��20��6H   5      �� 5      -   5        $
��auto��5   +   $
��auto��68   $��15q�6F   
�������.��5        $ 	FolderAdd=�6.   $��20��6?   $��20��6K   5       �� 5!      -   5        $
��Path��5!      $
��auto��6(   
�������$��Center=�6I   $��15q�6d   6s   5"      5#      � 5$   
   $��1��6   .+�5%      �� -   5        $��	FilesList��5%      $��Stretch=�6(   $��Stretch=�6F   6d   5&      5'      5(      