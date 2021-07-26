using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ProjetParaM.models
{
    public class Produit
    {
        private string nomProduit;
        private float prix;
        private int quantite;
        private string categorie;
        private string photo;
        internal string p;

        public string NomProduit { get => nomProduit; set => nomProduit = value; }
        public float Prix { get => prix; set => prix = value; }
        public int Quantite { get => quantite; set => quantite = value; }
        public string Categorie { get => categorie; set => categorie = value; }
        public string Photo { get => photo; set => photo = value; }

        public Produit(string nomProduit, float prix, int quatite, string categorie, string photo)
        {
            this.nomProduit = nomProduit;
            this.prix = prix;
            this.quantite = quatite;
            this.categorie = categorie;
            this.photo = photo;
        }

        public Produit()
        {
        }
    }
}