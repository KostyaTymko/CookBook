using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RecipeMvvmPattern.Model
{
    class Recipe : INotifyPropertyChanged
    {
        private int id;
        private string title;
        private string shortTitle;
        private string content;
        private string path;

        public int Id
        {
            get { return id; }
            set
            {
                id = value;
                OnPropertyChanged("Id");
            }
        }

        public string Title
        {
            get { return title; }
            set
            {
                title = value;
                OnPropertyChanged("Title");
            }
        }

        public string ShortTitle
        {
            get { return shortTitle; }
            set
            {
                shortTitle = value;
                OnPropertyChanged("ShortTitle");
            }
        }

        public string Content
        {
            get { return content; }
            set
            {
                content = value;
                OnPropertyChanged("Content");
            }
        }

        public string Path
        {
            get { return path; }
            set
            {
                path = value;
                OnPropertyChanged("Path");
            }
        }

        public Recipe()
        {
        }

        public Recipe(int id, string title, string shortTitle, string content, string path)
        {
            this.Id = id;
            this.Title = title;
            this.ShortTitle = shortTitle;
            this.Content = content;
            this.Path = path;
        }

        public event PropertyChangedEventHandler PropertyChanged;

        protected void OnPropertyChanged(string propertyName)
        {
            if (PropertyChanged != null)
            {
                PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
            }
        }
    }
}
