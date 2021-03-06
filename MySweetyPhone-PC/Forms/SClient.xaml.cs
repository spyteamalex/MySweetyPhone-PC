﻿using MaterialDesignThemes.Wpf;
using MySweetyPhone_PC.Tools;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Sockets;
using System.Text;
using System.Threading;
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

namespace MySweetyPhone_PC.Forms
{
    /// <summary>
    /// Логика взаимодействия для SClient.xaml
    /// </summary>
    public partial class SClient : Page, IDisposable
    {
        public SClient()
        {
            InitializeComponent();
        }

        ~SClient()
        {
            if (udpSearching != null) udpSearching.Close();
            if (searching != null && searching.IsAlive) searching.Interrupt();
            if (searching2 != null && searching2.IsAlive) searching2.Interrupt();
        }

        class Server
        {
            public int port;
            public int kind;
            public int type;
            public String name;
            public int mode;
        }

        Thread searching, searching2;
        UdpClient udpSearching = null;

        class ServerInfo
        {
            public int value = 5;
            public ListViewItem lvi;
        }

        private void StartSearching(object sender, RoutedEventArgs e)
        {
            if (searching != null && searching.IsAlive)
            {
                searching.Interrupt();
                udpSearching.Close();
                SearchBtn.Content = "Поиск...";
            }
            else
            {
                Devices.Items.Clear();
                searching = new Thread(() =>
                {
                    try
                    {
                        Dictionary<Tuple<int,String>, ServerInfo> ServerSet = new Dictionary<Tuple<int, String>, ServerInfo>();
                        udpSearching = new UdpClient(Session.BroadcastingPort);
                        IPEndPoint ip = null;
                        while (true)
                        {
                            byte[] data = udpSearching.Receive(ref ip);
                            string message = Encoding.UTF8.GetString(data);
                            Server server = JsonConvert.DeserializeObject<Server>(message);
                            Tuple<int, String> serverTuple = new Tuple<int, string>(server.type, server.name);
                            if (!ServerSet.ContainsKey(serverTuple))
                            {
                                Thread searching2 = new Thread(() =>
                                {
                                    try
                                    {
                                        while (true)
                                        {
                                            foreach (Tuple<int, string> p in ServerSet.Keys.ToList())
                                            {
                                                if (ServerSet[p].value > 0) ServerSet[p].value--;
                                                Application.Current.Dispatcher.Invoke(new Action(() =>
                                                {
                                                    if (ServerSet[p].value <= 0)
                                                    {
                                                        ServerSet[p].lvi.Visibility = Visibility.Collapsed;
                                                    }
                                                    else if (ServerSet[p].lvi != null)
                                                        ServerSet[p].lvi.Visibility = Visibility.Visible;
                                                }));
                                            }
                                            Thread.Sleep(2000);
                                        }
                                    }catch(ThreadInterruptedException _) { }
                                });
                                searching2.Start();
                                ServerInfo si = new ServerInfo();
                                Application.Current.Dispatcher.Invoke(new Action(() =>
                                {
                                    StackPanel sp = new StackPanel();
                                    sp.Margin = new Thickness(10);
                                    sp.Orientation = Orientation.Horizontal;
                                    PackIcon pi = new PackIcon();
                                    pi.Foreground = new SolidColorBrush(Colors.White);
                                    pi.Kind = server.kind == 0 ? PackIconKind.Smartphone : PackIconKind.Computer;
                                    pi.Height = pi.Width = 40;
                                    TextBlock tb = new TextBlock();
                                    tb.Text = server.name + '\n' + Session.decodeType(server.type);
                                    tb.Foreground = new SolidColorBrush(Colors.White);
                                    tb.FontSize = 15;
                                    tb.Padding = new Thickness(10, 0, 0, 0);
                                    sp.Children.Add(pi);
                                    sp.Children.Add(tb);
                                    ListViewItem lvi = new ListViewItem();
                                    lvi.Content = sp;
                                    Devices.Items.Add(lvi);
                                    si.lvi = lvi;
                                    lvi.Selected += delegate
                                    {
                                        searching.Interrupt();
                                        searching2.Interrupt();
                                        udpSearching.Close();
                                        SearchBtn.Content = "Поиск...";
                                        lvi.Visibility = Visibility.Collapsed;
                                        SessionClient sessionClient = new SessionClient(ip.Address, server.port, server.type, server.mode);
                                    };
                                }));
                                ServerSet.Add(serverTuple, si);
                            }
                            else
                            {
                                ServerSet[serverTuple].value = 5;
                            }
                        }
                    }
                    catch (System.Net.Sockets.SocketException) { }
                });
                searching.Start();
                SearchBtn.Content = "Остановить поиск";
            }
        }

        public void Dispose()
        {
            if (udpSearching != null) udpSearching.Close();
            if (searching != null && searching.IsAlive) searching.Interrupt();
        }
    }
}
