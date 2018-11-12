using System;

namespace ProjP2.Models
{
    public class tb_carrinho
    {
        public int IdItem{get;set;}
        public int IdProduto{get;set;}
        public string sessao{get;set;}
        public string produto { get; set; }
        public int quantidade { get; set; }
        public string preco { get; set; }
    }
}