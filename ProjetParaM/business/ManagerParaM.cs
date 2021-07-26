using ProjetParaM.models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;
using System.Data.Common;

namespace ProjetParaM.business
{
    public class ManagerParaM
    {
        
        public void AjouterUser(User user)
        {
            if(!WebForm1.listUser.Contains(user))
            {
                WebForm1.listUser.Add(user);
            }
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\C#\ProjetParaM\ProjetParaM\App_Data\ParaMaDb.mdf;Integrated Security=True");
            con.Open();
            string req = "insert into [User] values('" + user.UserName + "','" + user.Password + "','" + user.Email + "','" + user.Tel + "')";
            SqlCommand commande = new SqlCommand(req, con);
            commande.ExecuteNonQuery();
            con.Close();

        }
        public void AjouterProduit(Produit produit)
        {
            if (!WebForm1.listProduit.Contains(produit))
            {
                WebForm1.listProduit.Add(produit);
            }
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\C#\ProjetParaM\ProjetParaM\App_Data\ParaMaDb.mdf;Integrated Security=True");
            con.Open();
            string req = "insert into [Produit] values('" + produit.NomProduit + "','" + produit.Prix+ "','" + produit.Quantite + "','" + produit.Categorie + "','" + produit.Photo+ "')";
            SqlCommand commande = new SqlCommand(req, con);
            commande.ExecuteNonQuery();
            con.Close();

        }

        public void AchatProduit(Achat achat )
        {

            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\C#\ProjetParaM\ProjetParaM\App_Data\ParaMaDb.mdf;Integrated Security=True");
            con.Open();
            string req = "insert into [AchatProduit] values('" + achat.Id + "','" + achat.NomProduit + "','" + achat.UserName + "','" + achat.Quantite +  "')";
            SqlCommand commande = new SqlCommand(req, con);
            commande.ExecuteNonQuery();
            con.Close();

        }



    }
}