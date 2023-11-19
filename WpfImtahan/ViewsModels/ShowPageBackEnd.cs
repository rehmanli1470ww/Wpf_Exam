
using Microsoft.Win32;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.IO;
using System.Linq;
using System.Security.Cryptography.X509Certificates;
using System.Text;
using System.Text.Json;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Automation;
using System.Windows.Controls;
using System.Windows.Input;
using WpfImtahan.Commands;
using WpfImtahan.Models;
using WpfImtahan.Statics;
using WpfImtahan.Views.Pages;

namespace WpfImtahan.ViewsModels
{
    public class ShowPageBackEnd : ICommand
    {
        public User user{ get; set; }
      
        public ObservableCollection<Car> cars { get; set; }
        public ObservableCollection<User> users { get; set; }
        public ICommand MyCars { get; set; }
        public ICommand AddCommand { get; set; }
        public ICommand UserShowBackCommand { get; set; }
        public ICommand SearchCommand { get; set; }
        public ICommand UserShowHomeCommand { get; set; }


        public ShowPageBackEnd(User user)
        {
            cars =JsonSerializer.Deserialize<ObservableCollection<Car>>(File.ReadAllText("../../../DataBase/cars.json"))!;
            users = JsonSerializer.Deserialize <ObservableCollection<User>>(File.ReadAllText("../../../DataBase/users.json"))!;
            

            MyCars = new RelayCommand(Execute, CanExecute);
            AddCommand = new RelayCommand(ExAdCommand, CanExAdCommand);
            UserShowBackCommand = new RelayCommand(ExUserShowBackCommand, CanUserShowBackCommand);
            SearchCommand = new RelayCommand(ExSearchCommand, CanSearchCommand);
            UserShowHomeCommand = new RelayCommand(ExUserShowHomeCommand, CanUserShowHomeCommand);
            this.user = user;
        }

        private bool CanUserShowHomeCommand(object? obj)
        {
            return true;
        }

        private void ExUserShowHomeCommand(object? obj)
        {
            var page = obj as Page;
            MenuPage menu= new MenuPage();
            menu.DataContext = new MenuPageBackEnd();
            page.NavigationService.Navigate(menu);
        }

        private bool CanSearchCommand(object? obj)
        {
            return true;
        }

        private void ExSearchCommand(object? obj)
        {
            
            var txt=obj as string;
            if (string.IsNullOrEmpty(txt))
            {
                cars.Clear();
                foreach (var item in GetUser.car)
                {
                    cars.Add(item);
                }
                return;
            }
            cars.Clear();
           

            foreach (var item in GetUser.car)
            {
                if ((item.Model.ToLower().Contains(txt.ToLower())))
                {
                    cars.Add(item);

                }
            }
           
        }
       
        private bool CanUserShowBackCommand(object? obj)
        {
            return true;
        }

        private void ExUserShowBackCommand(object? obj)
        {
            ((Page)obj).NavigationService.GoBack();
        }

        public ShowPageBackEnd()
        {
        }

        private bool CanExAdCommand(object? obj)
        {
            return true;
        }

        private void ExAdCommand(object? obj)
        {
            var page = obj as Page;
            var newPage = new UserCarAddPage();
            newPage.DataContext = new UserCarAddPageBackEnd(users,user);
            page.NavigationService.Navigate(newPage);

        }

        public event EventHandler? CanExecuteChanged;

       

        public bool CanExecute(object? parameter)
        {
            return true;
        }

        public void Execute(object? parameter)
        {
            if (parameter is Grid grid)
            {
                
                foreach (var child in grid.Children)
                {
                    if (child is ListView listView)
                    {
                        if (listView.Name == "viewMarketuser")
                        {
                            
                            listView.Visibility = Visibility.Visible;
                        }
                        else if (listView.Name == "viewMarket")
                        {
                            
                            listView.IsEnabled = false; 
                        }
                    }
                }
            }
        }
    }
}
