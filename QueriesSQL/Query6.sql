/*6. Find the members who have borrowed all the books wrote by the most
popular author*/

SELECT BORROWER_ID
FROM
    /*Find most popular book_ids and their borrower_ids*/
    (SELECT AUTHORS.BOOK_ID, BORROWER_ID
    FROM   
                    /*Get most popular author*/
                    (SELECT AUTHOR_ID AS A_ID
                    FROM POPULARAUTHOR
                    WHERE ROWNUM <= 1)
    LEFT OUTER JOIN AUTHORS ON AUTHOR_ID = A_ID
    LEFT OUTER JOIN BORROW_DETAILS ON BORROW_DETAILS.BOOK_ID = AUTHORS.BOOK_ID
    WHERE BORROW_ID IS NOT NULL
    
    /*Group to remove duplicate checkouts of the same book by borrower
    NEEDED BY CHECK SYSTEM LATER*/
    GROUP BY AUTHORS.BOOK_ID, BORROWER_ID)

/*Group by borrower_id for HAVING COUNT*/    
GROUP BY BORROWER_ID

/*Count the number of books made written by most popular author.
Then use it to check if borrower has checked out all books by this author*/
HAVING COUNT(*) =  (SELECT COUNT(*) 
                   FROM 
                        (SELECT AUTHOR_ID, BOOK_ID
                        FROM
                             /*Get most popular author*/
                            (SELECT AUTHOR_ID AS A_ID
                            FROM POPULARAUTHOR
                            WHERE ROWNUM <= 1)
                        LEFT OUTER JOIN AUTHORS ON AUTHORS.AUTHOR_ID = A_ID))