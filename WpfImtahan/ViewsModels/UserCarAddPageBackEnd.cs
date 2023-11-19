using Microsoft.Win32;
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
using WpfImtahan.Views.Pages;

namespace WpfImtahan.ViewsModels
{
    public class UserCarAddPageBackEnd
    {
        public ICommand CarAddCommand { get; set; }
        public ICommand CancelCommand { get; set; }
        public ICommand UserCarAddHomeCommand { get; set; }
        public ObservableCollection<User> Users { get; set; }
        public User User { get; set; }
        public UserCarAddPageBackEnd(ObservableCollection<User> users,User user)
        {
            Users = users;
            User = user;
            CarAddCommand = new RelayCommand(ExCarAddCommand, CanExCarAddCommand);
            CancelCommand = new RelayCommand(ExCancelCommand, CanCancelCommand);
            UserCarAddHomeCommand = new RelayCommand(ExUserCarAddHomeCommand, CanUserCarAddHomeCommand);
        }

        private bool CanUserCarAddHomeCommand(object? obj)
        {
            return true;
        }

        private void ExUserCarAddHomeCommand(object? obj)
        {
            var page = obj as Page;
            MenuPage menu = new MenuPage();
            menu.DataContext = new MenuPageBackEnd();
            page.NavigationService.Navigate(menu);
        }

        private bool CanCancelCommand(object? obj)
        {
            return true;
        }

        private void ExCancelCommand(object? obj)
        {
            ((Page)obj).NavigationService.GoBack();
        }

        private bool CanExCarAddCommand(object? obj)
        {
            return true;
        }

        private void ExCarAddCommand(object? obj)
        {
            OpenFileDialog fileDialog = new OpenFileDialog();
            if (fileDialog.ShowDialog() == true)
            {
                if (!File.Exists($"..\\..\\..\\Images\\{Path.GetFileName(fileDialog.FileName)}"))
                    File.Copy(fileDialog.FileName, $"..\\..\\..\\Images\\{Path.GetFileName(fileDialog.FileName)}");

                var NewCar = new Car();

                NewCar.ImagePath = $@"\Images\{Path.GetFileName(fileDialog.FileName)}";
                NewCar.Marka = ((TextBox)((Page)obj).FindName("MarkaTb")).Text.ToString();
                NewCar.Year = ((TextBox)((Page)obj).FindName("YearTb")).Text.ToString();
                NewCar.Model = ((TextBox)((Page)obj).FindName("ModelTb")).Text.ToString();
                NewCar.Money = ((TextBox)((Page)obj).FindName("MoneyTb")).Text.ToString();
                (Users.FirstOrDefault(u => u.UserName == User.UserName && u.Password == User.Password)).UserCar.Add(NewCar);

                System.IO.File.WriteAllText("../../../DataBase/users.json", JsonSerializer.Serialize(Users, new JsonSerializerOptions() { WriteIndented = true }));

            }
        }

       

}
}
