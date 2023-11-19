using System;
using System.Collections.Generic;
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
using static System.Net.WebRequestMethods;

namespace WpfImtahan.ViewsModels
{



    

    public class ConfrimationPageBackEnd
    {
        public string veripiCode { get; set; }
        public ICommand RegistrationCommand { get; set; }
        public ICommand ConfrimationBackCommand { get; set; }
        public User User { get; }

        public ConfrimationPageBackEnd(User user)
        {
            User = user;
            RegistrationCommand = new RelayCommand(ExConfrimandCommand, CanExConfrimandCommand);
            ConfrimationBackCommand = new RelayCommand(ExConfrimationBackCommand, CanConfrimationBackCommand);
            veripiCode = GetCode.GmailVerify(user.Email);
        }

        private bool CanConfrimationBackCommand(object? obj)
        {
            return true;
        }

        private void ExConfrimationBackCommand(object? obj)
        {
            ((Page)obj).NavigationService.GoBack();
        }

        private void ExConfrimandCommand(object? obj)
        {
           if (((TextBox)((Page)obj).FindName("UserNameTb")).Text == veripiCode) 
            {
                GetUser.Users.Add(User);
                System.IO.File.WriteAllText("../../../DataBase/users.json", JsonSerializer.Serialize(GetUser.Users,new JsonSerializerOptions() { WriteIndented=true}));
                var page = obj as Page;
                var newPage = new ShowPage();
                newPage.DataContext = new ShowPageBackEnd(User);
                page.NavigationService.Navigate(newPage);
            }
        }

        private bool CanExConfrimandCommand(object? obj)
        {
            return true;
        }
    }
}
