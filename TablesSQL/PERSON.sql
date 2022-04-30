--------------------------------------------------------
--  DDL for Table PERSON
--------------------------------------------------------

  CREATE TABLE "PERSON" 
   (	"ID" VARCHAR2(20 BYTE), 
	"GENDER" VARCHAR2(20 BYTE), 
	"ADDRESS" VARCHAR2(20 BYTE), 
	"PHONE" VARCHAR2(20 BYTE), 
	"DOB" VARCHAR2(20 BYTE), 
	"FIRST_NAME" VARCHAR2(20 BYTE), 
	"MID_NAME_INT" CHAR(1 BYTE), 
	"LAST_NAME" VARCHAR2(20 BYTE)
   ) ;

   COMMENT ON COLUMN "PERSON"."ID" IS 'PK Format PXXX';
