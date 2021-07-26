using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ProjetParaM.models
{
    public class Achat
    {
        private  static int   counter =0;
        private int id;
        private string nomProduit;
        private string userName;
        private int quantite;

        public string NomProduit { get => nomProduit; set => nomProduit = value; }
        public string UserName { get => userName; set => userName = value; }
        public int Quantite { get => quantite; set => quantite = value; }
        public int Id { get => id; set => id = value; }

        public Achat(string nomProduit, string userName, int quantite)
        {
            counter++;
            Id = counter;
            this.NomProduit = nomProduit;
            this.UserName = userName;
            this.Quantite = quantite;
        }
        public Achat()
        {
            counter++;
            Id = counter;
        }


    }
}