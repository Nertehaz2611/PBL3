USE [PBL3]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 4/30/2024 11:01:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[UserName] [nvarchar](100) NOT NULL,
	[DisplayName] [nvarchar](100) NOT NULL,
	[Type] [int] NOT NULL,
	[PassWord] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK__Staff__922B8FE685913209] PRIMARY KEY CLUSTERED 
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AccountType]    Script Date: 4/30/2024 11:01:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AccountType](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_AccountType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Bill]    Script Date: 4/30/2024 11:01:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bill](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[IDTable] [int] NOT NULL,
	[Cashier] [nvarchar](100) NOT NULL,
	[Status] [int] NOT NULL,
	[Day] [datetime] NOT NULL,
	[TotalPrice] [float] NOT NULL,
 CONSTRAINT [PK__Bill__CA506572654435FD] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BillDetail]    Script Date: 4/30/2024 11:01:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BillDetail](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[IDBill] [int] NOT NULL,
	[IDDrink] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
 CONSTRAINT [PK_Bill_Detail] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Drink]    Script Date: 4/30/2024 11:01:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Drink](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[IDType] [int] NOT NULL,
	[Price] [float] NOT NULL,
 CONSTRAINT [PK__Drink__A752B5F267467E68] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DrinkType]    Script Date: 4/30/2024 11:01:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DrinkType](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Table]    Script Date: 4/30/2024 11:01:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Table](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Status] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Table_] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Account] ([UserName], [DisplayName], [Type], [PassWord]) VALUES (N'1', N'1', 1, N'1')
INSERT [dbo].[Account] ([UserName], [DisplayName], [Type], [PassWord]) VALUES (N'anhliem', N'Liêm Trung Đức', 0, N'1')
INSERT [dbo].[Account] ([UserName], [DisplayName], [Type], [PassWord]) VALUES (N'neko', N'Nguyễn Thành Hiếu', 0, N'1')
INSERT [dbo].[Account] ([UserName], [DisplayName], [Type], [PassWord]) VALUES (N'test1', N'test1', 1, N'1234')
INSERT [dbo].[Account] ([UserName], [DisplayName], [Type], [PassWord]) VALUES (N'toan', N'Đặng Nguyễn Ngọc Toàn', 0, N'1')
INSERT [dbo].[Account] ([UserName], [DisplayName], [Type], [PassWord]) VALUES (N'viet', N'Lê Quốc Việt', 0, N'1')
GO
INSERT [dbo].[AccountType] ([ID], [Name]) VALUES (0, N'Staff')
INSERT [dbo].[AccountType] ([ID], [Name]) VALUES (1, N'Admin')
GO
SET IDENTITY_INSERT [dbo].[Bill] ON 

INSERT [dbo].[Bill] ([ID], [IDTable], [Cashier], [Status], [Day], [TotalPrice]) VALUES (47, 1, N'1', 1, CAST(N'2024-04-30T00:00:00.000' AS DateTime), 34000)
INSERT [dbo].[Bill] ([ID], [IDTable], [Cashier], [Status], [Day], [TotalPrice]) VALUES (48, 1, N'1', 1, CAST(N'2024-04-30T00:00:00.000' AS DateTime), 45000)
INSERT [dbo].[Bill] ([ID], [IDTable], [Cashier], [Status], [Day], [TotalPrice]) VALUES (49, 2, N'1', 1, CAST(N'2024-04-30T00:00:00.000' AS DateTime), 45000)
INSERT [dbo].[Bill] ([ID], [IDTable], [Cashier], [Status], [Day], [TotalPrice]) VALUES (50, 3, N'1', 1, CAST(N'2024-04-30T00:00:00.000' AS DateTime), 35000)
INSERT [dbo].[Bill] ([ID], [IDTable], [Cashier], [Status], [Day], [TotalPrice]) VALUES (51, 1, N'1', 1, CAST(N'2024-04-30T00:00:00.000' AS DateTime), 55000)
INSERT [dbo].[Bill] ([ID], [IDTable], [Cashier], [Status], [Day], [TotalPrice]) VALUES (52, 2, N'1', 0, CAST(N'2024-04-30T00:00:00.000' AS DateTime), 40000)
INSERT [dbo].[Bill] ([ID], [IDTable], [Cashier], [Status], [Day], [TotalPrice]) VALUES (53, 1, N'1', 1, CAST(N'2024-04-30T00:00:00.000' AS DateTime), 34000)
INSERT [dbo].[Bill] ([ID], [IDTable], [Cashier], [Status], [Day], [TotalPrice]) VALUES (54, 16, N'1', 0, CAST(N'2024-04-30T00:00:00.000' AS DateTime), 40000)
INSERT [dbo].[Bill] ([ID], [IDTable], [Cashier], [Status], [Day], [TotalPrice]) VALUES (55, 5, N'1', 0, CAST(N'2024-04-30T00:00:00.000' AS DateTime), 40000)
INSERT [dbo].[Bill] ([ID], [IDTable], [Cashier], [Status], [Day], [TotalPrice]) VALUES (56, 4, N'1', 1, CAST(N'2024-04-30T00:00:00.000' AS DateTime), 55000)
SET IDENTITY_INSERT [dbo].[Bill] OFF
GO
SET IDENTITY_INSERT [dbo].[BillDetail] ON 

INSERT [dbo].[BillDetail] ([ID], [IDBill], [IDDrink], [Quantity]) VALUES (55, 52, 1, 1)
INSERT [dbo].[BillDetail] ([ID], [IDBill], [IDDrink], [Quantity]) VALUES (57, 54, 1, 1)
INSERT [dbo].[BillDetail] ([ID], [IDBill], [IDDrink], [Quantity]) VALUES (58, 55, 1, 1)
SET IDENTITY_INSERT [dbo].[BillDetail] OFF
GO
INSERT [dbo].[Drink] ([ID], [Name], [IDType], [Price]) VALUES (1, N'Phin Sữa Đá', 1, 40000)
INSERT [dbo].[Drink] ([ID], [Name], [IDType], [Price]) VALUES (2, N'Phin Đen Đá', 1, 35000)
INSERT [dbo].[Drink] ([ID], [Name], [IDType], [Price]) VALUES (3, N'Phin Sữa Nóng', 1, 39000)
INSERT [dbo].[Drink] ([ID], [Name], [IDType], [Price]) VALUES (4, N'Phin Đen Nóng', 1, 34000)
INSERT [dbo].[Drink] ([ID], [Name], [IDType], [Price]) VALUES (5, N'Espresso/Americano', 2, 45000)
INSERT [dbo].[Drink] ([ID], [Name], [IDType], [Price]) VALUES (6, N'Capuchino/Latte', 2, 55000)
INSERT [dbo].[Drink] ([ID], [Name], [IDType], [Price]) VALUES (7, N'Caramen Machiatlo', 2, 40000)
INSERT [dbo].[Drink] ([ID], [Name], [IDType], [Price]) VALUES (8, N'Caramel Phin Freeze', 3, 50000)
INSERT [dbo].[Drink] ([ID], [Name], [IDType], [Price]) VALUES (9, N'Classic Phin Freeze', 3, 66000)
INSERT [dbo].[Drink] ([ID], [Name], [IDType], [Price]) VALUES (10, N'Freeze Trà Xanh', 3, 57000)
INSERT [dbo].[Drink] ([ID], [Name], [IDType], [Price]) VALUES (11, N'Freeze Sô-cô-la', 3, 60000)
INSERT [dbo].[Drink] ([ID], [Name], [IDType], [Price]) VALUES (12, N'Cookies & Cream', 3, 72000)
INSERT [dbo].[Drink] ([ID], [Name], [IDType], [Price]) VALUES (13, N'Trà Sen Vàng', 5, 55000)
INSERT [dbo].[Drink] ([ID], [Name], [IDType], [Price]) VALUES (14, N'Trà Thạch Đào', 5, 40000)
INSERT [dbo].[Drink] ([ID], [Name], [IDType], [Price]) VALUES (15, N'Trà Thanh Đào', 5, 45000)
INSERT [dbo].[Drink] ([ID], [Name], [IDType], [Price]) VALUES (16, N'Trà Thạch Vải', 5, 55000)
INSERT [dbo].[Drink] ([ID], [Name], [IDType], [Price]) VALUES (17, N'Trà Xanh Đậu Đỏ', 5, 35000)
INSERT [dbo].[Drink] ([ID], [Name], [IDType], [Price]) VALUES (18, N'Chanh Đá Xay', 6, 25000)
INSERT [dbo].[Drink] ([ID], [Name], [IDType], [Price]) VALUES (19, N'Sô-cô-la', 6, 45000)
INSERT [dbo].[Drink] ([ID], [Name], [IDType], [Price]) VALUES (20, N'Bánh Mì Thịt', 7, 17000)
INSERT [dbo].[Drink] ([ID], [Name], [IDType], [Price]) VALUES (21, N'Bánh Mì Gà Xé', 7, 25000)
INSERT [dbo].[Drink] ([ID], [Name], [IDType], [Price]) VALUES (22, N'Bánh Mì Chả Lụa', 7, 20000)
INSERT [dbo].[Drink] ([ID], [Name], [IDType], [Price]) VALUES (23, N'Bánh Mì Xíu Mại', 7, 15000)
INSERT [dbo].[Drink] ([ID], [Name], [IDType], [Price]) VALUES (24, N'Trà Sữa Trân Châu', 8, 20000)
INSERT [dbo].[Drink] ([ID], [Name], [IDType], [Price]) VALUES (25, N'Trà Sữa Oreo', 8, 30000)
INSERT [dbo].[Drink] ([ID], [Name], [IDType], [Price]) VALUES (26, N'Trà Sữa Kem', 8, 35000)
INSERT [dbo].[Drink] ([ID], [Name], [IDType], [Price]) VALUES (27, N'Sữa Chua Đá', 9, 15000)
INSERT [dbo].[Drink] ([ID], [Name], [IDType], [Price]) VALUES (28, N'Sữa Chua Trái Cây', 9, 25000)
INSERT [dbo].[Drink] ([ID], [Name], [IDType], [Price]) VALUES (29, N'Soda Đào', 10, 20000)
INSERT [dbo].[Drink] ([ID], [Name], [IDType], [Price]) VALUES (30, N'Soda Dâu', 10, 20000)
INSERT [dbo].[Drink] ([ID], [Name], [IDType], [Price]) VALUES (31, N'Soda Chanh', 10, 20000)
INSERT [dbo].[Drink] ([ID], [Name], [IDType], [Price]) VALUES (32, N'Soda Việt Quất', 10, 20000)
INSERT [dbo].[Drink] ([ID], [Name], [IDType], [Price]) VALUES (33, N'Soda Táo', 10, 20000)
INSERT [dbo].[Drink] ([ID], [Name], [IDType], [Price]) VALUES (34, N'Gin', 11, 100000)
INSERT [dbo].[Drink] ([ID], [Name], [IDType], [Price]) VALUES (35, N'Vodka', 11, 80000)
INSERT [dbo].[Drink] ([ID], [Name], [IDType], [Price]) VALUES (36, N'Bourbon', 11, 90000)
INSERT [dbo].[Drink] ([ID], [Name], [IDType], [Price]) VALUES (37, N'Cherry', 11, 120000)
INSERT [dbo].[Drink] ([ID], [Name], [IDType], [Price]) VALUES (38, N'Vermouth', 11, 70000)
INSERT [dbo].[Drink] ([ID], [Name], [IDType], [Price]) VALUES (39, N'Bò Húc', 4, 15000)
INSERT [dbo].[Drink] ([ID], [Name], [IDType], [Price]) VALUES (40, N'Number One', 4, 11000)
INSERT [dbo].[Drink] ([ID], [Name], [IDType], [Price]) VALUES (41, N'Sting Dâu', 4, 9000)
INSERT [dbo].[Drink] ([ID], [Name], [IDType], [Price]) VALUES (42, N'Sting Vàng', 4, 9000)
INSERT [dbo].[Drink] ([ID], [Name], [IDType], [Price]) VALUES (43, N'Mountain Dew', 4, 7000)
INSERT [dbo].[Drink] ([ID], [Name], [IDType], [Price]) VALUES (44, N'Monster', 4, 32000)
GO
INSERT [dbo].[DrinkType] ([ID], [Name]) VALUES (1, N'Cà phê')
INSERT [dbo].[DrinkType] ([ID], [Name]) VALUES (2, N'Cà Phê Espresso')
INSERT [dbo].[DrinkType] ([ID], [Name]) VALUES (3, N'Freeze')
INSERT [dbo].[DrinkType] ([ID], [Name]) VALUES (4, N'Nước Ngọt')
INSERT [dbo].[DrinkType] ([ID], [Name]) VALUES (5, N'Trà')
INSERT [dbo].[DrinkType] ([ID], [Name]) VALUES (6, N'Thức Uống Khác')
INSERT [dbo].[DrinkType] ([ID], [Name]) VALUES (7, N'Đồ Ăn Kèm')
INSERT [dbo].[DrinkType] ([ID], [Name]) VALUES (8, N'Trà Sữa')
INSERT [dbo].[DrinkType] ([ID], [Name]) VALUES (9, N'Sữa Chua')
INSERT [dbo].[DrinkType] ([ID], [Name]) VALUES (10, N'Soda')
INSERT [dbo].[DrinkType] ([ID], [Name]) VALUES (11, N'Rượu')
GO
INSERT [dbo].[Table] ([ID], [Name], [Status]) VALUES (1, N'Bàn 1 ', N'Empty')
INSERT [dbo].[Table] ([ID], [Name], [Status]) VALUES (2, N'Bàn 2', N'Online')
INSERT [dbo].[Table] ([ID], [Name], [Status]) VALUES (3, N'Bàn 3', N'Empty')
INSERT [dbo].[Table] ([ID], [Name], [Status]) VALUES (4, N'Bàn 4', N'Empty')
INSERT [dbo].[Table] ([ID], [Name], [Status]) VALUES (5, N'Bàn 5', N'Online')
INSERT [dbo].[Table] ([ID], [Name], [Status]) VALUES (6, N'Bàn 6', N'Empty')
INSERT [dbo].[Table] ([ID], [Name], [Status]) VALUES (7, N'Bàn 7', N'Empty')
INSERT [dbo].[Table] ([ID], [Name], [Status]) VALUES (8, N'Bàn 8', N'Empty')
INSERT [dbo].[Table] ([ID], [Name], [Status]) VALUES (9, N'Bàn 9', N'Empty')
INSERT [dbo].[Table] ([ID], [Name], [Status]) VALUES (10, N'Bàn 10', N'Empty')
INSERT [dbo].[Table] ([ID], [Name], [Status]) VALUES (11, N'Bàn 11', N'Empty')
INSERT [dbo].[Table] ([ID], [Name], [Status]) VALUES (12, N'Bàn 12', N'Empty')
INSERT [dbo].[Table] ([ID], [Name], [Status]) VALUES (13, N'Bàn 13', N'Empty')
INSERT [dbo].[Table] ([ID], [Name], [Status]) VALUES (14, N'Bàn 14', N'Empty')
INSERT [dbo].[Table] ([ID], [Name], [Status]) VALUES (15, N'Bàn 15', N'Empty')
INSERT [dbo].[Table] ([ID], [Name], [Status]) VALUES (16, N'Bàn 16', N'Online')
GO
ALTER TABLE [dbo].[AccountType] ADD  CONSTRAINT [DF__Type_Staf__Type___37A5467C]  DEFAULT ('NhanVien') FOR [Name]
GO
ALTER TABLE [dbo].[BillDetail] ADD  CONSTRAINT [DF__Bill_Deta__Quant__48CFD27E]  DEFAULT ((1)) FOR [IDDrink]
GO
ALTER TABLE [dbo].[Table] ADD  CONSTRAINT [DF__Table___Status_T__4316F928]  DEFAULT ((0)) FOR [Status]
GO
ALTER TABLE [dbo].[Account]  WITH CHECK ADD  CONSTRAINT [FK__Staff__Id_Type_S__3A81B327] FOREIGN KEY([Type])
REFERENCES [dbo].[AccountType] ([ID])
GO
ALTER TABLE [dbo].[Account] CHECK CONSTRAINT [FK__Staff__Id_Type_S__3A81B327]
GO
ALTER TABLE [dbo].[Bill]  WITH CHECK ADD  CONSTRAINT [FK__Bill__Cashier__46E78A0C] FOREIGN KEY([Cashier])
REFERENCES [dbo].[Account] ([UserName])
GO
ALTER TABLE [dbo].[Bill] CHECK CONSTRAINT [FK__Bill__Cashier__46E78A0C]
GO
ALTER TABLE [dbo].[Bill]  WITH CHECK ADD  CONSTRAINT [FK__Bill__Id_Table__45F365D3] FOREIGN KEY([IDTable])
REFERENCES [dbo].[Table] ([ID])
GO
ALTER TABLE [dbo].[Bill] CHECK CONSTRAINT [FK__Bill__Id_Table__45F365D3]
GO
ALTER TABLE [dbo].[BillDetail]  WITH CHECK ADD  CONSTRAINT [FK__Bill_Deta__ID_Bi__4AB81AF0] FOREIGN KEY([IDBill])
REFERENCES [dbo].[Bill] ([ID])
GO
ALTER TABLE [dbo].[BillDetail] CHECK CONSTRAINT [FK__Bill_Deta__ID_Bi__4AB81AF0]
GO
ALTER TABLE [dbo].[BillDetail]  WITH CHECK ADD  CONSTRAINT [FK__Bill_Deta__Id_Dr__49C3F6B7] FOREIGN KEY([IDDrink])
REFERENCES [dbo].[Drink] ([ID])
GO
ALTER TABLE [dbo].[BillDetail] CHECK CONSTRAINT [FK__Bill_Deta__Id_Dr__49C3F6B7]
GO
ALTER TABLE [dbo].[Drink]  WITH CHECK ADD  CONSTRAINT [FK_Drink] FOREIGN KEY([IDType])
REFERENCES [dbo].[DrinkType] ([ID])
GO
ALTER TABLE [dbo].[Drink] CHECK CONSTRAINT [FK_Drink]
GO
/****** Object:  StoredProcedure [dbo].[CheckDrinkTable]    Script Date: 4/30/2024 11:01:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CheckDrinkTable]
	@BillID nvarchar(100),
	@DrinkName nvarchar(100)
AS
BEGIN
	DECLARE @drinkid int
	SELECT @drinkid=ID FROM Drink
	WHERE @DrinkName=Name

	SELECT Quantity FROM BillDetail 
	WHERE IDBill=@BillID AND IDDrink=@drinkid
END
GO
/****** Object:  StoredProcedure [dbo].[DeleteAccount]    Script Date: 4/30/2024 11:01:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*
CREATE PROCEDURE InsertAccount @UserName nvarchar(100),@DisplayName nvarchar(100),@Type  nvarchar(100),@Password nvarchar(100)
as 
Insert into Account values (@UserName,@DisplayName,@Type,@Password)

*/

CREATE PROCEDURE [dbo].[DeleteAccount] @UserName nvarchar(100)
as 
Delete From Account where UserName=@UserName
GO
/****** Object:  StoredProcedure [dbo].[DeleteAccountType]    Script Date: 4/30/2024 11:01:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*
CREATE PROCEDURE InsertAccount @UserName nvarchar(100),@DisplayName nvarchar(100),@Type  nvarchar(100),@Password nvarchar(100)
as 
Insert into Account values (@UserName,@DisplayName,@Type,@Password)

*/

CREATE PROCEDURE [dbo].[DeleteAccountType] @Id int
as 
Delete From AccountType where ID=@Id
GO
/****** Object:  StoredProcedure [dbo].[DeleteBill]    Script Date: 4/30/2024 11:01:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*
CREATE PROCEDURE InsertAccount @UserName nvarchar(100),@DisplayName nvarchar(100),@Type  nvarchar(100),@Password nvarchar(100)
as 
Insert into Account values (@UserName,@DisplayName,@Type,@Password)

*/

CREATE PROCEDURE [dbo].[DeleteBill] @Id int
as 
Delete From Bill where ID=@Id
GO
/****** Object:  StoredProcedure [dbo].[DeleteBillDetail]    Script Date: 4/30/2024 11:01:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[DeleteBillDetail] @BillID int
AS
BEGIN

	DELETE FROM BillDetail 
	WHERE IDBill = @BillID
END


GO
/****** Object:  StoredProcedure [dbo].[DeleteDrink]    Script Date: 4/30/2024 11:01:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*
CREATE PROCEDURE InsertAccount @UserName nvarchar(100),@DisplayName nvarchar(100),@Type  nvarchar(100),@Password nvarchar(100)
as 
Insert into Account values (@UserName,@DisplayName,@Type,@Password)

*/

CREATE PROCEDURE [dbo].[DeleteDrink] @Id int
as 
Delete From Drink where ID=@Id
GO
/****** Object:  StoredProcedure [dbo].[DeleteDrinkType]    Script Date: 4/30/2024 11:01:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*
CREATE PROCEDURE InsertAccount @UserName nvarchar(100),@DisplayName nvarchar(100),@Type  nvarchar(100),@Password nvarchar(100)
as 
Insert into Account values (@UserName,@DisplayName,@Type,@Password)

*/

CREATE PROCEDURE [dbo].[DeleteDrinkType] @Id int
as 
Delete From DrinkType where ID=@Id
GO
/****** Object:  StoredProcedure [dbo].[DeleteTable]    Script Date: 4/30/2024 11:01:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*
CREATE PROCEDURE InsertAccount @UserName nvarchar(100),@DisplayName nvarchar(100),@Type  nvarchar(100),@Password nvarchar(100)
as 
Insert into Account values (@UserName,@DisplayName,@Type,@Password)

*/

CREATE PROCEDURE [dbo].[DeleteTable] @Id int
as 
Delete From [Table] where ID=@Id
GO
/****** Object:  StoredProcedure [dbo].[getBillByTableName]    Script Date: 4/30/2024 11:01:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[getBillByTableName]
	@TableName nvarchar(100),
	@Status int
AS
BEGIN
	DECLARE @TableID int
	SELECT @TableID = ID
	FROM [Table] 
	WHERE @TableName = Name	
	Select * from Bill where IDTable = @TableID and Bill.Status = @Status;
END
GO
/****** Object:  StoredProcedure [dbo].[IncreaseDrink]    Script Date: 4/30/2024 11:01:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[IncreaseDrink]
	@BillID int,
	@DrinkName nvarchar(100),
	@Quantity int
AS
BEGIN
DECLARE @DrinkID int
	SELECT @DrinkID=id FROM Drink
	WHERE @DrinkName=Name
	UPDATE BillDetail 
	SET 
		Quantity += @Quantity 
		WHERE IDBill = @BillID AND IDDrink = @DrinkID
END
GO
/****** Object:  StoredProcedure [dbo].[InsertAccount]    Script Date: 4/30/2024 11:01:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InsertAccount] 
	@UserName nvarchar(100),
	@DisplayName nvarchar(100),
	@Type  nvarchar(100),
	@Password nvarchar(100)
AS
BEGIN
	DECLARE @idType int
	SELECT @idType=ID FROM AccountType
	WHERE @Type=Name

	INSERT INTO  Account ( UserName, DisplayName, Type, PassWord )  
    VALUES ( @UserName , @DisplayName , @idType, @PassWord)
END

GO
/****** Object:  StoredProcedure [dbo].[InsertAccountType]    Script Date: 4/30/2024 11:01:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*
CREATE PROCEDURE InsertAccount @UserName nvarchar(100),@DisplayName nvarchar(100),@Type  nvarchar(100),@Password nvarchar(100)
as 
Insert into Account values (@UserName,@DisplayName,@Type,@Password)

*/

CREATE PROCEDURE [dbo].[InsertAccountType] @Id int,@Name nvarchar(100)
as 
Insert into AccountType values (@Id,@Name)
GO
/****** Object:  StoredProcedure [dbo].[InsertBill]    Script Date: 4/30/2024 11:01:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InsertBill] 
	@TableName nvarchar(100),
	@CashierDN nvarchar(100),
	@Status int,
	@Day DATETIME,
	@TotalPrice float
AS
BEGIN
	DECLARE @TableID int,
			@CashierUN nvarchar(100)
	SELECT @TableID=ID FROM [Table]
	WHERE @TableName=Name
	SELECT @CashierUN=UserName FROM Account
	WHERE @CashierDN=DisplayName
	Insert into Bill(IDTable,Cashier,Status,Day,TotalPrice) 
	values (@TableID,@CashierUN,@Status,@Day,@TotalPrice)
END
GO
/****** Object:  StoredProcedure [dbo].[InsertBillDetail]    Script Date: 4/30/2024 11:01:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InsertBillDetail] 
	@IdBill int,
	@DrinkName nvarchar(100),
	@Quantity int
AS
BEGIN
	DECLARE @DrinkID int
	SELECT @DrinkID=id FROM Drink
	WHERE @DrinkName=Name

	Insert into BillDetail(IDBill,IDDrink,Quantity) 
	values (@IdBill,@DrinkID,@Quantity)
END
GO
/****** Object:  StoredProcedure [dbo].[InsertDrink]    Script Date: 4/30/2024 11:01:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[InsertDrink]
	@Id int,
	@Name nvarchar(100),
	@Type nvarchar(100),
	@Price float
AS
BEGIN
	DECLARE @idType int
	SELECT @idType=id
	FROM DrinkType 
	WHERE @Type=Name	
	
	INSERT INTO  Drink ( ID, Name, IDType, Price )  
    VALUES ( @Id , @Name , @idType , @Price )
END
GO
/****** Object:  StoredProcedure [dbo].[InsertDrinkType]    Script Date: 4/30/2024 11:01:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/*
CREATE PROCEDURE InsertAccount @UserName nvarchar(100),@DisplayName nvarchar(100),@Type  nvarchar(100),@Password nvarchar(100)
as 
Insert into Account values (@UserName,@DisplayName,@Type,@Password)

*/

CREATE PROCEDURE [dbo].[InsertDrinkType] @Id int,@Name nvarchar(100)
as 
Insert into DrinkType values (@Id,@Name)
GO
/****** Object:  StoredProcedure [dbo].[InsertTable]    Script Date: 4/30/2024 11:01:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*
CREATE PROCEDURE InsertAccount @UserName nvarchar(100),@DisplayName nvarchar(100),@Type  nvarchar(100),@Password nvarchar(100)
as 
Insert into Account values (@UserName,@DisplayName,@Type,@Password)

*/

CREATE PROCEDURE [dbo].[InsertTable] @Id int,@Name nvarchar(100),@Status nvarchar(100)
as 
Insert into [Table] values (@Id,@Name,@Status)
GO
/****** Object:  StoredProcedure [dbo].[MoveTable]    Script Date: 4/30/2024 11:01:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[MoveTable]
	@TableNameFrom nvarchar(100)
	,@TableNameTo nvarchar(100)
AS
BEGIN
	UPDATE [Table] 
	SET Status = N'Online'
	WHERE Name = @TableNameTo
	
	UPDATE [Table] 
	SET Status = N'Empty'
	WHERE Name = @TableNameFrom 
END
GO
/****** Object:  StoredProcedure [dbo].[Revenue]    Script Date: 4/30/2024 11:01:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Revenue] @StartDay DATETIME, @EndDay DATETIME
as
BEGIN
	SELECT Day, Revenue = Sum(TotalPrice)
	From Bill
	Where Day BETWEEN @StartDay and @EndDay
		  AND [Status] = 1
	Group by Day
END;
GO
/****** Object:  StoredProcedure [dbo].[RevenueMonth]    Script Date: 4/30/2024 11:01:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[RevenueMonth] @StartDay DATETIME, @EndDay DATETIME
AS
BEGIN
    SELECT [Day] = MONTH(Day), Revenue = SUM(TotalPrice)
    FROM Bill
    WHERE Day BETWEEN @StartDay AND @EndDay
		  AND [Status] = 1
    GROUP BY MONTH(Day)
END;
GO
/****** Object:  StoredProcedure [dbo].[SearchDrink]    Script Date: 4/30/2024 11:01:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SearchDrink]
	@DrinkName nvarchar(100)
AS
BEGIN
	SELECT Drink.ID, Drink.Name, DrinkType.Name AS 'Type', Price
	FROM Drink INNER JOIN DrinkType ON Drink.IDType = DrinkType.ID
	WHERE Drink.Name LIKE @DrinkName + '%'
END
GO
/****** Object:  StoredProcedure [dbo].[SelectAllAccount]    Script Date: 4/30/2024 11:01:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SelectAllAccount]
as
select UserName,DisplayName, PassWord, Name as Type
from Account inner join AccountType on Type = ID
GO
/****** Object:  StoredProcedure [dbo].[SelectAllAccountType]    Script Date: 4/30/2024 11:01:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SelectAllAccountType]
as
select * from AccountType
GO
/****** Object:  StoredProcedure [dbo].[SelectAllBill]    Script Date: 4/30/2024 11:01:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SelectAllBill]
as
select * from Bill
GO
/****** Object:  StoredProcedure [dbo].[SelectAllBillDetail]    Script Date: 4/30/2024 11:01:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SelectAllBillDetail]
	@BillID int
AS
BEGIN

	SELECT BillDetail.ID, BillDetail.IDBill ,Drink.Name AS 'DrinkName',Quantity
	FROM BillDetail
	INNER JOIN Drink ON Drink.id=BillDetail.IDDrink
	WHERE BillDetail.IDBill=@BillID
END
GO
/****** Object:  StoredProcedure [dbo].[SelectAllDrink]    Script Date: 4/30/2024 11:01:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SelectAllDrink]
AS
BEGIN
	SELECT Drink.ID,Drink.Name,DrinkType.Name AS 'Type',Drink.Price
	FROM Drink 
	INNER JOIN DrinkType 
	ON Drink.idType=DrinkType.id
END
GO
/****** Object:  StoredProcedure [dbo].[SelectAllDrinkType]    Script Date: 4/30/2024 11:01:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SelectAllDrinkType]
as
select * from DrinkType
GO
/****** Object:  StoredProcedure [dbo].[SelectAllTable]    Script Date: 4/30/2024 11:01:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SelectAllTable]
as
select * from PBL3.dbo.[Table]

GO
/****** Object:  StoredProcedure [dbo].[SetPurchase]    Script Date: 4/30/2024 11:01:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SetPurchase]
	@TableName nvarchar(100)
AS
BEGIN
	DECLARE @TableID int
	Select @TableID = ID
	From [Table]
	Where @TableName = Name

	UPDATE [dbo].[Bill]
	SET 
		Status = 1
	WHERE IDTable = @TableID and Status = 0
END	
GO
/****** Object:  StoredProcedure [dbo].[SetTableEmpty]    Script Date: 4/30/2024 11:01:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SetTableEmpty]
	@TableName nvarchar(100)
AS
BEGIN
	UPDATE [dbo].[Table]
	SET 
		Status = N'Empty'
	WHERE Name = @TableName
END	
GO
/****** Object:  StoredProcedure [dbo].[SetTableOnline]    Script Date: 4/30/2024 11:01:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SetTableOnline]
	@TableName nvarchar(100)
AS
BEGIN
	UPDATE [dbo].[Table]
		SET Status = N'Online'
		WHERE Name=@TableName
END

SET ANSI_NULLS ON
GO
/****** Object:  StoredProcedure [dbo].[SetTotal]    Script Date: 4/30/2024 11:01:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SetTotal]
	@TableName nvarchar(100),
	@Status int,
	@Total float
AS
BEGIN
	DECLARE @TableID int
	SELECT @TableID=ID FROM [Table]
	WHERE @TableName=Name
	UPDATE Bill
	SET 
		TotalPrice += @Total 
	WHERE IDTable = @TableID and Status = @Status
END
GO
/****** Object:  StoredProcedure [dbo].[UpdateAccount]    Script Date: 4/30/2024 11:01:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[UpdateAccount] 
	@UserName nvarchar(100), 
	@DisplayName nvarchar(100),
	@Type nvarchar(100),
	@Password nvarchar(100), 
	@OldUserName nvarchar(100)
AS
BEGIN
	DECLARE @idType int
	SELECT @idType=ID FROM AccountType
	WHERE @Type=Name

	UPDATE Account
    SET
   		UserName = @UserName,
        DisplayName = @DisplayName,
        Type = @idType,
        PassWord = @PassWord
        WHERE UserName = @oldUserName
END
GO
/****** Object:  StoredProcedure [dbo].[UpdateAccountType]    Script Date: 4/30/2024 11:01:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[UpdateAccountType] @Id int, @Name nvarchar(100)
AS
Update AccountType set ID=@Id,Name=@Name where Id=@Id

    
GO
/****** Object:  StoredProcedure [dbo].[UpdateBill]    Script Date: 4/30/2024 11:01:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[UpdateBill] @Id int, @IdTable int,@cashier nvarchar(100),@TotalPrice float
AS
Update Bill set IDTable=@IdTable,Cashier=@cashier,TotalPrice=@TotalPrice where ID=@Id

    
GO
/****** Object:  StoredProcedure [dbo].[UpdateBillDetail]    Script Date: 4/30/2024 11:01:38 AM ******/
-- SET ANSI_NULLS ON
-- GO
-- SET QUOTED_IDENTIFIER ON
-- GO

-- CREATE PROCEDURE [dbo].[UpdateBillDetail] @Id int, @IdBill int,@IdDrink int,@Quantity int
-- AS
-- Update BillDetail set Id=@Id,IDBill=@IdBill,IDDrink=@IdDrink,Quantity=@Quantity where ID=@Id

    
-- GO
/****** Object:  StoredProcedure [dbo].[UpdateDrink]    Script Date: 4/30/2024 11:01:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[UpdateDrink] 
	@Id int,
	@Name nvarchar(100),
	@Type nvarchar(100),
	@Price float,
	@OldId int
AS
BEGIN
	DECLARE @idType int
	SELECT @idType=id
	FROM DrinkType 
	WHERE @Type=Name	
	
	UPDATE Drink
    SET
   		id = @id,
        Name = @Name,
        idType = @idType,
        price = @Price
        WHERE id = @OldId
END
GO
/****** Object:  StoredProcedure [dbo].[UpdateDrinkType]    Script Date: 4/30/2024 11:01:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[UpdateDrinkType]
	@Id int,
	@Name nvarchar(100),
	@OldId int
AS
BEGIN
	UPDATE DrinkType
    SET
   		id = @id,
        Name = @Name
        WHERE id = @oldID
END

    
GO
/****** Object:  StoredProcedure [dbo].[UpdateTable]    Script Date: 4/30/2024 11:01:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[UpdateTable]
	@Id int,
	@Name nvarchar(100),
	@Status nvarchar(100),
	@oldId int
AS
BEGIN
	UPDATE dbo.[Table]
    SET
   		ID = @id,
        Name = @Name,
        Status = @Status
        WHERE ID = @oldID
END
GO
/****** Object:  StoredProcedure [dbo].[UpdateTableInBill]    Script Date: 4/30/2024 11:01:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[UpdateTableInBill]
	@TableNameFrom nvarchar(100),
	@TableNameTo nvarchar(100)
AS
BEGIN
	DECLARE @TableIDFrom int,
			@TableIDTo int
			
	SELECT @TableIDFrom=ID FROM [Table]
	WHERE @TableNameFrom=Name
	
	SELECT @TableIDTo=ID FROM [Table]
	WHERE @TableNameTo=Name
	
	UPDATE Bill
	SET
		IDTable = @TableIDTo
	WHERE IDTable=@TableIDFrom and Status = 0
END
GO
/****** Object:  StoredProcedure [dbo].[UpdateTableStatus]    Script Date: 4/30/2024 11:01:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*
CREATE PROCEDURE InsertAccount @UserName nvarchar(100),@DisplayName nvarchar(100),@Type  nvarchar(100),@Password nvarchar(100)
as 
Insert into Account values (@UserName,@DisplayName,@Type,@Password)

*/

CREATE PROCEDURE [dbo].[UpdateTableStatus] @Id int, @Status nvarchar(100)
as 
BEGIN
    UPDATE [Table]
    SET [Status] = @Status
    WHERE ID=@Id; 
END;
GO
