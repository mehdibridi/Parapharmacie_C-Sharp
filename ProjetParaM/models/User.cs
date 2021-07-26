using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ProjetParaM.models
{
    public class User
    {
        private string userName;
        private string password;
        private string email;
        private string tel;
      

        public User()
        {

        }

        public User(string userName, string password, string email, string tel)
        {
            UserName = userName;
            Password = password;
            Email = email;
            Tel = tel;
            
        }

        public string UserName { get => userName; set => userName = value; }
        public string Password { get => password; set => password = value; }
        public string Email { get => email; set => email = value; }
        public string Tel { get => tel; set => tel = value; }
        


    }
}