-----------------------------------Zadanie 1 -------------------------------------------
DELETE FROM postac ORDER BY wiek DESC LIMIT 2;

ALTER TABLE przetwory DROP CONSTRAINT przetwory_ibfk_1;
ALTER TABLE przetwory DROP CONSTRAINT przetwory_ibfk_2;
ALTER TABLE walizka DROP CONSTRAINT walizka_ibfk_1;
ALTER TABLE postac DROP PRIMARY KEY, CHANGE id_postaci id_postaci INT;
----------------------------------------------------------------------------------------
------------------------------Zadanie 2 ----------------------------------------------
ALTER TABLE postac ADD Pesel varchar(11) NOT NULL FIRST;
UPDATE postac SET Pesel='56785968512' WHERE id_postaci=1;
UPDATE postac SET Pesel='15896745232' WHERE id_postaci=2;
UPDATE postac SET Pesel='67485932145' WHERE id_postaci=4;
UPDATE postac SET Pesel='12312312312' WHERE id_postaci=5;  
UPDATE postac SET Pesel='77541269845' WHERE id_postaci=6;
UPDATE postac SET Pesel='85749685221' WHERE id_postaci=9;
ALTER TABLE postac ADD PRIMARY KEY(Pesel);
ALTER TABLE postac MODIFY rodzaj enum('wiking','ptak','kobieta','syrena');
INSERT INTO postac VALUES ('98745632181','10','Gertruda Nieszczera','syrena',DEFAULT,'2000-04-04','22',DEFAULT);
==============================================================================================
----------------------------Zadanie 3-------------------------------------------------------
UPDATE postac SET statek='CzarnaPerla' WHERE nazwa LIKE '%a%';
UPDATE statek SET data_wodowania='1999-10-30' WHERE nazwa_statku='CzarnaPerla';
UPDATE statek SET max_ladownosc = (max_ladownosc * 0.7) WHERE YEAR(data_wodowania) BETWEEN 1901 AND 2000;
ALTER TABLE postac ADD CHECK (wiek<1000);
======================================================================================================
------------------------Zadanie 4----------------------------------------------------
ALTER TABLE postac MODIFY rodzaj enum('wiking','ptak','kobieta','syrena','waz');
INSERT INTO postac VALUES ('98547632141','11','Loko','waz',NULL,'2001-06-28','21',NULL);
UPDATE postac SET id_postaci='11' WHERE nazwa='Loko';
CREATE TABLE marynarz like postac;
INSERT INTO marynarz select * FROM postac WHERE statek IS NOT NULL;
ALTER TABLE marynarz ADD FOREIGN KEY (statek) REFERENCES statek(nazwa_statku);
=========================================================================================================
------------------------Zadanie 5-------------------------------------------------------------------------

UPDATE marynarz SET statek = NULL WHERE id_postaci > 0;
UPDATE postac SET statek = NULL WHERE id_postaci > 0;
DELETE FROM postac WHERE nazwa = 'Wieslaw';
DELETE FROM statek WHERE nazwa_statku = 'CzarnaPerla';
DELETE FROM statek WHERE nazwa_statku = 'drakar';

ALTER TABLE postac DROP CONSTRAINT postac_ibfk_1;
 ALTER TABLE postac DROP CONSTRAINT postac_ibfk_2;
ALTER TABLE marynarz DROP CONSTRAINT marynarz_ibfk_1;
DROP TABLE statek;

CREATE TABLE zwierz (id INT PRIMARY KEY AUTO_INCREMENT,nazwa VARCHAR(50),wiek INT);
INSERT INTO zwierz (id,nazwa,wiek) SELECT id_postaci,nazwa,wiek FROM postac WHERE nazwa = 'Drozd' or nazwa = 'loko';
======================================================================================================================================


