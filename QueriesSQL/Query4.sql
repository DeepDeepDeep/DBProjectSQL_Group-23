/*4. Find the names of publishers and the title of 
most popular book for each publisher*/

SELECT NAME AS PUBLISHER_NAME, TITLE AS BOOK_TITLE, TIMES_BOR
FROM
        /*Count the number of times a book title was borrowed*/
        (SELECT PUBLISHERS.PUBLISHER_ID AS P_ID_1, NAME, TITLE, COUNT(*) AS TIMES_BOR
        FROM
            PUBLISHERS
        LEFT OUTER JOIN BOOKS ON BOOKS.PUBLISHER_ID = publishers.PUBLISHER_ID
        LEFT OUTER JOIN BORROW_DETAILS ON borrow_details.BOOK_ID = BOOKS.BOOK_ID
        GROUP BY PUBLISHERS.PUBLISHER_ID, NAME, BOOKS.BOOK_ID, TITLE
        ORDER BY NAME)
        
/*Join both tables so it lists publishers most borrowed books using
publisher id and max borrowed value*/
RIGHT OUTER JOIN
        
        /*Get publisher ID and the max borrowed value of their most borrowed
        book*/
        (SELECT PUBLISHER_ID AS P_ID_2, MAX(TIMES_BOR) AS MAX_BOR
        FROM
                (SELECT PUBLISHERS.PUBLISHER_ID, COUNT(*) AS TIMES_BOR
                FROM PUBLISHERS
                LEFT OUTER JOIN BOOKS ON books.publisher_id= publishers.PUBLISHER_ID
                LEFT OUTER JOIN BORROW_DETAILS ON borrow_details.BOOK_ID = BOOKS.BOOK_ID
                GROUP BY PUBLISHERS.PUBLISHER_ID, BOOKS.BOOK_ID
                ORDER BY NAME)
        GROUP BY PUBLISHER_ID
        ORDER BY PUBLISHER_ID
        )
ON P_ID_1 = P_ID_2 AND TIMES_BOR = MAX_BOR