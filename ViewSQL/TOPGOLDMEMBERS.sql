--------------------------------------------------------
--  File created - Monday-April-25-2022   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for View TOPGOLDMEMBERS
--------------------------------------------------------

CREATE OR REPLACE FORCE NONEDITIONABLE VIEW "SYSTEM"."TOPGOLDMEMBERS" ("FIRST_NAME", "LAST_NAME", "ENROLLMENT_DATE") AS 
SELECT FIRST_NAME, LAST_NAME, ENROLLMENT_DATE
FROM
    /*Get borrower_id that appear more than 5 times*/
    (SELECT BORROWER_ID
    FROM
        /*Find borrower_id's that appear with checkouts in the last 30 days*/
        (SELECT BORROWER_ID 
         FROM BORROW_DETAILS
         WHERE borrow_details.checkout_date between CURRENT_DATE-30 
                    and CURRENT_DATE)
    Group by BORROWER_ID
    HAVING Count(*) >= 5)
LEFT OUTER JOIN MEMBER ON MEM_ID = BORROWER_ID
LEFT OUTER JOIN PERSON ON ID = MEM_ID
;
