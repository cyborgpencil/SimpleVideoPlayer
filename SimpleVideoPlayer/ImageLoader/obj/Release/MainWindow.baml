   M S B A M L   `   `   `  ���� L  HSimpleVideoPlayer, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null5clr-namespace:SimpleVideoPlayerSimpleVideoPlayer  "    SimpleVideoPlayer.MainWindow   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     1localclr-namespace:SimpleVideoPlayer       � Title$  
MainWindow��$	��768��$
��1024��.��� ���	#FFCBCBCB � ColumnDefinitions �� $��8* ��� $
��495* ��� $��5* �.+��� -    ��Name$ btn_Load��$
��Load��$
��Left=�$��	10,10,0,0q�$	��Top=�$��78��$��30��$��2���� -   $ btnPlay��$
��Play��$
��Left=�$��287,670,0,0q�$	��Top=�$��76��$��1��{�.  �� -   $ btnPause��$��Pause��$
��Left=�$��398,670,0,0q�$	��Top=�$��76��$��1��{�.  �� -   $ btnStop��$
��Stop��$
��Left=�$��508,670,0,0q�$	��Top=�$��76��$��1��{�.  �� $��1�����	#FFF4F4F5$
��Left=�$	��584��$��	94,36,0,0q�
���   �$	��Top=�$	��896��r� -    r�Name$ mediaElement��$
��Left=�$	��584��$��	94,36,0,0q�$	��Top=�$	��896�� r� LoadedBehavior$ Manual=� r� ScrubbingEnabled . $��1���� -    ��Name$ slider��$��1��$
��Left=�$��216,625,0,0q�$	��Top=�$	��403�� � Maximum$	 100Q� � SmallChange$ 1Q��� -   	 ��Name$	 imgPlay��$
��Left=�$	��584��$��	94,36,0,0q�$	��Top=�$	��896��$��images/PlayBackground.jpg��$��1��$
��Fill=�$y�Hidden=��� -   
 ��Name$
 	lblStatus��$��Waiting To Load a Video��$��1��$
��Left=�$��
10,701,0,0q�$	��Top=�$	��255��
��������� -	   $
 lblCurrentPlayTime��$��0:00 ��$��1��$
��Left=�$��
34,573,0,0q�$	��Top=�$��55���� -
   $
 lblVidTimeLength��$��0:00 ��$��1��$
��Left=�$��
34,599,0,0q�$	��Top=�$��55�� J� RenderTransformOrigin$ 0.414,-0.038&��� -   $ slideVolume��$��1��$
��Left=�$��843,625,0,0q�$	��Top=�$	��137��$ 1Q� � Value$	 0.5Q��� -   $
 label��$��Play Position��$��1��$
��Left=�$��361,639,0,0q�$	��Top=�$��78���� -   $
 
label_Copy��$��Volume��$��1��$
��Left=�$��882,639,0,0q�$	��Top=�$ 0.487,0.596&�$��98��