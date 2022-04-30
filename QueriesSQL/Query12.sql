/*12. Find the names of the potential gold members and number of books they borrowed in the 
last year*/

SELECT BORROWER_ID, COUNT(*) AS BOOKS_BOR
FROM
    (SELECT ID
    FROM POTENTIALGOLDMEMBER)
LEFT OUTER JOIN BORROW_DETAILS ON BORROWER_ID = ID
GROUP BY BORROWER_ID
ORDER BY COUNT(*) DESC