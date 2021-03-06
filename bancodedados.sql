/*    ==Parâmetros de Script==

    Versão do Servidor de Origem : SQL Server 2016 (13.0.4206)
    Edição do Mecanismo de Banco de Dados de Origem : Microsoft SQL Server Enterprise Edition
    Tipo do Mecanismo de Banco de Dados de Origem : SQL Server Autônomo

    Versão do Servidor de Destino : SQL Server 2017
    Edição de Mecanismo de Banco de Dados de Destino : Microsoft SQL Server Standard Edition
    Tipo de Mecanismo de Banco de Dados de Destino : SQL Server Autônomo
*/
USE [projP2]
GO
/****** Object:  Table [dbo].[tb_carrinho]    Script Date: 12/11/2018 20:45:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_carrinho](
	[IdItem] [int] NOT NULL,
	[idProduto] [int] NOT NULL,
	[sessao] [varchar](50) NULL,
	[produto] [varchar](50) NULL,
	[quantidade] [int] NULL,
	[preco] [varchar](50) NULL,
 CONSTRAINT [PK_tb_carrinho] PRIMARY KEY CLUSTERED 
(
	[IdItem] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_categorias]    Script Date: 12/11/2018 20:45:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_categorias](
	[idCategoria] [int] NOT NULL,
	[categoria] [nchar](100) NULL,
 CONSTRAINT [PK_tb_categorias] PRIMARY KEY CLUSTERED 
(
	[idCategoria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_clientes]    Script Date: 12/11/2018 20:45:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_clientes](
	[idCliente] [int] NOT NULL,
	[nome] [varchar](50) NULL,
	[email] [varchar](50) NULL,
	[senha] [varchar](50) NULL,
	[rua] [varchar](50) NULL,
	[cidade] [varchar](50) NULL,
	[bairro] [varchar](50) NULL,
	[cep] [varchar](50) NULL,
	[UF] [varchar](50) NULL,
 CONSTRAINT [PK_tb_clientes] PRIMARY KEY CLUSTERED 
(
	[idCliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_pedidoItens]    Script Date: 12/11/2018 20:45:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_pedidoItens](
	[idItem] [int] NOT NULL,
	[idPedido] [int] NOT NULL,
	[idProduto] [int] NOT NULL,
	[produto] [varchar](50) NULL,
	[quantidade] [int] NULL,
	[valor] [int] NULL,
	[subtotal] [int] NULL,
 CONSTRAINT [PK_tb_pedidoItens] PRIMARY KEY CLUSTERED 
(
	[idItem] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_pedidos]    Script Date: 12/11/2018 20:45:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_pedidos](
	[idPedido] [int] NOT NULL,
	[idCliente] [int] NOT NULL,
	[data] [date] NULL,
	[status] [varchar](50) NULL,
	[sessao] [varchar](50) NULL,
 CONSTRAINT [PK_tb_pedidos] PRIMARY KEY CLUSTERED 
(
	[idPedido] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_produtos]    Script Date: 12/11/2018 20:45:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_produtos](
	[idProdutos] [int] NOT NULL,
	[idCategoria] [int] NOT NULL,
	[produto] [varchar](50) NULL,
	[preco] [varchar](50) NULL,
	[quantidade] [int] NULL,
	[descricao] [varchar](50) NULL,
	[foto] [varchar](50) NULL,
 CONSTRAINT [PK_tb_produtos] PRIMARY KEY CLUSTERED 
(
	[idProdutos] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_usuario]    Script Date: 12/11/2018 20:45:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_usuario](
	[idUsuario] [int] NOT NULL,
	[usuario] [varchar](50) NULL,
	[senha] [varchar](50) NULL,
 CONSTRAINT [PK_tb_usuario] PRIMARY KEY CLUSTERED 
(
	[idUsuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tb_carrinho]  WITH CHECK ADD  CONSTRAINT [FK_tb_carrinho_tb_produtos] FOREIGN KEY([idProduto])
REFERENCES [dbo].[tb_produtos] ([idProdutos])
GO
ALTER TABLE [dbo].[tb_carrinho] CHECK CONSTRAINT [FK_tb_carrinho_tb_produtos]
GO
ALTER TABLE [dbo].[tb_pedidoItens]  WITH CHECK ADD  CONSTRAINT [FK_tb_pedidoItens_tb_pedidos] FOREIGN KEY([idPedido])
REFERENCES [dbo].[tb_pedidos] ([idPedido])
GO
ALTER TABLE [dbo].[tb_pedidoItens] CHECK CONSTRAINT [FK_tb_pedidoItens_tb_pedidos]
GO
ALTER TABLE [dbo].[tb_pedidoItens]  WITH CHECK ADD  CONSTRAINT [FK_tb_pedidoItens_tb_produtos] FOREIGN KEY([idProduto])
REFERENCES [dbo].[tb_produtos] ([idProdutos])
GO
ALTER TABLE [dbo].[tb_pedidoItens] CHECK CONSTRAINT [FK_tb_pedidoItens_tb_produtos]
GO
ALTER TABLE [dbo].[tb_pedidos]  WITH CHECK ADD  CONSTRAINT [FK_tb_pedidos_tb_clientes] FOREIGN KEY([idCliente])
REFERENCES [dbo].[tb_clientes] ([idCliente])
GO
ALTER TABLE [dbo].[tb_pedidos] CHECK CONSTRAINT [FK_tb_pedidos_tb_clientes]
GO
ALTER TABLE [dbo].[tb_produtos]  WITH CHECK ADD  CONSTRAINT [FK_tb_produtos_tb_categorias] FOREIGN KEY([idCategoria])
REFERENCES [dbo].[tb_categorias] ([idCategoria])
GO
ALTER TABLE [dbo].[tb_produtos] CHECK CONSTRAINT [FK_tb_produtos_tb_categorias]
GO
