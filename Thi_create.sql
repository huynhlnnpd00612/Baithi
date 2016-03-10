-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2016-03-10 01:00:19.088




-- tables
-- Table: TPhongban
CREATE TABLE TPhongban (
    Maphong varchar(15)  NOT NULL,
    Tenphong nvarchar(max)  NOT NULL,
    CONSTRAINT TPhongban_pk PRIMARY KEY  (Maphong)
)
;





-- Table: TnNhanvien
CREATE TABLE TnNhanvien (
    MaNV varchar(15)  NOT NULL,
    TenNV nvarchar(max)  NOT NULL,
    Ngaysinh datetime  NOT NULL,
    Gioitinh int  NOT NULL,
    Email nvarchar(max)  NOT NULL,
    Mucluong varchar(30)  NOT NULL,
    MaPhong int  NOT NULL,
    TPhongban_Maphong varchar(15)  NOT NULL,
    CONSTRAINT TnNhanvien_pk PRIMARY KEY  (MaNV)
)
;









-- foreign keys
-- Reference:  TnNhanvien_TPhongban (table: TnNhanvien)

ALTER TABLE TnNhanvien ADD CONSTRAINT TnNhanvien_TPhongban 
    FOREIGN KEY (TPhongban_Maphong)
    REFERENCES TPhongban (Maphong)
;





-- End of file.

