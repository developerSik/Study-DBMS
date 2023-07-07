CREATE SEQUENCE SEQ_USER;

CREATE TABLE TBL_USER(
	USER_ID NUMBER CONSTRAINT PK_USER PRIMARY KEY,
	USER_IDENTIFICATION VARCHAR2(500) UNIQUE NOT NULL,
	USER_PASSWORD VARCHAR2(500) NOT NULL,
	USER_NAME VARCHAR2(500) NOT NULL,
	USER_PHONE VARCHAR2(500) NOT NULL,
	USER_NICKNAME VARCHAR2(500),
	USER_EMAIL VARCHAR2(500) NOT NULL,
	USER_ADDRESS VARCHAR2(500),
	USER_BIRTH DATE,
	USER_RECOMMENDER_ID VARCHAR2(500)
	USER_STATUS CHAR(1) DEFAULT 0
);

SELECT * FROM TBL_USER;

ALTER TABLE TBL_USER ADD (USER_STATUS CHAR(1));
ALTER TABLE TBL_USER MODIFY (USER_STATUS DEFAULT 0);