--------------------------------------------------------
--  DDL for Table BORROW_DETAILS
--------------------------------------------------------

  CREATE TABLE "BORROW_DETAILS" 
   (	"BORROW_ID" NUMBER, 
	"RECEPTIONIST_ID" VARCHAR2(20 BYTE), 
	"BOOK_ID" NUMBER, 
	"PAYMENT_ID" NUMBER, 
	"BORROWER_ID" VARCHAR2(20 BYTE), 
	"RETURN_DUEDATE" DATE, 
	"CHECKOUT_DATE" DATE
   ) ;
