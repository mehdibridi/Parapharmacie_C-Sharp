using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Data.Common;
using ProjetParaM.models;
namespace ProjetParaM
{
    public partial class WebForm1 : System.Web.UI.Page
    {
       // public static List<User> listUser = new List<User>();
       public static List<User> listUser = new List<User>
        {

        };

        public static List<Produit> listProduit = new List<Produit>
        {

        };

        public static List<Achat> listAchat = new List<Achat>
        {

        };
        private static string userName;
        private static string pwd;

        public static string UserName { get => userName; set => userName = value; }
        public static string Pwd { get => pwd; set => pwd = value; }

        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\C#\ProjetParaM\ProjetParaM\App_Data\ParaMaDb.mdf;Integrated Security=True");
                con.Open();
                SqlCommand commande = new SqlCommand("select" +
                    " * from [User]", con);
                SqlDataReader r = commande.ExecuteReader();

                while (r.Read())
                {
                    User u = new User
                    {
                        UserName = r["UserName"] as string,
                        Password = r["Password"] as string,
                        Email = r["Email"] as string,
                        Tel = r["Tel"] as string
                    };
                    listUser.Add(u);
                }
                r.Close();
                commande = new SqlCommand("select * from [Produit]", con);
                r = commande.ExecuteReader();

                while (r.Read())
                {

                    Produit produit = new Produit(r["NomProduit"] as string, float.Parse(r["Prix"] as string), int.Parse(r["Quantite"] as string), r["Catégorie"] as string,r["Photo"] as string);
                    listProduit.Add(produit);
                }
                r.Close();
                //-------------

                commande = new SqlCommand("select * from [AchatProduit]", con);
                r = commande.ExecuteReader();

                while (r.Read())
                {

                    Achat achat = new Achat(r["NomProduit"] as string, r["UserName"] as string, int.Parse(r["Quantite"] as string));
                    listAchat.Add(achat);
                }
                r.Close();
                con.Close();
                
            }
            catch (Exception ex) {  }
        }


        

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Menu2_MenuItemClick(object sender, MenuEventArgs e)
        {

        }
    }
}