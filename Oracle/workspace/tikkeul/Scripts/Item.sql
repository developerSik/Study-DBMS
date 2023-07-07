CREATE SEQUENCE SEQ_ITEM;

CREATE TABLE ITEM (
    ID NUMBER CONSTRAINT PK_ITEM PRIMARY KEY,
    NAME VARCHAR2(400) NOT NULL,
    PRICE NUMBER NOT NULL,
    CURRENT_STOCK NUMBER NOT NULL,
    ORIGIN_STOCK NUMBER NOT NULL,
    STATUS VARCHAR2(400) NOT NULL DEFAULT '판매중',
    BRAND VARCHAR2(400) NOT NULL,
    CATEGORY VARCHAR2(400) NOT NULL,
    REGISTERDATE DATE DEFAULT SYSDATE,
    UPDATEDATE DATE DEFAULT SYSDATE,
    SAVINGLEVEL_ID NUMBER,
    CONSTRAINT FK_ITEM_SAVINGLEVEL FOREIGN KEY (SAVINGLEVEL_ID)
    REFERENCES SAVINGLEVEL (ID) ON DELETE CASCADE
);

DROP TABLE ITEM ;

SELECT * FROM item;
ALTER TABLE ITEM MODIFY STATUS VARCHAR2(400) DEFAULT '판매중';

INSERT INTO ITEM
(ID, NAME, PRICE, ORIGIN_STOCK, BRAND, CATEGORY, SAVINGLEVEL_ID)
VALUES(SEQ_ITEM.NEXTVAL, '테스트2', 40000, 20,'테스트2', '테스트2',
(
  SELECT ID FROM SAVINGLEVEL
  WHERE NAME = '테스트'
)
);

SELECT * FROM SAVINGLEVEL;

ALTER TABLE ITEM ADD CATEGORY VARCHAR2(400) NOT NULL;

     SELECT I.ID, I.ORIGIN_STOCK, S.NAME as savingLevelName, I.NAME
        FROM SAVINGLEVEL S JOIN ITEM I
        ON I.SAVINGLEVEL_ID = S.ID;

       