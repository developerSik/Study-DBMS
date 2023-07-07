CREATE TABLE SAVINGLEVELFILE(
	ID NUMBER CONSTRAINT PK_SAVINGLEVELFILE PRIMARY KEY,
	SAVINGLEVEL_ID NUMBER,
	CONSTRAINT FK_SAVINGLEVEL_FILES FOREIGN KEY (ID)
	REFERENCES FILES (ID) ON DELETE CASCADE,
	CONSTRAINT FK_SAVINGLEVELFILE_SAVINGLEVEL FOREIGN KEY (SAVINGLEVEL_ID)
	REFERENCES SAVINGLEVEL (ID) ON DELETE CASCADE
);

SELECT * FROM SAVINGLEVELFILE;

DROP TABLE 


ALTER TABLE SAVINGLEVELFILE DROP FOREIGN KEY FK_SAVINGLEVEL_FILES;

ALTER TABLE SAVINGLEVELFILE ADD CONSTRAINT FK_SAVINGLEVEL_FILES ON DELETE CASCADE(ID);
DROP e