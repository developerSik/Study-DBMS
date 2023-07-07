CREATE TABLE DORANFILE (
    ID NUMBER CONSTRAINT PK_DORANFILE PRIMARY KEY,
    DORANBOARD_ID NUMBER,
    CONSTRAINT FK_DORANFILE_FILES FOREIGN KEY (ID)
    REFERENCES FILES (ID),
    CONSTRAINT FK_DORANFILE_DORANBOARD FOREIGN KEY (DORANBOARD_ID)
    REFERENCES DORANBOARD (ID) ON DELETE CASCADE
);

SELECT * FROM DORANFILE;

DROP TABLE DORANFILE ;