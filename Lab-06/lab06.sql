/* Name       : Festus Osayi
Oracle user ID: dbs211_223zaa20
Student ID    : 170276216
Date          : 3-16-2023
File purpose  : DBS311Lab 06
********************************/
SET AUTOCOMMIT ON;

SET DEFINE OFF;

--Q1. Write a stored procedure that processes the CUSTOMER table
--reporting on the number of customers in each country
--that exceed the number passed to the procedure.
--For the example below, Australia with a count of 5 customers is not included in the output.
--Your procedure should include a COUNTRYIN CHAR(15) and a TOTALCUST NUMBER variable
--that is loaded with the appropriate country and country total for each line of output. Use %Rowcount to determine the number of rows returned.
CREATE OR REPLACE PROCEDURE CUSTCOUNTRY (
    CUSTOMERTOTAL IN NUMBER
) AS
    COUNTRYIN CHAR(15);
    TOTALCUST NUMBER;
    CURSOR EACHCUSTOMER IS
        SELECT
            COUNTRY,
            COUNT(*) AS "NO_CUSTOMERS"
        FROM
            CUSTOMERS
        GROUP BY
            (COUNTRY)
        HAVING
            COUNT(*) > CUSTOMERTOTAL
        ORDER BY
            COUNTRY;
BEGIN
    DBMS_OUTPUT.PUT_LINE('COUNTRY'
        ||'  '
        ||'TOTAL CUSTOMERS');
    OPEN EACHCUSTOMER;
    LOOP
        FETCH EACHCUSTOMER INTO COUNTRYIN, TOTALCUST;
        EXIT WHEN EACHCUSTOMER%NOTFOUND;
        DBMS_OUTPUT.PUT_LINE(COUNTRYIN
            || '  '
            ||TOTALCUST);
    END LOOP;
    DBMS_OUTPUT.PUT_LINE(EACHCUSTOMER%ROWCOUNT
        ||' rows returned');
    IF EACHCUSTOMER%ISOPEN THEN
        CLOSE EACHCUSTOMER;
    END IF;
END CUSTCOUNTRY;
/

--EXECution of the custcountry..
SET SERVEROUTPUT ON

EXECUTE CUSTCOUNTRY(6);

--Q2.create or replace PROCEDURE MYWHILELOOPS
CREATE OR REPLACE PROCEDURE MYWHILELOOPS (
    CH IN CHAR
) AS
    COUNTER  NUMBER:=0;
    SUCCESS1 BOOLEAN:= TRUE;
    SUCCESS2 BOOLEAN:= TRUE;
BEGIN
    IF CH = 'E' OR CH = 'e' THEN
        DBMS_OUTPUT.PUT_LINE('Even odd WHILE LOOPS');
        COUNTER:=0;
        WHILE SUCCESS1 LOOP
            COUNTER := COUNTER + 2;
            IF COUNTER > 20 THEN
                COUNTER:=21;
                WHILE SUCCESS2 LOOP
                    DBMS_OUTPUT.PUT_LINE('ROUND: '
                        || COUNTER);
                    COUNTER:=COUNTER+2;
                    IF COUNTER > 30 THEN
                        SUCCESS1:= FALSE;
                        SUCCESS2:= FALSE;
                    END IF;
                END LOOP;
            ELSE
                DBMS_OUTPUT.PUT_LINE('ROUND: '
                    || COUNTER);
            END IF;
        END LOOP;
    ELSIF CH = 'O' OR CH = 'o' THEN
        DBMS_OUTPUT.PUT_LINE('Odd even WHILE LOOPS');
        COUNTER:=-1;
        WHILE SUCCESS1 = TRUE LOOP
            COUNTER := COUNTER + 2;
            IF COUNTER > 20 THEN
                COUNTER:=20;
                WHILE SUCCESS2= TRUE LOOP
                    DBMS_OUTPUT.PUT_LINE('ROUND: '
                        || COUNTER);
                    COUNTER:=COUNTER+2;
                    IF COUNTER > 30 THEN
                        SUCCESS1:=FALSE;
                        SUCCESS2:=FALSE;
                    END IF;
                END LOOP;
            ELSE
                DBMS_OUTPUT.PUT_LINE('ROUND: '
                    || COUNTER);
            END IF;
        END LOOP;
    ELSE
        DBMS_OUTPUT.PUT_LINE('Only an E or an O acceptable');
    END IF;
END MYWHILELOOPS;
/

--EXECution of the MYWHILELOOPS..
SET SERVEROUTPUT ON

EXECUTE MYWHILELOOPS('O');

