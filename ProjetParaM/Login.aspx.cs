using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ProjetParaM.models;
using ProjetParaM.business;
namespace ProjetParaM
{
    public partial class Login : System.Web.UI.Page
    {
       

        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
        {
            

            foreach (User u in WebForm1.listUser)
            {
                if (u.UserName == Login1.UserName && u.Password == Login1.Password)
                {
                  //WebForm1.UserName = u.UserName;
                  //WebForm1.Pwd = u.Password;
                    Session["UserName"] = u.UserName;
                    Session["Password"]= u.Password;
                    Server.Transfer("MenuClient.aspx");
             
                    return;
                }
            }

            if (Login1.UserName == "admin" )
            {
                Session["UserName"] = "admin";
                Session["Password"] = "admin";
                Server.Transfer("MenuAdmin.aspx");

                return;
            }
            Response.Write("<h3>Echec de la connexion</h3>");
        }

    }
}