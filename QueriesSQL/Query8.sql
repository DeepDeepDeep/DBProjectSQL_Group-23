/*8. Find the year with the maximum number of books borrowed*/

/*Get only first row of decending list of year*/
SELECT YEAR, NUM_BOR
FROM
    /*Group and count occurences of each year*/
    (SELECT YEAR, COUNT(*) AS NUM_BOR
    FROM
        /*Isolate year from date column*/
        (SELECT extract(YEAR from checkout_date) AS YEAR
        FROM BORROW_DETAILS)
    GROUP BY YEAR
    ORDER BY COUNT(*) DESC)
WHERE ROWNUM <= 1 
