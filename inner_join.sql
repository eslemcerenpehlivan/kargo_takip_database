SELECT G.TakipNo, M.AdSoyad, G.Durum
FROM Gonderi G
INNER JOIN Musteri M
ON G.GonderenID = M.MusteriID;


SELECT K.AdSoyad, S.SubeAdi
FROM Kurye K
INNER JOIN Sube S
ON K.SubeID = S.SubeID;


SELECT G.TakipNo, O.Tutar, O.OdemeTipi
FROM Gonderi G
INNER JOIN Odeme O
ON G.GonderiID = O.GonderiID;


SELECT G.TakipNo, GG.Durum, GG.GuncellemeTarihi
FROM Gonderi G
INNER JOIN GonderiGecmisi GG
ON G.GonderiID = GG.GonderiID;


SELECT M.AdSoyad, G.TakipNo, G.Ucret
FROM Musteri M
INNER JOIN Gonderi G
ON M.MusteriID = G.GonderenID;


SELECT G.TakipNo, S.SubeAdi, G.Durum
FROM Gonderi G
INNER JOIN Sube S
ON G.VarisSubeID = S.SubeID;


SELECT K.AdSoyad, G.TakipNo, G.Durum
FROM Kurye K
INNER JOIN Gonderi G
ON K.KuryeID = G.KuryeID;


SELECT M.AdSoyad, G.TakipNo, G.Durum
FROM Musteri M
INNER JOIN Gonderi G
ON M.MusteriID = G.GonderenID
WHERE G.Durum = 'Teslim Edildi';


SELECT K.AdSoyad, S.SubeAdi
FROM Kurye K
INNER JOIN Sube S
ON K.SubeID = S.SubeID
WHERE K.AktifMi = 1;