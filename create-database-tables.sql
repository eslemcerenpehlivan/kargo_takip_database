CREATE DATABASE KargoTakipDB;
GO

USE KargoTakipDB;
GO

CREATE TABLE Musteri(
    MusteriID int identity(1,1) primary key,
    AdSoyad varchar(100) not null,
    Telefon varchar(20),
    Eposta varchar(100),
    Adres varchar(200),
    KayitTarihi datetime
);

CREATE TABLE Sube(
    SubeID int identity(1,1) primary key,
    SubeAdi varchar(100) not null,
    Il varchar(50),
    Ilce varchar(50),
    Telefon varchar(20)
);

CREATE TABLE Kurye(
    KuryeID int identity(1,1) primary key,
    AdSoyad varchar(100) not null,
    Telefon varchar(20),
    SubeID int,
    AktifMi bit
);

CREATE TABLE Gonderi(
    GonderiID int identity(1,1) primary key,
    TakipNo varchar(30),
    GonderenID int,
    AliciAdSoyad varchar(100),
    AliciTelefon varchar(20),
    AliciAdres varchar(200),
    CikisSubeID int,
    VarisSubeID int,
    KuryeID int,
    Agirlik decimal(5,2),
    Ucret decimal(8,2),
    GonderimTarihi datetime,
    TeslimTarihi datetime,
    Durum varchar(50)
);

CREATE TABLE GonderiGecmisi(
    GecmisID int identity(1,1) primary key,
    GonderiID int,
    Durum varchar(50),
    SubeID int,
    GuncellemeTarihi datetime
);

CREATE TABLE Odeme(
    OdemeID int identity(1,1) primary key,
    GonderiID int,
    Tutar decimal(8,2),
    OdemeTarihi datetime,
    OdemeTipi varchar(50)
);