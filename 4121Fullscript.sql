
CREATE TABLE [dbo].[Order](
	[OrderID] [int] IDENTITY(1,1) NOT NULL,
	[OrderStatus] [nvarchar](max) NOT NULL,
	[OrderDeliveryDate] [datetime] NOT NULL,
	[OrderPickupPoint] [int] NOT NULL,
	[Qty] [int] NOT NULL,
	[OrderDate] [datetime] NOT NULL,
	[GettingCode] [nvarchar](50) NOT NULL,
	[ID_Client] [int] NOT NULL,
 CONSTRAINT [PK__Order__C3905BAFDF176326] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
))
CREATE TABLE [dbo].[OrderProduct](
	[OrderID] [int] NOT NULL,
	[ProductArticleNumber] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC,
	[ProductArticleNumber] ASC
))
CREATE TABLE [dbo].[PickUPPoints](
	[ID_pp] [int] IDENTITY(1,1) NOT NULL,
	[Index_pp] [nvarchar](50) NOT NULL,
	[City] [nvarchar](50) NOT NULL,
	[Street] [nvarchar](50) NOT NULL,
	[House] [int] NOT NULL,
 CONSTRAINT [PK_PickUPPoints] PRIMARY KEY CLUSTERED 
(
	[ID_pp] ASC
))
CREATE TABLE [dbo].[Product](
	[ProductArticleNumber] [nvarchar](100) NOT NULL,
	[ProductName] [nvarchar](max) NOT NULL,
	[ProductDescription] [nvarchar](max) NOT NULL,
	[ProductCategory] [nvarchar](max) NOT NULL,
	[Photo] [nvarchar](50) NULL,
	[ProductManufacturer] [nvarchar](max) NOT NULL,
	[ProductDeliver] [nvarchar](50) NOT NULL,
	[ProductCost] [decimal](19, 4) NOT NULL,
	[ProductDiscountAmount] [tinyint] NOT NULL,
	[ProductQuantityInStock] [int] NOT NULL,
	[ProductStatus] [nvarchar](max) NOT NULL,
	[Unit] [nvarchar](50) NOT NULL,
	[MaxDiscount] [int] NOT NULL,
 CONSTRAINT [PK__Product__2EA7DCD591E1FEDE] PRIMARY KEY CLUSTERED 
(
	[ProductArticleNumber] ASC
))
CREATE TABLE [dbo].[Role](
	[RoleID] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[RoleID] ASC
))
CREATE TABLE [dbo].[User](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[UserSurname] [nvarchar](100) NOT NULL,
	[UserName] [nvarchar](100) NOT NULL,
	[UserPatronymic] [nvarchar](100) NOT NULL,
	[UserLogin] [nvarchar](max) NOT NULL,
	[UserPassword] [nvarchar](max) NOT NULL,
	[UserRole] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
))
SET IDENTITY_INSERT [dbo].[Order] ON 

INSERT [dbo].[Order] ([OrderID], [OrderStatus], [OrderDeliveryDate], [OrderPickupPoint], [Qty], [OrderDate], [GettingCode], [ID_Client]) VALUES (1, N'Новый ', CAST(N'2022-05-21T00:00:00.000' AS DateTime), 18, 2, CAST(N'2022-05-15T00:00:00.000' AS DateTime), N'401', 7)
INSERT [dbo].[Order] ([OrderID], [OrderStatus], [OrderDeliveryDate], [OrderPickupPoint], [Qty], [OrderDate], [GettingCode], [ID_Client]) VALUES (2, N'Новый ', CAST(N'2022-05-22T00:00:00.000' AS DateTime), 20, 3, CAST(N'2022-05-16T00:00:00.000' AS DateTime), N'402', 8)
INSERT [dbo].[Order] ([OrderID], [OrderStatus], [OrderDeliveryDate], [OrderPickupPoint], [Qty], [OrderDate], [GettingCode], [ID_Client]) VALUES (3, N'Завершен', CAST(N'2022-05-23T00:00:00.000' AS DateTime), 20, 10, CAST(N'2022-05-17T00:00:00.000' AS DateTime), N'403', 9)
INSERT [dbo].[Order] ([OrderID], [OrderStatus], [OrderDeliveryDate], [OrderPickupPoint], [Qty], [OrderDate], [GettingCode], [ID_Client]) VALUES (4, N'Новый ', CAST(N'2022-05-24T00:00:00.000' AS DateTime), 22, 1, CAST(N'2022-05-18T00:00:00.000' AS DateTime), N'404', 10)
INSERT [dbo].[Order] ([OrderID], [OrderStatus], [OrderDeliveryDate], [OrderPickupPoint], [Qty], [OrderDate], [GettingCode], [ID_Client]) VALUES (5, N'Новый ', CAST(N'2022-05-25T00:00:00.000' AS DateTime), 22, 10, CAST(N'2022-05-19T00:00:00.000' AS DateTime), N'405', 7)
INSERT [dbo].[Order] ([OrderID], [OrderStatus], [OrderDeliveryDate], [OrderPickupPoint], [Qty], [OrderDate], [GettingCode], [ID_Client]) VALUES (6, N'Новый ', CAST(N'2022-05-25T00:00:00.000' AS DateTime), 16, 2, CAST(N'2022-05-19T00:00:00.000' AS DateTime), N'406', 7)
INSERT [dbo].[Order] ([OrderID], [OrderStatus], [OrderDeliveryDate], [OrderPickupPoint], [Qty], [OrderDate], [GettingCode], [ID_Client]) VALUES (7, N'Завершен', CAST(N'2022-05-27T00:00:00.000' AS DateTime), 16, 1, CAST(N'2022-05-21T00:00:00.000' AS DateTime), N'407', 7)
INSERT [dbo].[Order] ([OrderID], [OrderStatus], [OrderDeliveryDate], [OrderPickupPoint], [Qty], [OrderDate], [GettingCode], [ID_Client]) VALUES (8, N'Завершен', CAST(N'2022-05-28T00:00:00.000' AS DateTime), 18, 3, CAST(N'2022-05-22T00:00:00.000' AS DateTime), N'408', 7)
INSERT [dbo].[Order] ([OrderID], [OrderStatus], [OrderDeliveryDate], [OrderPickupPoint], [Qty], [OrderDate], [GettingCode], [ID_Client]) VALUES (9, N'Новый ', CAST(N'2022-05-29T00:00:00.000' AS DateTime), 24, 1, CAST(N'2022-05-23T00:00:00.000' AS DateTime), N'409', 7)
INSERT [dbo].[Order] ([OrderID], [OrderStatus], [OrderDeliveryDate], [OrderPickupPoint], [Qty], [OrderDate], [GettingCode], [ID_Client]) VALUES (10, N'Завершен', CAST(N'2022-05-30T00:00:00.000' AS DateTime), 24, 5, CAST(N'2022-05-24T00:00:00.000' AS DateTime), N'410', 7)
INSERT [dbo].[Order] ([OrderID], [OrderStatus], [OrderDeliveryDate], [OrderPickupPoint], [Qty], [OrderDate], [GettingCode], [ID_Client]) VALUES (11, N'Новый ', CAST(N'2022-05-21T00:00:00.000' AS DateTime), 18, 2, CAST(N'2022-05-15T00:00:00.000' AS DateTime), N'401', 7)
INSERT [dbo].[Order] ([OrderID], [OrderStatus], [OrderDeliveryDate], [OrderPickupPoint], [Qty], [OrderDate], [GettingCode], [ID_Client]) VALUES (12, N'Новый ', CAST(N'2022-05-22T00:00:00.000' AS DateTime), 20, 3, CAST(N'2022-05-16T00:00:00.000' AS DateTime), N'402', 8)
INSERT [dbo].[Order] ([OrderID], [OrderStatus], [OrderDeliveryDate], [OrderPickupPoint], [Qty], [OrderDate], [GettingCode], [ID_Client]) VALUES (13, N'Завершен', CAST(N'2022-05-23T00:00:00.000' AS DateTime), 20, 10, CAST(N'2022-05-17T00:00:00.000' AS DateTime), N'403', 9)
INSERT [dbo].[Order] ([OrderID], [OrderStatus], [OrderDeliveryDate], [OrderPickupPoint], [Qty], [OrderDate], [GettingCode], [ID_Client]) VALUES (14, N'Новый ', CAST(N'2022-05-24T00:00:00.000' AS DateTime), 22, 1, CAST(N'2022-05-18T00:00:00.000' AS DateTime), N'404', 10)
INSERT [dbo].[Order] ([OrderID], [OrderStatus], [OrderDeliveryDate], [OrderPickupPoint], [Qty], [OrderDate], [GettingCode], [ID_Client]) VALUES (15, N'Новый ', CAST(N'2022-05-25T00:00:00.000' AS DateTime), 22, 10, CAST(N'2022-05-19T00:00:00.000' AS DateTime), N'405', 7)
INSERT [dbo].[Order] ([OrderID], [OrderStatus], [OrderDeliveryDate], [OrderPickupPoint], [Qty], [OrderDate], [GettingCode], [ID_Client]) VALUES (16, N'Новый ', CAST(N'2022-05-25T00:00:00.000' AS DateTime), 16, 2, CAST(N'2022-05-19T00:00:00.000' AS DateTime), N'406', 7)
INSERT [dbo].[Order] ([OrderID], [OrderStatus], [OrderDeliveryDate], [OrderPickupPoint], [Qty], [OrderDate], [GettingCode], [ID_Client]) VALUES (17, N'Завершен', CAST(N'2022-05-27T00:00:00.000' AS DateTime), 16, 1, CAST(N'2022-05-21T00:00:00.000' AS DateTime), N'407', 7)
INSERT [dbo].[Order] ([OrderID], [OrderStatus], [OrderDeliveryDate], [OrderPickupPoint], [Qty], [OrderDate], [GettingCode], [ID_Client]) VALUES (18, N'Завершен', CAST(N'2022-05-28T00:00:00.000' AS DateTime), 18, 3, CAST(N'2022-05-22T00:00:00.000' AS DateTime), N'408', 7)
INSERT [dbo].[Order] ([OrderID], [OrderStatus], [OrderDeliveryDate], [OrderPickupPoint], [Qty], [OrderDate], [GettingCode], [ID_Client]) VALUES (19, N'Новый ', CAST(N'2022-05-29T00:00:00.000' AS DateTime), 24, 1, CAST(N'2022-05-23T00:00:00.000' AS DateTime), N'409', 7)
INSERT [dbo].[Order] ([OrderID], [OrderStatus], [OrderDeliveryDate], [OrderPickupPoint], [Qty], [OrderDate], [GettingCode], [ID_Client]) VALUES (20, N'Завершен', CAST(N'2022-05-30T00:00:00.000' AS DateTime), 24, 5, CAST(N'2022-05-24T00:00:00.000' AS DateTime), N'410', 7)
SET IDENTITY_INSERT [dbo].[Order] OFF
GO
INSERT [dbo].[OrderProduct] ([OrderID], [ProductArticleNumber]) VALUES (1, N'А112Т4')
INSERT [dbo].[OrderProduct] ([OrderID], [ProductArticleNumber]) VALUES (2, N'F746E6')
INSERT [dbo].[OrderProduct] ([OrderID], [ProductArticleNumber]) VALUES (3, N'D648N7')
INSERT [dbo].[OrderProduct] ([OrderID], [ProductArticleNumber]) VALUES (4, N'F937G4')
INSERT [dbo].[OrderProduct] ([OrderID], [ProductArticleNumber]) VALUES (5, N'N483G5')
INSERT [dbo].[OrderProduct] ([OrderID], [ProductArticleNumber]) VALUES (6, N'G480F5')
INSERT [dbo].[OrderProduct] ([OrderID], [ProductArticleNumber]) VALUES (7, N'V312R4')
INSERT [dbo].[OrderProduct] ([OrderID], [ProductArticleNumber]) VALUES (8, N'G522B5')
INSERT [dbo].[OrderProduct] ([OrderID], [ProductArticleNumber]) VALUES (9, N'F047J7')
INSERT [dbo].[OrderProduct] ([OrderID], [ProductArticleNumber]) VALUES (10, N'N836R5')
INSERT [dbo].[OrderProduct] ([OrderID], [ProductArticleNumber]) VALUES (11, N'G598Y6')
INSERT [dbo].[OrderProduct] ([OrderID], [ProductArticleNumber]) VALUES (12, N'D830R5')
INSERT [dbo].[OrderProduct] ([OrderID], [ProductArticleNumber]) VALUES (13, N'F735B6')
INSERT [dbo].[OrderProduct] ([OrderID], [ProductArticleNumber]) VALUES (14, N'E324U7')
INSERT [dbo].[OrderProduct] ([OrderID], [ProductArticleNumber]) VALUES (15, N'D038G6')
INSERT [dbo].[OrderProduct] ([OrderID], [ProductArticleNumber]) VALUES (16, N'C324S5')
INSERT [dbo].[OrderProduct] ([OrderID], [ProductArticleNumber]) VALUES (17, N'J4DF5E')
INSERT [dbo].[OrderProduct] ([OrderID], [ProductArticleNumber]) VALUES (18, N'K432G6')
INSERT [dbo].[OrderProduct] ([OrderID], [ProductArticleNumber]) VALUES (19, N'S374B5')
INSERT [dbo].[OrderProduct] ([OrderID], [ProductArticleNumber]) VALUES (20, N'D927K3')
GO
SET IDENTITY_INSERT [dbo].[PickUPPoints] ON 

INSERT [dbo].[PickUPPoints] ([ID_pp], [Index_pp], [City], [Street], [House]) VALUES (1, N'344288', N' г. Дубна', N' ул. Чехова', 1)
INSERT [dbo].[PickUPPoints] ([ID_pp], [Index_pp], [City], [Street], [House]) VALUES (2, N'614164', N' г.Дубна', N'  ул. Степная', 30)
INSERT [dbo].[PickUPPoints] ([ID_pp], [Index_pp], [City], [Street], [House]) VALUES (3, N'394242', N' г. Дубна', N' ул. Коммунистическая', 43)
INSERT [dbo].[PickUPPoints] ([ID_pp], [Index_pp], [City], [Street], [House]) VALUES (4, N'660540', N' г. Дубна', N' ул. Солнечная', 25)
INSERT [dbo].[PickUPPoints] ([ID_pp], [Index_pp], [City], [Street], [House]) VALUES (5, N'125837', N' г. Дубна', N' ул. Шоссейная', 40)
INSERT [dbo].[PickUPPoints] ([ID_pp], [Index_pp], [City], [Street], [House]) VALUES (6, N'125703', N' г. Дубна', N' ул. Партизанская', 49)
INSERT [dbo].[PickUPPoints] ([ID_pp], [Index_pp], [City], [Street], [House]) VALUES (7, N'625283', N' г. Дубна', N' ул. Победы', 46)
INSERT [dbo].[PickUPPoints] ([ID_pp], [Index_pp], [City], [Street], [House]) VALUES (8, N'614611', N' г. Дубна', N' ул. Молодежная', 50)
INSERT [dbo].[PickUPPoints] ([ID_pp], [Index_pp], [City], [Street], [House]) VALUES (9, N'454311', N' г.Дубна', N' ул. Новая', 19)
INSERT [dbo].[PickUPPoints] ([ID_pp], [Index_pp], [City], [Street], [House]) VALUES (10, N'660007', N' г.Дубна', N' ул. Октябрьская', 19)
INSERT [dbo].[PickUPPoints] ([ID_pp], [Index_pp], [City], [Street], [House]) VALUES (11, N'603036', N' г. Дубна', N' ул. Садовая', 4)
INSERT [dbo].[PickUPPoints] ([ID_pp], [Index_pp], [City], [Street], [House]) VALUES (12, N'450983', N' г.Дубна', N' ул. Комсомольская', 26)
INSERT [dbo].[PickUPPoints] ([ID_pp], [Index_pp], [City], [Street], [House]) VALUES (13, N'394782', N' г. Дубна', N' ул. Чехова', 3)
INSERT [dbo].[PickUPPoints] ([ID_pp], [Index_pp], [City], [Street], [House]) VALUES (14, N'603002', N' г. Дубна', N' ул. Дзержинского', 28)
INSERT [dbo].[PickUPPoints] ([ID_pp], [Index_pp], [City], [Street], [House]) VALUES (15, N'450558', N' г. Дубна', N' ул. Набережная', 30)
INSERT [dbo].[PickUPPoints] ([ID_pp], [Index_pp], [City], [Street], [House]) VALUES (16, N'394060', N' г.Дубна', N' ул. Фрунзе', 43)
INSERT [dbo].[PickUPPoints] ([ID_pp], [Index_pp], [City], [Street], [House]) VALUES (17, N'410661', N' г. Дубна', N' ул. Школьная', 50)
INSERT [dbo].[PickUPPoints] ([ID_pp], [Index_pp], [City], [Street], [House]) VALUES (18, N'625590', N' г. Дубна', N' ул. Коммунистическая', 20)
INSERT [dbo].[PickUPPoints] ([ID_pp], [Index_pp], [City], [Street], [House]) VALUES (19, N'625683', N' г. Дубна', N' ул. 8 Марта', 1)
INSERT [dbo].[PickUPPoints] ([ID_pp], [Index_pp], [City], [Street], [House]) VALUES (20, N'400562', N' г. Дубна', N' ул. Зеленая', 32)
INSERT [dbo].[PickUPPoints] ([ID_pp], [Index_pp], [City], [Street], [House]) VALUES (21, N'614510', N' г. Дубна', N' ул. Маяковского', 47)
INSERT [dbo].[PickUPPoints] ([ID_pp], [Index_pp], [City], [Street], [House]) VALUES (22, N'410542', N' г. Дубна', N' ул. Светлая', 46)
INSERT [dbo].[PickUPPoints] ([ID_pp], [Index_pp], [City], [Street], [House]) VALUES (23, N'620839', N' г. Дубна', N' ул. Цветочная', 8)
INSERT [dbo].[PickUPPoints] ([ID_pp], [Index_pp], [City], [Street], [House]) VALUES (24, N'443890', N' г. Дубна', N' ул. Коммунистическая', 1)
INSERT [dbo].[PickUPPoints] ([ID_pp], [Index_pp], [City], [Street], [House]) VALUES (25, N'603379', N' г. Дубна', N' ул. Спортивная', 46)
INSERT [dbo].[PickUPPoints] ([ID_pp], [Index_pp], [City], [Street], [House]) VALUES (26, N'603721', N' г. Дубна', N' ул. Гоголя', 41)
INSERT [dbo].[PickUPPoints] ([ID_pp], [Index_pp], [City], [Street], [House]) VALUES (27, N'410172', N' г. Дубна', N' ул. Северная', 13)
INSERT [dbo].[PickUPPoints] ([ID_pp], [Index_pp], [City], [Street], [House]) VALUES (28, N'420151', N' г. Дубна', N' ул. Вишневая', 32)
INSERT [dbo].[PickUPPoints] ([ID_pp], [Index_pp], [City], [Street], [House]) VALUES (29, N'125061', N' г. Дубна', N' ул. Подгорная', 8)
INSERT [dbo].[PickUPPoints] ([ID_pp], [Index_pp], [City], [Street], [House]) VALUES (30, N'630370', N' г. Дубна', N' ул. Шоссейная', 24)
INSERT [dbo].[PickUPPoints] ([ID_pp], [Index_pp], [City], [Street], [House]) VALUES (31, N'614753', N' г. Дубна', N' ул. Полевая', 35)
INSERT [dbo].[PickUPPoints] ([ID_pp], [Index_pp], [City], [Street], [House]) VALUES (32, N'426030', N' г. Дубна', N' ул. Маяковского', 44)
INSERT [dbo].[PickUPPoints] ([ID_pp], [Index_pp], [City], [Street], [House]) VALUES (33, N'450375', N' г. Дубна', N'ул. Клубная', 44)
INSERT [dbo].[PickUPPoints] ([ID_pp], [Index_pp], [City], [Street], [House]) VALUES (34, N'625560', N' г. Дубна', N' ул. Некрасова', 12)
INSERT [dbo].[PickUPPoints] ([ID_pp], [Index_pp], [City], [Street], [House]) VALUES (35, N'630201', N' г. Дубна', N' ул. Комсомольская', 17)
INSERT [dbo].[PickUPPoints] ([ID_pp], [Index_pp], [City], [Street], [House]) VALUES (36, N'190949', N' г. Дубна', N' ул. Мичурина', 26)
SET IDENTITY_INSERT [dbo].[PickUPPoints] OFF
GO
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [Photo], [ProductManufacturer], [ProductDeliver], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus], [Unit], [MaxDiscount]) VALUES (N'B538G6', N'Спортивный костюм', N'Спортивный костюм playToday (футболка + шорты)', N'Одежда', N'B538G6.jpg', N'playToday', N'Спортмастер', CAST(839.0000 AS Decimal(19, 4)), 3, 17, N'в наличии', N'шт.', 5)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [Photo], [ProductManufacturer], [ProductDeliver], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus], [Unit], [MaxDiscount]) VALUES (N'C324S5', N'Шлем', N'Шлем г.л./сноуб. Salomon Grom р.:KS черный (L40836800)', N'Спортивный инвентарь', N'', N'Salomon', N'Декатлон', CAST(4000.0000 AS Decimal(19, 4)), 5, 16, N'в наличии', N'шт.', 10)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [Photo], [ProductManufacturer], [ProductDeliver], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus], [Unit], [MaxDiscount]) VALUES (N'D038G6', N'Лыжный комплект', N'Лыжный комплект беговые NORDWAY XC Classic, 45-45-45мм, 160см', N'Спортивный инвентарь', N'', N'Nordway', N'Декатлон', CAST(3000.0000 AS Decimal(19, 4)), 4, 23, N'в наличии', N'шт.', 30)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [Photo], [ProductManufacturer], [ProductDeliver], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus], [Unit], [MaxDiscount]) VALUES (N'D648N7', N'Набор для хоккея', N'Набор для хоккея Совтехстром', N'Спортивный инвентарь', N'D648N7.jpg', N'Совтехстром', N'Декатлон', CAST(350.0000 AS Decimal(19, 4)), 4, 7, N'в наличии', N'шт.', 10)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [Photo], [ProductManufacturer], [ProductDeliver], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus], [Unit], [MaxDiscount]) VALUES (N'D830R5', N'Тренажер прыжков', N'Тренажер для прыжков Moby Kids Moby-Jumper со счетчиком', N'Спортивный инвентарь', N'D830R5.jpg', N'Moby Kids', N'Спортмастер', CAST(1120.0000 AS Decimal(19, 4)), 4, 8, N'в наличии', N'шт.', 15)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [Photo], [ProductManufacturer], [ProductDeliver], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus], [Unit], [MaxDiscount]) VALUES (N'D893W4', N'Мяч', N'Мяч футбольный DEMIX 1STLS1JWWW, универсальный, 4-й размер, белый/зеленый', N'Спортивный инвентарь', N'', N'Demix', N'Спортмастер', CAST(900.0000 AS Decimal(19, 4)), 2, 5, N'в наличии', N'шт.', 5)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [Photo], [ProductManufacturer], [ProductDeliver], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus], [Unit], [MaxDiscount]) VALUES (N'D927K3', N'Перчатки ', N'Перчатки Starfit SU-125 атлетические S черный', N'Спортивный инвентарь', N'', N'Starfit', N'Декатлон', CAST(660.0000 AS Decimal(19, 4)), 4, 3, N'в наличии', N'шт.', 15)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [Photo], [ProductManufacturer], [ProductDeliver], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus], [Unit], [MaxDiscount]) VALUES (N'E324U7', N'Велотренажер', N'Велотренажер двойной DFC B804 dual bike', N'Спортивный инвентарь', N'E324U7.jpg', N'DFC', N'Спортмастер', CAST(6480.0000 AS Decimal(19, 4)), 5, 5, N'в наличии', N'шт.', 25)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [Photo], [ProductManufacturer], [ProductDeliver], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus], [Unit], [MaxDiscount]) VALUES (N'F047J7', N'Коврик', N'Коврик Bradex для мягкой йоги дл.:1730мм ш.:610мм т.:3мм серый', N'Спортивный инвентарь', N'', N'Bradex', N'Спортмастер', CAST(720.0000 AS Decimal(19, 4)), 5, 11, N'в наличии', N'шт.', 15)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [Photo], [ProductManufacturer], [ProductDeliver], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus], [Unit], [MaxDiscount]) VALUES (N'F687G5', N'Защита голени', N'Защита голени GREEN HILL Panther, L, синий/черный', N'Спортивный инвентарь', N'', N'Green Hill', N'Спортмастер', CAST(1900.0000 AS Decimal(19, 4)), 4, 6, N'в наличии', N'шт.', 15)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [Photo], [ProductManufacturer], [ProductDeliver], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus], [Unit], [MaxDiscount]) VALUES (N'F735B6', N'Игровой набор', N'Игровой набор Совтехстром Кегли и шары', N'Спортивный инвентарь', N'F735B6.jpg', N'Совтехстром', N'Декатлон', CAST(320.0000 AS Decimal(19, 4)), 2, 9, N'в наличии', N'шт.', 15)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [Photo], [ProductManufacturer], [ProductDeliver], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus], [Unit], [MaxDiscount]) VALUES (N'F746E6', N'Шведская стенка', N'Шведская стенка ROMANA Next, pastel', N'Спортивный инвентарь', N'F746E6.jpg', N'ROMANA Next', N'Декатлон', CAST(9900.0000 AS Decimal(19, 4)), 3, 5, N'в наличии', N'шт.', 10)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [Photo], [ProductManufacturer], [ProductDeliver], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus], [Unit], [MaxDiscount]) VALUES (N'F937G4', N'Игровой набор', N'Набор Abtoys Бадминтон и теннис ', N'Спортивный инвентарь', N'F937G4.jpg', N'Abtoys', N'Спортмастер', CAST(480.0000 AS Decimal(19, 4)), 4, 12, N'в наличии', N'шт.', 10)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [Photo], [ProductManufacturer], [ProductDeliver], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus], [Unit], [MaxDiscount]) VALUES (N'G403T5', N'Тюбинг', N'Тюбинг Nordway, 73 см', N'Спортивный инвентарь', N'G403T5.jpg', N'Nordway', N'Спортмастер', CAST(1450.0000 AS Decimal(19, 4)), 4, 13, N'в наличии', N'шт.', 15)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [Photo], [ProductManufacturer], [ProductDeliver], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus], [Unit], [MaxDiscount]) VALUES (N'G480F5', N'Ролики', N'Коньки роликовые Ridex Cricket жен. ABEC 3 кол.:72мм р.:39-42 синий', N'Спортивный инвентарь', N'', N'Ridex', N'Спортмастер', CAST(1600.0000 AS Decimal(19, 4)), 4, 7, N'в наличии', N'шт.', 15)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [Photo], [ProductManufacturer], [ProductDeliver], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus], [Unit], [MaxDiscount]) VALUES (N'G522B5', N'Ласты', N'Ласты Colton CF-02 для плавания р.:33-34 серый/голубой', N'Спортивный инвентарь', N'', N'Colton', N'Декатлон', CAST(1980.0000 AS Decimal(19, 4)), 3, 6, N'в наличии', N'шт.', 15)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [Photo], [ProductManufacturer], [ProductDeliver], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus], [Unit], [MaxDiscount]) VALUES (N'G598Y6', N'Спортивный мат', N'Спортивный мат 100x100x10 см Perfetto Sport № 3 бежевый', N'Спортивный инвентарь', N'G598Y6.jpg', N'Perfetto Sport', N'Декатлон', CAST(2390.0000 AS Decimal(19, 4)), 2, 16, N'в наличии', N'шт.', 15)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [Photo], [ProductManufacturer], [ProductDeliver], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus], [Unit], [MaxDiscount]) VALUES (N'G873H4', N'Велосипед', N'Велосипед SKIF 29 Disc (2021), горный (взрослый), рама: 17", колеса: 29", темно-серый', N'Спортивный инвентарь', N'', N'SKIF', N'Спортмастер', CAST(14930.0000 AS Decimal(19, 4)), 4, 6, N'в наличии', N'шт.', 5)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [Photo], [ProductManufacturer], [ProductDeliver], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus], [Unit], [MaxDiscount]) VALUES (N'J4DF5E', N'Насос', N'Насос Molten HP-18-B для мячей мультиколор', N'Спортивный инвентарь', N'', N'Molten', N'Спортмастер', CAST(300.0000 AS Decimal(19, 4)), 4, 12, N'в наличии', N'шт.', 5)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [Photo], [ProductManufacturer], [ProductDeliver], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus], [Unit], [MaxDiscount]) VALUES (N'J532D4', N'Перчатки для карате', N'Перчатки для каратэ Green Hill KMС-6083 L красный', N'Спортивный инвентарь', N'', N'Green Hill', N'Спортмастер', CAST(1050.0000 AS Decimal(19, 4)), 3, 5, N'в наличии', N'шт.', 15)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [Photo], [ProductManufacturer], [ProductDeliver], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus], [Unit], [MaxDiscount]) VALUES (N'K432G6', N'Шапочка для плавания', N'Шапочка для плавания Atemi PU 140 ткань с покрытием желтый', N'Спортивный инвентарь', N'', N'Atemi', N'Декатлон', CAST(440.0000 AS Decimal(19, 4)), 5, 17, N'в наличии', N'шт.', 25)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [Photo], [ProductManufacturer], [ProductDeliver], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus], [Unit], [MaxDiscount]) VALUES (N'K937A5', N'Гиря', N'Гиря Starfit ГМБ4 мягкое 4кг синий/оранжевый', N'Спортивный инвентарь', N'', N'Starfit', N'Декатлон', CAST(890.0000 AS Decimal(19, 4)), 4, 10, N'в наличии', N'шт.', 5)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [Photo], [ProductManufacturer], [ProductDeliver], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus], [Unit], [MaxDiscount]) VALUES (N'N483G5', N'Клюшка', N'Клюшка Nordway NDW300 (2019/2020) SR лев. 19 150см', N'Спортивный инвентарь', N'', N'Nordway', N'Декатлон', CAST(1299.0000 AS Decimal(19, 4)), 3, 4, N'в наличии', N'шт.', 10)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [Photo], [ProductManufacturer], [ProductDeliver], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus], [Unit], [MaxDiscount]) VALUES (N'N836R5', N'Коньки', N'Коньки ATEMI AKSK01DXS, раздвижные, прогулочные, унисекс, 27-30, черный/зеленый', N'Спортивный инвентарь', N'', N'Atemi', N'Декатлон', CAST(2000.0000 AS Decimal(19, 4)), 3, 16, N'в наличии', N'шт.', 10)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [Photo], [ProductManufacturer], [ProductDeliver], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus], [Unit], [MaxDiscount]) VALUES (N'N892G6', N'Очки для плавания', N'Очки для плавания Atemi N8401 синий', N'Спортивный инвентарь', N'', N'Atemi', N'Декатлон', CAST(500.0000 AS Decimal(19, 4)), 5, 14, N'в наличии', N'шт.', 5)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [Photo], [ProductManufacturer], [ProductDeliver], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus], [Unit], [MaxDiscount]) VALUES (N'S374B5', N'Ролик для йоги', N'Ролик для йоги Bradex Туба d=14см ш.:33см оранжевый', N'Спортивный инвентарь', N'', N'Bradex', N'Спортмастер', CAST(700.0000 AS Decimal(19, 4)), 3, 12, N'в наличии', N'шт.', 10)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [Photo], [ProductManufacturer], [ProductDeliver], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus], [Unit], [MaxDiscount]) VALUES (N'V312R4', N'Мяч', N'Мяч волейбольный MIKASA VT370W, для зала, 5-й размер, желтый/синий', N'Спортивный инвентарь', N'', N'Mikasa', N'Декатлон', CAST(4150.0000 AS Decimal(19, 4)), 2, 5, N'в наличии', N'шт.', 20)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [Photo], [ProductManufacturer], [ProductDeliver], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus], [Unit], [MaxDiscount]) VALUES (N'V392H7', N'Степ-платформа', N'Степ-платформа Starfit SP-204 серый/черный', N'Спортивный инвентарь', N'', N'Starfit', N'Спортмастер', CAST(4790.0000 AS Decimal(19, 4)), 3, 15, N'в наличии', N'шт.', 10)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [Photo], [ProductManufacturer], [ProductDeliver], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus], [Unit], [MaxDiscount]) VALUES (N'V423D4', N'Штанга', N'Штанга Starfit BB-401 30кг пласт. черный ', N'Спортивный инвентарь', N'', N'Starfit', N'Декатлон', CAST(5600.0000 AS Decimal(19, 4)), 3, 8, N'в наличии', N'шт.', 10)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [Photo], [ProductManufacturer], [ProductDeliver], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus], [Unit], [MaxDiscount]) VALUES (N'А112Т4', N'Боксерская груша', N'Боксерская груша X-Match черная', N'Спортивный инвентарь', N'А112Т4.jpg', N'X-Match', N'Спортмастер', CAST(778.0000 AS Decimal(19, 4)), 5, 6, N'в наличии', N'шт.', 30)
GO
SET IDENTITY_INSERT [dbo].[Role] ON 

INSERT [dbo].[Role] ([RoleID], [RoleName]) VALUES (1, N'Администратор')
INSERT [dbo].[Role] ([RoleID], [RoleName]) VALUES (2, N'Менеджер')
INSERT [dbo].[Role] ([RoleID], [RoleName]) VALUES (3, N'Клиент')
SET IDENTITY_INSERT [dbo].[Role] OFF
GO
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (1, N'Пахомова', N'Аиша', N'Анатольевна', N'm4ic8j5qgstw@gmail.com', N'2L6KZG', 1)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (2, N'Жуков', N'Роман', N'Богданович', N'd43zfg9tlsyv@gmail.com', N'uzWC67', 1)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (3, N'Киселева', N'Анастасия', N'Максимовна', N'8ohgisf6k45w@outlook.com', N'8ntwUp', 1)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (4, N'Григорьева', N'Арина', N'Арсентьевна', N'hi1brwj46czx@mail.com', N'YOyhfR', 2)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (5, N'Иванов', N'Лев', N'Михайлович', N'fvkbcamhlj52@gmail.com', N'RSbvHv', 2)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (6, N'Григорьев', N'Лев', N'Давидович', N'9qxnce8jwruv@gmail.com', N'rwVDh9', 2)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (7, N'Поляков', N'Степан', N'Егорович', N'dotiex942p1r@gmail.com', N'LdNyos', 3)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (8, N'Леонова', N'Алиса', N'Кирилловна', N'n0bmi2h1xral@tutanota.com', N'gynQMT', 3)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (9, N'Яковлев', N'Платон', N'Константинович', N'sfm3t278kdvz@yahoo.com', N'AtnDjr', 3)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (10, N'Ковалева', N'Ева', N'Яковлевна', N'ilb8rdut0v7e@mail.com', N'JlFRCZ', 3)
SET IDENTITY_INSERT [dbo].[User] OFF
GO
ALTER TABLE [dbo].[OrderProduct]  WITH CHECK ADD  CONSTRAINT [FK__OrderProd__Order__2C3393D0] FOREIGN KEY([OrderID])
REFERENCES [dbo].[Order] ([OrderID])
GO
ALTER TABLE [dbo].[OrderProduct] CHECK CONSTRAINT [FK__OrderProd__Order__2C3393D0]
GO
ALTER TABLE [dbo].[OrderProduct]  WITH CHECK ADD  CONSTRAINT [FK__OrderProd__Produ__2E1BDC42] FOREIGN KEY([ProductArticleNumber])
REFERENCES [dbo].[Product] ([ProductArticleNumber])
GO
ALTER TABLE [dbo].[OrderProduct] CHECK CONSTRAINT [FK__OrderProd__Produ__2E1BDC42]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD FOREIGN KEY([UserRole])
REFERENCES [dbo].[Role] ([RoleID])
GO

