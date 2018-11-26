using Microsoft.EntityFrameworkCore;
using ProjP2.Models;

namespace MvcMovie.Models
{
    public class SeuZeContext : DbContext
    {
        public SeuZeContext (DbContextOptions<SeuZeContext> options)
            : base(options)
        {
        }

        public DbSet<tb_carrinho> Carrinhos { get; set; }
        public DbSet<tb_categorias> Categorias { get; set; }
        public DbSet<tb_clientes> Clientes { get; set; }
        public DbSet<tb_pedidoItens> PedidoItens { get; set; }
        public DbSet<tb_pedidos> Pedidos { get; set; }
        public DbSet<tb_produtos> Produtos { get; set; }
        public DbSet<tb_usuario> Usuarios { get; set; }
    }
}