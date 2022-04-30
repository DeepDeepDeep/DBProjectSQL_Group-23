/*1. List details of all supervisors of the library hired in
the past two months*/

/*Join PERSON table info where hired_date is within the past two months (60 days) */
SELECT FIRST_NAME, MID_NAME_INT, LAST_NAME, HIRED_DATE
FROM
    /*Join employee table to retrieve hired_date*/
    (SELECT ID AS SUPERVISOR_ID, START_DATE AS HIRED_DATE 
    FROM LIBRARY_SUPERVISORS
    LEFT OUTER JOIN EMPLOYEE ON EMP_ID = ID)
LEFT OUTER JOIN PERSON ON ID = SUPERVISOR_ID
WHERE HIRED_DATE between sysdate-60 and CURRENT_DATE
ORDER BY HIRED_DATE DESC