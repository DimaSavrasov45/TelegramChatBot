   M S B A M L   `   `   `  ����J  FTelegramChatBot, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null1clr-namespace:TelegramChatBotTelegramChatBot  5   	        TelegramChatBot.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   /localclr-namespace:TelegramChatBot     5   	     � Title$  
MainWindow��5   	   $	��450��6   $	��800��6)   .��5	      � $	��406��6   $��0,0,-5,0q�6   z�5
   
   V� 5      .~�5      �� �� 5      �� 5       �� Angle$ -0.335Q�6"   T� 5      5       � RowDefinitions 5   
   �� 5      $��5 �6   �� 5      $��* �6   �� 5      $��* �6   �� 5      $	��130 �6   �� 5      $��5 �6    � ColumnDefinitions 5   
   �� 5      �� 5      $��4* �6   �� 5      $��609.524 �6   �� 5      $��5 �6   .+�5$   
   �� 
���   �$��5,2,5,5q�5%       �� CornerRadius$ 5��5&       �� Padding$ 5q�5'      $��1q�5(      $��3��5)      $��2��5*       J� RenderTransformOrigin$ 0.5,0.5&�6!   z�5+      V� 5,      .~�5-      �� �� 5.      �� 5/      $ 0.103Q�6&   T� 50      51      ._�53      �� -   5         ��Name$ textMessage��53      $��Stretch=�55      $��Stretch=�56      $��20(�57      ��54      ��  �� ElementName$ 
ListSender��	 �� Path$	 SelectedItem.Messages���58      �� 59      .R�5:      �� ���	#FF2B5278$��5q�5;   !   $ 5��5<   !   $
 15,5q�5=   !   ._�5>      �� $��20(�69   
���������6(   �� 6G   5?      5C      5G      5H      �� 5I   
   
���   �$��5q�5J      $ 5��5K      $ 5q�5L      $��1q�5M      $��3��5N      $��2��5O      ._�5Q      �� .+�5S      �� -   5        
 ��Name$
 textOfAnswer��5S      $��60��5T       �� TextWrapping$
 Wrap=�5U      $��Bottom=�5V      $��Times New Roman)�5W       �� AutoWordSelection$
 True��5X      $��20(�5Y      $��5q�6)   .��64   5[      �� 5\      -   5         ��Name$ btnSendMessage��5\      $��Отправить��61   $��Times New Roman)�5^      $��20(�5_      $��5q�5`      5b      5c      5d      �� 5e   
   
���   �$��5,0,5,5q�5f      $ 5��5g      $ 5q�5h      $��1q�5i      $��4��5j      $��2��6"   ._�5k      �� -   5        $ 
ListSender��5k      $��Stretch=�6*   $��Stretch=�6I   ��5l      �� 5m      .R�5n      �� ��6$   �� *Nick+5o      5q      5r      5s      5t      