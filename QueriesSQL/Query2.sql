/*2. Find the names of employees who are also a member and the books
they have borrowed in the past month (30 days)*/

SELECT FIRST_NAME, LAST_NAME, TITLE
FROM BORROW_DETAILS
/*Isolate all apearances of employee checkouts in borrow_details*/
RIGHT OUTER JOIN EMPLOYEE ON EMP_ID = BORROWER_ID

/*Join person and book information to isolated employee checkout table*/
LEFT OUTER JOIN PERSON ON BORROWER_ID = ID
LEFT OUTER JOIN BOOKS ON borrow_details.BOOK_ID = books.BOOK_ID

/*Limit checkouts to be within the past month (30 days)*/
WHERE borrow_details.checkout_date between sysdate-30
and CURRENT_DATE

/*Group to remove duplicate checkouts of the same employee and book title*/
group by first_name, Last_name, TITLE
ORDER BY TITLE

