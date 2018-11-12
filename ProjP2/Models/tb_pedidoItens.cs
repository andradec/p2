using System;

namespace ProjP2.Models
{
    public class tb_pedidoItens
    {
        public int idItem { get; set; }
        public int idPedido { get; set; }
        public int idProduto { get; set; }
        public string produto { get; set; }
        public int quantidade { get; set; }
        public int valor { get; set; }
        public int subtotal { get; set; }
    }
}