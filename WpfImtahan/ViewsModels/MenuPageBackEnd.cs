using MaterialDesignThemes.Wpf;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Reflection.Metadata;
using System.Text;
using System.Text.Json;
using System.Threading.Tasks;
using System.Windows.Controls;
using System.Windows.Input;
using WpfImtahan.Commands;
using WpfImtahan.Models;
using WpfImtahan.Statics;
using WpfImtahan.Views.Pages;

namespace WpfImtahan.ViewsModels
{

    public class MenuPageBackEnd: ICommand
    {
        public ICommand UserCommand { get; set; }
        public ICommand AdminCommand { get; set; }
        public MenuPageBackEnd()
        {
            GetUser.Users = JsonSerializer.Deserialize<List<User>>(File.ReadAllText("../../../DataBase/users.json"))!;
            GetUser.car = JsonSerializer.Deserialize<List<Car>>(File.ReadAllText("../../../DataBase/cars.json"))!;
            UserCommand = new RelayCommand(Execute, CanExecute);
            AdminCommand = new RelayCommand(ExAdminCommand, CanExAdminCommand);
        }

        private bool CanExAdminCommand(object? obj)
        {
            return true;
        }

        private void ExAdminCommand(object? obj)
        {
            var page = obj as MenuPage;

            AdminPage userp = new AdminPage();
            page.DataContext = userp;
            page.NavigationService.Navigate(userp);
        }

        public event EventHandler? CanExecuteChanged;

        public bool CanExecute(object? parameter)
        {
            return true;
        }

        public void Execute(object? parameter)
        {
            var page = parameter as MenuPage;

            UsersPage userp = new UsersPage();
            page.DataContext = userp;
            page.NavigationService.Navigate(userp);
           
        }
    }
}
