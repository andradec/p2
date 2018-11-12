using System;

namespace ProjP2.Models
{
    public class tb_pedidos
    {
        public int idPedido { get; set; }
        public int idCliente { get; set; }
        public DateTime data { get; set; }
        public string status { get; set; }
        public string sessao { get; set; }
    }
}
