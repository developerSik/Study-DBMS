CREATE SEQUENCE SEQ_LIKE;

CREATE TABLE LIKES (
    ID NUMBER CONSTRAINT PK_LIKES PRIMARY KEY,
    ITEM_ID NUMBER,
    USER_ID NUMBER,
    CONSTRAINT FK_LIKES_ITEM FOREIGN KEY (ITEM_ID)
    REFERENCES ITEM (ID) ON DELETE CASCADE,
    CONSTRAINT FK_LIKES_USERS FOREIGN KEY (USER_ID)
    REFERENCES USERS (ID) ON DELETE CASCADE
);

DROP TABLE LIKES;