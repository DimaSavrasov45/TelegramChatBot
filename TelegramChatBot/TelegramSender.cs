using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Collections.ObjectModel;
using System.ComponentModel;

namespace TelegramChatBot
{
    public class TelegramSender : IEquatable<TelegramSender>, INotifyPropertyChanged
    {

        public TelegramSender(string Nickname, long ChatId)
        {
            this.id = ChatId;
            this.nick = Nickname;
            Messages = new ObservableCollection<string>();
        }

        private string nick;
        public string Nick
        {
            get { return this.nick; }

            set
            {
                this.nick = value;
                PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(nameof(this.Nick)));

            }
        }
        private long id;
        public long Id
        {
            get { return this.id; }
            set
            {
                this.id = value;
                PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(nameof(this.Id)));
            }
        }

        public event PropertyChangedEventHandler PropertyChanged;

        public bool Equals(TelegramSender other) => other.Id == this.id;
        public ObservableCollection<string> Messages { get; set; }
        public void AddMessage(string Text) => Messages.Add(Text);




    }
}
