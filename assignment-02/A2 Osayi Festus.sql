/* Name       : Festus Osayi
Oracle user ID: dbs211_223zaa20
Student ID    : 170276216
Date          : 04-16-2023
File purpose  : DBS311 Assignment02
********************************/
SET AUTOCOMMIT ON;

--------------------------------------------------------
--  DDL for Table INSURANCEA
--------------------------------------------------------

CREATE TABLE INSURANCEA (
  INSNUM NUMBER(38, 0),
  INSURENAME VARCHAR2(26 BYTE),
  INSPHONE NUMBER(38, 0),
  MAXPAYOUT NUMBER(38, 0)
);

REM INSERTING into INSURANCEA

INSERT INTO INSURANCEA (
  INSNUM,
  INSURENAME,
  INSPHONE,
  MAXPAYOUT
) VALUES (
  555,
  'Manulife',
  7056663344,
  1000000
);

INSERT INTO INSURANCEA (
  INSNUM,
  INSURENAME,
  INSPHONE,
  MAXPAYOUT
) VALUES (
  666,
  'TD Insurance',
  4167774444,
  2500000
);

INSERT INTO INSURANCEA (
  INSNUM,
  INSURENAME,
  INSPHONE,
  MAXPAYOUT
) VALUES (
  888,
  'Cut Rate Insurers',
  9058883333,
  9000
);

INSERT INTO INSURANCEA (
  INSNUM,
  INSURENAME,
  INSPHONE,
  MAXPAYOUT
) VALUES (
  444,
  'SureHealth Ins',
  6132225555,
  4000000
);

INSERT INTO INSURANCEA (
  INSNUM,
  INSURENAME,
  INSPHONE,
  MAXPAYOUT
) VALUES (
  111,
  'Sun Life',
  6135654444,
  2000000
);

INSERT INTO INSURANCEA (
  INSNUM,
  INSURENAME,
  INSPHONE,
  MAXPAYOUT
) VALUES (
  222,
  'Co-Operators',
  4163653434,
  4000000
);

INSERT INTO INSURANCEA (
  INSNUM,
  INSURENAME,
  INSPHONE,
  MAXPAYOUT
) VALUES (
  333,
  'Canada Life',
  9052347655,
  400000
);

INSERT INTO INSURANCEA (
  INSNUM,
  INSURENAME,
  INSPHONE,
  MAXPAYOUT
) VALUES (
  777,
  'Desjardins',
  5134578987,
  4500000
);

INSERT INTO INSURANCEA (
  INSNUM,
  INSURENAME,
  INSPHONE,
  MAXPAYOUT
) VALUES (
  999,
  'Foresters',
  8884356754,
  2900000
);

--------------------------------------------------------
--  DDL for Table PATIENTA
--------------------------------------------------------

CREATE TABLE PATIENTA (
  "PATIENTNO" NUMBER(38, 0),
  "FIRSTNAME" VARCHAR2(26 BYTE),
  "LASTNAME" VARCHAR2(26 BYTE),
  "PINSURNUM" NUMBER(38, 0),
  "BIRTHDATE" DATE,
  "CHARGE" NUMBER(38, 0),
  "INSUREPAYS" NUMBER(38, 0)
);

REM INSERTING into PATIENTA
SET DEFINE OFF;

INSERT INTO PATIENTA (
  PATIENTNO,
  FIRSTNAME,
  LASTNAME,
  PINSURNUM,
  BIRTHDATE,
  CHARGE,
  INSUREPAYS
) VALUES (
  123,
  'Karen',
  'Wong',
  555,
  TO_DATE('67-12-25', 'RR-MM-DD'),
  6000,
  NULL
);

INSERT INTO PATIENTA (
  PATIENTNO,
  FIRSTNAME,
  LASTNAME,
  PINSURNUM,
  BIRTHDATE,
  CHARGE,
  INSUREPAYS
) VALUES (
  456,
  'Bill',
  'Trimble',
  666,
  TO_DATE('78-07-01', 'RR-MM-DD'),
  80000,
  NULL
);

INSERT INTO PATIENTA (
  PATIENTNO,
  FIRSTNAME,
  LASTNAME,
  PINSURNUM,
  BIRTHDATE,
  CHARGE,
  INSUREPAYS
) VALUES (
  789,
  'Tom',
  'Seaver',
  888,
  TO_DATE('84-02-22', 'RR-MM-DD'),
  39999,
  NULL
);

INSERT INTO PATIENTA (
  PATIENTNO,
  FIRSTNAME,
  LASTNAME,
  PINSURNUM,
  BIRTHDATE,
  CHARGE,
  INSUREPAYS
) VALUES (
  246,
  'John',
  'Howard',
  444,
  TO_DATE('98-04-15', 'RR-MM-DD'),
  12000,
  NULL
);

INSERT INTO PATIENTA (
  PATIENTNO,
  FIRSTNAME,
  LASTNAME,
  PINSURNUM,
  BIRTHDATE,
  CHARGE,
  INSUREPAYS
) VALUES (
  333,
  'Mandy',
  'Suarez',
  444,
  TO_DATE('77-11-25', 'RR-MM-DD'),
  3200,
  NULL
);

INSERT INTO PATIENTA (
  PATIENTNO,
  FIRSTNAME,
  LASTNAME,
  PINSURNUM,
  BIRTHDATE,
  CHARGE,
  INSUREPAYS
) VALUES (
  555,
  'Kumar',
  'Rajendra',
  222,
  TO_DATE('88-04-04', 'RR-MM-DD'),
  3300,
  NULL
);

INSERT INTO PATIENTA (
  PATIENTNO,
  FIRSTNAME,
  LASTNAME,
  PINSURNUM,
  BIRTHDATE,
  CHARGE,
  INSUREPAYS
) VALUES (
  777,
  'Wendy',
  'Thomas',
  222,
  TO_DATE('93-01-24', 'RR-MM-DD'),
  50000,
  NULL
);

INSERT INTO PATIENTA (
  PATIENTNO,
  FIRSTNAME,
  LASTNAME,
  PINSURNUM,
  BIRTHDATE,
  CHARGE,
  INSUREPAYS
) VALUES (
  888,
  'Casey',
  'Stengal',
  111,
  TO_DATE('66-02-18', 'RR-MM-DD'),
  44000,
  NULL
);

INSERT INTO PATIENTA (
  PATIENTNO,
  FIRSTNAME,
  LASTNAME,
  PINSURNUM,
  BIRTHDATE,
  CHARGE,
  INSUREPAYS
) VALUES (
  999,
  'Ted',
  'Mendez',
  111,
  TO_DATE('68-11-11', 'RR-MM-DD'),
  2200,
  NULL
);

INSERT INTO PATIENTA (
  PATIENTNO,
  FIRSTNAME,
  LASTNAME,
  PINSURNUM,
  BIRTHDATE,
  CHARGE,
  INSUREPAYS
) VALUES (
  321,
  'Mary',
  'Worth',
  666,
  TO_DATE('78-07-01', 'RR-MM-DD'),
  8000,
  NULL
);

INSERT INTO PATIENTA (
  PATIENTNO,
  FIRSTNAME,
  LASTNAME,
  PINSURNUM,
  BIRTHDATE,
  CHARGE,
  INSUREPAYS
) VALUES (
  432,
  'Jerry',
  'Lowell',
  888,
  TO_DATE('61-04-30', 'RR-MM-DD'),
  5999,
  NULL
);

INSERT INTO PATIENTA (
  PATIENTNO,
  FIRSTNAME,
  LASTNAME,
  PINSURNUM,
  BIRTHDATE,
  CHARGE,
  INSUREPAYS
) VALUES (
  654,
  'Wei',
  'Tsung',
  444,
  TO_DATE('77-05-15', 'RR-MM-DD'),
  900,
  NULL
);

INSERT INTO PATIENTA (
  PATIENTNO,
  FIRSTNAME,
  LASTNAME,
  PINSURNUM,
  BIRTHDATE,
  CHARGE,
  INSUREPAYS
) VALUES (
  543,
  'Farah',
  'Sanchez',
  999,
  TO_DATE('87-11-24', 'RR-MM-DD'),
  16500,
  NULL
);

INSERT INTO PATIENTA (
  PATIENTNO,
  FIRSTNAME,
  LASTNAME,
  PINSURNUM,
  BIRTHDATE,
  CHARGE,
  INSUREPAYS
) VALUES (
  654,
  'John',
  'Brown',
  777,
  TO_DATE('84-04-02', 'RR-MM-DD'),
  60000,
  NULL
);

INSERT INTO PATIENTA (
  PATIENTNO,
  FIRSTNAME,
  LASTNAME,
  PINSURNUM,
  BIRTHDATE,
  CHARGE,
  INSUREPAYS
) VALUES (
  987,
  'Clair',
  'Stevens',
  111,
  TO_DATE('94-01-22', 'RR-MM-DD'),
  59999,
  NULL
);

INSERT INTO PATIENTA (
  PATIENTNO,
  FIRSTNAME,
  LASTNAME,
  PINSURNUM,
  BIRTHDATE,
  CHARGE,
  INSUREPAYS
) VALUES (
  642,
  'Eva',
  'Pulaski',
  222,
  TO_DATE('77-05-15', 'RR-MM-DD'),
  10000,
  NULL
);

INSERT INTO PATIENTA (
  PATIENTNO,
  FIRSTNAME,
  LASTNAME,
  PINSURNUM,
  BIRTHDATE,
  CHARGE,
  INSUREPAYS
) VALUES (
  694,
  'Delores',
  'Quintana',
  333,
  TO_DATE('67-12-12', 'RR-MM-DD'),
  4400,
  NULL
);

INSERT INTO PATIENTA (
  PATIENTNO,
  FIRSTNAME,
  LASTNAME,
  PINSURNUM,
  BIRTHDATE,
  CHARGE,
  INSUREPAYS
) VALUES (
  473,
  'Masatoshi',
  'Yoshimura',
  999,
  TO_DATE('78-12-13', 'RR-MM-DD'),
  5400,
  NULL
);

INSERT INTO PATIENTA (
  PATIENTNO,
  FIRSTNAME,
  LASTNAME,
  PINSURNUM,
  BIRTHDATE,
  CHARGE,
  INSUREPAYS
) VALUES (
  403,
  'Bruce',
  'Adamson',
  444,
  TO_DATE('73-02-24', 'RR-MM-DD'),
  50000,
  NULL
);

INSERT INTO PATIENTA (
  PATIENTNO,
  FIRSTNAME,
  LASTNAME,
  PINSURNUM,
  BIRTHDATE,
  CHARGE,
  INSUREPAYS
) VALUES (
  392,
  'Sally',
  'Kwan',
  222,
  TO_DATE('76-02-28', 'RR-MM-DD'),
  90000,
  NULL
);

INSERT INTO PATIENTA (
  PATIENTNO,
  FIRSTNAME,
  LASTNAME,
  PINSURNUM,
  BIRTHDATE,
  CHARGE,
  INSUREPAYS
) VALUES (
  979,
  'Vicenzo',
  'Lucchessi',
  888,
  TO_DATE('85-11-11', 'RR-MM-DD'),
  50000,
  NULL
);

INSERT INTO PATIENTA (
  PATIENTNO,
  FIRSTNAME,
  LASTNAME,
  PINSURNUM,
  BIRTHDATE,
  CHARGE,
  INSUREPAYS
) VALUES (
  322,
  'Heather',
  'Nicholls',
  555,
  TO_DATE('89-07-07', 'RR-MM-DD'),
  18000,
  NULL
);

INSERT INTO PATIENTA (
  PATIENTNO,
  FIRSTNAME,
  LASTNAME,
  PINSURNUM,
  BIRTHDATE,
  CHARGE,
  INSUREPAYS
) VALUES (
  620,
  'Michael',
  'Thompson',
  777,
  TO_DATE('71-03-03', 'RR-MM-DD'),
  15999,
  NULL
);

INSERT INTO PATIENTA (
  PATIENTNO,
  FIRSTNAME,
  LASTNAME,
  PINSURNUM,
  BIRTHDATE,
  CHARGE,
  INSUREPAYS
) VALUES (
  853,
  'Irving',
  'Stern',
  666,
  TO_DATE('57-05-15', 'RR-MM-DD'),
  11900,
  NULL
);

--Q1.Create a user defined function that determines the price markup in the products file.
--Be prepared to show it being used in a select statement in the select list, the where clause,
--and the order by clause. When demonstrating this just include the product name, the two different
--types of prices and the markup.
CREATE OR REPLACE FUNCTION CALCMARKUP (
  SALEPRICE IN NUMBER,
  PRODUCTPRICE IN NUMBER
)RETURN NUMBER AS
  CALCPRICE NUMBER;
BEGIN
  IF CALCPRICE < 1 THEN
    CALCPRICE := 0;
  ELSE
    CALCPRICE := ((PRODUCTPRICE - SALEPRICE ) / SALEPRICE) * 100;
  END IF;
  RETURN TRUNC(CALCPRICE, 2);
END CALCMARKUP;
 -- in a select statement in the select list
SELECT
  PRODUCTNAME,
  BUYPRICE,
  MSRP,
  CALCMARKUP(BUYPRICE,
  MSRP) "Markup Price"
FROM
  PRODUCTS;
 -- In a where clause
SELECT
  PRODUCTNAME,
  BUYPRICE,
  MSRP  "Minimun msrp",
  CALCMARKUP(BUYPRICE,
  MSRP) "Markup Price"
FROM
  PRODUCTS
WHERE
  CALCMARKUP(BUYPRICE,
  MSRP) BETWEEN 50
  AND 100;
 -- In a order by clause
SELECT
  PRODUCTNAME,
  BUYPRICE,
  MSRP  "Minimun msrp",
  CALCMARKUP(BUYPRICE,
  MSRP) "Markup Price"
FROM
  PRODUCTS
ORDER BY
  CALCMARKUP(BUYPRICE,
  MSRP);
 --Q2. PATIENTA and INSURANCEA tables have been provided for you.
 --Use those tables for your assignment Adapt your lab stored procedure
 --to reject any updates where a company tries to pay 25% or less.
 CREATE OR REPLACE PROCEDURE INPAYS ( INSURNUM_IN IN NUMBER, CHARGERATE_IN IN NUMBER ) AS
  INSURNAME       VARCHAR2(20 BYTE);
  INSURPATIENTNUM NUMBER;
BEGIN
  SELECT
    INSURENAME INTO INSURNAME
  FROM
    INSURANCEA
  WHERE
    INSNUM = INSURNUM_IN;
  IF CHARGERATE_IN <= 25 THEN
    DBMS_OUTPUT.PUT_LINE('Invalid rate of %'
      || CHARGERATE_IN
      || ' attempted');
    DBMS_OUTPUT.PUT_LINE('No updates applied for '
      || INSURNAME);
    DBMS_OUTPUT.PUT_LINE('Resubmit with a rate higher than 25%!');
  ELSE
    UPDATE PATIENTA
    SET
      PATIENTA.INSUREPAYS = (
        PATIENTA.CHARGE * (CHARGERATE_IN/100)
      )
    WHERE
      PATIENTA.PINSURNUM = INSURNUM_IN;
    FOR INIT IN (
      SELECT
        INSURANCEA.INSURENAME,
        COUNT(PATIENTA.PINSURNUM) INSURANCENUMBER
      FROM
        PATIENTA
        JOIN INSURANCEA
        ON INSURANCEA.INSNUM = PATIENTA.PINSURNUM
      WHERE
        PATIENTA.PINSURNUM = INSURNUM_IN
      GROUP BY
        INSURANCEA.INSURENAME
    ) LOOP
      DBMS_OUTPUT.PUT_LINE('Insurance Co. '
        || INIT.INSURENAME
        || ' '
        || CHARGERATE_IN
        || '% Rate Applied');
      DBMS_OUTPUT.PUT_LINE(INIT.INSURANCENUMBER
        || ' Patient(s) updated');
    END LOOP;
  END IF;
END INPAYS;
 --execution of the INSPAYS Procedures
 --with the specified data given.
 SET SERVEROUTPUT ON;
EXECUTE INPAYS(888, 22);
 -- Trying out a different value in INSPAYS
 --Procedures with rating greater than 25%
 EXECUTE INPAYS(777, 30);
 --Q3. Adapt your lab procedure to use a CURSOR that goes through all
 --the updated rows after the update was applied and reports on the ones
 --where the percentage payout by the company for all the patients exceeds
 --the company�s maximum payout amount.
 CREATE OR REPLACE PROCEDURE INPAYS ( INSURNUM_IN IN NUMBER, CHARGERATE_IN IN NUMBER ) AS
  INSURNAME       VARCHAR2(20 BYTE);
  INSURPATIENTNUM NUMBER;
  INSUREMAXPAYOUT NUMBER;
BEGIN
  SELECT
    INSURENAME INTO INSURNAME
  FROM
    INSURANCEA
  WHERE
    INSNUM = INSURNUM_IN;
  IF CHARGERATE_IN <= 25 THEN
    DBMS_OUTPUT.PUT_LINE('Invalid rate of %'
      || CHARGERATE_IN
      || ' attempted');
    DBMS_OUTPUT.PUT_LINE('No updates applied for '
      || INSURNAME);
    DBMS_OUTPUT.PUT_LINE('Resubmit with a rate higher than 25%!');
  ELSE
    UPDATE PATIENTA
    SET
      PATIENTA.INSUREPAYS = (
        PATIENTA.CHARGE * (CHARGERATE_IN/100)
      )
    WHERE
      PATIENTA.PINSURNUM = INSURNUM_IN;
    DECLARE
      CURSOR INSURANCEPAYMENT IS
        SELECT
          PATIENTA.INSUREPAYS,
          INSURANCEA.MAXPAYOUT
        FROM
          PATIENTA
          JOIN INSURANCEA
          ON INSURANCEA.INSNUM = PATIENTA.PINSURNUM
        WHERE
          PATIENTA.PINSURNUM = INSURNUM_IN
          AND PATIENTA.INSUREPAYS > (INSURANCEA.MAXPAYOUT * (CHARGERATE_IN/100));
    BEGIN
      FOR ROW IN INSURANCEPAYMENT LOOP
        EXIT WHEN INSURANCEPAYMENT%NOTFOUND;
        DBMS_OUTPUT.PUT_LINE('Insurance payment '
          || ROW.INSUREPAYS
          || ' exceeds max payout of '
          || INSUREMAXPAYOUT);
      END LOOP;
    END;
    FOR INIT IN (
      SELECT
        INSURANCEA.INSURENAME,
        COUNT(PATIENTA.PINSURNUM) INSURANCENUMBER
      FROM
        PATIENTA
        JOIN INSURANCEA
        ON INSURANCEA.INSNUM = PATIENTA.PINSURNUM
      WHERE
        PATIENTA.PINSURNUM = INSURNUM_IN
      GROUP BY
        INSURANCEA.INSURENAME
    ) LOOP
      DBMS_OUTPUT.PUT_LINE('Insurance Co. '
        || INIT.INSURENAME
        || ' '
        || CHARGERATE_IN
        || '% Rate Applied');
      DBMS_OUTPUT.PUT_LINE(INIT.INSURANCENUMBER
        || ' Patient(s) updated');
    END LOOP;
  END IF;
END;
 --executing the Inspays, with the
 --specified value after modifying
 --the store procedure with cursor
 EXECUTE INPAYS(888, 40);
 --Q4. Create an update trigger program for PATIENTA.
 --If the company pays < 40% there may be substantial debt
 --remaining for the Patients. If the amount owing is greater
 --than 10,000 and the percentage paid is less than 40%, use a
 --trigger to store a row in a new table called DCOLLECTION
 --(difficult collections). The hospital will go through these entries
 --and try to get the insurance company to pay a higher percentage.
 CREATE TRIGGER DCOLLECTION_TRIGGER AFTER
UPDATE ON PATIENTA FOR EACH ROW BEGIN IF (
  NEW.AMOUNTOWING > 10000 AND NEW.PERCENTPAID < 40
) THEN INSERT INTO DCOLLECTIONS (
  PATIENTNO,
  INSNUM,
  PERCENTPAID,
  CHARGE,
  PAIDBYINS,
  AMTOWING,
  PROBLEM
) VALUES (
  :NEW.PATIENTNO,
  :NEW.INSNUM,
  :NEW.PERCENTPAID,
  :NEW.CHARGE,
  :NEW.PAIDBYINS,
  :NEW.AMTOWING,
  :NEW.PROBLEM
);
END IF;
END;
/

--Q5.Create a stored procedure that uses a cursor for a join of any two
--of ORDERS, PRODUCTS, ORDERDETAILS and CUSTOMERS. In your WHERE condition,
--have a minimum of five rows returned. Allow one or two parameters to be passed
--to your stored procedure that limits the amount of rows returned.
--The cursor should accept these parameter and be capable of producing different
--results each time it is used. Show your output with dbms_output.put_line.

CREATE OR REPLACE PROCEDURE SHOW_ORDER_DETAILS (
  ORDER_NUM IN NUMBER,
  LIMIT_NUM IN NUMBER
) IS
  ROWCOUNT NUMBER;
  CURSOR ORDER_DETAILS IS
    SELECT
      O.ORDERNUMBER,
      O.ORDERDATE,
      C.CONTACTFIRSTNAME,
      C.CONTACTLASTNAME,
      P.PRODUCTNAME,
      OD.QUANTITYORDERED
    FROM
      ORDERS       O
      JOIN CUSTOMERS C
      ON O.CUSTOMERNUMBER = C.CUSTOMERNUMBER JOIN ORDERDETAILS OD
      ON O.ORDERNUMBER = OD.ORDERNUMBER
      JOIN PRODUCTS P
      ON OD.PRODUCTCODE = P.PRODUCTCODE
    WHERE
      O.ORDERNUMBER = ORDER_NUM
    ORDER BY
      OD.QUANTITYORDERED DESC FETCH FIRST LIMIT_NUM ROWS ONLY;
BEGIN
  FOR DETAILS IN ORDER_DETAILS LOOP
    DBMS_OUTPUT.PUT_LINE('Order Number: '
      || DETAILS.ORDERNUMBER);
    DBMS_OUTPUT.PUT_LINE('Order Date: '
      || DETAILS.ORDERDATE);
    DBMS_OUTPUT.PUT_LINE('Customer Name: '
      || DETAILS.CONTACTFIRSTNAME
      || ' '
      || DETAILS.CONTACTLASTNAME);
    DBMS_OUTPUT.PUT_LINE('Product Name: '
      || DETAILS.PRODUCTNAME);
    DBMS_OUTPUT.PUT_LINE('QuantityOrdered: '
      || DETAILS.QUANTITYORDERED);
    DBMS_OUTPUT.PUT_LINE('------------------------------');
    ROWCOUNT := ORDER_DETAILS%ROWCOUNT;
  END LOOP;
  DBMS_OUTPUT.PUT_LINE(ROWCOUNT
    ||' row(s) returned');
END SHOW_ORDER_DETAILS;
/

-- execution of SHOW_ORDER_DETAILS
--This procedure helps the user to
--compute orderdetails and more importantly
--it allows user's with the benefits to control
--how many rows is being fetched or return.
SET SERVEROUTPUT ON;

EXECUTE SHOW_ORDER_DETAILS(10324, 10);