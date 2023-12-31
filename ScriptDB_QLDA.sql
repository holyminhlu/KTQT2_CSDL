USE [DB_QLDA]
GO
/****** Object:  Table [dbo].[DeAn]    Script Date: 12/19/2023 1:54:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DeAn](
	[MaDA] [varchar](10) NOT NULL,
	[TenDA] [nvarchar](50) NULL,
	[DiaDiemDA] [nvarchar](50) NULL,
	[Phong] [varchar](10) NOT NULL,
	[NgayBD_DK] [date] NULL,
	[NgayKT_DK] [date] NULL,
 CONSTRAINT [PK_DEAN] PRIMARY KEY CLUSTERED 
(
	[MaDA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 12/19/2023 1:54:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[MaNV] [varchar](10) NOT NULL,
	[HoNV] [nvarchar](50) NULL,
	[TenLot] [nvarchar](50) NULL,
	[TenNv] [nvarchar](50) NULL,
	[NgSinh] [date] NULL,
	[Phai] [nvarchar](10) NULL,
	[Dchi] [nvarchar](50) NULL,
	[MaNQL] [varchar](10) NULL,
	[Phong] [varchar](10) NOT NULL,
	[Luong] [float] NULL,
 CONSTRAINT [PK_NHANVIEN] PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhanCong]    Script Date: 12/19/2023 1:54:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhanCong](
	[MaNV] [varchar](10) NOT NULL,
	[MaDA] [varchar](10) NOT NULL,
	[ThoiGian] [float] NULL,
 CONSTRAINT [PK_PHANCONG] PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC,
	[MaDA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhongBan]    Script Date: 12/19/2023 1:54:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhongBan](
	[MaPB] [varchar](10) NOT NULL,
	[TenPB] [nvarchar](50) NULL,
	[TrPHG] [varchar](10) NOT NULL,
	[DiaDiem] [nvarchar](50) NULL,
	[NgayNhanChuc] [date] NULL,
 CONSTRAINT [PK_PHONGBAN] PRIMARY KEY CLUSTERED 
(
	[MaPB] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThanNhan]    Script Date: 12/19/2023 1:54:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThanNhan](
	[MaNV] [varchar](10) NOT NULL,
	[MaTN] [varchar](10) NOT NULL,
	[TenTN] [nvarchar](50) NULL,
	[Phai] [nvarchar](10) NULL,
	[NgSinh] [date] NULL,
	[QuanHe] [nvarchar](50) NULL,
 CONSTRAINT [PK_THANNHAN] PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC,
	[MaTN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[DeAn] ([MaDA], [TenDA], [DiaDiemDA], [Phong], [NgayBD_DK], [NgayKT_DK]) VALUES (N'DT001', N'Đào tạo 1', N'Nha Trang', N'DH', CAST(N'2002-02-04' AS Date), CAST(N'2006-02-04' AS Date))
INSERT [dbo].[DeAn] ([MaDA], [TenDA], [DiaDiemDA], [Phong], [NgayBD_DK], [NgayKT_DK]) VALUES (N'DT002', N'Đào tạo 2', N'Đà Nẵng', N'DH', CAST(N'2006-02-01' AS Date), CAST(N'2006-12-12' AS Date))
INSERT [dbo].[DeAn] ([MaDA], [TenDA], [DiaDiemDA], [Phong], [NgayBD_DK], [NgayKT_DK]) VALUES (N'TH001', N'Tin học hóa 1', N'Hà Nội', N'NC', CAST(N'2003-02-01' AS Date), CAST(N'2004-02-01' AS Date))
INSERT [dbo].[DeAn] ([MaDA], [TenDA], [DiaDiemDA], [Phong], [NgayBD_DK], [NgayKT_DK]) VALUES (N'TH002', N'Tin học hóa 2', N'TPHCM', N'NC', CAST(N'2003-06-04' AS Date), CAST(N'2004-02-04' AS Date))
GO
INSERT [dbo].[NhanVien] ([MaNV], [HoNV], [TenLot], [TenNv], [NgSinh], [Phai], [Dchi], [MaNQL], [Phong], [Luong]) VALUES (N'001', N'Vương', N'Ngọc', N'Quyền', CAST(N'1957-10-22' AS Date), N'Nữ', N'Hà Nội', NULL, N'QL', 3000000)
INSERT [dbo].[NhanVien] ([MaNV], [HoNV], [TenLot], [TenNv], [NgSinh], [Phai], [Dchi], [MaNQL], [Phong], [Luong]) VALUES (N'002', N'Nguyễn', N'Thanh', N'Tùng', CAST(N'1955-01-09' AS Date), N'Nam', N'TPHCM', N'001', N'NC', 2500000)
INSERT [dbo].[NhanVien] ([MaNV], [HoNV], [TenLot], [TenNv], [NgSinh], [Phai], [Dchi], [MaNQL], [Phong], [Luong]) VALUES (N'003', N'Lê', N'Thị', N'Nhẫn', CAST(N'1960-12-18' AS Date), N'Nữ', N'TPHCM', N'001', N'DH', 2500000)
INSERT [dbo].[NhanVien] ([MaNV], [HoNV], [TenLot], [TenNv], [NgSinh], [Phai], [Dchi], [MaNQL], [Phong], [Luong]) VALUES (N'004', N'Đinh', N'Bá', N'Tiên', CAST(N'1968-01-09' AS Date), N'Nam', N'Đồng Tháp', N'002', N'NC', 2200000)
INSERT [dbo].[NhanVien] ([MaNV], [HoNV], [TenLot], [TenNv], [NgSinh], [Phai], [Dchi], [MaNQL], [Phong], [Luong]) VALUES (N'005', N'Bùi', N'Thúy', N'Vũ', CAST(N'1973-06-08' AS Date), N'Nữ', N'Trà Vinh', N'003', N'DH', 2200000)
INSERT [dbo].[NhanVien] ([MaNV], [HoNV], [TenLot], [TenNv], [NgSinh], [Phai], [Dchi], [MaNQL], [Phong], [Luong]) VALUES (N'006', N'Nguyễn', N'Mạnh', N'Hùng', CAST(N'1981-08-30' AS Date), N'Nam', N'Đồng Nai', N'002', N'NC', 2000000)
INSERT [dbo].[NhanVien] ([MaNV], [HoNV], [TenLot], [TenNv], [NgSinh], [Phai], [Dchi], [MaNQL], [Phong], [Luong]) VALUES (N'007', N'Trần', N'Hồng', N'Vân', CAST(N'1976-08-02' AS Date), N'Nữ', N'Vĩnh Long', N'004', N'NC', 1800000)
GO
INSERT [dbo].[PhanCong] ([MaNV], [MaDA], [ThoiGian]) VALUES (N'001', N'TH001', 30)
INSERT [dbo].[PhanCong] ([MaNV], [MaDA], [ThoiGian]) VALUES (N'001', N'TH002', 12.5)
INSERT [dbo].[PhanCong] ([MaNV], [MaDA], [ThoiGian]) VALUES (N'002', N'DT001', 10)
INSERT [dbo].[PhanCong] ([MaNV], [MaDA], [ThoiGian]) VALUES (N'002', N'DT002', 10)
INSERT [dbo].[PhanCong] ([MaNV], [MaDA], [ThoiGian]) VALUES (N'002', N'TH001', 10)
INSERT [dbo].[PhanCong] ([MaNV], [MaDA], [ThoiGian]) VALUES (N'002', N'TH002', 10)
INSERT [dbo].[PhanCong] ([MaNV], [MaDA], [ThoiGian]) VALUES (N'003', N'TH001', 37.5)
INSERT [dbo].[PhanCong] ([MaNV], [MaDA], [ThoiGian]) VALUES (N'004', N'DT001', 22.5)
INSERT [dbo].[PhanCong] ([MaNV], [MaDA], [ThoiGian]) VALUES (N'004', N'DT002', 10)
INSERT [dbo].[PhanCong] ([MaNV], [MaDA], [ThoiGian]) VALUES (N'006', N'DT001', 30.5)
INSERT [dbo].[PhanCong] ([MaNV], [MaDA], [ThoiGian]) VALUES (N'007', N'TH001', 20)
INSERT [dbo].[PhanCong] ([MaNV], [MaDA], [ThoiGian]) VALUES (N'007', N'TH002', 10)
GO
INSERT [dbo].[PhongBan] ([MaPB], [TenPB], [TrPHG], [DiaDiem], [NgayNhanChuc]) VALUES (N'DH', N'Điều Hành', N'003', N'', CAST(N'2002-10-10' AS Date))
INSERT [dbo].[PhongBan] ([MaPB], [TenPB], [TrPHG], [DiaDiem], [NgayNhanChuc]) VALUES (N'NC', N'Nghiên Cứu', N'002', N'', CAST(N'2002-03-15' AS Date))
INSERT [dbo].[PhongBan] ([MaPB], [TenPB], [TrPHG], [DiaDiem], [NgayNhanChuc]) VALUES (N'QL', N'Quản Lý', N'001', N'', CAST(N'2000-05-22' AS Date))
GO
INSERT [dbo].[ThanNhan] ([MaNV], [MaTN], [TenTN], [Phai], [NgSinh], [QuanHe]) VALUES (N'001', N'1', N'Lê Nhật Minh', N'Nam', CAST(N'1955-04-27' AS Date), N'Vợ chồng')
INSERT [dbo].[ThanNhan] ([MaNV], [MaTN], [TenTN], [Phai], [NgSinh], [QuanHe]) VALUES (N'002', N'1', N'Lê Hoài Thương', N'Nữ', CAST(N'1960-12-05' AS Date), N'Vợ chồng')
INSERT [dbo].[ThanNhan] ([MaNV], [MaTN], [TenTN], [Phai], [NgSinh], [QuanHe]) VALUES (N'003', N'1', N'Trần Minh Tiến', N'Nam', CAST(N'1990-12-11' AS Date), N'Con')
INSERT [dbo].[ThanNhan] ([MaNV], [MaTN], [TenTN], [Phai], [NgSinh], [QuanHe]) VALUES (N'003', N'2', N'Trần Ngọc Linh', N'Nữ', CAST(N'1993-03-10' AS Date), N'Con')
INSERT [dbo].[ThanNhan] ([MaNV], [MaTN], [TenTN], [Phai], [NgSinh], [QuanHe]) VALUES (N'003', N'3', N'Trần Minh Long', N'Nam', CAST(N'1957-10-10' AS Date), N'Vợ chồng')
INSERT [dbo].[ThanNhan] ([MaNV], [MaTN], [TenTN], [Phai], [NgSinh], [QuanHe]) VALUES (N'004', N'1', N'Lê Phi Phụng', N'Nữ', CAST(N'1960-12-24' AS Date), N'Vợ chồng')
INSERT [dbo].[ThanNhan] ([MaNV], [MaTN], [TenTN], [Phai], [NgSinh], [QuanHe]) VALUES (N'005', N'1', N'Trần Thu Hồng', N'Nữ', CAST(N'1978-04-11' AS Date), N'Vợ chồng')
INSERT [dbo].[ThanNhan] ([MaNV], [MaTN], [TenTN], [Phai], [NgSinh], [QuanHe]) VALUES (N'005', N'2', N'Nguyễn Mạnh Tâm', N'Nam', CAST(N'2003-03-12' AS Date), N'Con')
GO
ALTER TABLE [dbo].[PhanCong]  WITH CHECK ADD  CONSTRAINT [FK_PC_MaDA] FOREIGN KEY([MaDA])
REFERENCES [dbo].[DeAn] ([MaDA])
GO
ALTER TABLE [dbo].[PhanCong] CHECK CONSTRAINT [FK_PC_MaDA]
GO
ALTER TABLE [dbo].[PhanCong]  WITH CHECK ADD  CONSTRAINT [FK_PC_MaNV] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[PhanCong] CHECK CONSTRAINT [FK_PC_MaNV]
GO
ALTER TABLE [dbo].[ThanNhan]  WITH CHECK ADD  CONSTRAINT [FK_TN_MaNV] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[ThanNhan] CHECK CONSTRAINT [FK_TN_MaNV]
GO
