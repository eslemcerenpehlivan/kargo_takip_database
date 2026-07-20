SELECT SubeID, COUNT(*) AS KuryeSayisi
FROM Kurye
GROUP BY SubeID;


SELECT Durum, COUNT(*) AS GonderiSayisi
FROM Gonderi
GROUP BY Durum;


SELECT OdemeTipi, SUM(Tutar) AS ToplamGelir
FROM Odeme
GROUP BY OdemeTipi;


SELECT GonderenID, COUNT(*) AS GonderiSayisi
FROM Gonderi
GROUP BY GonderenID;


SELECT KuryeID, COUNT(*) AS GonderiSayisi
FROM Gonderi
GROUP BY KuryeID;


SELECT AVG(Ucret) AS OrtalamaUcret
FROM Gonderi;


SELECT MAX(Ucret) AS EnYuksekUcret
FROM Gonderi;


SELECT MIN(Ucret) AS EnDusukUcret
FROM Gonderi;


SELECT SUM(Tutar) AS ToplamOdeme
FROM Odeme;


SELECT KuryeID, COUNT(*) AS GonderiSayisi
FROM Gonderi
GROUP BY KuryeID
HAVING COUNT(*) > 2;


SELECT OdemeTipi, SUM(Tutar) AS ToplamGelir
FROM Odeme
GROUP BY OdemeTipi
HAVING SUM(Tutar) > 200;


SELECT S.SubeAdi, COUNT(G.GonderiID) AS ToplamGonderiSayisi
FROM Sube S
INNER JOIN Gonderi G ON S.SubeID = G.CikisSubeID
GROUP BY S.SubeAdi;


SELECT K.AdSoyad, COUNT(G.GonderiID) AS TeslimEdilenSayisi
FROM Kurye K
INNER JOIN Gonderi G ON K.KuryeID = G.KuryeID
WHERE G.Durum = 'Teslim Edildi'
GROUP BY K.AdSoyad;