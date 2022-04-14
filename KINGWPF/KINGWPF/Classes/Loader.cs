using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Threading;

namespace KINGWPF.Classes
{
    internal class Loader
    {
        public static async Task LoadAsync(Dispatcher dispatcher,Grid AllContentGrid, MediaElement LoadingMediaElement,Func<Task> asyncFunc)
        {
            dispatcher.Invoke(() => AllContentGrid.Visibility = Visibility.Hidden);
            dispatcher.Invoke(() => { LoadingMediaElement.Position = TimeSpan.FromTicks(1); LoadingMediaElement.Play(); LoadingMediaElement.Visibility = Visibility.Visible; });
            await Task.Delay(5000);
            await asyncFunc();
            dispatcher.Invoke(() => AllContentGrid.Visibility = Visibility.Visible);
            dispatcher.Invoke(() => { LoadingMediaElement.Stop(); LoadingMediaElement.Visibility = Visibility.Hidden; });
        }
    }
}
