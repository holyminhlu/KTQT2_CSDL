﻿CREATE DATABASE DB_QLDA
USE DB_QLDA

CREATE TABLE NhanVien(
	MaNV varchar(10) not null,
	HoNV nvarchar(50),
	TenLot nvarchar(50),
	TenNv nvarchar(50),
	NgSinh date,
	Phai nvarchar(10),
	Dchi nvarchar(50),
	MaNQL varchar(10),
	Phong varchar(10) not null,
	Luong float
	)
CREATE TABLE PhongBan(
	MaPB varchar(10) not null,
	TenPB nvarchar(50),
	TrPHG varchar(10) not null,
	DiaDiem nvarchar(50),
	NgayNhanChuc date
	)
	
CREATE TABLE DeAn(
	MaDA varchar(10) not null,
	TenDA nvarchar(50),
	DiaDiemDA nvarchar(50),
	Phong varchar(10) not null,
	NgayBD_DK date,
	NgayKT_DK date
	)
	
CREATE TABLE ThanNhan(
	MaNV varchar(10) not null,
	MaTN varchar(10) not null,
	TenTN nvarchar(50),
	Phai nvarchar(10),
	NgSinh date,
	QuanHe nvarchar(50)
	)
CREATE TABLE PhanCong(
	MaNV varchar(10) not null,
	MaDA varchar(10) not null,
	ThoiGian float
	)
--xem bang
SELECT*
FROM NhanVien
SELECT*
FROM PhongBan
SELECT*
FROM DeAn
SELECT*
FROM ThanNhan
SELECT*
FROM PhanCong

--RANG BUOC KHOA CHINH - KHOA PHU
ALTER TABLE NhanVien ADD CONSTRAINT PK_NHANVIEN PRIMARY KEY(MaNV)
ALTER TABLE PhongBan ADD CONSTRAINT PK_PHONGBAN PRIMARY KEY(MaPB)
ALTER TABLE DeAn ADD CONSTRAINT PK_DEAN PRIMARY KEY(MaDA)
ALTER TABLE ThanNhan ADD CONSTRAINT PK_THANNHAN PRIMARY KEY(MaNV,MaTN)
ALTER TABLE PhanCong ADD CONSTRAINT PK_PHANCONG PRIMARY KEY(MaNV,MaDA)
SP_PKEYS NhanVien
SP_PKEYS PhongBan
SP_PKEYS DeAn
SP_PKEYS ThanNhan
SP_PKEYS PhanCong
ALTER TABLE ThanNhan ADD CONSTRAINT FK_TN_MaNV FOREIGN KEY(MaNV) REFERENCES NhanVien(MaNV)
ALTER TABLE PhanCong ADD CONSTRAINT FK_PC_MaNV FOREIGN KEY(MaNV) REFERENCES NhanVien(MaNV)
ALTER TABLE PhanCong ADD CONSTRAINT FK_PC_MaDA FOREIGN KEY(MaDA) REFERENCES DeAn(MaDA)
--THEM DU LIEU VAO BANG
DELETE NhanVien
INSERT INTO NhanVien VALUES ('001',N'Vương',N'Ngọc',N'Quyền','1957-10-22',N'Nữ',N'Hà Nội',NULL,'QL','3000000')
INSERT INTO NhanVien VALUES ('002',N'Nguyễn',N'Thanh',N'Tùng','1955-01-09',N'Nam',N'TPHCM','001','NC','2500000')
INSERT INTO NhanVien VALUES ('003',N'Lê',N'Thị',N'Nhẫn','1960-12-18',N'Nữ',N'TPHCM','001','DH','2500000')
INSERT INTO NhanVien VALUES ('004',N'Đinh',N'Bá',N'Tiên','1968-01-09',N'Nam',N'Đồng Tháp','002','NC','2200000')
INSERT INTO NhanVien VALUES ('005',N'Bùi',N'Thúy',N'Vũ','1973-06-08',N'Nữ',N'Trà Vinh','003','DH','2200000')
INSERT INTO NhanVien VALUES ('006',N'Nguyễn',N'Mạnh',N'Hùng','1981-08-30',N'Nam',N'Đồng Nai','002','NC','2000000')
INSERT INTO NhanVien VALUES ('007',N'Trần',N'Hồng',N'Vân','1976-08-02',N'Nữ',N'Vĩnh Long','004','NC','1800000')
--THEM DU LIEU VAO BANG PHONG BAN
DELETE PhongBan
INSERT INTO PhongBan VALUES ('QL',N'Quản Lý','001',N'','2000-05-22')
INSERT INTO PhongBan VALUES ('DH',N'Điều Hành','003',N'','2002-10-10')
INSERT INTO PhongBan VALUES ('NC',N'Nghiên Cứu','002',N'','2002-03-15')
--THEM DU LIEU VAO BANG DE AN
DELETE DeAn
INSERT INTO DeAn VALUES ('TH001',N'Tin học hóa 1',N'Hà Nội','NC','2003-02-01','2004-02-01')
INSERT INTO DeAn VALUES ('TH002',N'Tin học hóa 2',N'TPHCM','NC','2003-06-04','2004-02-04')
INSERT INTO DeAn VALUES ('DT001',N'Đào tạo 1',N'Nha Trang','DH','2002-02-04','2006-02-04')
INSERT INTO DeAn VALUES ('DT002',N'Đào tạo 2',N'Đà Nẵng','DH','2006-02-01','2006-12-12')
--THEM DU LIEU VAO BANG THAN NHAN
DELETE ThanNhan
INSERT INTO ThanNhan VALUES ('003','1',N'Trần Minh Tiến',N'Nam','1990-12-11',N'Con')
INSERT INTO ThanNhan VALUES ('003','2',N'Trần Ngọc Linh',N'Nữ','1993-03-10',N'Con')
INSERT INTO ThanNhan VALUES ('003','3',N'Trần Minh Long',N'Nam','1957-10-10',N'Vợ chồng')
INSERT INTO ThanNhan VALUES ('001','1',N'Lê Nhật Minh',N'Nam','1955-04-27',N'Vợ chồng')
INSERT INTO ThanNhan VALUES ('002','1',N'Lê Hoài Thương',N'Nữ','1960-12-05',N'Vợ chồng')
INSERT INTO ThanNhan VALUES ('004','1',N'Lê Phi Phụng',N'Nữ','1960-12-24',N'Vợ chồng')
INSERT INTO ThanNhan VALUES ('005','1',N'Trần Thu Hồng',N'Nữ','1978-04-11',N'Vợ chồng')
INSERT INTO ThanNhan VALUES ('005','2',N'Nguyễn Mạnh Tâm',N'Nam','2003-03-12',N'Con')
--THEM DU LIEU VAO BANG PHAN CONG
DELETE PhanCong
INSERT INTO PhanCong VALUES ('001','TH001','30')
INSERT INTO PhanCong VALUES ('001','TH002','12.5')
INSERT INTO PhanCong VALUES ('002','TH001','10')
INSERT INTO PhanCong VALUES ('002','TH002','10')
INSERT INTO PhanCong VALUES ('002','DT001','10')
INSERT INTO PhanCong VALUES ('002','DT002','10')
INSERT INTO PhanCong VALUES ('003','TH001','37.5')
INSERT INTO PhanCong VALUES ('004','DT001','22.5')
INSERT INTO PhanCong VALUES ('004','DT002','10')
INSERT INTO PhanCong VALUES ('006','DT001','30.5')
INSERT INTO PhanCong VALUES ('007','TH001','20')
INSERT INTO PhanCong VALUES ('007','TH002','10')

--1:SINH VIEN 1996 den 1970
SELECT *
FROM NhanVien
WHERE YEAR(NgSinh) between 1965 and 1970
--2:hoten nv va ten phong ban nhanvien truc thuoc luong 2000000->3000000
SELECT HoNV,TenLot,TenNV, TenPB
FROM NhanVien INNER JOIN PhongBan ON NhanVien.Phong = PhongBan.MaPB
WHERE Luong BETWEEN 2000000 AND 3000000
GROUP BY NhanVien.HoNV, NhanVien.TenLot, NhanVien.TenNv, PhongBan.TenPB
--3:TIM NV CO HO NGUYEN HỌC TEN BAT DAU BANG CHU T
SELECT *
FROM NhanVien 
WHERE HoNV = N'Nguyễn' OR TenNv LIKE 'T%'
--4:NHAN VIEN THUOC MOT TRONG CAC PHONG BAN CO MA LA NC HOAC QL
SELECT *
FROM NhanVien 
WHERE Phong IN ('NC','QL')
--5:Lap danh sach than nhan duoi 18+ ( do tài liệu cũ nên ko có than nhân dưới 18+ )
SELECT TenTN, NgSinh, QuanHe
FROM ThanNhan
WHERE DATEDIFF(YEAR, NgSinh, GETDATE()) < 18;

--6:NHAN VIEN NU TREN 30 TUOI
--7:TN VA DIA CHI NHAN VIEN THUOC PHONG NGHIEN CUU
SELECT HoNV, TenLot, TenNv, TenPB
FROM NhanVien INNER JOIN PhongBan ON NhanVien.Phong = PhongBan.MaPB
WHERE TenPB = N'Nghiên Cứu'
GROUP BY NhanVien.HoNV, NhanVien.TenLot, NhanVien.TenNv, PhongBan.TenPB
--8:ma so va ten nhan vien thuoc phong nghien cuu va tham gia de an tin hoc hoa với thoi gian làm viecj 20h/tuan
SELECT NhanVien.MaNV, NhanVien.HoNV, NhanVien.TenLot, NhanVien.TenNv
FROM NhanVien INNER JOIN DeAn ON NhanVien.Phong = DeAn.Phong
				 INNER JOIN PhanCong ON NhanVien.MaNV = PhanCong.MaNV
					INNER JOIN PhongBan ON NhanVien.Phong = PhongBan.MaPB
WHERE TenPB = N'Nghiên Cứu' AND TenDA LIKE N'Tin học hóa _' AND ThoiGian = 20
GROUP BY NhanVien.MaNV, NhanVien.HoNV, NhanVien.TenLot, NhanVien.TenNv
--10:nhan vien duoc nguyen thanh tung phu trach
SELECT *
FROM NhanVien
WHERE MaNQL = '002'
--11:TINH THOI GIAN THAP NHAT, CAO NHAT, TRUNG BINH, TONG THOI GIAN LAM VIEC CUA CÁC NHÂN VIÊN
SELECT MIN(PhanCong.ThoiGian) AS TG_ThapNhat, MAX(PhanCong.ThoiGian) AS TG_CaoNhat, AVG(PhanCong.ThoiGian) AS TG_TrungBinh, SUM(PhanCong.ThoiGian)AS TongThoiGian
FROM PhanCong
--12: tinh gian aalam viec trung binh cua ca nhan vien
SELECT AVG(PhanCong.ThoiGian)
FROM PhanCong
--13:TIM NHAN VIEN CO MUC LUONG > TRUNG BINH CUA PHONG NGHIEN CUU
SELECT HoNV, TenLot, TenNv
FROM NhanVien 
WHERE  NhanVien.Luong > (
							SELECT AVG( NhanVien.Luong )
							FROM NhanVien
							WHERE Phong = 'NC'  		
									)
GROUP BY HoNV, TenLot, TenNv
--14: SOLUONG NHAN VIEN TUNG PHONG BAN
SELECT PhongBan.TenPB, COUNT(NhanVien.Phong) AS SOLUONG
FROM NhanVien INNER JOIN PhongBan ON NhanVien.Phong = PhongBan.MaPB
GROUP BY PhongBan.TenPB
--15: SO LUONG NHAN VIEN CHIU SU QUAN LI TRUC TIEP CUA NGUOI KHAC
SELECT COUNT(*) AS SOLUONG
FROM NhanVien
WHERE MaNQL != 'NULL'
--16: SO LUONG NHAN VIEN QUAN LY TRUC TIEP NHAN VIEN KHAC
SELECT COUNT( DISTINCT MaNQL) AS SOLUONG
FROM NhanVien
WHERE MaNQL != 'NULL'
--17: SO LUONG NHAN VIEN CUA TUNG PHONG
SELECT PhongBan.TenPB, COUNT(NhanVien.Phong) AS SOLUONG
FROM NhanVien INNER JOIN PhongBan ON NhanVien.Phong = PhongBan.MaPB
GROUP BY PhongBan.TenPB
--18:THOI GIAN THAM GIA DE AN CAO/THAP/TB
SELECT  PhongBan.MaPB, PhongBan.TenPB,
		MIN(PhanCong.ThoiGian) AS TG_ThapNhat, 
		MAX(PhanCong.ThoiGian) AS TG_CaoNhat, 
		AVG(PhanCong.ThoiGian) AS TG_TrungBinh
FROM PhongBan INNER JOIN NhanVien ON NhanVien.Phong = PhongBan.MaPB
		INNER JOIN PhanCong ON NhanVien.MaNV = PhanCong.MaNV
GROUP BY PhongBan.MaPB, PhongBan.TenPB

--19: TEN PHONG VA SO LUONG NHAN VIENCUA PHONG BAN CO MUC LUONG TRUNG BINH > 2200000
SELECT TenPB, AVG( NhanVien.Luong) AS LuongTB, COUNT( NhanVien.MaNV ) AS SOLUONG
FROM NhanVien INNER JOIN PhongBan ON NhanVien.Phong = PhongBan.MaPB
GROUP BY TenPB
HAVING  AVG( NhanVien.Luong) > 2200000