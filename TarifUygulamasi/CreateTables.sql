USE [TarifUygulamasi]
GO

/****** Object:  Table [dbo].[Malzemeler]    Script Date: 16.10.2024 23:30:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Malzemeler](
	[MalzemeID] [int] IDENTITY(1,1) NOT NULL,
	[MalzemeAdi] [varchar](255) NOT NULL,
	[ToplamMiktar] [varchar](50) NULL,
	[MalzemeBirim] [varchar](50) NULL,
	[BirimFiyat] [decimal](10, 2) NULL,
 CONSTRAINT [PK_Malzemeler] PRIMARY KEY CLUSTERED 
(
	[MalzemeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[Tarifler]    Script Date: 16.10.2024 23:30:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tarifler](
	[TarifID] [int] IDENTITY(1,1) NOT NULL,
	[TarifAdi] [varchar](50) NULL,
	[Kategori] [varchar](50) NULL,
	[HazirlamaSuresi] [int] NULL,
	[Talimatlar] [text] NULL,
 CONSTRAINT [PK_Tarifler] PRIMARY KEY CLUSTERED 
(
	[TarifID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

/****** Object:  Table [dbo].[TarifMalzeme]    Script Date: 16.10.2024 23:30:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TarifMalzeme](
	[TarifID] [int] NOT NULL,
	[MalzemeID] [int] NOT NULL,
	[MalzemeMiktar] [float] NULL,
 CONSTRAINT [PK_TarifMalzeme] PRIMARY KEY CLUSTERED 
(
	[TarifID] ASC,
	[MalzemeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[TarifMalzeme]  WITH CHECK ADD  CONSTRAINT [FK_TarifMalzeme_Malzeme] FOREIGN KEY([MalzemeID])
REFERENCES [dbo].[Malzemeler] ([MalzemeID])
GO
ALTER TABLE [dbo].[TarifMalzeme] CHECK CONSTRAINT [FK_TarifMalzeme_Malzeme]
GO
ALTER TABLE [dbo].[TarifMalzeme]  WITH CHECK ADD  CONSTRAINT [FK_TarifMalzeme_Tarif] FOREIGN KEY([TarifID])
REFERENCES [dbo].[Tarifler] ([TarifID])
GO
ALTER TABLE [dbo].[TarifMalzeme] CHECK CONSTRAINT [FK_TarifMalzeme_Tarif]
GO