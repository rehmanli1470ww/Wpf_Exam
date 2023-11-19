using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.IO;
using System.Linq;
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
    
    public class AdminShowUsersBackEnd
    {
        public ObservableCollection<User> users { get; set; }
        public ICommand UserShowUsersHomeCommand { get; set; }
        public ICommand UserShowUsersBackCommand { get; set; }
        public ICommand DeleteCommand { get; set; }
        public AdminShowUsersBackEnd()
        {
            
            users = JsonSerializer.Deserialize<ObservableCollection<User>>(File.ReadAllText("../../../DataBase/users.json"))!;
            UserShowUsersHomeCommand = new RelayCommand(ExUserShowUsersHomeCommand, CanUserShowUsersHomeCommand);
            UserShowUsersBackCommand = new RelayCommand(ExUserShowUsersBackCommand, CanUserShowUsersBackCommand);
            DeleteCommand = new RelayCommand(ExDeleteCommand, CanDeleteCommand);
        }

        private void ExDeleteCommand(object? obj)
        {
            users.RemoveAt((int)obj);
            System.IO.File.WriteAllText("../../../DataBase/users.json", JsonSerializer.Serialize(users, new JsonSerializerOptions() { WriteIndented = true }));
        }

        private bool CanDeleteCommand(object? obj)
        {
            return true;
        }

        private bool CanUserShowUsersBackCommand(object? obj)
        {
            return true;
        }

        private void ExUserShowUsersBackCommand(object? obj)
        {
            ((Page)obj).NavigationService.GoBack();
        }

        private bool CanUserShowUsersHomeCommand(object? obj)
        {
            return true;
        }

        private void ExUserShowUsersHomeCommand(object? obj)
        {
            var page = obj as Page;
            MenuPage menu = new MenuPage();
            menu.DataContext = new MenuPageBackEnd();
            page.NavigationService.Navigate(menu);
        }
    }
}
