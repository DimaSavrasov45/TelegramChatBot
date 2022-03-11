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
using System.Windows.Navigation;
using System.Windows.Shapes;
using Telegram.Bot;
using System.Collections.ObjectModel;
using Telegram.Bot.Args;
using System.IO;
using System.Diagnostics;

namespace TelegramChatBot
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        ObservableCollection<TelegramSender> Senders;
        TelegramBotClient bot;
        private static string token = "5296648309:AAHKcVrc80cVmUxlTekQdpa2vfvlNUqJi5w";
        public MainWindow()
        {
            InitializeComponent();

            Senders = new ObservableCollection<TelegramSender>();
            ListSender.ItemsSource = Senders;
            bot = new TelegramBotClient(token);


            bot.OnMessage += delegate (object sender, MessageEventArgs e)
            {

                string msg = $"{DateTime.Now} : {e.Message.Chat.FirstName} {e.Message.Chat.Id}   {e.Message.Text}";
                File.AppendAllText("data.log", $"{msg}\n");

                Debug.WriteLine(msg);

                this.Dispatcher.Invoke(() =>
                {
                    TelegramSender person = new TelegramSender(e.Message.Chat.FirstName, e.Message.Chat.Id);
                    if (!Senders.Contains(person)) Senders.Add(person);
                    Senders[Senders.IndexOf(person)].AddMessage($"{person.Nick} : {e.Message.Text}");
                });




            };
            bot.StartReceiving();

            btnSendMessage.Click += delegate { SendMessage(); }; 




         }
        public void SendMessage()
        {
            var concreateSender = Senders[Senders.IndexOf(ListSender.SelectedItem as TelegramSender)];
            string responseMsg = $"Support : {textOfAnswer.Text}";
            concreateSender.Messages.Add(responseMsg);

            bot.SendTextMessageAsync(concreateSender.Id, textOfAnswer.Text);
            string logText = $"{DateTime.Now} >> {concreateSender.Id} {concreateSender.Nick} {responseMsg}\n";
            File.AppendAllText("data.log", logText);
            textOfAnswer.Text = String.Empty;
        }

     
    }


}



