/* Name       : Festus Osayi
Oracle user ID: dbs211_223zaa20
Student ID    : 170276216
Date          : 3-9-2023
File purpose  : DBS311Lab 05
********************************/
SET AUTOCOMMIT ON;

SET DEFINE OFF;

--------------------------------------------------------
--  File created - Sunday-October-16-2022
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table PATIENT4
--------------------------------------------------------

CREATE TABLE PATIENT4 (
	PATIENTNO NUMBER(38, 0),
	FIRSTNAME VARCHAR2(26 BYTE),
	LASTNAME VARCHAR2(26 BYTE),
	PINSURNUM NUMBER(38, 0),
	BIRTHDATE DATE,
	CHARGE NUMBER(38, 0),
	INSUREPAYS NUMBER(38, 0)
);

REM INSERTING into PATIENT4
SET DEFINE OFF;

INSERT INTO PATIENT4 (
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

INSERT INTO PATIENT4 (
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

INSERT INTO PATIENT4 (
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

INSERT INTO PATIENT4 (
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

INSERT INTO PATIENT4 (
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

INSERT INTO PATIENT4 (
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

INSERT INTO PATIENT4 (
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

INSERT INTO PATIENT4 (
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

INSERT INTO PATIENT4 (
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

INSERT INTO PATIENT4 (
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

INSERT INTO PATIENT4 (
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

INSERT INTO PATIENT4 (
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

INSERT INTO PATIENT4 (
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

INSERT INTO PATIENT4 (
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

INSERT INTO PATIENT4 (
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

INSERT INTO PATIENT4 (
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

INSERT INTO PATIENT4 (
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

INSERT INTO PATIENT4 (
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

INSERT INTO PATIENT4 (
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

INSERT INTO PATIENT4 (
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
	44000,
	NULL
);

INSERT INTO PATIENT4 (
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
	4200,
	NULL
);

INSERT INTO PATIENT4 (
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

INSERT INTO PATIENT4 (
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

INSERT INTO PATIENT4 (
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

--------------------------------------------------------
--  File created - Sunday-October-16-2022
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table INSURANCE4
--------------------------------------------------------

CREATE TABLE INSURANCE4 (
	INSNUM NUMBER(38, 0),
	INSURENAME VARCHAR2(26 BYTE),
	INSPHONE NUMBER(38, 0),
	MAXPAYOUT NUMBER(38, 0)
);

REM INSERTING into INSURANCE4

INSERT INTO INSURANCE4 (
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

INSERT INTO INSURANCE4 (
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

INSERT INTO INSURANCE4 (
	INSNUM,
	INSURENAME,
	INSPHONE,
	MAXPAYOUT
) VALUES (
	888,
	'Cut Rate Insurers',
	9058883333,
	1000
);

INSERT INTO INSURANCE4 (
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

INSERT INTO INSURANCE4 (
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

INSERT INTO INSURANCE4 (
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

INSERT INTO INSURANCE4 (
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

INSERT INTO INSURANCE4 (
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

INSERT INTO INSURANCE4 (
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

--Q1.Write a stored procedure that get an integer number and prints information on whether the number is even or odd. (look at it being divisible by 2)
SET SERVEROUTPUT ON

CREATE OR REPLACE PROCEDURE EVEN_ODD (
	NUM IN NUMBER
) AS
BEGIN
	IF MOD(NUM, 2) = 0 THEN
		DBMS_OUTPUT.PUT_LINE('You entered the number '
			|| NUM
			|| ' This is an even number');
	ELSE
		DBMS_OUTPUT.PUT_LINE('You entered the number '
			|| NUM
			|| ' This is an odd number');
	END IF;
END;
/

-- Execution of the Even_Odd procedure..
EXECUTE EVEN_ODD(201);

-- Q2.You have the PRODUCTS, ORDERS, ORDERDETAIL and CUSTOMERS tables already loaded. Provide a procedure that takes an order number and provides information about the order as shown below. Handle exceptions for this.
SET SERVEROUTPUT ON

CREATE OR REPLACE PROCEDURE ORDERCUSTINFO (
	ORDERNUM IN NUMBER
) IS
	P_ORDERDATE      DATE;
	P_CUSTOMER       VARCHAR2(50);
	P_CUSTOMERNUMBER NUMBER;
	P_CITY           VARCHAR2(50);
	P_PHONE          VARCHAR2(20);
	P_CREDITLIMIT    NUMBER;
	P_STATUS         VARCHAR2(50);
BEGIN
	SELECT
		ORDERS.ORDERDATE,
		CUSTOMERS.CUSTOMERNAME,
		CUSTOMERS.CUSTOMERNUMBER,
		CUSTOMERS.CITY,
		CUSTOMERS.PHONE,
		CUSTOMERS.CREDITLIMIT,
		ORDERS.STATUS INTO P_ORDERDATE,
		P_CUSTOMER,
		P_CUSTOMERNUMBER,
		P_CITY,
		P_PHONE,
		P_CREDITLIMIT,
		P_STATUS
	FROM
		ORDERS
		JOIN CUSTOMERS
		ON ORDERS.CUSTOMERNUMBER = CUSTOMERS.CUSTOMERNUMBER
	WHERE
		ORDERS.ORDERNUMBER = ORDERNUM;
	DBMS_OUTPUT.PUT_LINE('Order Date: '
		|| P_ORDERDATE);
	DBMS_OUTPUT.PUT_LINE('Customer: '
		|| P_CUSTOMER);
	DBMS_OUTPUT.PUT_LINE('Customer #: '
		|| P_CUSTOMERNUMBER);
	DBMS_OUTPUT.PUT_LINE('City: '
		|| P_CITY);
	DBMS_OUTPUT.PUT_LINE('Phone: '
		|| P_PHONE);
	DBMS_OUTPUT.PUT_LINE('Credit Limit: '
		|| P_CREDITLIMIT);
	DBMS_OUTPUT.PUT_LINE('Order Status: '
		|| P_STATUS);
EXCEPTION
	WHEN NO_DATA_FOUND THEN
		DBMS_OUTPUT.PUT_LINE('Order and Customer Info not found.');
	WHEN OTHERS THEN
		DBMS_OUTPUT.PUT_LINE('Error!! an error has occurred: '
			|| SQLERRM);
END;
/

-- Execution of the ORDERCUSTINFO..
EXECUTE ORDERCUSTINFO(101);

-- Q3. COPY THE SCRIPT THAT PRODUCES THE TABLES PATIENT4 AND INSURANCE4. WE WILL CREATE A PROCEDURE THAT APPLIES A PERCENTAGE OF THE CHARGE ACCORDING TO WHAT THE INSURANCE COMPANY RATE IS INCLUDED.
SET SERVEROUTPUT ON

CREATE OR REPLACE PROCEDURE INSURANCE_PAYS (
	INSURENUMBER IN NUMBER,
	CHARGERATE IN NUMBER
) AS
	INS_INSNAME       VARCHAR2(100);
	INS_PATIENTINSNUM NUMBER;
BEGIN
	FOR INIT IN (
		SELECT
			INSURANCE4.INSURENAME,
			COUNT(PATIENT4.PINSURNUM) INSNUM
		FROM
			PATIENT4,
			INSURANCE4
		WHERE
			INSURANCE4.INSNUM = PATIENT4.PINSURNUM
			AND PATIENT4.PINSURNUM = INSURENUMBER
		GROUP BY
			INSURANCE4.INSURENAME
	) LOOP
		DBMS_OUTPUT.PUT_LINE('Insurance Co. '
			|| INIT.INSURENAME
			|| ' '
			|| CHARGERATE
			|| '% Rate Applied');
		DBMS_OUTPUT.PUT_LINE(INIT.INSNUM
			|| ' Patient(s) updated');
	END LOOP;
	UPDATE PATIENT4
	SET
		PATIENT4.INSUREPAYS = (
			PATIENT4.CHARGE * (CHARGERATE/100)
		)
	WHERE
		PATIENT4.PINSURNUM = INSURENUMBER;
END;
/

-- EXCUTION OF INSURANCE_PAYS..
EXECUTE INSURANCE_PAYS(222,65);

-- CHECKING THE PATIENT4 TABLE IF THE PREVIOUSLY NULL VALUES WILL SHOW THE 85% RATE HAS BEEN APPLIED WITH THE INSUREPAYS COLUMN ENTRY.

SELECT
	*
FROM
	PATIENT4;