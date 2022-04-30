--------------------------------------------------------
--  File created - Monday-April-25-2022   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for View POTENTIALGOLDMEMBER
--------------------------------------------------------

  CREATE OR REPLACE FORCE NONEDITIONABLE VIEW "SYSTEM"."POTENTIALGOLDMEMBER" ("ID", "FIRST_NAME", "MID_NAME_INT", "LAST_NAME", "PHONE") AS 
  SELECT ID, FIRST_NAME, MID_NAME_INT, LAST_NAME, PHONE
FROM
    /*Intersect existing P_ID for each table outcome
    1. Borrow_IDs and Silver_member IDs
    2. ^result and every months existing P_IDs*/
    (Select BORROWER_ID from BORROW_DETAILS
    Intersect
    Select ID from SILVER_MEMBER
    Intersect
    Select BORROWER_ID from BORROW_DETAILS
    where borrow_details.checkout_date between add_months(trunc(sysdate,'mm'),-11)
    and last_day(add_months(trunc(sysdate,'mm'),-11))
    Intersect
    Select BORROWER_ID from BORROW_DETAILS
    where borrow_details.checkout_date between add_months(trunc(sysdate,'mm'),-10)
    and last_day(add_months(trunc(sysdate,'mm'),-10))
    Intersect
    Select BORROWER_ID from BORROW_DETAILS
    where borrow_details.checkout_date between add_months(trunc(sysdate,'mm'),-9)
    and last_day(add_months(trunc(sysdate,'mm'),-9))
    Intersect
    Select BORROWER_ID from BORROW_DETAILS
    where borrow_details.checkout_date between add_months(trunc(sysdate,'mm'),-8)
    and last_day(add_months(trunc(sysdate,'mm'),-8))
    Intersect
    Select BORROWER_ID from BORROW_DETAILS
    where borrow_details.checkout_date between add_months(trunc(sysdate,'mm'),-7)
    and last_day(add_months(trunc(sysdate,'mm'),-7))
    Intersect
    Select BORROWER_ID from BORROW_DETAILS
    where borrow_details.checkout_date between add_months(trunc(sysdate,'mm'),-6)
    and last_day(add_months(trunc(sysdate,'mm'),-6))
    Intersect
    Select BORROWER_ID from BORROW_DETAILS
    where borrow_details.checkout_date between add_months(trunc(sysdate,'mm'),-5)
    and last_day(add_months(trunc(sysdate,'mm'),-5))
    Intersect
    Select BORROWER_ID from BORROW_DETAILS
    where borrow_details.checkout_date between add_months(trunc(sysdate,'mm'),-4)
    and last_day(add_months(trunc(sysdate,'mm'),-4))
    Intersect
    Select BORROWER_ID from BORROW_DETAILS
    where borrow_details.checkout_date between add_months(trunc(sysdate,'mm'),-3)
    and last_day(add_months(trunc(sysdate,'mm'),-3))
    Intersect
    Select BORROWER_ID from BORROW_DETAILS
    where borrow_details.checkout_date between add_months(trunc(sysdate,'mm'),-2)
    and last_day(add_months(trunc(sysdate,'mm'),-2))
    Intersect
    Select BORROWER_ID from BORROW_DETAILS
    where borrow_details.checkout_date between add_months(trunc(sysdate,'mm'),-1)
    and last_day(add_months(trunc(sysdate,'mm'),-1))
    Intersect
    Select BORROWER_ID from BORROW_DETAILS
    where borrow_details.checkout_date between add_months(trunc(sysdate,'mm'),0)
    and CURRENT_DATE
)
OUTER LEFT JOIN PERSON ON BORROWER_ID = PERSON.ID;

   COMMENT ON TABLE "SYSTEM"."POTENTIALGOLDMEMBER"  IS 'Does an intersection to isolate silver members from borrow_details, then finds intersections regarding all months in the past year (from current date)'
;
