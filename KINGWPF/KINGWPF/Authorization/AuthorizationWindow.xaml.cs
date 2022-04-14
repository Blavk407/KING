using System;
using System.Collections.Generic;
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
using System.Windows.Shapes;
using KINGWPF.Classes;

namespace KINGWPF.Authorization
{
    /// <summary>
    /// Логика взаимодействия для AuthorizationWindow.xaml
    /// </summary>
    public partial class AuthorizationWindow : Window
    {
        public AuthorizationWindow()
        {
            InitializeComponent();
            AllContent.Visibility = Visibility.Hidden;     
        }

        private void WindowBorder_MouseLeftButtonDown(object sender, MouseButtonEventArgs e)
        {
            DragMove();
        }

        private void AuthorizationButton_Click(object sender, RoutedEventArgs e)
        {

        }

        private void ExitButton_Click(object sender, RoutedEventArgs e)
        {
            Close();
        }

        private async void RegistrationTextblock_MouseLeftButtonUp(object sender, MouseButtonEventArgs e)
        {
            RegistrationWindow registrationWindow = new RegistrationWindow();
            await Loader.LoadAsync(Dispatcher, AllContent, LoadingMediaElement, async () => registrationWindow.ShowDialog());
        }

        private async void Window_Loaded(object sender, RoutedEventArgs e)
        {
            //await Loader.LoadAsync(Dispatcher, AllContent, LoadingMediaElement, async () => { });
        }
    }
}
