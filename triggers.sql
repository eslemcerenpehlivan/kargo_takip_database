CREATE TRIGGER trg_YeniGonderi
ON Gonderi
AFTER INSERT
AS
BEGIN
	PRINT 'Yeni gonderi basariyla eklendi.'
END;



CREATE TRIGGER trg_TeslimTarihi
ON Gonderi
AFTER UPDATE
AS
BEGIN
	UPDATE Gonderi
	SET TeslimTarihi=GETDATE()
	WHERE GonderiID IN(
	SELECT GonderiID
	FROM inserted
	WHERE Durum='Teslim Edildi'
	)
END;



CREATE TRIGGER trg_OdemeSilindi
ON Odeme
AFTER DELETE
AS
BEGIN
	PRINT 'Bir odeme kaydi silinmistir.';
END;



CREATE TRIGGER trg_GonderiSilme
ON Gonderi
INSTEAD OF DELETE
AS
BEGIN
	PRINT 'Gonderi kayitlari silinemez.';
END;



CREATE TRIGGER trg_KuryeKontrol
ON Gonderi
AFTER INSERT
AS
BEGIN
	IF EXISTS(
	SELECT *
	FROM inserted i
	INNER JOIN Kurye k
	ON i.KuryeID=k.KuryeID
	WHERE k.AktifMi=0
	)
	BEGIN
		PRINT 'Pasif kuryeye gönderi atanamaz.'
		ROLLBACK TRANSACTION;
	END
END;
