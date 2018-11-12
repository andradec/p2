using System;

namespace ProjP2.Models
{
    public class tb_clientes
    {
        public int idCliente { get; set; }
        public string nome { get; set; }
        public string email { get; set; }
        public string senha { get; set; }
        public string rua { get; set; }
        public string cidade { get; set; }
        public string bairro { get; set; }
        public string cep { get; set; }
        public string uf { get; set; }
    }
}
