--------------------------------------------------------
--  DDL for Table EMPLOYEE
--------------------------------------------------------

  CREATE TABLE "EMPLOYEE" 
   (	"EMP_ID" VARCHAR2(20 BYTE), 
	"START_DATE" DATE
   ) ;

   COMMENT ON COLUMN "EMPLOYEE"."EMP_ID" IS 'FK to PersonID';
