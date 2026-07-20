SELECT * FROM Musteri;

SELECT MusteriID, AdSoyad
FROM Musteri;

SELECT * FROM Sube;

SELECT SubeID, SubeAdi, Il
FROM Sube;

SELECT * FROM Kurye;

SELECT KuryeID, AdSoyad
FROM Kurye;

SELECT * FROM Gonderi;

SELECT GonderiID, TakipNo, GonderimTarihi, Durum
FROM Gonderi;

SELECT * FROM Odeme;

SELECT OdemeID, Tutar, OdemeTarihi
FROM Odeme;

SELECT SubeAdi, Il
FROM Sube;


SELECT TakipNo, Durum, Ucret
FROM Gonderi;


SELECT AdSoyad
FROM Kurye;


SELECT *
FROM Kurye
WHERE AktifMi = 1;


SELECT *
FROM Gonderi
WHERE Durum = 'Teslim Edildi';


SELECT *
FROM Gonderi
WHERE Durum = 'Yolda';


SELECT *
FROM Gonderi
WHERE Ucret > 150;


SELECT *
FROM Gonderi
WHERE Agirlik > 3;


SELECT *
FROM Sube
WHERE Il = 'Istanbul';


SELECT *
FROM Odeme
WHERE OdemeTipi = 'Kredi Karti';


SELECT *
FROM Musteri
ORDER BY AdSoyad ASC;


SELECT *
FROM Gonderi
ORDER BY Ucret DESC;



SELECT TOP 5 *
FROM Gonderi
ORDER BY Ucret DESC;


SELECT TOP 3 *
FROM Gonderi
ORDER BY Agirlik ASC;


SELECT *
FROM Musteri
WHERE AdSoyad LIKE 'E%';


SELECT *
FROM Musteri
WHERE Telefon LIKE '0532%';


SELECT *
FROM Gonderi
WHERE Durum IN ('Hazirlaniyor', 'Yolda');


SELECT *
FROM Gonderi
WHERE Ucret BETWEEN 100 AND 200;