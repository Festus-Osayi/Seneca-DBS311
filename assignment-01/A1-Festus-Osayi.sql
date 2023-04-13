/* Name       : Festus Osayi
Oracle user ID: dbs211_223zaa20
Student ID    : 170276216
Date          : 2-21-2023
File purpose  : DBS311 Assignment01
********************************/
SET AUTOCOMMIT ON;

SET DEFINE OFF;

--1.Provide two statements.
--A.Looking at CUSTOMERS and ORDERS,
--supply the names of customers who have never made an order according to the current tables. (10 marks)
SELECT
    CUSTOMERNAME
FROM
    CUSTOMERS C
WHERE
    C.CUSTOMERNUMBER NOT IN (
        SELECT
            ORDERS.CUSTOMERNUMBER
        FROM
            ORDERS
    )
ORDER BY
    CUSTOMERNAME;

--B.Supply the count of customers who have never made an order in our current tables.
SELECT
    COUNT(*) "#CUSTOMERS WITHOUT ORDERS"
FROM
    CUSTOMERS C
WHERE
    C.CUSTOMERNUMBER NOT IN (
        SELECT
            ORDERS.CUSTOMERNUMBER
        FROM
            ORDERS
    );

--2.Display the total number of orders per month from
-- the orders table.show this in month order.
SELECT
    CAST(ROUND(TO_CHAR(ORDERDATE,
    'mm'),
    0) AS INTEGER) "Month",
    COUNT(*)       "Total ORDER"
FROM
    ORDERS
GROUP BY
    (TO_CHAR(ORDERDATE,
    'mm'))
ORDER BY
    TO_CHAR(ORDERDATE,
    'mm');

--3.Show how many customers have made an order. (5 marks)
SELECT
    COUNT(*) "#CUSTOMERS WITH ORDERS"
FROM
    CUSTOMERS C
WHERE
    C.CUSTOMERNUMBER IN (
        SELECT
            ORDERS.CUSTOMERNUMBER
        FROM
            ORDERS
    );

--4.Produce the following output based on CUSTOMERS, ORDERS and ORDERDETAILS. (10 marks)
SELECT
    ('Average order total $' || ROUND(AVG(ORDERTOTAL),
    2))                                                                                                                           AS "Custom Report"
FROM
    (
        SELECT
            SUM(ORDERDETAILS.QUANTITYORDERED * ORDERDETAILS.PRICEEACH) AS ORDERTOTAL
        FROM
            ORDERS
            JOIN CUSTOMERS
            ON ORDERS.CUSTOMERNUMBER = CUSTOMERS.CUSTOMERNUMBER JOIN ORDERDETAILS
            ON ORDERS.ORDERNUMBER = ORDERDETAILS.ORDERNUMBER
        GROUP BY
            ORDERS.ORDERNUMBER,
            CUSTOMERS.CUSTOMERNUMBER
    ) UNION ALL
    SELECT
        ('Number of customers with order totals over $32,000 ' || COUNT(SUM(ORDERDETAILS.QUANTITYORDERED * ORDERDETAILS.PRICEEACH)))  AS "Custom Report"
    FROM
        ORDERS
        JOIN CUSTOMERS
        ON ORDERS.CUSTOMERNUMBER = CUSTOMERS.CUSTOMERNUMBER JOIN ORDERDETAILS
        ON ORDERS.ORDERNUMBER = ORDERDETAILS.ORDERNUMBER
    GROUP BY
        ORDERS.ORDERNUMBER,
        CUSTOMERS.CUSTOMERNUMBER
    HAVING
        SUM(ORDERDETAILS.QUANTITYORDERED * ORDERDETAILS.PRICEEACH) > 32000 UNION ALL
        SELECT
            ('Number of customers with order totals under $32,000 ' || COUNT(SUM(ORDERDETAILS.QUANTITYORDERED * ORDERDETAILS.PRICEEACH))) AS "Custom Report"
        FROM
            ORDERS
            JOIN CUSTOMERS
            ON ORDERS.CUSTOMERNUMBER = CUSTOMERS.CUSTOMERNUMBER JOIN ORDERDETAILS
            ON ORDERS.ORDERNUMBER = ORDERDETAILS.ORDERNUMBER
        GROUP BY
            ORDERS.ORDERNUMBER,
            CUSTOMERS.CUSTOMERNUMBER
        HAVING
            SUM(ORDERDETAILS.QUANTITYORDERED * ORDERDETAILS.PRICEEACH) <32000;

--5.Show all the customer names and their order total for everyone who had an order total more than $58,000 based on CUSTOMERS, ORDERS and ORDERDETAILS.  (10 marks)

SELECT
    CUSTOMERNAME,
    SUM(ORDERDETAILS.QUANTITYORDERED * ORDERDETAILS.PRICEEACH) AS "Total"
FROM
    CUSTOMERS
    JOIN ORDERS
    ON CUSTOMERS.CUSTOMERNUMBER = ORDERS.CUSTOMERNUMBER JOIN ORDERDETAILS
    ON ORDERS.ORDERNUMBER = ORDERDETAILS.ORDERNUMBER
GROUP BY
    ORDERS.ORDERNUMBER,
    CUSTOMERS.CUSTOMERNAME
HAVING
    SUM(ORDERDETAILS.QUANTITYORDERED * ORDERDETAILS.PRICEEACH) >58000
ORDER BY
    SUM(ORDERDETAILS.QUANTITYORDERED * ORDERDETAILS.PRICEEACH) DESC;

--
--SHOW ME SOMETHING INTERESTING BASED ON TWO OR THREE OF THE ORDERS, ORDERDETAIL AND CUSTOMER TABLES.
--This illustrates the given amount of orders place by a customer
-- customer table.
SELECT
    C.CUSTOMERNAME,
    COUNT(O.ORDERNUMBER) AS "Orders Placed"
FROM
    ORDERS       O
    INNER JOIN ORDERDETAILS OD
    ON O.ORDERNUMBER = OD.ORDERNUMBER
    INNER JOIN CUSTOMERS C
    ON C.CUSTOMERNUMBER = O.CUSTOMERNUMBER
GROUP BY
    C.CUSTOMERNAME;

--Orders Table
--This helps the users to query out any given order information,
--For example, The ordernumber, shipped date, and most importantly
--to be able to filter out any order status which is on hold
--on a given date. Which makes some kind of logical and business sense,
--and hopefully this is unique enough as well.
SELECT
    *
FROM
    ORDERS
WHERE
    ORDERNUMBER IN (
        SELECT
            ORDERNUMBER
        FROM
            ORDERS
        WHERE
            ORDERS.STATUS = 'On Hold'
            AND ORDERDATE > '03-11-15'
    )
ORDER BY
    ORDERDATE DESC;