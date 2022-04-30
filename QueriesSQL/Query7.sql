/*7. Find the Gold Member with the most number of guests*/

SELECT GOLD_ID, NUM_GUESTS
FROM    
        /*Count the number of guests for each gold_id*/
        (SELECT GOLD_ID, COUNT(*) AS NUM_GUESTS
        FROM GUEST
        GROUP BY GOLD_ID
        ORDER BY COUNT(*) DESC)
WHERE ROWNUM <= 1