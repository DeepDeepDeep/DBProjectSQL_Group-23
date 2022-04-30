/*5. Find the names of books that were not borrowed in the last 5 months (150 days)*/
SELECT TITLE
FROM BORROW_DETAILS
LEFT OUTER JOIN BOOKS ON BOOKS.BOOK_ID = BORROW_DETAILS.BOOK_ID
WHERE borrow_details.checkout_date NOT between CURRENT_DATE-150
and CURRENT_DATE
GROUP BY TITLE
ORDER BY TITLE
   
