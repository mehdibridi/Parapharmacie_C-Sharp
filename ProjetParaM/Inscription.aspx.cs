using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ProjetParaM.business;
using ProjetParaM.models;
namespace ProjetParaM
{
    public partial class Inscription : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void CreateUserWizard1_CreatedUser(object sender, EventArgs e)
        {

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
           
            foreach (User user in WebForm1.listUser)
            {
                if (Username.Text == user.UserName)
                {
                    Response.Write("login existant");
                    return;
                }
            }
            ManagerParaM m = new ManagerParaM();
            User user2 = new User();
            user2.UserName = Username.Text;
            user2.Password = Password.Text;
            user2.Email = Mail.Text;
            user2.Tel = Tel.Text;

            //WebForm1.listUser.Add(user2);
            m.AjouterUser(user2);
            //WebForm1.RefreshDataBase();

            Response.Redirect("Login.aspx");
        }
    }
}