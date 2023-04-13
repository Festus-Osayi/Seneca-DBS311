--Q1.The manufacturer’s suggested retail price for a product is 207.80,
--but on one sale we are going to overcharge a customer (priceeach) more
--than the MSRP. We are going to charge 214.30 when the order number is 10185
--and the product code is S12_1108. You can do this prior to demonstrating the
--lab, but be prepared to prove that this priceeach is in effect for that orderline in the ORDERLINES table.
UPDATE ORDERDETAILS
SET
    ORDERDETAILS.PRICEEACH = 214.30
WHERE
    ORDERDETAILS.PRODUCTCODE = 'S12_1108'
    AND ORDERDETAILS.ORDERNUMBER = 10185;

SELECT *
FROM ORDERDETAILS;
desc ORDERDETAILS;
 --Q2. Determine the order number, quantity ordered, product code and price for all rows in the ORDERDETAILS table that match the minimum price each for all ORDERDETAIL records. (1 mark)
    SELECT
        ORDERNUMBER,
        QUANTITYORDERED,
        PRODUCTCODE,
        PRICEEACH
    FROM
        ORDERDETAILS
    WHERE
        PRICEEACH = (
            SELECT
                MIN(PRICEEACH)
            FROM
                ORDERDETAILS
        );

--Q3. Determine all the rows in the PRODUCTS table that match the product code(s) in the ORDERDETAILS table with the highest price. Show only the columns that show below. (2 marks)
SELECT
    DISTINCT PRODUCTS.PRODUCTCODE,
    PRODUCTS.PRODUCTNAME,
    PRODUCTS.QUANTITYINSTOCK,
    PRODUCTS.PRODUCTVENDOR
FROM
    PRODUCTS
    JOIN ORDERDETAILS
    ON PRODUCTS.PRODUCTCODE = ORDERDETAILS.PRODUCTCODE
WHERE
    ORDERDETAILS.PRICEEACH = (
        SELECT
            MAX(ORDERDETAILS.PRICEEACH)
        FROM
            ORDERDETAILS
    );

--Q4. The manufacture suggested retail price for a 1957 Corvette Convertible is 148.80 and the price to buy it is 69.93 netting the merchant 78.87 with
-- a sale at the suggested price. Show all the product names and the net amount for all the products that fall below the average net amount. (2 marks)
SELECT
    PRODUCTS.PRODUCTNAME,
    (PRODUCTS.MSRP - PRODUCTS.BUYPRICE) AS NET
FROM
    PRODUCTS
WHERE
    (PRODUCTS.MSRP - PRODUCTS.BUYPRICE) < (
        SELECT
            AVG(PRODUCTS.MSRP - PRODUCTS.BUYPRICE)
        FROM
            PRODUCTS
    )
ORDER BY
    (PRODUCTS.MSRP - PRODUCTS.BUYPRICE) DESC;

--Q5. Produce the following output of eleven rows from the Customer and Orders table. (1 mark)
SELECT
    CUSTOMERS.CUSTOMERNAME,
    ORDERS.ORDERNUMBER,
    ORDERS.ORDERDATE,
    ORDERS.REQUIREDDATE,
    ORDERS.SHIPPEDDATE
FROM
    CUSTOMERS
    INNER JOIN ORDERS
    ON CUSTOMERS.CUSTOMERNUMBER = ORDERS.CUSTOMERNUMBER
WHERE
    ORDERS.ORDERNUMBER >= 10415
ORDER BY
    ORDERS.ORDERNUMBER;

--Q6. Determine any products which are not Classic Cars that have exactly the same MSRP as one of the Classic Cars productline (2 marks)
SELECT
    PRODUCTS.PRODUCTNAME,
    PRODUCTS.PRODUCTLINE,
    PRODUCTS.MSRP
FROM
    PRODUCTS
WHERE
    PRODUCTS.PRODUCTLINE != 'Classic Cars'
    AND PRODUCTS.MSRP in (
        SELECT
            PRODUCTS.MSRP
        FROM
            PRODUCTS
        WHERE
            PRODUCTS.PRODUCTLINE = 'Classic Cars'
    );

--Q7. We only want to report on the lines where the number of items is greater than the number of items for Planes. (1 mark)

SELECT
    PRODUCTS.PRODUCTLINE,
    MAX(BUYPRICE),
    COUNT (*) NUMBEROFITEMS
FROM
    PRODUCTS
GROUP BY
    PRODUCTS.PRODUCTLINE
HAVING
    COUNT (*) > (
        SELECT
            COUNT(PRODUCTLINE)
        FROM
            PRODUCTS
        WHERE
            PRODUCTS.PRODUCTLINE = 'Planes'
    );

