USE [TarifUygulamasi]
GO
/****** Object:  Table [dbo].[Malzemeler]    Script Date: 10/28/24 18:59:30 ******/
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
/****** Object:  Table [dbo].[Tarifler]    Script Date: 10/28/24 18:59:30 ******/
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
/****** Object:  Table [dbo].[TarifMalzeme]    Script Date: 10/28/24 18:59:30 ******/
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
SET IDENTITY_INSERT [dbo].[Malzemeler] ON 

INSERT [dbo].[Malzemeler] ([MalzemeID], [MalzemeAdi], [ToplamMiktar], [MalzemeBirim], [BirimFiyat]) VALUES (1, N'Un', N'5 kg', N'kg', CAST(20.00 AS Decimal(10, 2)))
INSERT [dbo].[Malzemeler] ([MalzemeID], [MalzemeAdi], [ToplamMiktar], [MalzemeBirim], [BirimFiyat]) VALUES (2, N'Þeker', N'3 kg', N'kg', CAST(15.00 AS Decimal(10, 2)))
INSERT [dbo].[Malzemeler] ([MalzemeID], [MalzemeAdi], [ToplamMiktar], [MalzemeBirim], [BirimFiyat]) VALUES (3, N'Yumurta', N'30 adet', N'adet', CAST(1.50 AS Decimal(10, 2)))
INSERT [dbo].[Malzemeler] ([MalzemeID], [MalzemeAdi], [ToplamMiktar], [MalzemeBirim], [BirimFiyat]) VALUES (4, N'Süt', N'2 litre', N'litre', CAST(8.00 AS Decimal(10, 2)))
INSERT [dbo].[Malzemeler] ([MalzemeID], [MalzemeAdi], [ToplamMiktar], [MalzemeBirim], [BirimFiyat]) VALUES (5, N'Tereyaðý', N'1 kg', N'kg', CAST(40.00 AS Decimal(10, 2)))
INSERT [dbo].[Malzemeler] ([MalzemeID], [MalzemeAdi], [ToplamMiktar], [MalzemeBirim], [BirimFiyat]) VALUES (6, N'Tuz', N'1 kg', N'kg', CAST(5.00 AS Decimal(10, 2)))
INSERT [dbo].[Malzemeler] ([MalzemeID], [MalzemeAdi], [ToplamMiktar], [MalzemeBirim], [BirimFiyat]) VALUES (7, N'Peynir', N'500 gr', N'gr', CAST(30.00 AS Decimal(10, 2)))
INSERT [dbo].[Malzemeler] ([MalzemeID], [MalzemeAdi], [ToplamMiktar], [MalzemeBirim], [BirimFiyat]) VALUES (8, N'Zeytinyaðý', N'1 litre', N'litre', CAST(50.00 AS Decimal(10, 2)))
INSERT [dbo].[Malzemeler] ([MalzemeID], [MalzemeAdi], [ToplamMiktar], [MalzemeBirim], [BirimFiyat]) VALUES (9, N'Yoðurt', N'2 kg', N'kg', CAST(12.00 AS Decimal(10, 2)))
INSERT [dbo].[Malzemeler] ([MalzemeID], [MalzemeAdi], [ToplamMiktar], [MalzemeBirim], [BirimFiyat]) VALUES (10, N'Mercimek', N'1 kg', N'kg', CAST(18.00 AS Decimal(10, 2)))
INSERT [dbo].[Malzemeler] ([MalzemeID], [MalzemeAdi], [ToplamMiktar], [MalzemeBirim], [BirimFiyat]) VALUES (11, N'Domates', N'2 kg', N'kg', CAST(8.00 AS Decimal(10, 2)))
INSERT [dbo].[Malzemeler] ([MalzemeID], [MalzemeAdi], [ToplamMiktar], [MalzemeBirim], [BirimFiyat]) VALUES (12, N'Bulgur', N'1 kg', N'kg', CAST(12.00 AS Decimal(10, 2)))
INSERT [dbo].[Malzemeler] ([MalzemeID], [MalzemeAdi], [ToplamMiktar], [MalzemeBirim], [BirimFiyat]) VALUES (13, N'Patates', N'3 kg', N'kg', CAST(6.00 AS Decimal(10, 2)))
INSERT [dbo].[Malzemeler] ([MalzemeID], [MalzemeAdi], [ToplamMiktar], [MalzemeBirim], [BirimFiyat]) VALUES (14, N'Tavuk Göðsü', N'1 kg', N'kg', CAST(35.00 AS Decimal(10, 2)))
INSERT [dbo].[Malzemeler] ([MalzemeID], [MalzemeAdi], [ToplamMiktar], [MalzemeBirim], [BirimFiyat]) VALUES (15, N'Kýyma', N'1 kg', N'kg', CAST(80.00 AS Decimal(10, 2)))
INSERT [dbo].[Malzemeler] ([MalzemeID], [MalzemeAdi], [ToplamMiktar], [MalzemeBirim], [BirimFiyat]) VALUES (16, N'Maydanoz', N'500 gr', N'gr', CAST(5.00 AS Decimal(10, 2)))
INSERT [dbo].[Malzemeler] ([MalzemeID], [MalzemeAdi], [ToplamMiktar], [MalzemeBirim], [BirimFiyat]) VALUES (17, N'Mantar', N'1 kg', N'kg', CAST(25.00 AS Decimal(10, 2)))
INSERT [dbo].[Malzemeler] ([MalzemeID], [MalzemeAdi], [ToplamMiktar], [MalzemeBirim], [BirimFiyat]) VALUES (18, N'Havuç', N'1 kg', N'kg', CAST(6.00 AS Decimal(10, 2)))
INSERT [dbo].[Malzemeler] ([MalzemeID], [MalzemeAdi], [ToplamMiktar], [MalzemeBirim], [BirimFiyat]) VALUES (19, N'Kabak', N'1 kg', N'kg', CAST(7.00 AS Decimal(10, 2)))
INSERT [dbo].[Malzemeler] ([MalzemeID], [MalzemeAdi], [ToplamMiktar], [MalzemeBirim], [BirimFiyat]) VALUES (20, N'Brokoli', N'500 gr', N'gr', CAST(10.00 AS Decimal(10, 2)))
INSERT [dbo].[Malzemeler] ([MalzemeID], [MalzemeAdi], [ToplamMiktar], [MalzemeBirim], [BirimFiyat]) VALUES (21, N'Salatalýk', N'1 kg', N'kg', CAST(6.00 AS Decimal(10, 2)))
INSERT [dbo].[Malzemeler] ([MalzemeID], [MalzemeAdi], [ToplamMiktar], [MalzemeBirim], [BirimFiyat]) VALUES (22, N'Kýrmýzý Lahana', N'500 gr', N'gr', CAST(8.00 AS Decimal(10, 2)))
INSERT [dbo].[Malzemeler] ([MalzemeID], [MalzemeAdi], [ToplamMiktar], [MalzemeBirim], [BirimFiyat]) VALUES (23, N'Elma', N'1 kg', N'kg', CAST(10.00 AS Decimal(10, 2)))
INSERT [dbo].[Malzemeler] ([MalzemeID], [MalzemeAdi], [ToplamMiktar], [MalzemeBirim], [BirimFiyat]) VALUES (24, N'Ceviz', N'500 gr', N'gr', CAST(60.00 AS Decimal(10, 2)))
INSERT [dbo].[Malzemeler] ([MalzemeID], [MalzemeAdi], [ToplamMiktar], [MalzemeBirim], [BirimFiyat]) VALUES (25, N'Kadayýf', N'1 kg', N'kg', CAST(45.00 AS Decimal(10, 2)))
INSERT [dbo].[Malzemeler] ([MalzemeID], [MalzemeAdi], [ToplamMiktar], [MalzemeBirim], [BirimFiyat]) VALUES (26, N'Ýrmik', N'1 kg', N'kg', CAST(15.00 AS Decimal(10, 2)))
INSERT [dbo].[Malzemeler] ([MalzemeID], [MalzemeAdi], [ToplamMiktar], [MalzemeBirim], [BirimFiyat]) VALUES (27, N'Pirinc', N'1 kg', N'kg', CAST(12.00 AS Decimal(10, 2)))
INSERT [dbo].[Malzemeler] ([MalzemeID], [MalzemeAdi], [ToplamMiktar], [MalzemeBirim], [BirimFiyat]) VALUES (28, N'Güllaç Yapraðý', N'200 gr', N'gr', CAST(20.00 AS Decimal(10, 2)))
INSERT [dbo].[Malzemeler] ([MalzemeID], [MalzemeAdi], [ToplamMiktar], [MalzemeBirim], [BirimFiyat]) VALUES (29, N'Sirke', N'500 ml', N'ml', CAST(5.00 AS Decimal(10, 2)))
INSERT [dbo].[Malzemeler] ([MalzemeID], [MalzemeAdi], [ToplamMiktar], [MalzemeBirim], [BirimFiyat]) VALUES (30, N'Nane', N'100 gr', N'gr', CAST(4.00 AS Decimal(10, 2)))
INSERT [dbo].[Malzemeler] ([MalzemeID], [MalzemeAdi], [ToplamMiktar], [MalzemeBirim], [BirimFiyat]) VALUES (31, N'Krema', N'200 ml', N'ml', CAST(15.00 AS Decimal(10, 2)))
INSERT [dbo].[Malzemeler] ([MalzemeID], [MalzemeAdi], [ToplamMiktar], [MalzemeBirim], [BirimFiyat]) VALUES (32, N'Biber', N'1 kg', N'kg', CAST(9.00 AS Decimal(10, 2)))
INSERT [dbo].[Malzemeler] ([MalzemeID], [MalzemeAdi], [ToplamMiktar], [MalzemeBirim], [BirimFiyat]) VALUES (33, N'Soðan', N'1 kg', N'kg', CAST(4.00 AS Decimal(10, 2)))
INSERT [dbo].[Malzemeler] ([MalzemeID], [MalzemeAdi], [ToplamMiktar], [MalzemeBirim], [BirimFiyat]) VALUES (34, N'Limon', N'1 kg', N'kg', CAST(7.00 AS Decimal(10, 2)))
INSERT [dbo].[Malzemeler] ([MalzemeID], [MalzemeAdi], [ToplamMiktar], [MalzemeBirim], [BirimFiyat]) VALUES (35, N'Bal', N'500 gr', N'gr', CAST(35.00 AS Decimal(10, 2)))
INSERT [dbo].[Malzemeler] ([MalzemeID], [MalzemeAdi], [ToplamMiktar], [MalzemeBirim], [BirimFiyat]) VALUES (36, N'Mýsýr', N'1 kg', N'kg', CAST(10.00 AS Decimal(10, 2)))
INSERT [dbo].[Malzemeler] ([MalzemeID], [MalzemeAdi], [ToplamMiktar], [MalzemeBirim], [BirimFiyat]) VALUES (37, N'Lavaþ', N'10 adet', N'adet', CAST(12.00 AS Decimal(10, 2)))
INSERT [dbo].[Malzemeler] ([MalzemeID], [MalzemeAdi], [ToplamMiktar], [MalzemeBirim], [BirimFiyat]) VALUES (38, N'Ekmek', N'1 adet', N'adet', CAST(2.00 AS Decimal(10, 2)))
INSERT [dbo].[Malzemeler] ([MalzemeID], [MalzemeAdi], [ToplamMiktar], [MalzemeBirim], [BirimFiyat]) VALUES (39, N'Salça', N'1 kg', N'kg', CAST(10.00 AS Decimal(10, 2)))
INSERT [dbo].[Malzemeler] ([MalzemeID], [MalzemeAdi], [ToplamMiktar], [MalzemeBirim], [BirimFiyat]) VALUES (40, N'Karabiber', N'100 gr', N'gr', CAST(12.00 AS Decimal(10, 2)))
INSERT [dbo].[Malzemeler] ([MalzemeID], [MalzemeAdi], [ToplamMiktar], [MalzemeBirim], [BirimFiyat]) VALUES (41, N'Pul Biber', N'100 gr', N'gr', CAST(8.00 AS Decimal(10, 2)))
INSERT [dbo].[Malzemeler] ([MalzemeID], [MalzemeAdi], [ToplamMiktar], [MalzemeBirim], [BirimFiyat]) VALUES (42, N'Toz Biber', N'100 gr', N'gr', CAST(6.00 AS Decimal(10, 2)))
INSERT [dbo].[Malzemeler] ([MalzemeID], [MalzemeAdi], [ToplamMiktar], [MalzemeBirim], [BirimFiyat]) VALUES (43, N'Krema', N'500 ml', N'ml', CAST(12.00 AS Decimal(10, 2)))
INSERT [dbo].[Malzemeler] ([MalzemeID], [MalzemeAdi], [ToplamMiktar], [MalzemeBirim], [BirimFiyat]) VALUES (44, N'Tarhana', N'500 gr', N'gr', CAST(20.00 AS Decimal(10, 2)))
INSERT [dbo].[Malzemeler] ([MalzemeID], [MalzemeAdi], [ToplamMiktar], [MalzemeBirim], [BirimFiyat]) VALUES (45, N'Makarna', N'1 kg', N'kg', CAST(8.00 AS Decimal(10, 2)))
INSERT [dbo].[Malzemeler] ([MalzemeID], [MalzemeAdi], [ToplamMiktar], [MalzemeBirim], [BirimFiyat]) VALUES (46, N'su', N'1', N'litre', CAST(10.00 AS Decimal(10, 2)))
INSERT [dbo].[Malzemeler] ([MalzemeID], [MalzemeAdi], [ToplamMiktar], [MalzemeBirim], [BirimFiyat]) VALUES (47, N'Patlýcan', N'100', N'kg', CAST(5.00 AS Decimal(10, 2)))
SET IDENTITY_INSERT [dbo].[Malzemeler] OFF
GO
SET IDENTITY_INSERT [dbo].[Tarifler] ON 

INSERT [dbo].[Tarifler] ([TarifID], [TarifAdi], [Kategori], [HazirlamaSuresi], [Talimatlar]) VALUES (1, N'Mercimek Çorbasý', N'Çorba', 30, N'Mercimekleri yýkayýn, su ile kaynatýn ve piþirin.')
INSERT [dbo].[Tarifler] ([TarifID], [TarifAdi], [Kategori], [HazirlamaSuresi], [Talimatlar]) VALUES (2, N'Domates Çorbasý', N'Çorba', 25, N'Domatesleri rendeleyip piþirin, un ve süt ekleyin.')
INSERT [dbo].[Tarifler] ([TarifID], [TarifAdi], [Kategori], [HazirlamaSuresi], [Talimatlar]) VALUES (3, N'Ezogelin Çorbasý', N'Çorba', 40, N'Mercimek ve bulguru piþirin, baharatlarý ekleyin.')
INSERT [dbo].[Tarifler] ([TarifID], [TarifAdi], [Kategori], [HazirlamaSuresi], [Talimatlar]) VALUES (4, N'Tavuk Çorbasý', N'Çorba', 35, N'Tavuðu haþlayýp parçalayýn, sebzelerle piþirin.')
INSERT [dbo].[Tarifler] ([TarifID], [TarifAdi], [Kategori], [HazirlamaSuresi], [Talimatlar]) VALUES (5, N'Tarhana Çorbasý', N'Çorba', 20, N'Tarhanayý suyla karýþtýrýp kaynatýn.')
INSERT [dbo].[Tarifler] ([TarifID], [TarifAdi], [Kategori], [HazirlamaSuresi], [Talimatlar]) VALUES (6, N'Yoðurt Çorbasý', N'Çorba', 30, N'Yoðurdu unla çýrpýn, yavaþça kaynatýn.')
INSERT [dbo].[Tarifler] ([TarifID], [TarifAdi], [Kategori], [HazirlamaSuresi], [Talimatlar]) VALUES (7, N'Mantar Çorbasý', N'Çorba', 25, N'Mantarlarý doðrayýn, sütle piþirin.')
INSERT [dbo].[Tarifler] ([TarifID], [TarifAdi], [Kategori], [HazirlamaSuresi], [Talimatlar]) VALUES (8, N'Sebze Çorbasý', N'Çorba', 30, N'Sebzeleri doðrayýp su ile kaynatýn.')
INSERT [dbo].[Tarifler] ([TarifID], [TarifAdi], [Kategori], [HazirlamaSuresi], [Talimatlar]) VALUES (9, N'Kremalý Mantar Çorbasý', N'Çorba', 25, N'Mantarlarý kavurup krema ekleyin.')
INSERT [dbo].[Tarifler] ([TarifID], [TarifAdi], [Kategori], [HazirlamaSuresi], [Talimatlar]) VALUES (10, N'Brokoli Çorbasý', N'Çorba', 20, N'Brokoliyi piþirin, blendýrdan geçirin.')
INSERT [dbo].[Tarifler] ([TarifID], [TarifAdi], [Kategori], [HazirlamaSuresi], [Talimatlar]) VALUES (11, N'Karnýyarýk', N'Ana Yemek', 60, N'Patlýcanlarý kýzartýn, kýymalý harçla doldurun.')
INSERT [dbo].[Tarifler] ([TarifID], [TarifAdi], [Kategori], [HazirlamaSuresi], [Talimatlar]) VALUES (12, N'Makarna', N'Ana Yemek', 15, N'Makarna haþlayýn ve sos ile karýþtýrýn.')
INSERT [dbo].[Tarifler] ([TarifID], [TarifAdi], [Kategori], [HazirlamaSuresi], [Talimatlar]) VALUES (13, N'Izgara Tavuk', N'Ana Yemek', 20, N'Tavuklarý marine edip ýzgarada piþirin.')
INSERT [dbo].[Tarifler] ([TarifID], [TarifAdi], [Kategori], [HazirlamaSuresi], [Talimatlar]) VALUES (14, N'Köfte', N'Ana Yemek', 30, N'Kýymayý baharatlarla yoðurun, þekil verip kýzartýn.')
INSERT [dbo].[Tarifler] ([TarifID], [TarifAdi], [Kategori], [HazirlamaSuresi], [Talimatlar]) VALUES (15, N'Lahmacun', N'Ana Yemek', 45, N'Hamuru açýp kýymalý harçla piþirin.')
INSERT [dbo].[Tarifler] ([TarifID], [TarifAdi], [Kategori], [HazirlamaSuresi], [Talimatlar]) VALUES (16, N'Mantý', N'Ana Yemek', 50, N'Mantýlarý kaynatýn, yoðurt ve sos ekleyin.')
INSERT [dbo].[Tarifler] ([TarifID], [TarifAdi], [Kategori], [HazirlamaSuresi], [Talimatlar]) VALUES (17, N'Fýrýnda Tavuk', N'Ana Yemek', 45, N'Tavuklarý sebzelerle fýrýnda piþirin.')
INSERT [dbo].[Tarifler] ([TarifID], [TarifAdi], [Kategori], [HazirlamaSuresi], [Talimatlar]) VALUES (18, N'Et Sote', N'Ana Yemek', 25, N'Eti sebzelerle soteleyin.')
INSERT [dbo].[Tarifler] ([TarifID], [TarifAdi], [Kategori], [HazirlamaSuresi], [Talimatlar]) VALUES (19, N'Pilav', N'Ana Yemek', 20, N'Pirinçleri kavurup su ekleyin ve piþirin.')
INSERT [dbo].[Tarifler] ([TarifID], [TarifAdi], [Kategori], [HazirlamaSuresi], [Talimatlar]) VALUES (20, N'Taze Fasulye', N'Ana Yemek', 30, N'Taze fasulyeleri domatesle piþirin.')
INSERT [dbo].[Tarifler] ([TarifID], [TarifAdi], [Kategori], [HazirlamaSuresi], [Talimatlar]) VALUES (21, N'Çoban Salata', N'Salata', 10, N'Domates, salatalýk ve biberleri doðrayýn.')
INSERT [dbo].[Tarifler] ([TarifID], [TarifAdi], [Kategori], [HazirlamaSuresi], [Talimatlar]) VALUES (22, N'Mevsim Salata', N'Salata', 10, N'Mevsim yeþilliklerini doðrayýn, sos ekleyin.')
INSERT [dbo].[Tarifler] ([TarifID], [TarifAdi], [Kategori], [HazirlamaSuresi], [Talimatlar]) VALUES (23, N'Patates Salatasý', N'Salata', 15, N'Haþlanmýþ patatesleri doðrayýn, baharat ekleyin.')
INSERT [dbo].[Tarifler] ([TarifID], [TarifAdi], [Kategori], [HazirlamaSuresi], [Talimatlar]) VALUES (24, N'Havuç Salatasý', N'Salata', 10, N'Havuçlarý rendeleyin, yoðurtla karýþtýrýn.')
INSERT [dbo].[Tarifler] ([TarifID], [TarifAdi], [Kategori], [HazirlamaSuresi], [Talimatlar]) VALUES (25, N'Kinoa Salatasý', N'Salata', 15, N'Kinoayý haþlayýn, sebzelerle karýþtýrýn.')
INSERT [dbo].[Tarifler] ([TarifID], [TarifAdi], [Kategori], [HazirlamaSuresi], [Talimatlar]) VALUES (26, N'Yoðurtlu Semizotu Salatasý', N'Salata', 10, N'Semizotunu yoðurtla karýþtýrýn.')
INSERT [dbo].[Tarifler] ([TarifID], [TarifAdi], [Kategori], [HazirlamaSuresi], [Talimatlar]) VALUES (27, N'Tavuklu Sezar Salatasý', N'Salata', 20, N'Tavuk parçalarýný salata malzemeleriyle karýþtýrýn.')
INSERT [dbo].[Tarifler] ([TarifID], [TarifAdi], [Kategori], [HazirlamaSuresi], [Talimatlar]) VALUES (28, N'Kýrmýzý Lahana Salatasý', N'Salata', 10, N'Lahanayý doðrayýp sirke ekleyin.')
INSERT [dbo].[Tarifler] ([TarifID], [TarifAdi], [Kategori], [HazirlamaSuresi], [Talimatlar]) VALUES (29, N'Mýsýrlý Yeþil Salata', N'Salata', 10, N'Yeþilliklere mýsýr ekleyin.')
INSERT [dbo].[Tarifler] ([TarifID], [TarifAdi], [Kategori], [HazirlamaSuresi], [Talimatlar]) VALUES (30, N'Elmalý Cevizli Salata', N'Salata', 10, N'Elma, ceviz ve yeþillikleri karýþtýrýn.')
INSERT [dbo].[Tarifler] ([TarifID], [TarifAdi], [Kategori], [HazirlamaSuresi], [Talimatlar]) VALUES (31, N'Revani', N'Tatlý', 30, N'Hamuru hazýrlayýn, þerbetle buluþturun.')
INSERT [dbo].[Tarifler] ([TarifID], [TarifAdi], [Kategori], [HazirlamaSuresi], [Talimatlar]) VALUES (32, N'Künefe', N'Tatlý', 25, N'Kadayýfý peynirle piþirin, þerbet ekleyin.')
INSERT [dbo].[Tarifler] ([TarifID], [TarifAdi], [Kategori], [HazirlamaSuresi], [Talimatlar]) VALUES (33, N'Baklava', N'Tatlý', 90, N'Hamuru açýp kat kat hazýrlayýn, þerbetleyin.')
INSERT [dbo].[Tarifler] ([TarifID], [TarifAdi], [Kategori], [HazirlamaSuresi], [Talimatlar]) VALUES (34, N'Sütlaç', N'Tatlý', 35, N'Pirinç ve sütü piþirin, fýrýnlayýn.')
INSERT [dbo].[Tarifler] ([TarifID], [TarifAdi], [Kategori], [HazirlamaSuresi], [Talimatlar]) VALUES (35, N'Aþure', N'Tatlý', 60, N'Tahýllarý piþirip karýþtýrýn, süsleyin.')
INSERT [dbo].[Tarifler] ([TarifID], [TarifAdi], [Kategori], [HazirlamaSuresi], [Talimatlar]) VALUES (36, N'Kadayýf', N'Tatlý', 30, N'Kadayýfý tereyaðla kavurun, þerbet ekleyin.')
INSERT [dbo].[Tarifler] ([TarifID], [TarifAdi], [Kategori], [HazirlamaSuresi], [Talimatlar]) VALUES (37, N'Ýrmik Helvasý', N'Tatlý', 25, N'Ýrmik, süt ve þekeri piþirin.')
INSERT [dbo].[Tarifler] ([TarifID], [TarifAdi], [Kategori], [HazirlamaSuresi], [Talimatlar]) VALUES (38, N'Keþkül', N'Tatlý', 20, N'Sütlü karýþýmý piþirin, süsleyin.')
INSERT [dbo].[Tarifler] ([TarifID], [TarifAdi], [Kategori], [HazirlamaSuresi], [Talimatlar]) VALUES (39, N'Kazandibi', N'Tatlý', 25, N'Muhallebiyi piþirip tavada yakarak hazýrlayýn.')
INSERT [dbo].[Tarifler] ([TarifID], [TarifAdi], [Kategori], [HazirlamaSuresi], [Talimatlar]) VALUES (40, N'Güllaç', N'Tatlý', 15, N'Güllaç yapraklarýný sütle ýslatýn.')
INSERT [dbo].[Tarifler] ([TarifID], [TarifAdi], [Kategori], [HazirlamaSuresi], [Talimatlar]) VALUES (41, N'Kýsýr', N'Atýþtýrmalýk', 20, N'Bulguru ýslatýn, sebzelerle karýþtýrýn.')
INSERT [dbo].[Tarifler] ([TarifID], [TarifAdi], [Kategori], [HazirlamaSuresi], [Talimatlar]) VALUES (42, N'Poðaça', N'Atýþtýrmalýk', 30, N'Hamuru hazýrlayýp fýrýnda piþirin.')
INSERT [dbo].[Tarifler] ([TarifID], [TarifAdi], [Kategori], [HazirlamaSuresi], [Talimatlar]) VALUES (43, N'Mýsýr Patlaðý', N'Atýþtýrmalýk', 10, N'Mýsýrlarý yaðda patlatýn.')
INSERT [dbo].[Tarifler] ([TarifID], [TarifAdi], [Kategori], [HazirlamaSuresi], [Talimatlar]) VALUES (44, N'Sigara Böreði', N'Atýþtýrmalýk', 15, N'Yufkalarý sarýp kýzartýn.')
INSERT [dbo].[Tarifler] ([TarifID], [TarifAdi], [Kategori], [HazirlamaSuresi], [Talimatlar]) VALUES (45, N'Kumpir', N'Atýþtýrmalýk', 40, N'Patatesleri piþirip içini doldurun.')
INSERT [dbo].[Tarifler] ([TarifID], [TarifAdi], [Kategori], [HazirlamaSuresi], [Talimatlar]) VALUES (46, N'Sandviç', N'Atýþtýrmalýk', 10, N'Malzemeleri ekmekle birleþtirin.')
INSERT [dbo].[Tarifler] ([TarifID], [TarifAdi], [Kategori], [HazirlamaSuresi], [Talimatlar]) VALUES (47, N'Çið Köfte', N'Atýþtýrmalýk', 30, N'Bulgur ve baharatlarý yoðurun.')
INSERT [dbo].[Tarifler] ([TarifID], [TarifAdi], [Kategori], [HazirlamaSuresi], [Talimatlar]) VALUES (48, N'Kurabiye', N'Atýþtýrmalýk', 20, N'Hamuru hazýrlayýp þekil verin ve piþirin.')
INSERT [dbo].[Tarifler] ([TarifID], [TarifAdi], [Kategori], [HazirlamaSuresi], [Talimatlar]) VALUES (49, N'Lavaþ Cipsi', N'Atýþtýrmalýk', 15, N'Lavaþý doðrayýp fýrýnlayýn.')
INSERT [dbo].[Tarifler] ([TarifID], [TarifAdi], [Kategori], [HazirlamaSuresi], [Talimatlar]) VALUES (50, N'Tost', N'Atýþtýrmalýk', 5, N'Ekmek arasýna peynir ekleyip tost yapýn.')
SET IDENTITY_INSERT [dbo].[Tarifler] OFF
GO
INSERT [dbo].[TarifMalzeme] ([TarifID], [MalzemeID], [MalzemeMiktar]) VALUES (1, 6, 0.01)
INSERT [dbo].[TarifMalzeme] ([TarifID], [MalzemeID], [MalzemeMiktar]) VALUES (1, 10, 0.2)
INSERT [dbo].[TarifMalzeme] ([TarifID], [MalzemeID], [MalzemeMiktar]) VALUES (1, 34, 0.05)
INSERT [dbo].[TarifMalzeme] ([TarifID], [MalzemeID], [MalzemeMiktar]) VALUES (1, 46, 0.01)
INSERT [dbo].[TarifMalzeme] ([TarifID], [MalzemeID], [MalzemeMiktar]) VALUES (2, 4, 0.25)
INSERT [dbo].[TarifMalzeme] ([TarifID], [MalzemeID], [MalzemeMiktar]) VALUES (2, 6, 0.01)
INSERT [dbo].[TarifMalzeme] ([TarifID], [MalzemeID], [MalzemeMiktar]) VALUES (2, 8, 0.05)
INSERT [dbo].[TarifMalzeme] ([TarifID], [MalzemeID], [MalzemeMiktar]) VALUES (2, 11, 0.3)
INSERT [dbo].[TarifMalzeme] ([TarifID], [MalzemeID], [MalzemeMiktar]) VALUES (3, 6, 0.01)
INSERT [dbo].[TarifMalzeme] ([TarifID], [MalzemeID], [MalzemeMiktar]) VALUES (3, 10, 0.15)
INSERT [dbo].[TarifMalzeme] ([TarifID], [MalzemeID], [MalzemeMiktar]) VALUES (3, 12, 0.05)
INSERT [dbo].[TarifMalzeme] ([TarifID], [MalzemeID], [MalzemeMiktar]) VALUES (3, 34, 0.05)
INSERT [dbo].[TarifMalzeme] ([TarifID], [MalzemeID], [MalzemeMiktar]) VALUES (4, 6, 0.01)
INSERT [dbo].[TarifMalzeme] ([TarifID], [MalzemeID], [MalzemeMiktar]) VALUES (4, 8, 0.05)
INSERT [dbo].[TarifMalzeme] ([TarifID], [MalzemeID], [MalzemeMiktar]) VALUES (4, 14, 0.3)
INSERT [dbo].[TarifMalzeme] ([TarifID], [MalzemeID], [MalzemeMiktar]) VALUES (4, 34, 0.05)
INSERT [dbo].[TarifMalzeme] ([TarifID], [MalzemeID], [MalzemeMiktar]) VALUES (5, 6, 0.01)
INSERT [dbo].[TarifMalzeme] ([TarifID], [MalzemeID], [MalzemeMiktar]) VALUES (5, 8, 0.05)
INSERT [dbo].[TarifMalzeme] ([TarifID], [MalzemeID], [MalzemeMiktar]) VALUES (5, 43, 0.1)
INSERT [dbo].[TarifMalzeme] ([TarifID], [MalzemeID], [MalzemeMiktar]) VALUES (6, 18, 0.1)
INSERT [dbo].[TarifMalzeme] ([TarifID], [MalzemeID], [MalzemeMiktar]) VALUES (6, 19, 0.1)
INSERT [dbo].[TarifMalzeme] ([TarifID], [MalzemeID], [MalzemeMiktar]) VALUES (6, 20, 0.1)
INSERT [dbo].[TarifMalzeme] ([TarifID], [MalzemeID], [MalzemeMiktar]) VALUES (6, 34, 0.05)
INSERT [dbo].[TarifMalzeme] ([TarifID], [MalzemeID], [MalzemeMiktar]) VALUES (7, 1, 0.1)
INSERT [dbo].[TarifMalzeme] ([TarifID], [MalzemeID], [MalzemeMiktar]) VALUES (7, 6, 0.5)
INSERT [dbo].[TarifMalzeme] ([TarifID], [MalzemeID], [MalzemeMiktar]) VALUES (7, 10, 0.05)
INSERT [dbo].[TarifMalzeme] ([TarifID], [MalzemeID], [MalzemeMiktar]) VALUES (7, 12, 0.05)
INSERT [dbo].[TarifMalzeme] ([TarifID], [MalzemeID], [MalzemeMiktar]) VALUES (8, 1, 0.5)
INSERT [dbo].[TarifMalzeme] ([TarifID], [MalzemeID], [MalzemeMiktar]) VALUES (8, 6, 0.5)
INSERT [dbo].[TarifMalzeme] ([TarifID], [MalzemeID], [MalzemeMiktar]) VALUES (8, 35, 0.1)
INSERT [dbo].[TarifMalzeme] ([TarifID], [MalzemeID], [MalzemeMiktar]) VALUES (9, 6, 0.01)
INSERT [dbo].[TarifMalzeme] ([TarifID], [MalzemeID], [MalzemeMiktar]) VALUES (9, 8, 0.03)
INSERT [dbo].[TarifMalzeme] ([TarifID], [MalzemeID], [MalzemeMiktar]) VALUES (9, 13, 0.2)
INSERT [dbo].[TarifMalzeme] ([TarifID], [MalzemeID], [MalzemeMiktar]) VALUES (10, 4, 0.1)
INSERT [dbo].[TarifMalzeme] ([TarifID], [MalzemeID], [MalzemeMiktar]) VALUES (10, 8, 0.02)
INSERT [dbo].[TarifMalzeme] ([TarifID], [MalzemeID], [MalzemeMiktar]) VALUES (10, 20, 0.1)
INSERT [dbo].[TarifMalzeme] ([TarifID], [MalzemeID], [MalzemeMiktar]) VALUES (11, 8, 0.05)
INSERT [dbo].[TarifMalzeme] ([TarifID], [MalzemeID], [MalzemeMiktar]) VALUES (11, 15, 0.3)
INSERT [dbo].[TarifMalzeme] ([TarifID], [MalzemeID], [MalzemeMiktar]) VALUES (11, 47, 0.2)
INSERT [dbo].[TarifMalzeme] ([TarifID], [MalzemeID], [MalzemeMiktar]) VALUES (12, 6, 0.01)
INSERT [dbo].[TarifMalzeme] ([TarifID], [MalzemeID], [MalzemeMiktar]) VALUES (12, 8, 0.03)
INSERT [dbo].[TarifMalzeme] ([TarifID], [MalzemeID], [MalzemeMiktar]) VALUES (12, 44, 0.2)
INSERT [dbo].[TarifMalzeme] ([TarifID], [MalzemeID], [MalzemeMiktar]) VALUES (13, 8, 0.03)
INSERT [dbo].[TarifMalzeme] ([TarifID], [MalzemeID], [MalzemeMiktar]) VALUES (13, 14, 0.4)
INSERT [dbo].[TarifMalzeme] ([TarifID], [MalzemeID], [MalzemeMiktar]) VALUES (13, 39, 0.02)
INSERT [dbo].[TarifMalzeme] ([TarifID], [MalzemeID], [MalzemeMiktar]) VALUES (14, 6, 0.01)
INSERT [dbo].[TarifMalzeme] ([TarifID], [MalzemeID], [MalzemeMiktar]) VALUES (14, 15, 0.25)
INSERT [dbo].[TarifMalzeme] ([TarifID], [MalzemeID], [MalzemeMiktar]) VALUES (14, 34, 0.05)
INSERT [dbo].[TarifMalzeme] ([TarifID], [MalzemeID], [MalzemeMiktar]) VALUES (14, 39, 0.02)
INSERT [dbo].[TarifMalzeme] ([TarifID], [MalzemeID], [MalzemeMiktar]) VALUES (15, 6, 0.01)
INSERT [dbo].[TarifMalzeme] ([TarifID], [MalzemeID], [MalzemeMiktar]) VALUES (15, 15, 0.15)
INSERT [dbo].[TarifMalzeme] ([TarifID], [MalzemeID], [MalzemeMiktar]) VALUES (15, 34, 0.05)
INSERT [dbo].[TarifMalzeme] ([TarifID], [MalzemeID], [MalzemeMiktar]) VALUES (16, 6, 0.05)
INSERT [dbo].[TarifMalzeme] ([TarifID], [MalzemeID], [MalzemeMiktar]) VALUES (16, 9, 0.05)
INSERT [dbo].[TarifMalzeme] ([TarifID], [MalzemeID], [MalzemeMiktar]) VALUES (16, 15, 0.2)
INSERT [dbo].[TarifMalzeme] ([TarifID], [MalzemeID], [MalzemeMiktar]) VALUES (17, 6, 0.01)
INSERT [dbo].[TarifMalzeme] ([TarifID], [MalzemeID], [MalzemeMiktar]) VALUES (17, 8, 0.03)
INSERT [dbo].[TarifMalzeme] ([TarifID], [MalzemeID], [MalzemeMiktar]) VALUES (17, 11, 0.2)
INSERT [dbo].[TarifMalzeme] ([TarifID], [MalzemeID], [MalzemeMiktar]) VALUES (18, 15, 0.3)
INSERT [dbo].[TarifMalzeme] ([TarifID], [MalzemeID], [MalzemeMiktar]) VALUES (18, 18, 0.05)
INSERT [dbo].[TarifMalzeme] ([TarifID], [MalzemeID], [MalzemeMiktar]) VALUES (18, 19, 0.1)
INSERT [dbo].[TarifMalzeme] ([TarifID], [MalzemeID], [MalzemeMiktar]) VALUES (18, 34, 0.05)
INSERT [dbo].[TarifMalzeme] ([TarifID], [MalzemeID], [MalzemeMiktar]) VALUES (19, 15, 0.25)
INSERT [dbo].[TarifMalzeme] ([TarifID], [MalzemeID], [MalzemeMiktar]) VALUES (19, 34, 0.05)
INSERT [dbo].[TarifMalzeme] ([TarifID], [MalzemeID], [MalzemeMiktar]) VALUES (19, 36, 2)
INSERT [dbo].[TarifMalzeme] ([TarifID], [MalzemeID], [MalzemeMiktar]) VALUES (20, 11, 0.1)
INSERT [dbo].[TarifMalzeme] ([TarifID], [MalzemeID], [MalzemeMiktar]) VALUES (20, 12, 0.05)
INSERT [dbo].[TarifMalzeme] ([TarifID], [MalzemeID], [MalzemeMiktar]) VALUES (20, 14, 0.3)
INSERT [dbo].[TarifMalzeme] ([TarifID], [MalzemeID], [MalzemeMiktar]) VALUES (21, 1, 0.1)
INSERT [dbo].[TarifMalzeme] ([TarifID], [MalzemeID], [MalzemeMiktar]) VALUES (21, 2, 0.05)
INSERT [dbo].[TarifMalzeme] ([TarifID], [MalzemeID], [MalzemeMiktar]) VALUES (21, 3, 2)
INSERT [dbo].[TarifMalzeme] ([TarifID], [MalzemeID], [MalzemeMiktar]) VALUES (21, 4, 0.2)
INSERT [dbo].[TarifMalzeme] ([TarifID], [MalzemeID], [MalzemeMiktar]) VALUES (22, 2, 0.05)
INSERT [dbo].[TarifMalzeme] ([TarifID], [MalzemeID], [MalzemeMiktar]) VALUES (22, 7, 0.1)
INSERT [dbo].[TarifMalzeme] ([TarifID], [MalzemeID], [MalzemeMiktar]) VALUES (22, 25, 0.15)
INSERT [dbo].[TarifMalzeme] ([TarifID], [MalzemeID], [MalzemeMiktar]) VALUES (23, 1, 0.2)
INSERT [dbo].[TarifMalzeme] ([TarifID], [MalzemeID], [MalzemeMiktar]) VALUES (23, 2, 0.05)
INSERT [dbo].[TarifMalzeme] ([TarifID], [MalzemeID], [MalzemeMiktar]) VALUES (23, 5, 0.1)
INSERT [dbo].[TarifMalzeme] ([TarifID], [MalzemeID], [MalzemeMiktar]) VALUES (24, 2, 0.05)
INSERT [dbo].[TarifMalzeme] ([TarifID], [MalzemeID], [MalzemeMiktar]) VALUES (24, 5, 0.05)
INSERT [dbo].[TarifMalzeme] ([TarifID], [MalzemeID], [MalzemeMiktar]) VALUES (24, 26, 0.1)
INSERT [dbo].[TarifMalzeme] ([TarifID], [MalzemeID], [MalzemeMiktar]) VALUES (25, 2, 0.05)
INSERT [dbo].[TarifMalzeme] ([TarifID], [MalzemeID], [MalzemeMiktar]) VALUES (25, 4, 0.2)
INSERT [dbo].[TarifMalzeme] ([TarifID], [MalzemeID], [MalzemeMiktar]) VALUES (25, 7, 0.1)
INSERT [dbo].[TarifMalzeme] ([TarifID], [MalzemeID], [MalzemeMiktar]) VALUES (26, 2, 0.05)
INSERT [dbo].[TarifMalzeme] ([TarifID], [MalzemeID], [MalzemeMiktar]) VALUES (26, 4, 0.2)
INSERT [dbo].[TarifMalzeme] ([TarifID], [MalzemeID], [MalzemeMiktar]) VALUES (26, 27, 0.15)
INSERT [dbo].[TarifMalzeme] ([TarifID], [MalzemeID], [MalzemeMiktar]) VALUES (27, 8, 0.03)
INSERT [dbo].[TarifMalzeme] ([TarifID], [MalzemeID], [MalzemeMiktar]) VALUES (27, 13, 0.1)
INSERT [dbo].[TarifMalzeme] ([TarifID], [MalzemeID], [MalzemeMiktar]) VALUES (27, 28, 0.05)
INSERT [dbo].[TarifMalzeme] ([TarifID], [MalzemeID], [MalzemeMiktar]) VALUES (28, 3, 1)
INSERT [dbo].[TarifMalzeme] ([TarifID], [MalzemeID], [MalzemeMiktar]) VALUES (28, 4, 0.1)
INSERT [dbo].[TarifMalzeme] ([TarifID], [MalzemeID], [MalzemeMiktar]) VALUES (28, 23, 0.1)
INSERT [dbo].[TarifMalzeme] ([TarifID], [MalzemeID], [MalzemeMiktar]) VALUES (31, 11, 0.1)
INSERT [dbo].[TarifMalzeme] ([TarifID], [MalzemeID], [MalzemeMiktar]) VALUES (31, 21, 0.2)
INSERT [dbo].[TarifMalzeme] ([TarifID], [MalzemeID], [MalzemeMiktar]) VALUES (31, 22, 0.05)
INSERT [dbo].[TarifMalzeme] ([TarifID], [MalzemeID], [MalzemeMiktar]) VALUES (32, 22, 0.15)
INSERT [dbo].[TarifMalzeme] ([TarifID], [MalzemeID], [MalzemeMiktar]) VALUES (32, 28, 0.05)
INSERT [dbo].[TarifMalzeme] ([TarifID], [MalzemeID], [MalzemeMiktar]) VALUES (32, 29, 0.02)
INSERT [dbo].[TarifMalzeme] ([TarifID], [MalzemeID], [MalzemeMiktar]) VALUES (33, 2, 0.01)
GO
INSERT [dbo].[TarifMalzeme] ([TarifID], [MalzemeID], [MalzemeMiktar]) VALUES (33, 8, 0.02)
INSERT [dbo].[TarifMalzeme] ([TarifID], [MalzemeID], [MalzemeMiktar]) VALUES (33, 18, 0.1)
INSERT [dbo].[TarifMalzeme] ([TarifID], [MalzemeID], [MalzemeMiktar]) VALUES (34, 8, 0.02)
INSERT [dbo].[TarifMalzeme] ([TarifID], [MalzemeID], [MalzemeMiktar]) VALUES (34, 24, 0.05)
INSERT [dbo].[TarifMalzeme] ([TarifID], [MalzemeID], [MalzemeMiktar]) VALUES (34, 28, 0.05)
INSERT [dbo].[TarifMalzeme] ([TarifID], [MalzemeID], [MalzemeMiktar]) VALUES (35, 8, 0.02)
INSERT [dbo].[TarifMalzeme] ([TarifID], [MalzemeID], [MalzemeMiktar]) VALUES (35, 21, 0.2)
INSERT [dbo].[TarifMalzeme] ([TarifID], [MalzemeID], [MalzemeMiktar]) VALUES (35, 23, 0.1)
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
USE [master]
GO
ALTER DATABASE [TarifUygulamasi] SET  READ_WRITE 
GO
