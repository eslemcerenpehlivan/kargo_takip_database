CREATE PROCEDURE sp_MusterileriListele
AS
BEGIN
	SELECT * FROM Musteri;
END;

EXEC sp_MusterileriListele;



CREATE PROCEDURE sp_GonderiAra
	@TakipNo VARCHAR(30)
AS
BEGIN
	SELECT *
	FROM Gonderi
	WHERE TakipNo = @TakipNo;
END;

EXEC sp_GonderiAra 'TR100001';



CREATE PROCEDURE sp_TeslimEdilenleriListele
AS
BEGIN
	SELECT *
	FROM Gonderi
	WHERE Durum = 'Teslim Edildi';
END;

EXEC sp_TeslimEdilenleriListele;



CREATE PROCEDURE sp_AktifKuryeler
AS
BEGIN
	SELECT *
	FROM Kurye
	WHERE AktifMi = 1;
END;

EXEC sp_AktifKuryeler;



CREATE PROCEDURE sp_UcretFiltrele
	@Ucret DECIMAL(10,2)
AS
BEGIN
	SELECT *
	FROM Gonderi
	WHERE Ucret > @Ucret;
END;

EXEC sp_UcretFiltrele 150;