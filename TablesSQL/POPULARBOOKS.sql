--------------------------------------------------------
--  DDL for View POPULARBOOKS
--------------------------------------------------------

  CREATE OR REPLACE FORCE NONEDITIONABLE VIEW "POPULARBOOKS" ("BOOK_ID", "PUBLISHER_ID", "CATEGORY", "TITLE", "IBSN", "TIMES_BOR") AS 
  SELECT BOOK_ID, PUBLISHER_ID, CATEGORY, TITLE, IBSN, TIMES_BOR
FROM
    /*Count the number of borrows for each book in the past year*/
    (SELECT BOOK_ID AS BOR_BOOK_ID, COUNT(*) AS TIMES_BOR
    FROM BORROW_DETAILS
    WHERE borrow_details.checkout_date between add_months(trunc(sysdate,'mm'),-11) 
    and CURRENT_DATE
    GROUP BY BOOK_ID
    ORDER BY COUNT(*) DESC)
RIGHT OUTER JOIN BOOKS ON BOOK_ID = BOR_BOOK_ID
WHERE TIMES_BOR IS NOT NULL AND ROWNUM <= 3
;
