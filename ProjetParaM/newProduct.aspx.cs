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
    public partial class newProduct : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            HyperLink2.Text = Session["UserName"] as string;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            foreach (Produit produit in WebForm1.listProduit)
            {
                if (NomProduit.Text == produit.NomProduit)
                {
                    //update
                    Response.Write("PRODUIT existant");
                    return;
                }
            }
            ManagerParaM m = new ManagerParaM();
            Produit p = new Produit();
            p.NomProduit = NomProduit.Text;
            p.Prix = float.Parse(Prix.Text);
            p.Quantite = int.Parse(Quantite.Text);
            p.Categorie = Categorie.Text;
            string path = Server.MapPath("~/Images/") + Photo.FileName;
            Photo.SaveAs(path);
            // p.Photo = Photo.FileName;
            p.Photo = "~/Images/" + Photo.FileName;
            m.AjouterProduit(p);
            Response.Redirect("ListeProduits.aspx");
        }
    }
}