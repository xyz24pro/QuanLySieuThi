
GO
/****** Object:  Table [dbo].[chitietdonhang]    Script Date: 8/30/2024 11:34:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[chitietdonhang](
	[maphieuxuat] [int] IDENTITY(1,1) NOT NULL,
	[sanphamban] [nvarchar](500) NULL,
	[ngayban] [nvarchar](30) NULL,
	[thanhtien] [int] NULL,
	[nguoiban] [nvarchar](50) NULL,
 CONSTRAINT [PK_chitietdonhang] PRIMARY KEY CLUSTERED 
(
	[maphieuxuat] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[nhacungcap]    Script Date: 8/30/2024 11:34:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[nhacungcap](
	[mancc] [int] IDENTITY(1,1) NOT NULL,
	[tenncc] [nvarchar](50) NULL,
	[diachi] [nvarchar](50) NULL,
	[sdt] [nvarchar](50) NULL,
	[congno] [int] NULL,
 CONSTRAINT [PK_nhacungcap] PRIMARY KEY CLUSTERED 
(
	[mancc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sanpham]    Script Date: 8/30/2024 11:34:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sanpham](
	[masp] [int] IDENTITY(1000,1) NOT NULL,
	[tensp] [nvarchar](50) NULL,
	[mancc] [int] NULL,
	[gianhap] [int] NULL,
	[giaban] [int] NULL,
	[solg] [int] NULL,
	[hsd] [date] NULL,
	[noisx] [nvarchar](50) NOT NULL,
	[donvitinh] [nvarchar](50) NULL,
	[nguoinhap] [nvarchar](50) NULL,
 CONSTRAINT [PK_sanpham] PRIMARY KEY CLUSTERED 
(
	[masp] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[taikhoan]    Script Date: 8/30/2022 11:34:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[taikhoan](
	[username] [nvarchar](50) NOT NULL,
	[password] [nvarchar](50) NULL,
	[fullname] [nvarchar](50) NULL,
	[datecreate] [nvarchar](25) NULL,
	[isAdmin] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[chitietdonhang] ON 

INSERT [dbo].[chitietdonhang] ([maphieuxuat], [sanphamban], [ngayban], [thanhtien], [nguoiban]) VALUES (12, N'Cocacola : 1,  kim chi : 1,  Cocacola : 1,  ', N'2024-05-30 09:05:14 PM', 570000, N'Dinh Van Minh (Quản trị)')
INSERT [dbo].[chitietdonhang] ([maphieuxuat], [sanphamban], [ngayban], [thanhtien], [nguoiban]) VALUES (13, N'Tuong ot : 1,  Cocacola : 1,  Tuong ot : 1,  ', N'2024-08-30 09:08:18 PM', 340000, N'Nguyen Van Teo (Nhân viên)')
INSERT [dbo].[chitietdonhang] ([maphieuxuat], [sanphamban], [ngayban], [thanhtien], [nguoiban]) VALUES (14, N'Bot giat : 5,  Tuong ot : 1,  Nuoc Tuong : 3,  Bot ngot : 2,  ', N'2024-17-30 09:17:57 PM', 315000, N'Nguyen Van Teo (Nhân viên)')
INSERT [dbo].[chitietdonhang] ([maphieuxuat], [sanphamban], [ngayban], [thanhtien], [nguoiban]) VALUES (15, N'Cocacola : 3,  kim chi : 2,  Kem Danh Rang : 5,  ', N'2024-08-30 11:08:17 PM', 1240000, N'Nguyen Van Teo (Nhân viên)')
SET IDENTITY_INSERT [dbo].[chitietdonhang] OFF
SET IDENTITY_INSERT [dbo].[nhacungcap] ON 

INSERT [dbo].[nhacungcap] ([mancc], [tenncc], [diachi], [sdt], [congno]) VALUES (1, N'VinFast', N'Hà Nội', N'01655888622', 0)
INSERT [dbo].[nhacungcap] ([mancc], [tenncc], [diachi], [sdt], [congno]) VALUES (2, N'GoFood', N'Hà Nội', N'00001356565', 0)
INSERT [dbo].[nhacungcap] ([mancc], [tenncc], [diachi], [sdt], [congno]) VALUES (3, N'ThuanAn', N'Hải Phòng', N'05985231023', 0)
INSERT [dbo].[nhacungcap] ([mancc], [tenncc], [diachi], [sdt], [congno]) VALUES (4, N'Sun', N'hcm', N'123456789', 0)
INSERT [dbo].[nhacungcap] ([mancc], [tenncc], [diachi], [sdt], [congno]) VALUES (5, N'Now', N'HCM', N'0934545', 0)
SET IDENTITY_INSERT [dbo].[nhacungcap] OFF
SET IDENTITY_INSERT [dbo].[sanpham] ON 

INSERT [dbo].[sanpham] ([masp], [tensp], [mancc], [gianhap], [giaban], [solg], [hsd], [noisx], [donvitinh], [nguoinhap]) VALUES (1000, N'Quat Máy', 1, 300000, 400000, 6, CAST(N'2025-01-01' AS Date), N'Hải Phòng', N'Chiếc', N'Dinh Van Minh (Quản trị)')
INSERT [dbo].[sanpham] ([masp], [tensp], [mancc], [gianhap], [giaban], [solg], [hsd], [noisx], [donvitinh], [nguoinhap]) VALUES (1001, N'Bột giặt', 2, 150000, 20000, 26, CAST(N'2022-07-21' AS Date), N'Binh Phuoc', N'bịch', N'Dinh Van Minh (Quản trị)')
INSERT [dbo].[sanpham] ([masp], [tensp], [mancc], [gianhap], [giaban], [solg], [hsd], [noisx], [donvitinh], [nguoinhap]) VALUES (1002, N'Dau an', 2, 50000, 60000, 35, CAST(N'2022-08-20' AS Date), N'HCM', N'Chai', N'Dinh Van Minh (Quản trị)')
INSERT [dbo].[sanpham] ([masp], [tensp], [mancc], [gianhap], [giaban], [solg], [hsd], [noisx], [donvitinh], [nguoinhap]) VALUES (1003, N'Bot ngot', 1, 20000, 25000, 41, CAST(N'2022-08-20' AS Date), N'HCM', N'bich', N'Dinh Van Minh (Quản trị)')
INSERT [dbo].[sanpham] ([masp], [tensp], [mancc], [gianhap], [giaban], [solg], [hsd], [noisx], [donvitinh], [nguoinhap]) VALUES (1004, N'Tuong ot', 1, 35000, 45000, 59, CAST(N'2023-11-23' AS Date), N'Hai phong', N'Chai', N'Dinh Van Minh (Quản trị)')
INSERT [dbo].[sanpham] ([masp], [tensp], [mancc], [gianhap], [giaban], [solg], [hsd], [noisx], [donvitinh], [nguoinhap]) VALUES (1005, N'Cocacola', 1, 170000, 250000, 3, CAST(N'2022-08-20' AS Date), N'HCM', N'Thung', N'Dinh Van Minh (Quản trị)')
INSERT [dbo].[sanpham] ([masp], [tensp], [mancc], [gianhap], [giaban], [solg], [hsd], [noisx], [donvitinh], [nguoinhap]) VALUES (1007, N'kim chi', 2, 50000, 70000, 94, CAST(N'2022-08-26' AS Date), N'Seoul', N'Bịch', N'Dinh Van Minh (Quản trị)')
INSERT [dbo].[sanpham] ([masp], [tensp], [mancc], [gianhap], [giaban], [solg], [hsd], [noisx], [donvitinh], [nguoinhap]) VALUES (1008, N'sua', 3, 20000, 30000, 36, CAST(N'2022-09-28' AS Date), N'hcm', N'hop', N'Dinh Van Minh (Quản trị)')
INSERT [dbo].[sanpham] ([masp], [tensp], [mancc], [gianhap], [giaban], [solg], [hsd], [noisx], [donvitinh], [nguoinhap]) VALUES (1009, N'Nuoc Tuong', 1, 30000, 40000, 87, CAST(N'2022-09-29' AS Date), N'HCM', N'Chai', N'Dinh Van Minh (Quản trị)')
INSERT [dbo].[sanpham] ([masp], [tensp], [mancc], [gianhap], [giaban], [solg], [hsd], [noisx], [donvitinh], [nguoinhap]) VALUES (1010, N'Kem Danh Rang', 5, 50000, 70000, 85, CAST(N'2022-08-30' AS Date), N'Binh Phuoc', N'Tip', N'Dinh Van Minh (Quản trị)')
SET IDENTITY_INSERT [dbo].[sanpham] OFF
INSERT [dbo].[taikhoan] ([username], [password], [fullname], [datecreate], [isAdmin]) VALUES (N'admin', N'123', N'Dinh Van Minh', N'2024-08-21 20:16:04.51000', 0)
INSERT [dbo].[taikhoan] ([username], [password], [fullname], [datecreate], [isAdmin]) VALUES (N'admin1', N'123456', N'Nguyen Van Nhan', N'2024-08-21 20:54:33.15000', 0)
INSERT [dbo].[taikhoan] ([username], [password], [fullname], [datecreate], [isAdmin]) VALUES (N'nv1', N'123', N'Nguyen Van Teo', N'2024-08-21 20:16:36.94700', 1)
INSERT [dbo].[taikhoan] ([username], [password], [fullname], [datecreate], [isAdmin]) VALUES (N'nv2', N'123', N'Nguyen Van Test', N'2023-12-30 09:12:14 PM', 1)

