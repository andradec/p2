using System;

namespace ProjP2.Models
{
    public class tb_produtos
    {
        public int idProduto { get; set; }
        public int idCategoria { get; set; }
        public string produto { get; set; }
        public string preco { get; set; }
        public int quantidade { get; set; }
        public string descricao { get; set; }
        public string foto { get; set; }
    }
}