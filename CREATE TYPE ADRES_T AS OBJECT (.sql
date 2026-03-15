CREATE TYPE ADRES_T AS OBJECT (
    CADDE VARCHAR2(30),
    SEHIR VARCHAR2(50),
    ULKE_KODU CHAR(2),
    POSTA_KODU CHAR(5)
);
CREATE TYPE adres_tab IS TABLE OF ADRES_T;
INSERT INTO MUSTERILER VALUES (1,
ADRES_TAB (
    ADRES_T('İstanbul cad.','Ankara','Tr','06100'),
    ADRES_T('Ankara cad.','Istanbul','Tr','34100')
)
);
INSERT INTO MUSTERILER VALUES (2,
ADRES_TAB (
    ADRES_T('Kizilay cad.','Ankara','Tr','06200'),
    ADRES_T('Istiklal cad.','Istanbul','Tr','34200')
)
);
SELECT
   M.MUSTERI_ID, U.*
FROM MUSTERILER M , TABLE(ADRES) U;   

