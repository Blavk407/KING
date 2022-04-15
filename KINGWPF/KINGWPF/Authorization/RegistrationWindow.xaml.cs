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

namespace KINGWPF.Authorization
{
    /// <summary>
    /// Логика взаимодействия для RegistrationWindow.xaml
    /// </summary>
    public partial class RegistrationWindow : Window
    {
        public RegistrationWindow()
        {
            InitializeComponent();
        }

        private void WindowBorder_MouseLeftButtonDown(object sender, MouseButtonEventArgs e)
        {
            DragMove();
        }

        private void ExitButton_Click(object sender, RoutedEventArgs e)
        {
            Close();
        }

        private void PasswordRepeatPasswordBox_PasswordChanged(object sender, RoutedEventArgs e)
        {
            BindInputPasBoxWithTextBox(PasswordRepeatPasswordBox, PasswordRepeatTextBox);
        }

        private void BindInputPasBoxWithTextBox(PasswordBox passwordBox, TextBox textBox)
        {
            textBox.Text = passwordBox.Password;
            if (passwordBox.Password != string.Empty)
                textBox.Visibility = Visibility.Hidden;
            else
                textBox.Visibility = Visibility.Visible;
        }

        private void PasswordPasswordBox_PasswordChanged(object sender, RoutedEventArgs e)
        {
            BindInputPasBoxWithTextBox(PasswordPasswordBox, PasswordTextBox);
        }
    }
}
