==========================================Zadanie1====================================
DROP TABLE kreatura;
CREATE TABLE kreatura AS SELECT * FROM wikingowie.kreatura;
CREATE TABLE uczestnicy AS SELECT * FROM wikingowie.uczestnicy;
CREATE TABLE etapy_wyprawy AS SELECT * FROM wikingowie.etapy_wyprawy;
CREATE TABLE sektor AS SELECT * FROM wikingowie.sektor;
CREATE TABLE wyprawa AS SELECT * FROM wikingowie.wyprawa;

SELECT nazwa FROM kreatura WHERE idkreatury NOT IN (select id_uczestnika from uczestnicy);

SELECT wyprawa.nazwa, SUM(ekwipunek.ilosc) FROM wyprawa JOIN uczestnicy ON uczestnicy.id_wyprawy = wyprawa.id_wyprawy JOIN kreatura ON kreatura.idKreatury = uczestnicy.id_uczestnika JOIN ekwipunek on ekwipunek.idKreatury = kreatura.idKreatury GROUP BY wyprawa.nazwa;

--------------------------------------ZADANIE 2--------------------------------------------------------------
SELECT wyprawa.nazwa, COUNT(uczestnicy.id_uczestnika) AS Liczba_uczestnikow, GROUP_CONCAT(kreatura.nazwa) AS uczestnicy FROM wyprawa JOIN uczestnicy on uczestnicy.id_wyprawy = wyprawa.id_wyprawy JOIN kreatura ON kreatura.idKreatury = uczestnicy.id_uczestnika GROUP BY wyprawa.nazwa;


select kreatura.nazwa, sektor.nazwa FROM etapy_wyprawy JOIN sektor ON sektor.id_sektora = etapy_wyprawy.sektor JOIN wyprawa ON wyprawa.id_wyprawy = etapy_wyprawy.idWyprawy JOIN kreatura on kreatura.idKreatury = wyprawa.kierownik ORDER BY wyprawa.data_rozpoczecia DESC, etapy_wyprawy.kolejnosc;

---------------------------------------------------------------------------------------------------

_------------------------------------ZADANIE 3 ----------------------------------------------------






-----------------------------------------------------------------------------------
-------------------------------------ZADANIE 4--------------------------------------------
SELECT wyprawa.nazwa, SUM(length(etapy_wyprawy.dziennik)) AS liczba_znakow FROM wyprawa JOIN etapy_wyprawy ON etapy_wyprawy.idWyprawy = wyprawa.id_wyprawy GROUP BY wyprawa.nazwa HAVING liczba_znakow < 400;
