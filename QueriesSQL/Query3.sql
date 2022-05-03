/*3. Find the average number of books borrowed by the top five gold members
in the library*/

/*Average out num_bor for top 5 members of the decending sorted list*/
SELECT AVG(NUM_BOR) 
FROM
        /*Get borrow details in the past year that are checked out by gold members*/
        (SELECT BORROWER_ID, COUNT(*) AS NUM_BOR
        FROM BORROW_DETAILS
        WHERE (CHECKOUT_DATE BETWEEN sysdate-360
        AND CURRENT_DATE) AND EXISTS(SELECT 1 FROM GOLD_MEMBER WHERE GOLD_MEMBER.ID = BORROW_DETAILS.BORROWER_ID)
        GROUP BY BORROWER_ID
        ORDER BY COUNT(*) DESC)
WHERE ROWNUM <= 5 
