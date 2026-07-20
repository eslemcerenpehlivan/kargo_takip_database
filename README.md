# Kargo Takip Sistemi - Veritabanı Projesi

1-create-database-tables.sql

Bu dosya, KargoTakipDB veritabanını ve tüm tabloları oluşturur. Musteri, Sube, Kurye, Gonderi, GonderiGecmisi ve Odeme olmak üzere 6 ana tablo tanımlanmıştır. Her tablo, kargo takip sisteminin temel ihtiyaçlarını karşılayacak şekilde uygun sütunlar ve ilişkiler ile yapılandırılmıştır.

2-insert.sql

Tablolara örnek veriler ekleyen dosyadır. 10 müşteri, 5 şube, 8 kurye, 10 gönderi, gönderi geçmişi ve ödeme kayıtları ile sistemin test edilmesi için gerekli örnek veri seti sağlanmıştır.

3-select.sql

Temel sorgulama örneklerini içerir. Tüm verileri listeleme, belirli sütunları seçme, WHERE ile filtreleme, ORDER BY ile sıralama, TOP ile limitli sonuçlar, LIKE ile desen arama ve IN-BETWEEN kullanımı gibi temel SQL sorgu teknikleri gösterilmektedir.

4-inner_join.sql

Tablolar arası ilişkili sorguları içerir. Gönderi-Müşteri, Kurye-Şube, Gönderi-Ödeme ve Gönderi-Durum geçmişi gibi tablo birleştirme işlemleri ile veriler arasındaki bağlantılar kurulmaktadır.

5-group_by_having.sql

Gruplama ve istatistiksel sorguları barındırır. Şubelere göre kurye sayısı, duruma göre gönderi sayısı, ödeme tipine göre toplam gelir, ortalama/maksimum/minimum ücret hesaplamaları ve HAVING ile filtreleme örnekleri sunulmaktadır.

6-stored-procedures.sql

Saklı prosedür örneklerini içerir. Müşteri listeleme, takip no ile arama, teslim edilenleri getirme, aktif kuryeleri listeleme ve ücret filtresi olmak üzere 5 farklı prosedür tanımlanmıştır.

7-triggers.sql
Tetikleyici fonksiyonları içerir. Yeni gönderi eklendiğinde mesaj verme, teslim tarihini otomatik güncelleme, ödeme silindiğinde uyarı, gönderi silmeyi engelleme ve pasif kuryeye gönderi atamayı önleme olmak üzere 5 farklı trigger tanımlanmıştır.
