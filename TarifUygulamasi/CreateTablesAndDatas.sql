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
INSERT [dbo].[Malzemeler] ([MalzemeID], [MalzemeAdi], [ToplamMiktar], [MalzemeBirim], [BirimFiyat]) VALUES (2, N'�eker', N'3 kg', N'kg', CAST(15.00 AS Decimal(10, 2)))
INSERT [dbo].[Malzemeler] ([MalzemeID], [MalzemeAdi], [ToplamMiktar], [MalzemeBirim], [BirimFiyat]) VALUES (3, N'Yumurta', N'30 adet', N'adet', CAST(1.50 AS Decimal(10, 2)))
INSERT [dbo].[Malzemeler] ([MalzemeID], [MalzemeAdi], [ToplamMiktar], [MalzemeBirim], [BirimFiyat]) VALUES (4, N'S�t', N'2 litre', N'litre', CAST(8.00 AS Decimal(10, 2)))
INSERT [dbo].[Malzemeler] ([MalzemeID], [MalzemeAdi], [ToplamMiktar], [MalzemeBirim], [BirimFiyat]) VALUES (5, N'Tereya��', N'1 kg', N'kg', CAST(40.00 AS Decimal(10, 2)))
INSERT [dbo].[Malzemeler] ([MalzemeID], [MalzemeAdi], [ToplamMiktar], [MalzemeBirim], [BirimFiyat]) VALUES (6, N'Tuz', N'1 kg', N'kg', CAST(5.00 AS Decimal(10, 2)))
INSERT [dbo].[Malzemeler] ([MalzemeID], [MalzemeAdi], [ToplamMiktar], [MalzemeBirim], [BirimFiyat]) VALUES (7, N'Peynir', N'500 gr', N'gr', CAST(30.00 AS Decimal(10, 2)))
INSERT [dbo].[Malzemeler] ([MalzemeID], [MalzemeAdi], [ToplamMiktar], [MalzemeBirim], [BirimFiyat]) VALUES (8, N'Zeytinya��', N'1 litre', N'litre', CAST(50.00 AS Decimal(10, 2)))
INSERT [dbo].[Malzemeler] ([MalzemeID], [MalzemeAdi], [ToplamMiktar], [MalzemeBirim], [BirimFiyat]) VALUES (9, N'Yo�urt', N'2 kg', N'kg', CAST(12.00 AS Decimal(10, 2)))
INSERT [dbo].[Malzemeler] ([MalzemeID], [MalzemeAdi], [ToplamMiktar], [MalzemeBirim], [BirimFiyat]) VALUES (10, N'Mercimek', N'1 kg', N'kg', CAST(18.00 AS Decimal(10, 2)))
INSERT [dbo].[Malzemeler] ([MalzemeID], [MalzemeAdi], [ToplamMiktar], [MalzemeBirim], [BirimFiyat]) VALUES (11, N'Domates', N'2 kg', N'kg', CAST(8.00 AS Decimal(10, 2)))
INSERT [dbo].[Malzemeler] ([MalzemeID], [MalzemeAdi], [ToplamMiktar], [MalzemeBirim], [BirimFiyat]) VALUES (12, N'Bulgur', N'1 kg', N'kg', CAST(12.00 AS Decimal(10, 2)))
INSERT [dbo].[Malzemeler] ([MalzemeID], [MalzemeAdi], [ToplamMiktar], [MalzemeBirim], [BirimFiyat]) VALUES (13, N'Patates', N'3 kg', N'kg', CAST(6.00 AS Decimal(10, 2)))
INSERT [dbo].[Malzemeler] ([MalzemeID], [MalzemeAdi], [ToplamMiktar], [MalzemeBirim], [BirimFiyat]) VALUES (14, N'Tavuk G��s�', N'1 kg', N'kg', CAST(35.00 AS Decimal(10, 2)))
INSERT [dbo].[Malzemeler] ([MalzemeID], [MalzemeAdi], [ToplamMiktar], [MalzemeBirim], [BirimFiyat]) VALUES (15, N'K�yma', N'1 kg', N'kg', CAST(80.00 AS Decimal(10, 2)))
INSERT [dbo].[Malzemeler] ([MalzemeID], [MalzemeAdi], [ToplamMiktar], [MalzemeBirim], [BirimFiyat]) VALUES (16, N'Maydanoz', N'500 gr', N'gr', CAST(5.00 AS Decimal(10, 2)))
INSERT [dbo].[Malzemeler] ([MalzemeID], [MalzemeAdi], [ToplamMiktar], [MalzemeBirim], [BirimFiyat]) VALUES (17, N'Mantar', N'1 kg', N'kg', CAST(25.00 AS Decimal(10, 2)))
INSERT [dbo].[Malzemeler] ([MalzemeID], [MalzemeAdi], [ToplamMiktar], [MalzemeBirim], [BirimFiyat]) VALUES (18, N'Havu�', N'1 kg', N'kg', CAST(6.00 AS Decimal(10, 2)))
INSERT [dbo].[Malzemeler] ([MalzemeID], [MalzemeAdi], [ToplamMiktar], [MalzemeBirim], [BirimFiyat]) VALUES (19, N'Kabak', N'1 kg', N'kg', CAST(7.00 AS Decimal(10, 2)))
INSERT [dbo].[Malzemeler] ([MalzemeID], [MalzemeAdi], [ToplamMiktar], [MalzemeBirim], [BirimFiyat]) VALUES (20, N'Brokoli', N'500 gr', N'gr', CAST(10.00 AS Decimal(10, 2)))
INSERT [dbo].[Malzemeler] ([MalzemeID], [MalzemeAdi], [ToplamMiktar], [MalzemeBirim], [BirimFiyat]) VALUES (21, N'Salatal�k', N'1 kg', N'kg', CAST(6.00 AS Decimal(10, 2)))
INSERT [dbo].[Malzemeler] ([MalzemeID], [MalzemeAdi], [ToplamMiktar], [MalzemeBirim], [BirimFiyat]) VALUES (22, N'K�rm�z� Lahana', N'500 gr', N'gr', CAST(8.00 AS Decimal(10, 2)))
INSERT [dbo].[Malzemeler] ([MalzemeID], [MalzemeAdi], [ToplamMiktar], [MalzemeBirim], [BirimFiyat]) VALUES (23, N'Elma', N'1 kg', N'kg', CAST(10.00 AS Decimal(10, 2)))
INSERT [dbo].[Malzemeler] ([MalzemeID], [MalzemeAdi], [ToplamMiktar], [MalzemeBirim], [BirimFiyat]) VALUES (24, N'Ceviz', N'500 gr', N'gr', CAST(60.00 AS Decimal(10, 2)))
INSERT [dbo].[Malzemeler] ([MalzemeID], [MalzemeAdi], [ToplamMiktar], [MalzemeBirim], [BirimFiyat]) VALUES (25, N'Kaday�f', N'1 kg', N'kg', CAST(45.00 AS Decimal(10, 2)))
INSERT [dbo].[Malzemeler] ([MalzemeID], [MalzemeAdi], [ToplamMiktar], [MalzemeBirim], [BirimFiyat]) VALUES (26, N'�rmik', N'1 kg', N'kg', CAST(15.00 AS Decimal(10, 2)))
INSERT [dbo].[Malzemeler] ([MalzemeID], [MalzemeAdi], [ToplamMiktar], [MalzemeBirim], [BirimFiyat]) VALUES (27, N'Pirinc', N'1 kg', N'kg', CAST(12.00 AS Decimal(10, 2)))
INSERT [dbo].[Malzemeler] ([MalzemeID], [MalzemeAdi], [ToplamMiktar], [MalzemeBirim], [BirimFiyat]) VALUES (28, N'G�lla� Yapra��', N'200 gr', N'gr', CAST(20.00 AS Decimal(10, 2)))
INSERT [dbo].[Malzemeler] ([MalzemeID], [MalzemeAdi], [ToplamMiktar], [MalzemeBirim], [BirimFiyat]) VALUES (29, N'Sirke', N'500 ml', N'ml', CAST(5.00 AS Decimal(10, 2)))
INSERT [dbo].[Malzemeler] ([MalzemeID], [MalzemeAdi], [ToplamMiktar], [MalzemeBirim], [BirimFiyat]) VALUES (30, N'Nane', N'100 gr', N'gr', CAST(4.00 AS Decimal(10, 2)))
INSERT [dbo].[Malzemeler] ([MalzemeID], [MalzemeAdi], [ToplamMiktar], [MalzemeBirim], [BirimFiyat]) VALUES (31, N'Krema', N'200 ml', N'ml', CAST(15.00 AS Decimal(10, 2)))
INSERT [dbo].[Malzemeler] ([MalzemeID], [MalzemeAdi], [ToplamMiktar], [MalzemeBirim], [BirimFiyat]) VALUES (32, N'Biber', N'1 kg', N'kg', CAST(9.00 AS Decimal(10, 2)))
INSERT [dbo].[Malzemeler] ([MalzemeID], [MalzemeAdi], [ToplamMiktar], [MalzemeBirim], [BirimFiyat]) VALUES (33, N'So�an', N'1 kg', N'kg', CAST(4.00 AS Decimal(10, 2)))
INSERT [dbo].[Malzemeler] ([MalzemeID], [MalzemeAdi], [ToplamMiktar], [MalzemeBirim], [BirimFiyat]) VALUES (34, N'Limon', N'1 kg', N'kg', CAST(7.00 AS Decimal(10, 2)))
INSERT [dbo].[Malzemeler] ([MalzemeID], [MalzemeAdi], [ToplamMiktar], [MalzemeBirim], [BirimFiyat]) VALUES (35, N'Bal', N'500 gr', N'gr', CAST(35.00 AS Decimal(10, 2)))
INSERT [dbo].[Malzemeler] ([MalzemeID], [MalzemeAdi], [ToplamMiktar], [MalzemeBirim], [BirimFiyat]) VALUES (36, N'M�s�r', N'1 kg', N'kg', CAST(10.00 AS Decimal(10, 2)))
INSERT [dbo].[Malzemeler] ([MalzemeID], [MalzemeAdi], [ToplamMiktar], [MalzemeBirim], [BirimFiyat]) VALUES (37, N'Lava�', N'10 adet', N'adet', CAST(12.00 AS Decimal(10, 2)))
INSERT [dbo].[Malzemeler] ([MalzemeID], [MalzemeAdi], [ToplamMiktar], [MalzemeBirim], [BirimFiyat]) VALUES (38, N'Ekmek', N'1 adet', N'adet', CAST(2.00 AS Decimal(10, 2)))
INSERT [dbo].[Malzemeler] ([MalzemeID], [MalzemeAdi], [ToplamMiktar], [MalzemeBirim], [BirimFiyat]) VALUES (39, N'Sal�a', N'1 kg', N'kg', CAST(10.00 AS Decimal(10, 2)))
INSERT [dbo].[Malzemeler] ([MalzemeID], [MalzemeAdi], [ToplamMiktar], [MalzemeBirim], [BirimFiyat]) VALUES (40, N'Karabiber', N'100 gr', N'gr', CAST(12.00 AS Decimal(10, 2)))
INSERT [dbo].[Malzemeler] ([MalzemeID], [MalzemeAdi], [ToplamMiktar], [MalzemeBirim], [BirimFiyat]) VALUES (41, N'Pul Biber', N'100 gr', N'gr', CAST(8.00 AS Decimal(10, 2)))
INSERT [dbo].[Malzemeler] ([MalzemeID], [MalzemeAdi], [ToplamMiktar], [MalzemeBirim], [BirimFiyat]) VALUES (42, N'Toz Biber', N'100 gr', N'gr', CAST(6.00 AS Decimal(10, 2)))
INSERT [dbo].[Malzemeler] ([MalzemeID], [MalzemeAdi], [ToplamMiktar], [MalzemeBirim], [BirimFiyat]) VALUES (43, N'Krema', N'500 ml', N'ml', CAST(12.00 AS Decimal(10, 2)))
INSERT [dbo].[Malzemeler] ([MalzemeID], [MalzemeAdi], [ToplamMiktar], [MalzemeBirim], [BirimFiyat]) VALUES (44, N'Tarhana', N'500 gr', N'gr', CAST(20.00 AS Decimal(10, 2)))
INSERT [dbo].[Malzemeler] ([MalzemeID], [MalzemeAdi], [ToplamMiktar], [MalzemeBirim], [BirimFiyat]) VALUES (45, N'Makarna', N'1 kg', N'kg', CAST(8.00 AS Decimal(10, 2)))
INSERT [dbo].[Malzemeler] ([MalzemeID], [MalzemeAdi], [ToplamMiktar], [MalzemeBirim], [BirimFiyat]) VALUES (46, N'su', N'1', N'litre', CAST(10.00 AS Decimal(10, 2)))
INSERT [dbo].[Malzemeler] ([MalzemeID], [MalzemeAdi], [ToplamMiktar], [MalzemeBirim], [BirimFiyat]) VALUES (47, N'Patl�can', N'100', N'kg', CAST(5.00 AS Decimal(10, 2)))
SET IDENTITY_INSERT [dbo].[Malzemeler] OFF
GO
SET IDENTITY_INSERT [dbo].[Tarifler] ON 

INSERT [dbo].[Tarifler] ([TarifID], [TarifAdi], [Kategori], [HazirlamaSuresi], [Talimatlar]) VALUES (1, N'Mercimek �orbas�', N'�orba', 30, N'Mercimekleri y�kay�n, su ile kaynat�n ve pi�irin.')
INSERT [dbo].[Tarifler] ([TarifID], [TarifAdi], [Kategori], [HazirlamaSuresi], [Talimatlar]) VALUES (2, N'Domates �orbas�', N'�orba', 25, N'Domatesleri rendeleyip pi�irin, un ve s�t ekleyin.')
INSERT [dbo].[Tarifler] ([TarifID], [TarifAdi], [Kategori], [HazirlamaSuresi], [Talimatlar]) VALUES (3, N'Ezogelin �orbas�', N'�orba', 40, N'Mercimek ve bulguru pi�irin, baharatlar� ekleyin.')
INSERT [dbo].[Tarifler] ([TarifID], [TarifAdi], [Kategori], [HazirlamaSuresi], [Talimatlar]) VALUES (4, N'Tavuk �orbas�', N'�orba', 35, N'Tavu�u ha�lay�p par�alay�n, sebzelerle pi�irin.')
INSERT [dbo].[Tarifler] ([TarifID], [TarifAdi], [Kategori], [HazirlamaSuresi], [Talimatlar]) VALUES (5, N'Tarhana �orbas�', N'�orba', 20, N'Tarhanay� suyla kar��t�r�p kaynat�n.')
INSERT [dbo].[Tarifler] ([TarifID], [TarifAdi], [Kategori], [HazirlamaSuresi], [Talimatlar]) VALUES (6, N'Yo�urt �orbas�', N'�orba', 30, N'Yo�urdu unla ��rp�n, yava��a kaynat�n.')
INSERT [dbo].[Tarifler] ([TarifID], [TarifAdi], [Kategori], [HazirlamaSuresi], [Talimatlar]) VALUES (7, N'Mantar �orbas�', N'�orba', 25, N'Mantarlar� do�ray�n, s�tle pi�irin.')
INSERT [dbo].[Tarifler] ([TarifID], [TarifAdi], [Kategori], [HazirlamaSuresi], [Talimatlar]) VALUES (8, N'Sebze �orbas�', N'�orba', 30, N'Sebzeleri do�ray�p su ile kaynat�n.')
INSERT [dbo].[Tarifler] ([TarifID], [TarifAdi], [Kategori], [HazirlamaSuresi], [Talimatlar]) VALUES (9, N'Kremal� Mantar �orbas�', N'�orba', 25, N'Mantarlar� kavurup krema ekleyin.')
INSERT [dbo].[Tarifler] ([TarifID], [TarifAdi], [Kategori], [HazirlamaSuresi], [Talimatlar]) VALUES (10, N'Brokoli �orbas�', N'�orba', 20, N'Brokoliyi pi�irin, blend�rdan ge�irin.')
INSERT [dbo].[Tarifler] ([TarifID], [TarifAdi], [Kategori], [HazirlamaSuresi], [Talimatlar]) VALUES (11, N'Karn�yar�k', N'Ana Yemek', 60, N'Patl�canlar� k�zart�n, k�ymal� har�la doldurun.')
INSERT [dbo].[Tarifler] ([TarifID], [TarifAdi], [Kategori], [HazirlamaSuresi], [Talimatlar]) VALUES (12, N'Makarna', N'Ana Yemek', 15, N'Makarna ha�lay�n ve sos ile kar��t�r�n.')
INSERT [dbo].[Tarifler] ([TarifID], [TarifAdi], [Kategori], [HazirlamaSuresi], [Talimatlar]) VALUES (13, N'Izgara Tavuk', N'Ana Yemek', 20, N'Tavuklar� marine edip �zgarada pi�irin.')
INSERT [dbo].[Tarifler] ([TarifID], [TarifAdi], [Kategori], [HazirlamaSuresi], [Talimatlar]) VALUES (14, N'K�fte', N'Ana Yemek', 30, N'K�ymay� baharatlarla yo�urun, �ekil verip k�zart�n.')
INSERT [dbo].[Tarifler] ([TarifID], [TarifAdi], [Kategori], [HazirlamaSuresi], [Talimatlar]) VALUES (15, N'Lahmacun', N'Ana Yemek', 45, N'Hamuru a��p k�ymal� har�la pi�irin.')
INSERT [dbo].[Tarifler] ([TarifID], [TarifAdi], [Kategori], [HazirlamaSuresi], [Talimatlar]) VALUES (16, N'Mant�', N'Ana Yemek', 50, N'Mant�lar� kaynat�n, yo�urt ve sos ekleyin.')
INSERT [dbo].[Tarifler] ([TarifID], [TarifAdi], [Kategori], [HazirlamaSuresi], [Talimatlar]) VALUES (17, N'F�r�nda Tavuk', N'Ana Yemek', 45, N'Tavuklar� sebzelerle f�r�nda pi�irin.')
INSERT [dbo].[Tarifler] ([TarifID], [TarifAdi], [Kategori], [HazirlamaSuresi], [Talimatlar]) VALUES (18, N'Et Sote', N'Ana Yemek', 25, N'Eti sebzelerle soteleyin.')
INSERT [dbo].[Tarifler] ([TarifID], [TarifAdi], [Kategori], [HazirlamaSuresi], [Talimatlar]) VALUES (19, N'Pilav', N'Ana Yemek', 20, N'Pirin�leri kavurup su ekleyin ve pi�irin.')
INSERT [dbo].[Tarifler] ([TarifID], [TarifAdi], [Kategori], [HazirlamaSuresi], [Talimatlar]) VALUES (20, N'Taze Fasulye', N'Ana Yemek', 30, N'Taze fasulyeleri domatesle pi�irin.')
INSERT [dbo].[Tarifler] ([TarifID], [TarifAdi], [Kategori], [HazirlamaSuresi], [Talimatlar]) VALUES (21, N'�oban Salata', N'Salata', 10, N'Domates, salatal�k ve biberleri do�ray�n.')
INSERT [dbo].[Tarifler] ([TarifID], [TarifAdi], [Kategori], [HazirlamaSuresi], [Talimatlar]) VALUES (22, N'Mevsim Salata', N'Salata', 10, N'Mevsim ye�illiklerini do�ray�n, sos ekleyin.')
INSERT [dbo].[Tarifler] ([TarifID], [TarifAdi], [Kategori], [HazirlamaSuresi], [Talimatlar]) VALUES (23, N'Patates Salatas�', N'Salata', 15, N'Ha�lanm�� patatesleri do�ray�n, baharat ekleyin.')
INSERT [dbo].[Tarifler] ([TarifID], [TarifAdi], [Kategori], [HazirlamaSuresi], [Talimatlar]) VALUES (24, N'Havu� Salatas�', N'Salata', 10, N'Havu�lar� rendeleyin, yo�urtla kar��t�r�n.')
INSERT [dbo].[Tarifler] ([TarifID], [TarifAdi], [Kategori], [HazirlamaSuresi], [Talimatlar]) VALUES (25, N'Kinoa Salatas�', N'Salata', 15, N'Kinoay� ha�lay�n, sebzelerle kar��t�r�n.')
INSERT [dbo].[Tarifler] ([TarifID], [TarifAdi], [Kategori], [HazirlamaSuresi], [Talimatlar]) VALUES (26, N'Yo�urtlu Semizotu Salatas�', N'Salata', 10, N'Semizotunu yo�urtla kar��t�r�n.')
INSERT [dbo].[Tarifler] ([TarifID], [TarifAdi], [Kategori], [HazirlamaSuresi], [Talimatlar]) VALUES (27, N'Tavuklu Sezar Salatas�', N'Salata', 20, N'Tavuk par�alar�n� salata malzemeleriyle kar��t�r�n.')
INSERT [dbo].[Tarifler] ([TarifID], [TarifAdi], [Kategori], [HazirlamaSuresi], [Talimatlar]) VALUES (28, N'K�rm�z� Lahana Salatas�', N'Salata', 10, N'Lahanay� do�ray�p sirke ekleyin.')
INSERT [dbo].[Tarifler] ([TarifID], [TarifAdi], [Kategori], [HazirlamaSuresi], [Talimatlar]) VALUES (29, N'M�s�rl� Ye�il Salata', N'Salata', 10, N'Ye�illiklere m�s�r ekleyin.')
INSERT [dbo].[Tarifler] ([TarifID], [TarifAdi], [Kategori], [HazirlamaSuresi], [Talimatlar]) VALUES (30, N'Elmal� Cevizli Salata', N'Salata', 10, N'Elma, ceviz ve ye�illikleri kar��t�r�n.')
INSERT [dbo].[Tarifler] ([TarifID], [TarifAdi], [Kategori], [HazirlamaSuresi], [Talimatlar]) VALUES (31, N'Revani', N'Tatl�', 30, N'Hamuru haz�rlay�n, �erbetle bulu�turun.')
INSERT [dbo].[Tarifler] ([TarifID], [TarifAdi], [Kategori], [HazirlamaSuresi], [Talimatlar]) VALUES (32, N'K�nefe', N'Tatl�', 25, N'Kaday�f� peynirle pi�irin, �erbet ekleyin.')
INSERT [dbo].[Tarifler] ([TarifID], [TarifAdi], [Kategori], [HazirlamaSuresi], [Talimatlar]) VALUES (33, N'Baklava', N'Tatl�', 90, N'Hamuru a��p kat kat haz�rlay�n, �erbetleyin.')
INSERT [dbo].[Tarifler] ([TarifID], [TarifAdi], [Kategori], [HazirlamaSuresi], [Talimatlar]) VALUES (34, N'S�tla�', N'Tatl�', 35, N'Pirin� ve s�t� pi�irin, f�r�nlay�n.')
INSERT [dbo].[Tarifler] ([TarifID], [TarifAdi], [Kategori], [HazirlamaSuresi], [Talimatlar]) VALUES (35, N'A�ure', N'Tatl�', 60, N'Tah�llar� pi�irip kar��t�r�n, s�sleyin.')
INSERT [dbo].[Tarifler] ([TarifID], [TarifAdi], [Kategori], [HazirlamaSuresi], [Talimatlar]) VALUES (36, N'Kaday�f', N'Tatl�', 30, N'Kaday�f� tereya�la kavurun, �erbet ekleyin.')
INSERT [dbo].[Tarifler] ([TarifID], [TarifAdi], [Kategori], [HazirlamaSuresi], [Talimatlar]) VALUES (37, N'�rmik Helvas�', N'Tatl�', 25, N'�rmik, s�t ve �ekeri pi�irin.')
INSERT [dbo].[Tarifler] ([TarifID], [TarifAdi], [Kategori], [HazirlamaSuresi], [Talimatlar]) VALUES (38, N'Ke�k�l', N'Tatl�', 20, N'S�tl� kar���m� pi�irin, s�sleyin.')
INSERT [dbo].[Tarifler] ([TarifID], [TarifAdi], [Kategori], [HazirlamaSuresi], [Talimatlar]) VALUES (39, N'Kazandibi', N'Tatl�', 25, N'Muhallebiyi pi�irip tavada yakarak haz�rlay�n.')
INSERT [dbo].[Tarifler] ([TarifID], [TarifAdi], [Kategori], [HazirlamaSuresi], [Talimatlar]) VALUES (40, N'G�lla�', N'Tatl�', 15, N'G�lla� yapraklar�n� s�tle �slat�n.')
INSERT [dbo].[Tarifler] ([TarifID], [TarifAdi], [Kategori], [HazirlamaSuresi], [Talimatlar]) VALUES (41, N'K�s�r', N'At��t�rmal�k', 20, N'Bulguru �slat�n, sebzelerle kar��t�r�n.')
INSERT [dbo].[Tarifler] ([TarifID], [TarifAdi], [Kategori], [HazirlamaSuresi], [Talimatlar]) VALUES (42, N'Po�a�a', N'At��t�rmal�k', 30, N'Hamuru haz�rlay�p f�r�nda pi�irin.')
INSERT [dbo].[Tarifler] ([TarifID], [TarifAdi], [Kategori], [HazirlamaSuresi], [Talimatlar]) VALUES (43, N'M�s�r Patla��', N'At��t�rmal�k', 10, N'M�s�rlar� ya�da patlat�n.')
INSERT [dbo].[Tarifler] ([TarifID], [TarifAdi], [Kategori], [HazirlamaSuresi], [Talimatlar]) VALUES (44, N'Sigara B�re�i', N'At��t�rmal�k', 15, N'Yufkalar� sar�p k�zart�n.')
INSERT [dbo].[Tarifler] ([TarifID], [TarifAdi], [Kategori], [HazirlamaSuresi], [Talimatlar]) VALUES (45, N'Kumpir', N'At��t�rmal�k', 40, N'Patatesleri pi�irip i�ini doldurun.')
INSERT [dbo].[Tarifler] ([TarifID], [TarifAdi], [Kategori], [HazirlamaSuresi], [Talimatlar]) VALUES (46, N'Sandvi�', N'At��t�rmal�k', 10, N'Malzemeleri ekmekle birle�tirin.')
INSERT [dbo].[Tarifler] ([TarifID], [TarifAdi], [Kategori], [HazirlamaSuresi], [Talimatlar]) VALUES (47, N'�i� K�fte', N'At��t�rmal�k', 30, N'Bulgur ve baharatlar� yo�urun.')
INSERT [dbo].[Tarifler] ([TarifID], [TarifAdi], [Kategori], [HazirlamaSuresi], [Talimatlar]) VALUES (48, N'Kurabiye', N'At��t�rmal�k', 20, N'Hamuru haz�rlay�p �ekil verin ve pi�irin.')
INSERT [dbo].[Tarifler] ([TarifID], [TarifAdi], [Kategori], [HazirlamaSuresi], [Talimatlar]) VALUES (49, N'Lava� Cipsi', N'At��t�rmal�k', 15, N'Lava�� do�ray�p f�r�nlay�n.')
INSERT [dbo].[Tarifler] ([TarifID], [TarifAdi], [Kategori], [HazirlamaSuresi], [Talimatlar]) VALUES (50, N'Tost', N'At��t�rmal�k', 5, N'Ekmek aras�na peynir ekleyip tost yap�n.')
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
