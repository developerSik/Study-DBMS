CREATE SEQUENCE SEQ_DORANBOARD;

CREATE TABLE DORANBOARD (
    ID NUMBER CONSTRAINT PK_DORANBOARD PRIMARY KEY,
    TITLE VARCHAR2(400) NOT NULL,
    CONTENT VARCHAR2(400) NOT NULL,
    VIEWCOUNT NUMBER NOT NULL,
    REGISTERDATE DATE DEFAULT SYSDATE,
    UPDATEDATE DATE DEFAULT SYSDATE,
    USER_ID NUMBER,
    ITEM_ID NUMBER,
    CONSTRAINT FK_DORANBOARD_USERS FOREIGN KEY (USER_ID)
    REFERENCES USERS (ID) ON DELETE CASCADE,
    CONSTRAINT FK_DORANBOARD_ITEM FOREIGN KEY (ITEM_ID)
    REFERENCES ITEM (ID) ON DELETE CASCADE
);

DROP TABLE DORANBOARD ;
SELECT * FROM DORANBOARD;


INSERT INTO DORANBOARD
(ID, TITLE, CONTENT, VIEWCOUNT, USER_ID)
VALUES(SEQ_DORANBOARD.NEXTVAL, '검색 테스트 제목16', '검색 테스트 내용16', 17,   10 );

INSERT INTO DORANBOARD
(ID, TITLE, CONTENT, VIEWCOUNT, USER_ID)
VALUES(SEQ_DORANBOARD.NEXTVAL, '정상식 저축 내역기록', '오늘의 저축 기록', 17, 1);

INSERT INTO DORANBOARD
(ID, TITLE, CONTENT, VIEWCOUNT, USER_ID)
VALUES(SEQ_DORANBOARD.NEXTVAL, '오늘 얼마나 기록하셨나요', '궁금합니다', 17, 0);

INSERT INTO DORANBOARD
(ID, TITLE, CONTENT, VIEWCOUNT, USER_ID)
VALUES(SEQ_DORANBOARD.NEXTVAL, '오늘 날씨가 좋네요', '오늘 날씨가 좋아요', 17, 2);

INSERT INTO DORANBOARD
(ID, TITLE, CONTENT, VIEWCOUNT, USER_ID)
VALUES(SEQ_DORANBOARD.NEXTVAL, '저축 팁 공유합니다', '저축 팁 공유해요', 17, 1);

INSERT INTO DORANBOARD
(ID, TITLE, CONTENT, VIEWCOUNT, USER_ID)
VALUES(SEQ_DORANBOARD.NEXTVAL, '사이트 좋은거 같아요', '사이트 좋은거 같지 않나요?', 17, 1);

INSERT INTO DORANBOARD
(ID, TITLE, CONTENT, VIEWCOUNT, USER_ID)
VALUES(SEQ_DORANBOARD.NEXTVAL, '사이트 좋은거 같아요', '사이트 좋은거 같지 않나요?', 17, 1);

INSERT INTO DORANBOARD
(ID, TITLE, CONTENT, VIEWCOUNT, USER_ID)
VALUES(SEQ_DORANBOARD.NEXTVAL, '저는 새싹 도전중입니다', '새싹 도전중입니다 ㅎㅎ', 17, 1);

INSERT INTO DORANBOARD
(ID, TITLE, CONTENT, VIEWCOUNT, USER_ID)
VALUES(SEQ_DORANBOARD.NEXTVAL, '저는 씨앗 도전중입니다', '저는 씨앗부터 도전하고 있습니다', 17, 1);

INSERT INTO DORANBOARD
(ID, TITLE, CONTENT, VIEWCOUNT, USER_ID)
VALUES(SEQ_DORANBOARD.NEXTVAL, '저는 나무 도전 중입니다', '오늘부터 저축 시작 했습니다', 17, 1);

INSERT INTO DORANBOARD
(ID, TITLE, CONTENT, VIEWCOUNT, USER_ID)
VALUES(SEQ_DORANBOARD.NEXTVAL, '테스트 제목1', '테스트 내용1', 17, 1);

INSERT INTO DORANBOARD
(ID, TITLE, CONTENT, VIEWCOUNT, USER_ID)
VALUES(SEQ_DORANBOARD.NEXTVAL, '테스트 제목2', '테스트 제목2', 17, 1);

INSERT INTO DORANBOARD
(ID, TITLE, CONTENT, VIEWCOUNT, USER_ID)
VALUES(SEQ_DORANBOARD.NEXTVAL, '테스트 제목3', '테스트 제목3', 17, 1);