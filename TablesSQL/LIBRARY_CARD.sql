--------------------------------------------------------
--  DDL for Table LIBRARY_CARD
--------------------------------------------------------

  CREATE TABLE "LIBRARY_CARD" 
   (	"CARD_ID" NUMBER, 
	"PERSON_ID" VARCHAR2(20 BYTE), 
	"MEMBER_LEVEL" CHAR(1 BYTE) DEFAULT 'S', 
	"DATE_ISS" DATE
   ) ;
