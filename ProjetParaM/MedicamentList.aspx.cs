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
    public partial class MedicamentList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Session["Page"] = this.Menu2.SelectedItem.Text.ToString();
            HyperLink2.Text = Session["UserName"] as string;
            //HyperLink2.Text = this.Menu2.SelectedItem.Value as string;
        }



        protected void ImageButton1_Command(object sender, CommandEventArgs e)
        {
            if (e.CommandName == "ajouter")
            {
                Session["NameProduit"] = e.CommandArgument as string;
                //**
                ManagerParaM m = new ManagerParaM();
                Achat a = new Achat();
                a.UserName = Session["UserName"].ToString();
                a.NomProduit = Session["NameProduit"].ToString();
                a.Quantite = 1;
                m.AchatProduit(a);
                Response.Redirect("MenuClient.aspx");
            }
        }

        protected void Menu2_MenuItemClick(object sender, MenuEventArgs e)
        {

            Session["Page"] = this.Menu2.SelectedItem.Text.ToString();
            //Response.Write("<h1>" + Session["Page"].ToString() + "</h1>");
            Response.Redirect("MedicamentList.aspx");
            
        }
    }
}