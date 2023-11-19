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
    public class AdminShowPageBackEnd
    {
        public Admin admin { get; }
        public ObservableCollection<Car> cars { get; set; }
        

        public ICommand AdminShowBackCommand { get; set; }
        public ICommand AdminSearchCommand { get; set; }
        public ICommand AdminShowHomeCommand { get; set; }
        public ICommand UsersCommand { get; set; }
        
        public AdminShowPageBackEnd()
        {
            
                 
            cars =JsonSerializer.Deserialize<ObservableCollection<Car>>(File.ReadAllText("../../../DataBase/cars.json"))!;
            
            admin = JsonSerializer.Deserialize <Admin>(File.ReadAllText("../../../DataBase/Admin.json"))!;
            
            AdminShowBackCommand = new RelayCommand(ExAdminShowBackCommand, CanAdminShowBackCommand);
            AdminSearchCommand = new RelayCommand(ExAdminSearchCommand, CanAdminSearchCommand);
            AdminShowHomeCommand = new RelayCommand(ExAdminShowHomeCommand, CanAdminShowHomeCommand);
            UsersCommand = new RelayCommand(ExUsersCommand, CanUsersCommand);
        }

        private bool CanUsersCommand(object? obj)
        {
            return true;
        }

        private void ExUsersCommand(object? obj)
        {
            var page=obj as Page;
            AdminShowUsers admin=new AdminShowUsers();
            admin.DataContext = new AdminShowUsersBackEnd();
            page.NavigationService.Navigate(admin);

        }

        private bool CanAdminShowHomeCommand(object? obj)
        {
            return true;
        }

        private void ExAdminShowHomeCommand(object? obj)
        {
            var page = obj as Page;
            MenuPage menu = new MenuPage();
            menu.DataContext = new MenuPageBackEnd();
            page.NavigationService.Navigate(menu);
        }

        private bool CanAdminSearchCommand(object? obj)
        {
            return true;
        }

        private void ExAdminSearchCommand(object? obj)
        {
            var txt = obj as string;
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

        private bool CanAdminShowBackCommand(object? obj)
        {
            return true;
        }

        private void ExAdminShowBackCommand(object? obj)
        {
            ((Page)obj).NavigationService.GoBack();
        }

       
    }
}
