/* Name       : Festus Osayi
Oracle user ID: dbs211_223zaa20
Student ID    : 170276216
Date          : 2-9-2023
File purpose  : DBS311Lab 04
********************************/
SET AUTOCOMMIT ON;

--Q1. 1. Load the the Staff table that has been made available for you.
--You will use a subselect to produce three new tables based on the staff table job.
--All the managers in MANAGERS, all the clerks in CLERKS and all the sales staff in SALES. (1 mark)
--------------------------------------------------------
--  DDL for Table STAFF
--------------------------------------------------------

CREATE TABLE "STAFF" (
    "ID" NUMBER(*, 0),
    "NAME" VARCHAR2(9 BYTE) DEFAULT NULL,
    "DEPT" NUMBER(*, 0) DEFAULT NULL,
    "JOB" CHAR(5 BYTE) DEFAULT NULL,
    "YEARS" NUMBER(*, 0) DEFAULT NULL,
    "SALARY" NUMBER(7, 2) DEFAULT NULL,
    "COMM" NUMBER(7, 2) DEFAULT NULL
);

REM INSERTING into  STAFF
SET DEFINE OFF;

INSERT INTO STAFF (
    ID,
    NAME,
    DEPT,
    JOB,
    YEARS,
    SALARY,
    COMM
) VALUES (
    10,
    'Sanders',
    20,
    'Mgr  ',
    7,
    68357.5,
    NULL
);

INSERT INTO STAFF (
    ID,
    NAME,
    DEPT,
    JOB,
    YEARS,
    SALARY,
    COMM
) VALUES (
    20,
    'Pernal',
    20,
    'Sales',
    8,
    68171.25,
    612.45
);

INSERT INTO STAFF (
    ID,
    NAME,
    DEPT,
    JOB,
    YEARS,
    SALARY,
    COMM
) VALUES (
    30,
    'Marenghi',
    38,
    'Mgr  ',
    5,
    67506.75,
    NULL
);

INSERT INTO STAFF (
    ID,
    NAME,
    DEPT,
    JOB,
    YEARS,
    SALARY,
    COMM
) VALUES (
    40,
    'O''Brien',
    38,
    'Sales',
    6,
    68006,
    846.55
);

INSERT INTO STAFF (
    ID,
    NAME,
    DEPT,
    JOB,
    YEARS,
    SALARY,
    COMM
) VALUES (
    50,
    'Hanes',
    15,
    'Mgr  ',
    10,
    70659.8,
    NULL
);

INSERT INTO STAFF (
    ID,
    NAME,
    DEPT,
    JOB,
    YEARS,
    SALARY,
    COMM
) VALUES (
    60,
    'Quigley',
    38,
    'Sales',
    NULL,
    66808.3,
    650.25
);

INSERT INTO STAFF (
    ID,
    NAME,
    DEPT,
    JOB,
    YEARS,
    SALARY,
    COMM
) VALUES (
    70,
    'Rothman',
    15,
    'Sales',
    7,
    66502.83,
    1152
);

INSERT INTO STAFF (
    ID,
    NAME,
    DEPT,
    JOB,
    YEARS,
    SALARY,
    COMM
) VALUES (
    80,
    'James',
    20,
    'Clerk',
    NULL,
    63504.6,
    128.2
);

INSERT INTO STAFF (
    ID,
    NAME,
    DEPT,
    JOB,
    YEARS,
    SALARY,
    COMM
) VALUES (
    90,
    'Koonitz',
    42,
    'Sales',
    6,
    68001.75,
    1386.7
);

INSERT INTO STAFF (
    ID,
    NAME,
    DEPT,
    JOB,
    YEARS,
    SALARY,
    COMM
) VALUES (
    100,
    'Plotz',
    42,
    'Mgr  ',
    7,
    68352.8,
    NULL
);

INSERT INTO STAFF (
    ID,
    NAME,
    DEPT,
    JOB,
    YEARS,
    SALARY,
    COMM
) VALUES (
    110,
    'Ngan',
    15,
    'Clerk',
    5,
    62508.2,
    206.6
);

INSERT INTO STAFF (
    ID,
    NAME,
    DEPT,
    JOB,
    YEARS,
    SALARY,
    COMM
) VALUES (
    120,
    'Naughton',
    38,
    'Clerk',
    NULL,
    62954.75,
    180
);

INSERT INTO STAFF (
    ID,
    NAME,
    DEPT,
    JOB,
    YEARS,
    SALARY,
    COMM
) VALUES (
    130,
    'Yamaguchi',
    42,
    'Clerk',
    6,
    60505.9,
    75.6
);

INSERT INTO STAFF (
    ID,
    NAME,
    DEPT,
    JOB,
    YEARS,
    SALARY,
    COMM
) VALUES (
    140,
    'Fraye',
    51,
    'Mgr  ',
    6,
    71150,
    NULL
);

INSERT INTO STAFF (
    ID,
    NAME,
    DEPT,
    JOB,
    YEARS,
    SALARY,
    COMM
) VALUES (
    150,
    'Williams',
    51,
    'Sales',
    6,
    69456.5,
    637.65
);

INSERT INTO STAFF (
    ID,
    NAME,
    DEPT,
    JOB,
    YEARS,
    SALARY,
    COMM
) VALUES (
    160,
    'Molinare',
    10,
    'Mgr  ',
    7,
    72959.2,
    NULL
);

INSERT INTO STAFF (
    ID,
    NAME,
    DEPT,
    JOB,
    YEARS,
    SALARY,
    COMM
) VALUES (
    170,
    'Kermisch',
    15,
    'Clerk',
    4,
    62258.5,
    110.1
);

INSERT INTO STAFF (
    ID,
    NAME,
    DEPT,
    JOB,
    YEARS,
    SALARY,
    COMM
) VALUES (
    180,
    'Abrahams',
    38,
    'Clerk',
    3,
    62009.75,
    236.5
);

INSERT INTO STAFF (
    ID,
    NAME,
    DEPT,
    JOB,
    YEARS,
    SALARY,
    COMM
) VALUES (
    190,
    'Sneider',
    20,
    'Clerk',
    8,
    64252.75,
    126.5
);

INSERT INTO STAFF (
    ID,
    NAME,
    DEPT,
    JOB,
    YEARS,
    SALARY,
    COMM
) VALUES (
    200,
    'Scoutten',
    42,
    'Clerk',
    NULL,
    61508.6,
    84.2
);

INSERT INTO STAFF (
    ID,
    NAME,
    DEPT,
    JOB,
    YEARS,
    SALARY,
    COMM
) VALUES (
    210,
    'Lu',
    10,
    'Mgr  ',
    10,
    70010,
    NULL
);

INSERT INTO STAFF (
    ID,
    NAME,
    DEPT,
    JOB,
    YEARS,
    SALARY,
    COMM
) VALUES (
    220,
    'Smith',
    51,
    'Sales',
    7,
    67654.5,
    992.8
);

INSERT INTO STAFF (
    ID,
    NAME,
    DEPT,
    JOB,
    YEARS,
    SALARY,
    COMM
) VALUES (
    230,
    'Lundquist',
    51,
    'Clerk',
    3,
    63369.8,
    189.65
);

INSERT INTO STAFF (
    ID,
    NAME,
    DEPT,
    JOB,
    YEARS,
    SALARY,
    COMM
) VALUES (
    240,
    'Daniels',
    10,
    'Mgr  ',
    5,
    69260.25,
    NULL
);

INSERT INTO STAFF (
    ID,
    NAME,
    DEPT,
    JOB,
    YEARS,
    SALARY,
    COMM
) VALUES (
    250,
    'Wheeler',
    51,
    'Clerk',
    6,
    64460,
    513.3
);

INSERT INTO STAFF (
    ID,
    NAME,
    DEPT,
    JOB,
    YEARS,
    SALARY,
    COMM
) VALUES (
    260,
    'Jones',
    10,
    'Mgr  ',
    12,
    71234,
    NULL
);

INSERT INTO STAFF (
    ID,
    NAME,
    DEPT,
    JOB,
    YEARS,
    SALARY,
    COMM
) VALUES (
    270,
    'Lea',
    66,
    'Mgr  ',
    9,
    68555.5,
    NULL
);

INSERT INTO STAFF (
    ID,
    NAME,
    DEPT,
    JOB,
    YEARS,
    SALARY,
    COMM
) VALUES (
    280,
    'Wilson',
    66,
    'Sales',
    9,
    68674.5,
    811.5
);

INSERT INTO STAFF (
    ID,
    NAME,
    DEPT,
    JOB,
    YEARS,
    SALARY,
    COMM
) VALUES (
    290,
    'Quill',
    84,
    'Mgr  ',
    10,
    69818,
    NULL
);

INSERT INTO STAFF (
    ID,
    NAME,
    DEPT,
    JOB,
    YEARS,
    SALARY,
    COMM
) VALUES (
    300,
    'Davis',
    84,
    'Sales',
    5,
    65454.5,
    806.1
);

INSERT INTO STAFF (
    ID,
    NAME,
    DEPT,
    JOB,
    YEARS,
    SALARY,
    COMM
) VALUES (
    310,
    'Graham',
    66,
    'Sales',
    13,
    71000,
    200.3
);

INSERT INTO STAFF (
    ID,
    NAME,
    DEPT,
    JOB,
    YEARS,
    SALARY,
    COMM
) VALUES (
    320,
    'Gonzales',
    66,
    'Sales',
    4,
    66858.2,
    844
);

INSERT INTO STAFF (
    ID,
    NAME,
    DEPT,
    JOB,
    YEARS,
    SALARY,
    COMM
) VALUES (
    330,
    'Burke',
    66,
    'Clerk',
    1,
    60988,
    55.5
);

INSERT INTO STAFF (
    ID,
    NAME,
    DEPT,
    JOB,
    YEARS,
    SALARY,
    COMM
) VALUES (
    340,
    'Edwards',
    84,
    'Sales',
    7,
    67844,
    1285
);

INSERT INTO STAFF (
    ID,
    NAME,
    DEPT,
    JOB,
    YEARS,
    SALARY,
    COMM
) VALUES (
    350,
    'Gafney',
    84,
    'Clerk',
    5,
    63030.5,
    188
);

--------------------------------------------------------
--  Constraints for Table STAFF
--------------------------------------------------------

ALTER TABLE "STAFF" MODIFY ("ID" NOT NULL ENABLE);

--creating the subselects table
--Managers table
CREATE TABLE MANAGERS AS (
    SELECT ID,
    NAME,
    DEPT,
    JOB,
    YEARS,
    SALARY,
    COMM FROM STAFF WHERE STAFF.JOB = 'Mgr'
);

--clerk table
CREATE TABLE CLERKS AS (
    SELECT ID,
    NAME,
    DEPT,
    JOB,
    YEARS,
    SALARY,
    COMM FROM STAFF WHERE STAFF.JOB = 'Clerk'
);

--Sales table
CREATE TABLE SALES AS (
    SELECT ID,
    NAME,
    DEPT,
    JOB,
    YEARS,
    SALARY,
    COMM FROM STAFF WHERE STAFF.JOB = 'Sales'
);

--.  Use the  MANAGERS, CLERKS and SALES tables to produce the following
--output. Do not refer to the STAFF table.
SELECT
    'THE TOTAL SALARY FOR CLERK IS'  SALARYBYPOSITION,
    SUM(SALARY)                      SALARY
FROM
    CLERKS UNION
    SELECT
        'THE TOTAL SALARY FOR MANGER IS' SALARYBYPOSITION,
        SUM(SALARY)                      SALARY
    FROM
        MANAGERS UNION
        SELECT
            'THE TOTAL SALARY FOR SALES IS'  SALARYBYPOSITION,
            SUM(SALARY)                      SALARY
        FROM
            SALES;

--Q3. Query the STAFF and MANAGER tables to produce this result
--without directly referring to the Mgr job

SELECT
    STAFF.ID,
    STAFF.NAME,
    STAFF.DEPT,
    STAFF.JOB,
    STAFF.YEARS,
    STAFF.SALARY,
    COMM
FROM
    STAFF MINUS
    SELECT
        MANAGERS.ID,
        MANAGERS.NAME,
        MANAGERS.DEPT,
        MANAGERS.JOB,
        MANAGERS.YEARS,
        MANAGERS.SALARY,
        MANAGERS.COMM
    FROM
        MANAGERS
    ORDER BY
        ID;

--4. Query the STAFF and SALES tables to produce this result without
--directly referring to the Sales job. Note this is in JOB order) (2 marks)
SELECT
    STAFF.ID,
    STAFF.NAME,
    STAFF.DEPT,
    STAFF.JOB,
    STAFF.YEARS,
    STAFF.SALARY,
    COMM
FROM
    STAFF MINUS
    SELECT
        SALES.ID,
        SALES.NAME,
        SALES.DEPT,
        SALES.JOB,
        SALES.YEARS,
        SALES.SALARY,
        SALES.COMM
    FROM
        SALES
    ORDER BY
        JOB;

--Q5.Show a count of how many STAFF and CLERKS rows are identical. (2 marks)
SELECT
    'TOTAL ROWS THAT ARE IDENTICAL WITH STAFF & CLERKS' TOTAL,
    COUNT(*)                                            TOTALTHESAME
FROM
    (
        SELECT
            *
        FROM
            STAFF INTERSECT
            SELECT
                *
            FROM
                CLERKS
    );

-- q6
SELECT
    *
FROM
    STAFF INTERSECT
    SELECT
        *
    FROM
        CLERKS
    WHERE
        YEARS IS NOT NULL;