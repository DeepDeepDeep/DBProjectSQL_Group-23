--------------------------------------------------------
--  File created - Monday-April-25-2022   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for View POPULARAUTHOR
--------------------------------------------------------

CREATE OR REPLACE FORCE NONEDITIONABLE VIEW "SYSTEM"."POPULARAUTHOR" ("AUTHOR_ID", "FIRST_NAME", "MID_NAME_INT", "LAST_NAME", "TOT_BOR") AS 
SELECT  AUTHOR_ID, FIRST_NAME, MID_NAME_INT, LAST_NAME, TOT_BOR
FROM
    /*Sum the borrowed books for each author*/
     (SELECT 
        AUTHOR_ID, SUM(TIMES_BOR) AS TOT_BOR
     FROM
        /*Count the number borrowed for each book based on BOOK_ID*/
        (SELECT BOOK_ID as B_ID, COUNT(*) AS TIMES_BOR
        FROM BORROW_DETAILS
        GROUP BY BOOK_ID)
     LEFT OUTER JOIN BOOKS ON Books.BOOK_ID = B_ID
     LEFT OUTER JOIN AUTHORS ON Authors.BOOK_ID = B_ID
     GROUP BY AUTHOR_ID
     )
LEFT OUTER JOIN PERSON ON ID = AUTHOR_ID
WHERE TOT_BOR IS NOT NULL AND ROWNUM <= 3
ORDER BY TOT_BOR DESC
;
