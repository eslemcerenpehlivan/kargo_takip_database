INSERT INTO Musteri (AdSoyad, Telefon, Eposta, Adres, KayitTarihi)
VALUES
('Ege Yıldırım','05321234567','ege.yildirim@gmail.com','İstanbul / Kadıköy',GETDATE()),
('Defne Kaya','05331234567','defne.kaya@gmail.com','Ankara / Çankaya',GETDATE()),
('Atlas Demir','05341234567','atlas.demir@gmail.com','İzmir / Bornova',GETDATE()),
('Lina Aydın','05351234567','lina.aydin@gmail.com','Bursa / Nilüfer',GETDATE()),
('Mert Arslan','05361234567','mert.arslan@gmail.com','Antalya / Muratpaşa',GETDATE()),
('Eliz Yılmaz','05371234567','eliz.yilmaz@gmail.com','Adana / Seyhan',GETDATE()),
('Kerem Koç','05381234567','kerem.koc@gmail.com','Konya / Selçuklu',GETDATE()),
('Mira Çelik','05391234567','mira.celik@gmail.com','Samsun / Atakum',GETDATE()),
('Aras Şahin','05401234567','aras.sahin@gmail.com','Eskişehir / Odunpazarı',GETDATE()),
('İpek Aksoy','05411234567','ipek.aksoy@gmail.com','Kocaeli / İzmit',GETDATE());


INSERT INTO Sube (SubeAdi, Il, Ilce, Telefon)
VALUES
('Kadıköy Şubesi','İstanbul','Kadıköy','02160000001'),
('Çankaya Şubesi','Ankara','Çankaya','03120000002'),
('Bornova Şubesi','İzmir','Bornova','02320000003'),
('Nilüfer Şubesi','Bursa','Nilüfer','02240000004'),
('Muratpaşa Şubesi','Antalya','Muratpaşa','02420000005');


INSERT INTO Kurye (AdSoyad, Telefon, SubeID, AktifMi)
VALUES
('Emir Korkmaz','05550000001',1,1),
('Deniz Acar','05550000002',1,1),
('Eren Şimşek','05550000003',2,1),
('Selin Karaca','05550000004',2,1),
('Kuzey Yıldız','05550000005',3,1),
('Duru Akın','05550000006',4,1),
('Doruk Aslan','05550000007',5,1),
('Arya Demir','05550000008',5,0);


INSERT INTO Gonderi
(TakipNo,GonderenID,AliciAdSoyad,AliciTelefon,AliciAdres,CikisSubeID,VarisSubeID,KuryeID,Agirlik,Ucret,GonderimTarihi,TeslimTarihi,Durum)
VALUES
('TR100001',1,'Eymen Kaya','05420000001','Ankara / Keçiören',1,2,1,2.50,150.00,GETDATE(),NULL,'Yolda'),
('TR100002',2,'Asel Yıldırım','05420000002','İzmir / Karşıyaka',2,3,3,1.20,95.00,GETDATE(),NULL,'Hazırlanıyor'),
('TR100003',3,'Öykü Arslan','05420000003','Bursa / Osmangazi',3,4,5,4.75,210.00,GETDATE(),NULL,'Dağıtımda'),
('TR100004',4,'Mila Demir','05420000004','Antalya / Kepez',4,5,6,3.10,180.00,GETDATE(),GETDATE(),'Teslim Edildi'),
('TR100005',5,'Yaman Çelik','05420000005','İstanbul / Beşiktaş',5,1,7,6.50,300.00,GETDATE(),NULL,'Transfer Merkezinde'),
('TR100006',6,'Nehir Aydın','05420000006','Konya / Meram',1,2,2,0.90,80.00,GETDATE(),NULL,'Hazırlanıyor'),
('TR100007',7,'Poyraz Koç','05420000007','Eskişehir / Tepebaşı',2,4,4,2.30,140.00,GETDATE(),NULL,'Yolda'),
('TR100008',8,'Elisa Şahin','05420000008','Samsun / İlkadım',3,5,5,5.00,250.00,GETDATE(),NULL,'Dağıtımda'),
('TR100009',9,'Yiğit Korkmaz','05420000009','İstanbul / Üsküdar',4,1,6,1.80,110.00,GETDATE(),GETDATE(),'Teslim Edildi'),
('TR100010',10,'Zeynep Ece Yılmaz','05420000010','Ankara / Etimesgut',5,2,7,3.40,175.00,GETDATE(),NULL,'Yolda');


INSERT INTO GonderiGecmisi (GonderiID, Durum, SubeID, GuncellemeTarihi)
VALUES
(1,'Hazırlanıyor',1,GETDATE()),
(1,'Yolda',1,GETDATE()),
(2,'Hazırlanıyor',2,GETDATE()),
(3,'Hazırlanıyor',3,GETDATE()),
(3,'Dağıtımda',4,GETDATE()),
(4,'Hazırlanıyor',4,GETDATE()),
(4,'Teslim Edildi',5,GETDATE()),
(5,'Transfer Merkezinde',5,GETDATE()),
(6,'Hazırlanıyor',1,GETDATE()),
(7,'Yolda',2,GETDATE()),
(8,'Dağıtımda',3,GETDATE()),
(9,'Teslim Edildi',1,GETDATE()),
(10,'Yolda',5,GETDATE());


INSERT INTO Odeme (GonderiID, Tutar, OdemeTarihi, OdemeTipi)
VALUES
(1,150.00,GETDATE(),'Kredi Kartı'),
(2,95.00,GETDATE(),'Nakit'),
(3,210.00,GETDATE(),'Kredi Kartı'),
(4,180.00,GETDATE(),'Havale'),
(5,300.00,GETDATE(),'Kredi Kartı'),
(6,80.00,GETDATE(),'Nakit'),
(7,140.00,GETDATE(),'Kredi Kartı'),
(8,250.00,GETDATE(),'Havale'),
(9,110.00,GETDATE(),'Nakit'),
(10,175.00,GETDATE(),'Kredi Kartı');