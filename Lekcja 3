======================Zadanie 1========================================
 CREATE TABLE kreatura LIKE wikingowie.kreatura;
 INSERT INTO kreatura SELECT * FROM wikingowie.kreatura;
 
 CREATE TABLE zasob LIKE wikingowie.zasob;
 INSERT INTO zasob SELECT * FROM wikingowie.zasob;
 
 CREATE TABLE ekwipunek AS (SELECT * FROM wikingowie.ekwipunek);
 INSERT INTO ekwipunek SELECT * FROM wikingowie.ekwipunek;
 
 SELECT * from zasob;
 SELECT * from zasob WHERE rodzaj = 'jedzenie';
 SELECT idZasobu, ilosc FROM ekwipunek WHERE idkreatury IN (1,3,5);
 =======================================================================
=====================Zadanie 2==========================================
SELECT * from kreatura WHERE NOT 'wiedzma' AND (udzwig >= 50);
SELECT * from zasob WHERE waga BETWEEN 2 AND 5;
SELECT * from kreatura WHERE nazwa LIKE '%or%' AND udzwig BETWEEN 30 AND 70;
=========================================================================
======================Zadanie 3==========================================

SELECT * FROM zasob WHERE MONTH(dataPozyskania) IN(7,8);
 select rodzaj from zasob WHERE rodzaj IS NOT NULL ORDER BY waga ASC;
 select * from kreatura ORDER BY dataUr ASC LIMIT 5;
 ============================================================================
 =====================Zadanie 4============================================
 SELECT DISTINCT rodzaj FROM zasob;
 SELECT nazwa,rodzaj FROM kreatura WHERE nazwa LIKE 'wi%';
 SELECT ilosc*waga FROM zasob WHERE year(dataPozyskania) BETWEEN 2000 AND 2007;
 =============================================================================
 ---------------------Zadanie 5-------------------------------------------------
 SELECT waga*0.7 AS 'masa netto', waga*0.3 AS 'waga odpadu' FROM zasob;
 SELECT nazwa FROM zasob WHERE rodzaj IS NULL;
 SELECT DISTINCT rodzaj FROM zasob WHERE nazwa LIKE 'Ba%' OR nazwa LIKE '%os' ORDER BY rodzaj ASC;
