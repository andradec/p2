using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace ProjP2.Models
{
    [Table("Pedido")]
    public class Pedido
    {
        [Key]
        [DatabaseGeneratedAttribute(DatabaseGeneratedOption.Identity)]
        public int Id { get; set; }
        public string IdProduto { get; set; }
        public string Quantidade { get; set; }
        public string ValorTotal { get; set; }

        [ForeignKey("IdProduto")]
        public List<Produto> Produtos { get; set; }
    }
}