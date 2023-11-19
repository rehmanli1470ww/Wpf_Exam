using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Controls;
using System.Windows.Input;
using WpfImtahan.Commands;
using WpfImtahan.Models;
using WpfImtahan.Views.Pages;

namespace WpfImtahan.ViewsModels
{
    public class UsersRegistrationPageBackEnd
    {
        public ICommand GetCodeCommand { get; set; }
        public ICommand CancelRegistrationCommand { get; set; }
        public ICommand RegistrationHomeCommand { get; set; }
     
        public User user { get; set; }
        public UsersRegistrationPageBackEnd()
        {
            user=new User();
            GetCodeCommand = new RelayCommand(ExGetCodeCommand, CanExGetCodeCommand);
            CancelRegistrationCommand = new RelayCommand(ExCancelRegistrationCommand, CanExCancelRegistrationCommand);
            RegistrationHomeCommand = new RelayCommand(ExRegistrationHomeCommand, CanRegistrationHomeCommand);
        }

        private bool CanRegistrationHomeCommand(object? obj)
        {
            return true;
        }

        private void ExRegistrationHomeCommand(object? obj)
        {
            var page=obj as Page;
            MenuPage menu=new MenuPage();
            menu.DataContext = new MenuPageBackEnd();
            page.NavigationService.Navigate(menu);
        }

        private bool CanExCancelRegistrationCommand(object? obj)
        {
            return true;
        }

        private void ExCancelRegistrationCommand(object? obj)
        {
            ((Page)obj).NavigationService.GoBack();
        }

        private bool CanExGetCodeCommand(object? obj)
        {
            return true;
        }

        private void ExGetCodeCommand(object? obj)
        {
            var page = obj as Page;
            var newPage = new ConfiqrationPage();
            newPage.DataContext = new ConfrimationPageBackEnd(user);
            page.NavigationService.Navigate(newPage);
        }
    }
}
