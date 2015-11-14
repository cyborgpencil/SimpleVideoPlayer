using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Windows.Threading;
using Microsoft.Win32;

namespace SimpleVideoPlayer
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public TimeSpan CurrentPlayTime = new TimeSpan();
        public TimeSpan VideoPlayTime = new TimeSpan();
        public DispatcherTimer timer = new DispatcherTimer();

        public bool VideoIsPlaying { get; private set; }

        public MainWindow()
        {
            InitializeComponent();
            

            CenterWindow();

            AppInit();

            if (mediaElement.NaturalDuration.HasTimeSpan)
            {
                lblCurrentPlayTime.Content = mediaElement.Position;
            }
            else
                lblCurrentPlayTime.Content = VideoPlayTime;
        }

        private void AppInit()
        {
            // Time settings for video
            lblCurrentPlayTime.Content = CurrentPlayTime;
            lblVidTimeLength.Content = VideoPlayTime;

            // media element
            mediaElement.LoadedBehavior = MediaState.Manual;

            // Timer
            timer.Interval = TimeSpan.FromMilliseconds(1);
            timer.Tick += Timer_Tick;
            timer.Start();

            // Slider
            slider.AddHandler(MouseLeftButtonDownEvent,
                      new MouseButtonEventHandler(slider_MouseLeftButtonDown),
                      true);

            // Volume Slider
            slideVolume.AddHandler(MouseLeftButtonUpEvent, new MouseButtonEventHandler(slideVolume_MouseLeftButtonUp), true);

        }

        private void slideVolume_MouseLeftButtonUp(object sender, MouseButtonEventArgs e)
        {
            mediaElement.Volume = slideVolume.Value;
        }

        private void slider_MouseLeftButtonDown(object sender, MouseButtonEventArgs e)
        {
            
            mediaElement.Position = TimeSpan.FromMilliseconds(slider.Value);
            PlayToggle();
            VideoIsPlaying = true;
        }

        private void Timer_Tick(object sender, EventArgs e)
        {
            if(mediaElement.NaturalDuration.HasTimeSpan && VideoIsPlaying)
            {
                lblCurrentPlayTime.Content = mediaElement.Position;
                slider.Value += 1;
            }
        }

        private void LoadVideo()
        {
            OpenFileDialog openFDialog = new OpenFileDialog();
            if(openFDialog.ShowDialog() == true)
            {
                mediaElement.Source = new Uri(openFDialog.FileName, UriKind.Relative);
                mediaElement.LoadedBehavior = MediaState.Manual;

                // Toggle Play image visibility
                imgPlay_ToggleVisibility();

                // Change Stated Text
                lblStatus.Content = "Video Uploaded; Press Play to watch";

                // Disable Play button
                btnPlay.IsEnabled = true;

            }

        }

        private void CenterWindow()
        {
            // Get Screen Width/Height
            double screenWidth = System.Windows.SystemParameters.PrimaryScreenWidth;
            double screenHeight = System.Windows.SystemParameters.PrimaryScreenHeight;

            //Get Windows Width/Heght
            double windowWidth = Width;
            double windowHeight = Height;

            // Set the Window to open at x = (screen_width/2 - (window_width/2))
            // y = (screen_height/2 - (window_height/2))
            double windowPositionLeft = (screenWidth / 2) - windowWidth/2;
            double windowPositionTop = (screenHeight / 2) - windowHeight/2;

            Left = windowPositionLeft;
            Top = windowPositionTop;

        }

        private void btn_Load_Click(object sender, RoutedEventArgs e)
        {
            LoadVideo();
        }

        private void btnPlay_Click(object sender, RoutedEventArgs e)
        {
            if (mediaElement.Source != null)
            {
                // Hide Play image
                imgPlay.Visibility = Visibility.Hidden;

                // Toggle all buttons
                PlayToggle();

                // Change Status text
                lblStatus.Content = "Video Playing...";

                // Isplaying
                VideoIsPlaying = true;

                mediaElement.Position = TimeSpan.FromMilliseconds(slider.Value);

                // Play
                mediaElement.Play();
            }
        }

        private void btnPause_Click(object sender, RoutedEventArgs e)
        {
            if (mediaElement.Source != null)
            {
                mediaElement.Pause();

                // Change Status text
                lblStatus.Content = "Video Paused...";

                // !Isplaying
                VideoIsPlaying = true;

                PauseToggle();
            }
        }

        private void btnStop_Click(object sender, RoutedEventArgs e)
        {
            if (mediaElement.Source != null)
            {
                mediaElement.Stop();

                // !Isplaying
                VideoIsPlaying = true;

                // Toggle buttons
                StopToggle();
            }

            // Change Status text
            lblStatus.Content = "Video Stopped...";
        }

        private void imgPlay_MouseDown(object sender, MouseButtonEventArgs e)
        {
        }

        private void imgPlay_ToggleVisibility()
        {
            // Check for vis or hid and then toggle
            if(imgPlay.IsVisible)
            {
                imgPlay.Visibility = Visibility.Hidden;
            }
            else
                imgPlay.Visibility = Visibility.Visible;
        }

        private void PlayToggle()
        {
            btnPlay.IsEnabled = false;
            btnPause.IsEnabled = true;
            btnStop.IsEnabled = true;
        }

        private void StopToggle()
        {
            btnPlay.IsEnabled = true;
            btnPause.IsEnabled = false;
            btnStop.IsEnabled = false;
        }

        private void PauseToggle()
        {
            btnPlay.IsEnabled = true;
            btnPause.IsEnabled = false;
            btnStop.IsEnabled = false;
        }

        private void mediaElement_MediaOpened(object sender, RoutedEventArgs e)
        {
            // Set video legnth
            lblVidTimeLength.Content = mediaElement.NaturalDuration.TimeSpan;

            //set slider max to video max
            slider.Maximum = mediaElement.NaturalDuration.TimeSpan.TotalMilliseconds;

            // Set Volume
            mediaElement.Volume = slideVolume.Value;

        }

    }
}
