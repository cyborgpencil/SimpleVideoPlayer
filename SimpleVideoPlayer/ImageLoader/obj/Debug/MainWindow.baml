   M S B A M L   `   `   `  ����L  HSimpleVideoPlayer, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null5clr-namespace:SimpleVideoPlayerSimpleVideoPlayer  5   	   "    SimpleVideoPlayer.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   1localclr-namespace:SimpleVideoPlayer     5   	     � Title$  
MainWindow��5   	   $	��768��6   $
��1024��6)   .��5	      � ���	#FFCBCBCB � ColumnDefinitions 5
   
   �� 5      $��8* �6   �� 5      $
��495* �6   �� 5      $��5* �6   .+�5   
   �� -   5         ��Name$ btn_Load��5      $
��Load��6#   $
��Left=�62   $��	10,10,0,0q�6M   $	��Top=�6`   $��78��6x   $��30��6�   $��2��6�   �� 5   
   -   5        $ btnPlay��5      $
��Play��6"   $
��Left=�61   $��287,670,0,0q�6L   $	��Top=�6a   $��76��6y   $��1��6�   {�.  6�   �� 5   
   -   5        $ btnPause��5      $��Pause��6#   $
��Left=�63   $��398,670,0,0q�6N   $	��Top=�6c   $��76��6{   $��1��6�   {�.  6�   �� 5   
   -   5        $ btnStop��5      $
��Stop��6"   $
��Left=�61   $��508,670,0,0q�6L   $	��Top=�6a   $��76��6y   $��1��6�   {�.  6�   �� 5   
   $��1��6   ���	#FFF4F4F5$
��Left=�65   $	��584��6P   $��	94,36,0,0q�6]   
���   �$	��Top=�6   $	��896��6�   r� 5   
   -   5         r�Name$ mediaElement��5      $
��Left=�6-   $	��584��6H   $��	94,36,0,0q�6U   $	��Top=�6h   $	��896��6�    r� LoadedBehavior$ Manual=�6�    r� ScrubbingEnabled . $��1��6�   6�   �� 5   
   -   5         ��Name$ slider��5      $��1��6!   $
��Left=�61   $��216,625,0,0q�6L   $	��Top=�6a   $	��403��6y    � Maximum$	 100Q�6�    � SmallChange$ 1Q�6�   �� 5   
   -   5        	 ��Name$	 imgPlay��5      $
��Left=�6!   $	��584��6<   $��	94,36,0,0q�6I   $	��Top=�6\   $	��896��6t   $��images/PlayBackground.jpg��6�   $��1��6�   $
��Fill=�6�   $y�Hidden=�6�   �� 5   
   -   5        
 ��Name$
 	lblStatus��5      $��Waiting To Load a Video��6#   $��1��6E   $
��Left=�6U   $��
10,701,0,0q�6p   $	��Top=�6�   $	��255��6�   
�������6�   �� 5   
   -	   5        $
 lblCurrentPlayTime��5      $��0:00 ��6,   $��1��6<   $
��Left=�6L   $��
34,573,0,0q�6g   $	��Top=�6{   $��55��6�   �� 5   
   -
   5        $
 lblVidTimeLength��5      $��0:00 ��6*   $��1��6:   $
��Left=�6J   $��
34,599,0,0q�6e   $	��Top=�6y   $��55��6�    J� RenderTransformOrigin$ 0.414,-0.038&�6�   �� 5   
   -   5        $ slideVolume��5      $��1��6&   $
��Left=�66   $��843,625,0,0q�6Q   $	��Top=�6f   $	��137��6~   $ 1Q�6�    � Value$	 0.5Q�6�   �� 5   
   -   5        $
 label��5      $��Play Position��6   $��1��67   $
��Left=�6G   $��361,639,0,0q�6b   $	��Top=�6w   $��78��6�   �� 5   
   -   5        $
 
label_Copy��5      $��Volume��6$   $��1��65   $
��Left=�6E   $��882,639,0,0q�6`   $	��Top=�6u   $ 0.487,0.596&�6�   $��98��6�   5      5!      