USE [TiendaSara]
GO

/****** Object:  Table [dbo].[PRODUCTOS]    Script Date: 29/06/2025 06:53:43 p. m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[PRODUCTOS](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[DESCRIPCION] [varchar](max) NOT NULL,
	[PRECIO] [decimal](18, 2) NOT NULL,
	[CANTIDAD] [int] NOT NULL,
	[ID_CATEGORIA] [int] NOT NULL,
	[ID_MARCA] [int] NOT NULL,
 CONSTRAINT [PK_PRODUCTOS] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

ALTER TABLE [dbo].[PRODUCTOS]  WITH CHECK ADD  CONSTRAINT [FK_PRODUCTOS_CATEGORIA] FOREIGN KEY([ID_CATEGORIA])
REFERENCES [dbo].[CATEGORIA] ([ID])
GO

ALTER TABLE [dbo].[PRODUCTOS] CHECK CONSTRAINT [FK_PRODUCTOS_CATEGORIA]
GO

ALTER TABLE [dbo].[PRODUCTOS]  WITH CHECK ADD  CONSTRAINT [FK_PRODUCTOS_MARCAS] FOREIGN KEY([ID_MARCA])
REFERENCES [dbo].[MARCAS] ([ID])
GO

ALTER TABLE [dbo].[PRODUCTOS] CHECK CONSTRAINT [FK_PRODUCTOS_MARCAS]
GO


