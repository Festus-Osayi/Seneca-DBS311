/* Name       : Festus Osayi
Oracle user ID: dbs211_223zaa20
Student ID    : 170276216
Date          : 1-22-2023
File purpose  : DBS311Lab 02
********************************/
SET AUTOCOMMIT ON;

--------------------------------------------------------
--  DDL for Table ORDERS
--------------------------------------------------------

CREATE TABLE ORDERS (
    "ORDERNUMBER" NUMBER(*, 0),
    "ORDERDATE" DATE,
    "REQUIREDDATE" DATE,
    "SHIPPEDDATE" DATE DEFAULT NULL,
    "STATUS" VARCHAR2(15 BYTE),
    "COMMENTS" VARCHAR2(500 BYTE),
    "CUSTOMERNUMBER" NUMBER(*, 0)
) SEGMENT CREATION IMMEDIATE PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING STORAGE(
    INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645 PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT
) TABLESPACE "USER_DATA";

REM INSERTING into ORDERS
SET DEFINE OFF;

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10317,
    TO_DATE('04-11-02', 'RR-MM-DD'),
    TO_DATE('04-11-12', 'RR-MM-DD'),
    TO_DATE('04-11-08', 'RR-MM-DD'),
    'Shipped',
    NULL,
    161
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10318,
    TO_DATE('04-11-02', 'RR-MM-DD'),
    TO_DATE('04-11-09', 'RR-MM-DD'),
    TO_DATE('04-11-07', 'RR-MM-DD'),
    'Shipped',
    NULL,
    157
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10319,
    TO_DATE('04-11-03', 'RR-MM-DD'),
    TO_DATE('04-11-11', 'RR-MM-DD'),
    TO_DATE('04-11-06', 'RR-MM-DD'),
    'Shipped',
    'Customer requested that DHL is used for this shipping',
    456
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10320,
    TO_DATE('04-11-03', 'RR-MM-DD'),
    TO_DATE('04-11-13', 'RR-MM-DD'),
    TO_DATE('04-11-07', 'RR-MM-DD'),
    'Shipped',
    NULL,
    144
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10321,
    TO_DATE('04-11-04', 'RR-MM-DD'),
    TO_DATE('04-11-12', 'RR-MM-DD'),
    TO_DATE('04-11-07', 'RR-MM-DD'),
    'Shipped',
    NULL,
    462
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10322,
    TO_DATE('04-11-04', 'RR-MM-DD'),
    TO_DATE('04-11-12', 'RR-MM-DD'),
    TO_DATE('04-11-10', 'RR-MM-DD'),
    'Shipped',
    'Customer has worked with some of our vendors in the past and is aware of their MSRP',
    363
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10323,
    TO_DATE('04-11-05', 'RR-MM-DD'),
    TO_DATE('04-11-12', 'RR-MM-DD'),
    TO_DATE('04-11-09', 'RR-MM-DD'),
    'Shipped',
    NULL,
    128
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10324,
    TO_DATE('04-11-05', 'RR-MM-DD'),
    TO_DATE('04-11-11', 'RR-MM-DD'),
    TO_DATE('04-11-08', 'RR-MM-DD'),
    'Shipped',
    NULL,
    181
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10325,
    TO_DATE('04-11-05', 'RR-MM-DD'),
    TO_DATE('04-11-13', 'RR-MM-DD'),
    TO_DATE('04-11-08', 'RR-MM-DD'),
    'Shipped',
    NULL,
    121
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10326,
    TO_DATE('04-11-09', 'RR-MM-DD'),
    TO_DATE('04-11-16', 'RR-MM-DD'),
    TO_DATE('04-11-10', 'RR-MM-DD'),
    'Shipped',
    NULL,
    144
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10327,
    TO_DATE('04-11-10', 'RR-MM-DD'),
    TO_DATE('04-11-19', 'RR-MM-DD'),
    TO_DATE('04-11-13', 'RR-MM-DD'),
    'Resolved',
    'Order was disputed and resolved on 12/1/04. The Sales Manager was involved. Customer claims the scales of the models don''t match what was discussed.',
    145
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10328,
    TO_DATE('04-11-12', 'RR-MM-DD'),
    TO_DATE('04-11-21', 'RR-MM-DD'),
    TO_DATE('04-11-18', 'RR-MM-DD'),
    'Shipped',
    'Customer very concerned about the exact color of the models. There is high risk that he may dispute the order because there is a slight color mismatch',
    278
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10329,
    TO_DATE('04-11-15', 'RR-MM-DD'),
    TO_DATE('04-11-24', 'RR-MM-DD'),
    TO_DATE('04-11-16', 'RR-MM-DD'),
    'Shipped',
    NULL,
    131
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10330,
    TO_DATE('04-11-16', 'RR-MM-DD'),
    TO_DATE('04-11-25', 'RR-MM-DD'),
    TO_DATE('04-11-21', 'RR-MM-DD'),
    'Shipped',
    NULL,
    385
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10331,
    TO_DATE('04-11-17', 'RR-MM-DD'),
    TO_DATE('04-11-23', 'RR-MM-DD'),
    TO_DATE('04-11-23', 'RR-MM-DD'),
    'Shipped',
    'Customer requested special shippment. The instructions were passed along to the warehouse',
    486
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10332,
    TO_DATE('04-11-17', 'RR-MM-DD'),
    TO_DATE('04-11-25', 'RR-MM-DD'),
    TO_DATE('04-11-18', 'RR-MM-DD'),
    'Shipped',
    NULL,
    187
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10333,
    TO_DATE('04-11-18', 'RR-MM-DD'),
    TO_DATE('04-11-27', 'RR-MM-DD'),
    TO_DATE('04-11-20', 'RR-MM-DD'),
    'Shipped',
    NULL,
    129
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10334,
    TO_DATE('04-11-19', 'RR-MM-DD'),
    TO_DATE('04-11-28', 'RR-MM-DD'),
    NULL,
    'On Hold',
    'The outstaniding balance for this customer exceeds their credit limit. Order will be shipped when a payment is received.',
    144
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10335,
    TO_DATE('04-11-19', 'RR-MM-DD'),
    TO_DATE('04-11-29', 'RR-MM-DD'),
    TO_DATE('04-11-23', 'RR-MM-DD'),
    'Shipped',
    NULL,
    124
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10336,
    TO_DATE('04-11-20', 'RR-MM-DD'),
    TO_DATE('04-11-26', 'RR-MM-DD'),
    TO_DATE('04-11-24', 'RR-MM-DD'),
    'Shipped',
    'Customer requested that DHL is used for this shipping',
    172
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10337,
    TO_DATE('04-11-21', 'RR-MM-DD'),
    TO_DATE('04-11-30', 'RR-MM-DD'),
    TO_DATE('04-11-26', 'RR-MM-DD'),
    'Shipped',
    NULL,
    424
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10338,
    TO_DATE('04-11-22', 'RR-MM-DD'),
    TO_DATE('04-12-02', 'RR-MM-DD'),
    TO_DATE('04-11-27', 'RR-MM-DD'),
    'Shipped',
    NULL,
    381
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10339,
    TO_DATE('04-11-23', 'RR-MM-DD'),
    TO_DATE('04-11-30', 'RR-MM-DD'),
    TO_DATE('04-11-30', 'RR-MM-DD'),
    'Shipped',
    NULL,
    398
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10340,
    TO_DATE('04-11-24', 'RR-MM-DD'),
    TO_DATE('04-12-01', 'RR-MM-DD'),
    TO_DATE('04-11-25', 'RR-MM-DD'),
    'Shipped',
    'Customer is interested in buying more Ferrari models',
    216
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10341,
    TO_DATE('04-11-24', 'RR-MM-DD'),
    TO_DATE('04-12-01', 'RR-MM-DD'),
    TO_DATE('04-11-29', 'RR-MM-DD'),
    'Shipped',
    NULL,
    382
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10342,
    TO_DATE('04-11-24', 'RR-MM-DD'),
    TO_DATE('04-12-01', 'RR-MM-DD'),
    TO_DATE('04-11-29', 'RR-MM-DD'),
    'Shipped',
    NULL,
    114
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10343,
    TO_DATE('04-11-24', 'RR-MM-DD'),
    TO_DATE('04-12-01', 'RR-MM-DD'),
    TO_DATE('04-11-26', 'RR-MM-DD'),
    'Shipped',
    NULL,
    353
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10344,
    TO_DATE('04-11-25', 'RR-MM-DD'),
    TO_DATE('04-12-02', 'RR-MM-DD'),
    TO_DATE('04-11-29', 'RR-MM-DD'),
    'Shipped',
    NULL,
    350
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10345,
    TO_DATE('04-11-25', 'RR-MM-DD'),
    TO_DATE('04-12-01', 'RR-MM-DD'),
    TO_DATE('04-11-26', 'RR-MM-DD'),
    'Shipped',
    NULL,
    103
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10346,
    TO_DATE('04-11-29', 'RR-MM-DD'),
    TO_DATE('04-12-05', 'RR-MM-DD'),
    TO_DATE('04-11-30', 'RR-MM-DD'),
    'Shipped',
    NULL,
    112
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10347,
    TO_DATE('04-11-29', 'RR-MM-DD'),
    TO_DATE('04-12-07', 'RR-MM-DD'),
    TO_DATE('04-11-30', 'RR-MM-DD'),
    'Shipped',
    'Can we deliver the new Ford Mustang models by end-of-quarter?',
    114
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10348,
    TO_DATE('04-11-01', 'RR-MM-DD'),
    TO_DATE('04-11-08', 'RR-MM-DD'),
    TO_DATE('04-11-05', 'RR-MM-DD'),
    'Shipped',
    NULL,
    458
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10349,
    TO_DATE('04-12-01', 'RR-MM-DD'),
    TO_DATE('04-12-07', 'RR-MM-DD'),
    TO_DATE('04-12-03', 'RR-MM-DD'),
    'Shipped',
    NULL,
    151
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10350,
    TO_DATE('04-12-02', 'RR-MM-DD'),
    TO_DATE('04-12-08', 'RR-MM-DD'),
    TO_DATE('04-12-05', 'RR-MM-DD'),
    'Shipped',
    NULL,
    141
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10351,
    TO_DATE('04-12-03', 'RR-MM-DD'),
    TO_DATE('04-12-11', 'RR-MM-DD'),
    TO_DATE('04-12-07', 'RR-MM-DD'),
    'Shipped',
    NULL,
    324
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10352,
    TO_DATE('04-12-03', 'RR-MM-DD'),
    TO_DATE('04-12-12', 'RR-MM-DD'),
    TO_DATE('04-12-09', 'RR-MM-DD'),
    'Shipped',
    NULL,
    198
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10353,
    TO_DATE('04-12-04', 'RR-MM-DD'),
    TO_DATE('04-12-11', 'RR-MM-DD'),
    TO_DATE('04-12-05', 'RR-MM-DD'),
    'Shipped',
    NULL,
    447
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10354,
    TO_DATE('04-12-04', 'RR-MM-DD'),
    TO_DATE('04-12-10', 'RR-MM-DD'),
    TO_DATE('04-12-05', 'RR-MM-DD'),
    'Shipped',
    NULL,
    323
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10355,
    TO_DATE('04-12-07', 'RR-MM-DD'),
    TO_DATE('04-12-14', 'RR-MM-DD'),
    TO_DATE('04-12-13', 'RR-MM-DD'),
    'Shipped',
    NULL,
    141
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10356,
    TO_DATE('04-12-09', 'RR-MM-DD'),
    TO_DATE('04-12-15', 'RR-MM-DD'),
    TO_DATE('04-12-12', 'RR-MM-DD'),
    'Shipped',
    NULL,
    250
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10357,
    TO_DATE('04-12-10', 'RR-MM-DD'),
    TO_DATE('04-12-16', 'RR-MM-DD'),
    TO_DATE('04-12-14', 'RR-MM-DD'),
    'Shipped',
    NULL,
    124
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10358,
    TO_DATE('04-12-10', 'RR-MM-DD'),
    TO_DATE('04-12-16', 'RR-MM-DD'),
    TO_DATE('04-12-16', 'RR-MM-DD'),
    'Shipped',
    'Customer requested that DHL is used for this shipping',
    141
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10359,
    TO_DATE('04-12-15', 'RR-MM-DD'),
    TO_DATE('04-12-23', 'RR-MM-DD'),
    TO_DATE('04-12-18', 'RR-MM-DD'),
    'Shipped',
    NULL,
    353
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10360,
    TO_DATE('04-12-16', 'RR-MM-DD'),
    TO_DATE('04-12-22', 'RR-MM-DD'),
    TO_DATE('04-12-18', 'RR-MM-DD'),
    'Shipped',
    NULL,
    496
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10361,
    TO_DATE('04-12-17', 'RR-MM-DD'),
    TO_DATE('04-12-24', 'RR-MM-DD'),
    TO_DATE('04-12-20', 'RR-MM-DD'),
    'Shipped',
    NULL,
    282
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10362,
    TO_DATE('05-01-05', 'RR-MM-DD'),
    TO_DATE('05-01-16', 'RR-MM-DD'),
    TO_DATE('05-01-10', 'RR-MM-DD'),
    'Shipped',
    NULL,
    161
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10363,
    TO_DATE('05-01-06', 'RR-MM-DD'),
    TO_DATE('05-01-12', 'RR-MM-DD'),
    TO_DATE('05-01-10', 'RR-MM-DD'),
    'Shipped',
    NULL,
    334
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10364,
    TO_DATE('05-01-06', 'RR-MM-DD'),
    TO_DATE('05-01-17', 'RR-MM-DD'),
    TO_DATE('05-01-09', 'RR-MM-DD'),
    'Shipped',
    NULL,
    350
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10365,
    TO_DATE('05-01-07', 'RR-MM-DD'),
    TO_DATE('05-01-18', 'RR-MM-DD'),
    TO_DATE('05-01-11', 'RR-MM-DD'),
    'Shipped',
    NULL,
    320
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10366,
    TO_DATE('05-01-10', 'RR-MM-DD'),
    TO_DATE('05-01-19', 'RR-MM-DD'),
    TO_DATE('05-01-12', 'RR-MM-DD'),
    'Shipped',
    NULL,
    381
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10367,
    TO_DATE('05-01-12', 'RR-MM-DD'),
    TO_DATE('05-01-21', 'RR-MM-DD'),
    TO_DATE('05-01-16', 'RR-MM-DD'),
    'Resolved',
    'This order was disputed and resolved on 2/1/2005. Customer claimed that container with shipment was damaged. FedEx''s investigation proved this wrong.',
    205
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10368,
    TO_DATE('05-01-19', 'RR-MM-DD'),
    TO_DATE('05-01-27', 'RR-MM-DD'),
    TO_DATE('05-01-24', 'RR-MM-DD'),
    'Shipped',
    'Can we renegotiate this one?',
    124
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10369,
    TO_DATE('05-01-20', 'RR-MM-DD'),
    TO_DATE('05-01-28', 'RR-MM-DD'),
    TO_DATE('05-01-24', 'RR-MM-DD'),
    'Shipped',
    NULL,
    379
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10370,
    TO_DATE('05-01-20', 'RR-MM-DD'),
    TO_DATE('05-02-01', 'RR-MM-DD'),
    TO_DATE('05-01-25', 'RR-MM-DD'),
    'Shipped',
    NULL,
    276
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10371,
    TO_DATE('05-01-23', 'RR-MM-DD'),
    TO_DATE('05-02-03', 'RR-MM-DD'),
    TO_DATE('05-01-25', 'RR-MM-DD'),
    'Shipped',
    NULL,
    124
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10372,
    TO_DATE('05-01-26', 'RR-MM-DD'),
    TO_DATE('05-02-05', 'RR-MM-DD'),
    TO_DATE('05-01-28', 'RR-MM-DD'),
    'Shipped',
    NULL,
    398
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10373,
    TO_DATE('05-01-31', 'RR-MM-DD'),
    TO_DATE('05-02-08', 'RR-MM-DD'),
    TO_DATE('05-02-06', 'RR-MM-DD'),
    'Shipped',
    NULL,
    311
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10374,
    TO_DATE('05-02-02', 'RR-MM-DD'),
    TO_DATE('05-02-09', 'RR-MM-DD'),
    TO_DATE('05-02-03', 'RR-MM-DD'),
    'Shipped',
    NULL,
    333
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10375,
    TO_DATE('05-02-03', 'RR-MM-DD'),
    TO_DATE('05-02-10', 'RR-MM-DD'),
    TO_DATE('05-02-06', 'RR-MM-DD'),
    'Shipped',
    NULL,
    119
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10376,
    TO_DATE('05-02-08', 'RR-MM-DD'),
    TO_DATE('05-02-18', 'RR-MM-DD'),
    TO_DATE('05-02-13', 'RR-MM-DD'),
    'Shipped',
    NULL,
    219
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10377,
    TO_DATE('05-02-09', 'RR-MM-DD'),
    TO_DATE('05-02-21', 'RR-MM-DD'),
    TO_DATE('05-02-12', 'RR-MM-DD'),
    'Shipped',
    'Cautious optimism. We have happy customers here, if we can keep them well stocked.  I need all the information I can get on the planned shippments of Porches',
    186
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10378,
    TO_DATE('05-02-10', 'RR-MM-DD'),
    TO_DATE('05-02-18', 'RR-MM-DD'),
    TO_DATE('05-02-11', 'RR-MM-DD'),
    'Shipped',
    NULL,
    141
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10379,
    TO_DATE('05-02-10', 'RR-MM-DD'),
    TO_DATE('05-02-18', 'RR-MM-DD'),
    TO_DATE('05-02-11', 'RR-MM-DD'),
    'Shipped',
    NULL,
    141
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10380,
    TO_DATE('05-02-16', 'RR-MM-DD'),
    TO_DATE('05-02-24', 'RR-MM-DD'),
    TO_DATE('05-02-18', 'RR-MM-DD'),
    'Shipped',
    NULL,
    141
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10381,
    TO_DATE('05-02-17', 'RR-MM-DD'),
    TO_DATE('05-02-25', 'RR-MM-DD'),
    TO_DATE('05-02-18', 'RR-MM-DD'),
    'Shipped',
    NULL,
    321
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10382,
    TO_DATE('05-02-17', 'RR-MM-DD'),
    TO_DATE('05-02-23', 'RR-MM-DD'),
    TO_DATE('05-02-18', 'RR-MM-DD'),
    'Shipped',
    'Custom shipping instructions sent to warehouse',
    124
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10383,
    TO_DATE('05-02-22', 'RR-MM-DD'),
    TO_DATE('05-03-02', 'RR-MM-DD'),
    TO_DATE('05-02-25', 'RR-MM-DD'),
    'Shipped',
    NULL,
    141
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10384,
    TO_DATE('05-02-23', 'RR-MM-DD'),
    TO_DATE('05-03-06', 'RR-MM-DD'),
    TO_DATE('05-02-27', 'RR-MM-DD'),
    'Shipped',
    NULL,
    321
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10385,
    TO_DATE('05-02-28', 'RR-MM-DD'),
    TO_DATE('05-03-09', 'RR-MM-DD'),
    TO_DATE('05-03-01', 'RR-MM-DD'),
    'Shipped',
    NULL,
    124
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10386,
    TO_DATE('05-03-01', 'RR-MM-DD'),
    TO_DATE('05-03-09', 'RR-MM-DD'),
    TO_DATE('05-03-06', 'RR-MM-DD'),
    'Resolved',
    'Disputed then Resolved on 3/15/2005. Customer doesn''t like the craftsmaship of the models.',
    141
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10387,
    TO_DATE('05-03-02', 'RR-MM-DD'),
    TO_DATE('05-03-09', 'RR-MM-DD'),
    TO_DATE('05-03-06', 'RR-MM-DD'),
    'Shipped',
    'We need to keep in close contact with their Marketing VP. He is the decision maker for all their purchases.',
    148
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10388,
    TO_DATE('05-03-03', 'RR-MM-DD'),
    TO_DATE('05-03-11', 'RR-MM-DD'),
    TO_DATE('05-03-09', 'RR-MM-DD'),
    'Shipped',
    NULL,
    462
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10389,
    TO_DATE('05-03-03', 'RR-MM-DD'),
    TO_DATE('05-03-09', 'RR-MM-DD'),
    TO_DATE('05-03-08', 'RR-MM-DD'),
    'Shipped',
    NULL,
    448
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10390,
    TO_DATE('05-03-04', 'RR-MM-DD'),
    TO_DATE('05-03-11', 'RR-MM-DD'),
    TO_DATE('05-03-07', 'RR-MM-DD'),
    'Shipped',
    'They want to reevaluate their terms agreement with Finance.',
    124
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10391,
    TO_DATE('05-03-09', 'RR-MM-DD'),
    TO_DATE('05-03-20', 'RR-MM-DD'),
    TO_DATE('05-03-15', 'RR-MM-DD'),
    'Shipped',
    NULL,
    276
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10392,
    TO_DATE('05-03-10', 'RR-MM-DD'),
    TO_DATE('05-03-18', 'RR-MM-DD'),
    TO_DATE('05-03-12', 'RR-MM-DD'),
    'Shipped',
    NULL,
    452
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10393,
    TO_DATE('05-03-11', 'RR-MM-DD'),
    TO_DATE('05-03-22', 'RR-MM-DD'),
    TO_DATE('05-03-14', 'RR-MM-DD'),
    'Shipped',
    'They want to reevaluate their terms agreement with Finance.',
    323
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10394,
    TO_DATE('05-03-15', 'RR-MM-DD'),
    TO_DATE('05-03-25', 'RR-MM-DD'),
    TO_DATE('05-03-19', 'RR-MM-DD'),
    'Shipped',
    NULL,
    141
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10395,
    TO_DATE('05-03-17', 'RR-MM-DD'),
    TO_DATE('05-03-24', 'RR-MM-DD'),
    TO_DATE('05-03-23', 'RR-MM-DD'),
    'Shipped',
    'We must be cautions with this customer. Their VP of Sales resigned. Company may be heading down.',
    250
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10396,
    TO_DATE('05-03-23', 'RR-MM-DD'),
    TO_DATE('05-04-02', 'RR-MM-DD'),
    TO_DATE('05-03-28', 'RR-MM-DD'),
    'Shipped',
    NULL,
    124
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10397,
    TO_DATE('05-03-28', 'RR-MM-DD'),
    TO_DATE('05-04-09', 'RR-MM-DD'),
    TO_DATE('05-04-01', 'RR-MM-DD'),
    'Shipped',
    NULL,
    242
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10398,
    TO_DATE('05-03-30', 'RR-MM-DD'),
    TO_DATE('05-04-09', 'RR-MM-DD'),
    TO_DATE('05-03-31', 'RR-MM-DD'),
    'Shipped',
    NULL,
    353
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10399,
    TO_DATE('05-04-01', 'RR-MM-DD'),
    TO_DATE('05-04-12', 'RR-MM-DD'),
    TO_DATE('05-04-03', 'RR-MM-DD'),
    'Shipped',
    NULL,
    496
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10400,
    TO_DATE('05-04-01', 'RR-MM-DD'),
    TO_DATE('05-04-11', 'RR-MM-DD'),
    TO_DATE('05-04-04', 'RR-MM-DD'),
    'Shipped',
    'Customer requested that DHL is used for this shipping',
    450
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10401,
    TO_DATE('05-04-03', 'RR-MM-DD'),
    TO_DATE('05-04-14', 'RR-MM-DD'),
    NULL,
    'On Hold',
    'Customer credit limit exceeded. Will ship when a payment is received.',
    328
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10402,
    TO_DATE('05-04-07', 'RR-MM-DD'),
    TO_DATE('05-04-14', 'RR-MM-DD'),
    TO_DATE('05-04-12', 'RR-MM-DD'),
    'Shipped',
    NULL,
    406
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10403,
    TO_DATE('05-04-08', 'RR-MM-DD'),
    TO_DATE('05-04-18', 'RR-MM-DD'),
    TO_DATE('05-04-11', 'RR-MM-DD'),
    'Shipped',
    NULL,
    201
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10404,
    TO_DATE('05-04-08', 'RR-MM-DD'),
    TO_DATE('05-04-14', 'RR-MM-DD'),
    TO_DATE('05-04-11', 'RR-MM-DD'),
    'Shipped',
    NULL,
    323
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10405,
    TO_DATE('05-04-14', 'RR-MM-DD'),
    TO_DATE('05-04-24', 'RR-MM-DD'),
    TO_DATE('05-04-20', 'RR-MM-DD'),
    'Shipped',
    NULL,
    209
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10406,
    TO_DATE('05-04-15', 'RR-MM-DD'),
    TO_DATE('05-04-25', 'RR-MM-DD'),
    TO_DATE('05-04-21', 'RR-MM-DD'),
    'Disputed',
    'Customer claims container with shipment was damaged during shipping and some items were missing. I am talking to FedEx about this.',
    145
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10407,
    TO_DATE('05-04-22', 'RR-MM-DD'),
    TO_DATE('05-05-04', 'RR-MM-DD'),
    NULL,
    'On Hold',
    'Customer credit limit exceeded. Will ship when a payment is received.',
    450
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10408,
    TO_DATE('05-04-22', 'RR-MM-DD'),
    TO_DATE('05-04-29', 'RR-MM-DD'),
    TO_DATE('05-04-27', 'RR-MM-DD'),
    'Shipped',
    NULL,
    398
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10409,
    TO_DATE('05-04-23', 'RR-MM-DD'),
    TO_DATE('05-05-05', 'RR-MM-DD'),
    TO_DATE('05-04-24', 'RR-MM-DD'),
    'Shipped',
    NULL,
    166
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10410,
    TO_DATE('05-04-29', 'RR-MM-DD'),
    TO_DATE('05-05-10', 'RR-MM-DD'),
    TO_DATE('05-04-30', 'RR-MM-DD'),
    'Shipped',
    NULL,
    357
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10411,
    TO_DATE('05-05-01', 'RR-MM-DD'),
    TO_DATE('05-05-08', 'RR-MM-DD'),
    TO_DATE('05-05-06', 'RR-MM-DD'),
    'Shipped',
    NULL,
    233
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10412,
    TO_DATE('05-05-03', 'RR-MM-DD'),
    TO_DATE('05-05-13', 'RR-MM-DD'),
    TO_DATE('05-05-05', 'RR-MM-DD'),
    'Shipped',
    NULL,
    141
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10413,
    TO_DATE('05-05-05', 'RR-MM-DD'),
    TO_DATE('05-05-14', 'RR-MM-DD'),
    TO_DATE('05-05-09', 'RR-MM-DD'),
    'Shipped',
    'Customer requested that DHL is used for this shipping',
    175
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10414,
    TO_DATE('05-05-06', 'RR-MM-DD'),
    TO_DATE('05-05-13', 'RR-MM-DD'),
    NULL,
    'On Hold',
    'Customer credit limit exceeded. Will ship when a payment is received.',
    362
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10415,
    TO_DATE('05-05-09', 'RR-MM-DD'),
    TO_DATE('05-05-20', 'RR-MM-DD'),
    TO_DATE('05-05-12', 'RR-MM-DD'),
    'Disputed',
    'Customer claims the scales of the models don''t match what was discussed. I keep all the paperwork though to prove otherwise',
    471
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10416,
    TO_DATE('05-05-10', 'RR-MM-DD'),
    TO_DATE('05-05-16', 'RR-MM-DD'),
    TO_DATE('05-05-14', 'RR-MM-DD'),
    'Shipped',
    NULL,
    386
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10417,
    TO_DATE('05-05-13', 'RR-MM-DD'),
    TO_DATE('05-05-19', 'RR-MM-DD'),
    TO_DATE('05-05-19', 'RR-MM-DD'),
    'Disputed',
    'Customer doesn''t like the colors and precision of the models.',
    141
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10418,
    TO_DATE('05-05-16', 'RR-MM-DD'),
    TO_DATE('05-05-24', 'RR-MM-DD'),
    TO_DATE('05-05-20', 'RR-MM-DD'),
    'Shipped',
    NULL,
    412
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10419,
    TO_DATE('05-05-17', 'RR-MM-DD'),
    TO_DATE('05-05-28', 'RR-MM-DD'),
    TO_DATE('05-05-19', 'RR-MM-DD'),
    'Shipped',
    NULL,
    382
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10420,
    TO_DATE('05-05-29', 'RR-MM-DD'),
    TO_DATE('05-06-07', 'RR-MM-DD'),
    NULL,
    'In Process',
    NULL,
    282
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10421,
    TO_DATE('05-05-29', 'RR-MM-DD'),
    TO_DATE('05-06-06', 'RR-MM-DD'),
    NULL,
    'In Process',
    'Custom shipping instructions were sent to warehouse',
    124
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10422,
    TO_DATE('05-05-30', 'RR-MM-DD'),
    TO_DATE('05-06-11', 'RR-MM-DD'),
    NULL,
    'In Process',
    NULL,
    157
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10423,
    TO_DATE('05-05-30', 'RR-MM-DD'),
    TO_DATE('05-06-05', 'RR-MM-DD'),
    NULL,
    'In Process',
    NULL,
    314
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10424,
    TO_DATE('05-05-31', 'RR-MM-DD'),
    TO_DATE('05-06-08', 'RR-MM-DD'),
    NULL,
    'In Process',
    NULL,
    141
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10425,
    TO_DATE('05-05-31', 'RR-MM-DD'),
    TO_DATE('05-06-07', 'RR-MM-DD'),
    NULL,
    'In Process',
    NULL,
    119
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10100,
    TO_DATE('03-01-06', 'RR-MM-DD'),
    TO_DATE('03-01-13', 'RR-MM-DD'),
    TO_DATE('03-01-10', 'RR-MM-DD'),
    'Shipped',
    NULL,
    363
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10101,
    TO_DATE('03-01-09', 'RR-MM-DD'),
    TO_DATE('03-01-18', 'RR-MM-DD'),
    TO_DATE('03-01-11', 'RR-MM-DD'),
    'Shipped',
    'Check on availability.',
    128
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10102,
    TO_DATE('03-01-10', 'RR-MM-DD'),
    TO_DATE('03-01-18', 'RR-MM-DD'),
    TO_DATE('03-01-14', 'RR-MM-DD'),
    'Shipped',
    NULL,
    181
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10103,
    TO_DATE('03-01-29', 'RR-MM-DD'),
    TO_DATE('03-02-07', 'RR-MM-DD'),
    TO_DATE('03-02-02', 'RR-MM-DD'),
    'Shipped',
    NULL,
    121
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10104,
    TO_DATE('03-01-31', 'RR-MM-DD'),
    TO_DATE('03-02-09', 'RR-MM-DD'),
    TO_DATE('03-02-01', 'RR-MM-DD'),
    'Shipped',
    NULL,
    141
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10105,
    TO_DATE('03-02-11', 'RR-MM-DD'),
    TO_DATE('03-02-21', 'RR-MM-DD'),
    TO_DATE('03-02-12', 'RR-MM-DD'),
    'Shipped',
    NULL,
    145
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10106,
    TO_DATE('03-02-17', 'RR-MM-DD'),
    TO_DATE('03-02-24', 'RR-MM-DD'),
    TO_DATE('03-02-21', 'RR-MM-DD'),
    'Shipped',
    NULL,
    278
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10107,
    TO_DATE('03-02-24', 'RR-MM-DD'),
    TO_DATE('03-03-03', 'RR-MM-DD'),
    TO_DATE('03-02-26', 'RR-MM-DD'),
    'Shipped',
    'Difficult to negotiate with customer. We need more marketing materials',
    131
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10108,
    TO_DATE('03-03-03', 'RR-MM-DD'),
    TO_DATE('03-03-12', 'RR-MM-DD'),
    TO_DATE('03-03-08', 'RR-MM-DD'),
    'Shipped',
    NULL,
    385
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10109,
    TO_DATE('03-03-10', 'RR-MM-DD'),
    TO_DATE('03-03-19', 'RR-MM-DD'),
    TO_DATE('03-03-11', 'RR-MM-DD'),
    'Shipped',
    'Customer requested that FedEx Ground is used for this shipping',
    486
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10110,
    TO_DATE('03-03-18', 'RR-MM-DD'),
    TO_DATE('03-03-24', 'RR-MM-DD'),
    TO_DATE('03-03-20', 'RR-MM-DD'),
    'Shipped',
    NULL,
    187
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10111,
    TO_DATE('03-03-25', 'RR-MM-DD'),
    TO_DATE('03-03-31', 'RR-MM-DD'),
    TO_DATE('03-03-30', 'RR-MM-DD'),
    'Shipped',
    NULL,
    129
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10112,
    TO_DATE('03-03-24', 'RR-MM-DD'),
    TO_DATE('03-04-03', 'RR-MM-DD'),
    TO_DATE('03-03-29', 'RR-MM-DD'),
    'Shipped',
    'Customer requested that ad materials (such as posters, pamphlets) be included in the shippment',
    144
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10113,
    TO_DATE('03-03-26', 'RR-MM-DD'),
    TO_DATE('03-04-02', 'RR-MM-DD'),
    TO_DATE('03-03-27', 'RR-MM-DD'),
    'Shipped',
    NULL,
    124
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10114,
    TO_DATE('03-04-01', 'RR-MM-DD'),
    TO_DATE('03-04-07', 'RR-MM-DD'),
    TO_DATE('03-04-02', 'RR-MM-DD'),
    'Shipped',
    NULL,
    172
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10115,
    TO_DATE('03-04-04', 'RR-MM-DD'),
    TO_DATE('03-04-12', 'RR-MM-DD'),
    TO_DATE('03-04-07', 'RR-MM-DD'),
    'Shipped',
    NULL,
    424
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10116,
    TO_DATE('03-04-11', 'RR-MM-DD'),
    TO_DATE('03-04-19', 'RR-MM-DD'),
    TO_DATE('03-04-13', 'RR-MM-DD'),
    'Shipped',
    NULL,
    381
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10117,
    TO_DATE('03-04-16', 'RR-MM-DD'),
    TO_DATE('03-04-24', 'RR-MM-DD'),
    TO_DATE('03-04-17', 'RR-MM-DD'),
    'Shipped',
    NULL,
    148
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10118,
    TO_DATE('03-04-21', 'RR-MM-DD'),
    TO_DATE('03-04-29', 'RR-MM-DD'),
    TO_DATE('03-04-26', 'RR-MM-DD'),
    'Shipped',
    'Customer has worked with some of our vendors in the past and is aware of their MSRP',
    216
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10119,
    TO_DATE('03-04-28', 'RR-MM-DD'),
    TO_DATE('03-05-05', 'RR-MM-DD'),
    TO_DATE('03-05-02', 'RR-MM-DD'),
    'Shipped',
    NULL,
    382
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10120,
    TO_DATE('03-04-29', 'RR-MM-DD'),
    TO_DATE('03-05-08', 'RR-MM-DD'),
    TO_DATE('03-05-01', 'RR-MM-DD'),
    'Shipped',
    NULL,
    114
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10121,
    TO_DATE('03-05-07', 'RR-MM-DD'),
    TO_DATE('03-05-13', 'RR-MM-DD'),
    TO_DATE('03-05-13', 'RR-MM-DD'),
    'Shipped',
    NULL,
    353
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10122,
    TO_DATE('03-05-08', 'RR-MM-DD'),
    TO_DATE('03-05-16', 'RR-MM-DD'),
    TO_DATE('03-05-13', 'RR-MM-DD'),
    'Shipped',
    NULL,
    350
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10123,
    TO_DATE('03-05-20', 'RR-MM-DD'),
    TO_DATE('03-05-29', 'RR-MM-DD'),
    TO_DATE('03-05-22', 'RR-MM-DD'),
    'Shipped',
    NULL,
    103
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10124,
    TO_DATE('03-05-21', 'RR-MM-DD'),
    TO_DATE('03-05-29', 'RR-MM-DD'),
    TO_DATE('03-05-25', 'RR-MM-DD'),
    'Shipped',
    'Customer very concerned about the exact color of the models. There is high risk that he may dispute the order because there is a slight color mismatch',
    112
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10125,
    TO_DATE('03-05-21', 'RR-MM-DD'),
    TO_DATE('03-05-27', 'RR-MM-DD'),
    TO_DATE('03-05-24', 'RR-MM-DD'),
    'Shipped',
    NULL,
    114
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10126,
    TO_DATE('03-05-28', 'RR-MM-DD'),
    TO_DATE('03-06-07', 'RR-MM-DD'),
    TO_DATE('03-06-02', 'RR-MM-DD'),
    'Shipped',
    NULL,
    458
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10127,
    TO_DATE('03-06-03', 'RR-MM-DD'),
    TO_DATE('03-06-09', 'RR-MM-DD'),
    TO_DATE('03-06-06', 'RR-MM-DD'),
    'Shipped',
    'Customer requested special shippment. The instructions were passed along to the warehouse',
    151
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10128,
    TO_DATE('03-06-06', 'RR-MM-DD'),
    TO_DATE('03-06-12', 'RR-MM-DD'),
    TO_DATE('03-06-11', 'RR-MM-DD'),
    'Shipped',
    NULL,
    141
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10129,
    TO_DATE('03-06-12', 'RR-MM-DD'),
    TO_DATE('03-06-18', 'RR-MM-DD'),
    TO_DATE('03-06-14', 'RR-MM-DD'),
    'Shipped',
    NULL,
    324
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10130,
    TO_DATE('03-06-16', 'RR-MM-DD'),
    TO_DATE('03-06-24', 'RR-MM-DD'),
    TO_DATE('03-06-21', 'RR-MM-DD'),
    'Shipped',
    NULL,
    198
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10131,
    TO_DATE('03-06-16', 'RR-MM-DD'),
    TO_DATE('03-06-25', 'RR-MM-DD'),
    TO_DATE('03-06-21', 'RR-MM-DD'),
    'Shipped',
    NULL,
    447
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10132,
    TO_DATE('03-06-25', 'RR-MM-DD'),
    TO_DATE('03-07-01', 'RR-MM-DD'),
    TO_DATE('03-06-28', 'RR-MM-DD'),
    'Shipped',
    NULL,
    323
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10133,
    TO_DATE('03-06-27', 'RR-MM-DD'),
    TO_DATE('03-07-04', 'RR-MM-DD'),
    TO_DATE('03-07-03', 'RR-MM-DD'),
    'Shipped',
    NULL,
    141
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10134,
    TO_DATE('03-07-01', 'RR-MM-DD'),
    TO_DATE('03-07-10', 'RR-MM-DD'),
    TO_DATE('03-07-05', 'RR-MM-DD'),
    'Shipped',
    NULL,
    250
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10135,
    TO_DATE('03-07-02', 'RR-MM-DD'),
    TO_DATE('03-07-12', 'RR-MM-DD'),
    TO_DATE('03-07-03', 'RR-MM-DD'),
    'Shipped',
    NULL,
    124
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10136,
    TO_DATE('03-07-04', 'RR-MM-DD'),
    TO_DATE('03-07-14', 'RR-MM-DD'),
    TO_DATE('03-07-06', 'RR-MM-DD'),
    'Shipped',
    'Customer is interested in buying more Ferrari models',
    242
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10137,
    TO_DATE('03-07-10', 'RR-MM-DD'),
    TO_DATE('03-07-20', 'RR-MM-DD'),
    TO_DATE('03-07-14', 'RR-MM-DD'),
    'Shipped',
    NULL,
    353
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10138,
    TO_DATE('03-07-07', 'RR-MM-DD'),
    TO_DATE('03-07-16', 'RR-MM-DD'),
    TO_DATE('03-07-13', 'RR-MM-DD'),
    'Shipped',
    NULL,
    496
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10139,
    TO_DATE('03-07-16', 'RR-MM-DD'),
    TO_DATE('03-07-23', 'RR-MM-DD'),
    TO_DATE('03-07-21', 'RR-MM-DD'),
    'Shipped',
    NULL,
    282
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10140,
    TO_DATE('03-07-24', 'RR-MM-DD'),
    TO_DATE('03-08-02', 'RR-MM-DD'),
    TO_DATE('03-07-30', 'RR-MM-DD'),
    'Shipped',
    NULL,
    161
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10141,
    TO_DATE('03-08-01', 'RR-MM-DD'),
    TO_DATE('03-08-09', 'RR-MM-DD'),
    TO_DATE('03-08-04', 'RR-MM-DD'),
    'Shipped',
    NULL,
    334
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10142,
    TO_DATE('03-08-08', 'RR-MM-DD'),
    TO_DATE('03-08-16', 'RR-MM-DD'),
    TO_DATE('03-08-13', 'RR-MM-DD'),
    'Shipped',
    NULL,
    124
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10143,
    TO_DATE('03-08-10', 'RR-MM-DD'),
    TO_DATE('03-08-18', 'RR-MM-DD'),
    TO_DATE('03-08-12', 'RR-MM-DD'),
    'Shipped',
    'Can we deliver the new Ford Mustang models by end-of-quarter?',
    320
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10144,
    TO_DATE('03-08-13', 'RR-MM-DD'),
    TO_DATE('03-08-21', 'RR-MM-DD'),
    TO_DATE('03-08-14', 'RR-MM-DD'),
    'Shipped',
    NULL,
    381
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10145,
    TO_DATE('03-08-25', 'RR-MM-DD'),
    TO_DATE('03-09-02', 'RR-MM-DD'),
    TO_DATE('03-08-31', 'RR-MM-DD'),
    'Shipped',
    NULL,
    205
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10146,
    TO_DATE('03-09-03', 'RR-MM-DD'),
    TO_DATE('03-09-13', 'RR-MM-DD'),
    TO_DATE('03-09-06', 'RR-MM-DD'),
    'Shipped',
    NULL,
    447
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10147,
    TO_DATE('03-09-05', 'RR-MM-DD'),
    TO_DATE('03-09-12', 'RR-MM-DD'),
    TO_DATE('03-09-09', 'RR-MM-DD'),
    'Shipped',
    NULL,
    379
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10148,
    TO_DATE('03-09-11', 'RR-MM-DD'),
    TO_DATE('03-09-21', 'RR-MM-DD'),
    TO_DATE('03-09-15', 'RR-MM-DD'),
    'Shipped',
    'They want to reevaluate their terms agreement with Finance.',
    276
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10149,
    TO_DATE('03-09-12', 'RR-MM-DD'),
    TO_DATE('03-09-18', 'RR-MM-DD'),
    TO_DATE('03-09-17', 'RR-MM-DD'),
    'Shipped',
    NULL,
    487
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10150,
    TO_DATE('03-09-19', 'RR-MM-DD'),
    TO_DATE('03-09-27', 'RR-MM-DD'),
    TO_DATE('03-09-21', 'RR-MM-DD'),
    'Shipped',
    'They want to reevaluate their terms agreement with Finance.',
    148
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10151,
    TO_DATE('03-09-21', 'RR-MM-DD'),
    TO_DATE('03-09-30', 'RR-MM-DD'),
    TO_DATE('03-09-24', 'RR-MM-DD'),
    'Shipped',
    NULL,
    311
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10152,
    TO_DATE('03-09-25', 'RR-MM-DD'),
    TO_DATE('03-10-03', 'RR-MM-DD'),
    TO_DATE('03-10-01', 'RR-MM-DD'),
    'Shipped',
    NULL,
    333
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10153,
    TO_DATE('03-09-28', 'RR-MM-DD'),
    TO_DATE('03-10-05', 'RR-MM-DD'),
    TO_DATE('03-10-03', 'RR-MM-DD'),
    'Shipped',
    NULL,
    141
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10154,
    TO_DATE('03-10-02', 'RR-MM-DD'),
    TO_DATE('03-10-12', 'RR-MM-DD'),
    TO_DATE('03-10-08', 'RR-MM-DD'),
    'Shipped',
    NULL,
    219
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10155,
    TO_DATE('03-10-06', 'RR-MM-DD'),
    TO_DATE('03-10-13', 'RR-MM-DD'),
    TO_DATE('03-10-07', 'RR-MM-DD'),
    'Shipped',
    NULL,
    186
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10156,
    TO_DATE('03-10-08', 'RR-MM-DD'),
    TO_DATE('03-10-17', 'RR-MM-DD'),
    TO_DATE('03-10-11', 'RR-MM-DD'),
    'Shipped',
    NULL,
    141
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10157,
    TO_DATE('03-10-09', 'RR-MM-DD'),
    TO_DATE('03-10-15', 'RR-MM-DD'),
    TO_DATE('03-10-14', 'RR-MM-DD'),
    'Shipped',
    NULL,
    473
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10158,
    TO_DATE('03-10-10', 'RR-MM-DD'),
    TO_DATE('03-10-18', 'RR-MM-DD'),
    TO_DATE('03-10-15', 'RR-MM-DD'),
    'Shipped',
    NULL,
    121
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10159,
    TO_DATE('03-10-10', 'RR-MM-DD'),
    TO_DATE('03-10-19', 'RR-MM-DD'),
    TO_DATE('03-10-16', 'RR-MM-DD'),
    'Shipped',
    NULL,
    321
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10160,
    TO_DATE('03-10-11', 'RR-MM-DD'),
    TO_DATE('03-10-17', 'RR-MM-DD'),
    TO_DATE('03-10-17', 'RR-MM-DD'),
    'Shipped',
    NULL,
    347
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10161,
    TO_DATE('03-10-17', 'RR-MM-DD'),
    TO_DATE('03-10-25', 'RR-MM-DD'),
    TO_DATE('03-10-20', 'RR-MM-DD'),
    'Shipped',
    NULL,
    227
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10162,
    TO_DATE('03-10-18', 'RR-MM-DD'),
    TO_DATE('03-10-26', 'RR-MM-DD'),
    TO_DATE('03-10-19', 'RR-MM-DD'),
    'Shipped',
    NULL,
    321
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10163,
    TO_DATE('03-10-20', 'RR-MM-DD'),
    TO_DATE('03-10-27', 'RR-MM-DD'),
    TO_DATE('03-10-24', 'RR-MM-DD'),
    'Shipped',
    NULL,
    424
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10164,
    TO_DATE('03-10-21', 'RR-MM-DD'),
    TO_DATE('03-10-30', 'RR-MM-DD'),
    TO_DATE('03-10-23', 'RR-MM-DD'),
    'Resolved',
    'This order was disputed, but resolved on 11/1/2003; Customer doesn''t like the colors and precision of the models.',
    452
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10165,
    TO_DATE('03-10-22', 'RR-MM-DD'),
    TO_DATE('03-10-31', 'RR-MM-DD'),
    TO_DATE('03-12-26', 'RR-MM-DD'),
    'Shipped',
    'This order was on hold because customers''s credit limit had been exceeded. Order will ship when payment is received',
    148
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10166,
    TO_DATE('03-10-21', 'RR-MM-DD'),
    TO_DATE('03-10-30', 'RR-MM-DD'),
    TO_DATE('03-10-27', 'RR-MM-DD'),
    'Shipped',
    NULL,
    462
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10167,
    TO_DATE('03-10-23', 'RR-MM-DD'),
    TO_DATE('03-10-30', 'RR-MM-DD'),
    NULL,
    'Cancelled',
    'Customer called to cancel. The warehouse was notified in time and the order didn''t ship. They have a new VP of Sales and are shifting their sales model. Our VP of Sales should contact them.',
    448
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10168,
    TO_DATE('03-10-28', 'RR-MM-DD'),
    TO_DATE('03-11-03', 'RR-MM-DD'),
    TO_DATE('03-11-01', 'RR-MM-DD'),
    'Shipped',
    NULL,
    161
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10169,
    TO_DATE('03-11-04', 'RR-MM-DD'),
    TO_DATE('03-11-14', 'RR-MM-DD'),
    TO_DATE('03-11-09', 'RR-MM-DD'),
    'Shipped',
    NULL,
    276
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10170,
    TO_DATE('03-11-04', 'RR-MM-DD'),
    TO_DATE('03-11-12', 'RR-MM-DD'),
    TO_DATE('03-11-07', 'RR-MM-DD'),
    'Shipped',
    NULL,
    452
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10171,
    TO_DATE('03-11-05', 'RR-MM-DD'),
    TO_DATE('03-11-13', 'RR-MM-DD'),
    TO_DATE('03-11-07', 'RR-MM-DD'),
    'Shipped',
    NULL,
    233
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10172,
    TO_DATE('03-11-05', 'RR-MM-DD'),
    TO_DATE('03-11-14', 'RR-MM-DD'),
    TO_DATE('03-11-11', 'RR-MM-DD'),
    'Shipped',
    NULL,
    175
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10173,
    TO_DATE('03-11-05', 'RR-MM-DD'),
    TO_DATE('03-11-15', 'RR-MM-DD'),
    TO_DATE('03-11-09', 'RR-MM-DD'),
    'Shipped',
    'Cautious optimism. We have happy customers here, if we can keep them well stocked.  I need all the information I can get on the planned shippments of Porches',
    278
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10174,
    TO_DATE('03-11-06', 'RR-MM-DD'),
    TO_DATE('03-11-15', 'RR-MM-DD'),
    TO_DATE('03-11-10', 'RR-MM-DD'),
    'Shipped',
    NULL,
    333
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10175,
    TO_DATE('03-11-06', 'RR-MM-DD'),
    TO_DATE('03-11-14', 'RR-MM-DD'),
    TO_DATE('03-11-09', 'RR-MM-DD'),
    'Shipped',
    NULL,
    324
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10176,
    TO_DATE('03-11-06', 'RR-MM-DD'),
    TO_DATE('03-11-15', 'RR-MM-DD'),
    TO_DATE('03-11-12', 'RR-MM-DD'),
    'Shipped',
    NULL,
    386
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10177,
    TO_DATE('03-11-07', 'RR-MM-DD'),
    TO_DATE('03-11-17', 'RR-MM-DD'),
    TO_DATE('03-11-12', 'RR-MM-DD'),
    'Shipped',
    NULL,
    344
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10178,
    TO_DATE('03-11-08', 'RR-MM-DD'),
    TO_DATE('03-11-16', 'RR-MM-DD'),
    TO_DATE('03-11-10', 'RR-MM-DD'),
    'Shipped',
    'Custom shipping instructions sent to warehouse',
    242
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10179,
    TO_DATE('03-11-11', 'RR-MM-DD'),
    TO_DATE('03-11-17', 'RR-MM-DD'),
    TO_DATE('03-11-13', 'RR-MM-DD'),
    'Cancelled',
    'Customer cancelled due to urgent budgeting issues. Must be cautious when dealing with them in the future. Since order shipped already we must discuss who would cover the shipping charges.',
    496
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10180,
    TO_DATE('03-11-11', 'RR-MM-DD'),
    TO_DATE('03-11-19', 'RR-MM-DD'),
    TO_DATE('03-11-14', 'RR-MM-DD'),
    'Shipped',
    NULL,
    171
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10181,
    TO_DATE('03-11-12', 'RR-MM-DD'),
    TO_DATE('03-11-19', 'RR-MM-DD'),
    TO_DATE('03-11-15', 'RR-MM-DD'),
    'Shipped',
    NULL,
    167
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10182,
    TO_DATE('03-11-12', 'RR-MM-DD'),
    TO_DATE('03-11-21', 'RR-MM-DD'),
    TO_DATE('03-11-18', 'RR-MM-DD'),
    'Shipped',
    NULL,
    124
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10183,
    TO_DATE('03-11-13', 'RR-MM-DD'),
    TO_DATE('03-11-22', 'RR-MM-DD'),
    TO_DATE('03-11-15', 'RR-MM-DD'),
    'Shipped',
    'We need to keep in close contact with their Marketing VP. He is the decision maker for all their purchases.',
    339
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10184,
    TO_DATE('03-11-14', 'RR-MM-DD'),
    TO_DATE('03-11-22', 'RR-MM-DD'),
    TO_DATE('03-11-20', 'RR-MM-DD'),
    'Shipped',
    NULL,
    484
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10185,
    TO_DATE('03-11-14', 'RR-MM-DD'),
    TO_DATE('03-11-21', 'RR-MM-DD'),
    TO_DATE('03-11-20', 'RR-MM-DD'),
    'Shipped',
    NULL,
    320
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10186,
    TO_DATE('03-11-14', 'RR-MM-DD'),
    TO_DATE('03-11-20', 'RR-MM-DD'),
    TO_DATE('03-11-18', 'RR-MM-DD'),
    'Shipped',
    'They want to reevaluate their terms agreement with the VP of Sales',
    489
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10187,
    TO_DATE('03-11-15', 'RR-MM-DD'),
    TO_DATE('03-11-24', 'RR-MM-DD'),
    TO_DATE('03-11-16', 'RR-MM-DD'),
    'Shipped',
    NULL,
    211
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10188,
    TO_DATE('03-11-18', 'RR-MM-DD'),
    TO_DATE('03-11-26', 'RR-MM-DD'),
    TO_DATE('03-11-24', 'RR-MM-DD'),
    'Shipped',
    NULL,
    167
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10189,
    TO_DATE('03-11-18', 'RR-MM-DD'),
    TO_DATE('03-11-25', 'RR-MM-DD'),
    TO_DATE('03-11-24', 'RR-MM-DD'),
    'Shipped',
    'They want to reevaluate their terms agreement with Finance.',
    205
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10190,
    TO_DATE('03-11-19', 'RR-MM-DD'),
    TO_DATE('03-11-29', 'RR-MM-DD'),
    TO_DATE('03-11-20', 'RR-MM-DD'),
    'Shipped',
    NULL,
    141
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10191,
    TO_DATE('03-11-20', 'RR-MM-DD'),
    TO_DATE('03-11-30', 'RR-MM-DD'),
    TO_DATE('03-11-24', 'RR-MM-DD'),
    'Shipped',
    'We must be cautions with this customer. Their VP of Sales resigned. Company may be heading down.',
    259
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10192,
    TO_DATE('03-11-20', 'RR-MM-DD'),
    TO_DATE('03-11-29', 'RR-MM-DD'),
    TO_DATE('03-11-25', 'RR-MM-DD'),
    'Shipped',
    NULL,
    363
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10193,
    TO_DATE('03-11-21', 'RR-MM-DD'),
    TO_DATE('03-11-28', 'RR-MM-DD'),
    TO_DATE('03-11-27', 'RR-MM-DD'),
    'Shipped',
    NULL,
    471
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10194,
    TO_DATE('03-11-25', 'RR-MM-DD'),
    TO_DATE('03-12-02', 'RR-MM-DD'),
    TO_DATE('03-11-26', 'RR-MM-DD'),
    'Shipped',
    NULL,
    146
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10195,
    TO_DATE('03-11-25', 'RR-MM-DD'),
    TO_DATE('03-12-01', 'RR-MM-DD'),
    TO_DATE('03-11-28', 'RR-MM-DD'),
    'Shipped',
    NULL,
    319
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10196,
    TO_DATE('03-11-26', 'RR-MM-DD'),
    TO_DATE('03-12-03', 'RR-MM-DD'),
    TO_DATE('03-12-01', 'RR-MM-DD'),
    'Shipped',
    NULL,
    455
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10197,
    TO_DATE('03-11-26', 'RR-MM-DD'),
    TO_DATE('03-12-02', 'RR-MM-DD'),
    TO_DATE('03-12-01', 'RR-MM-DD'),
    'Shipped',
    'Customer inquired about remote controlled models and gold models.',
    216
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10198,
    TO_DATE('03-11-27', 'RR-MM-DD'),
    TO_DATE('03-12-06', 'RR-MM-DD'),
    TO_DATE('03-12-03', 'RR-MM-DD'),
    'Shipped',
    NULL,
    385
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10199,
    TO_DATE('03-12-01', 'RR-MM-DD'),
    TO_DATE('03-12-10', 'RR-MM-DD'),
    TO_DATE('03-12-06', 'RR-MM-DD'),
    'Shipped',
    NULL,
    475
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10200,
    TO_DATE('03-12-01', 'RR-MM-DD'),
    TO_DATE('03-12-09', 'RR-MM-DD'),
    TO_DATE('03-12-06', 'RR-MM-DD'),
    'Shipped',
    NULL,
    211
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10201,
    TO_DATE('03-12-01', 'RR-MM-DD'),
    TO_DATE('03-12-11', 'RR-MM-DD'),
    TO_DATE('03-12-02', 'RR-MM-DD'),
    'Shipped',
    NULL,
    129
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10202,
    TO_DATE('03-12-02', 'RR-MM-DD'),
    TO_DATE('03-12-09', 'RR-MM-DD'),
    TO_DATE('03-12-06', 'RR-MM-DD'),
    'Shipped',
    NULL,
    357
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10203,
    TO_DATE('03-12-02', 'RR-MM-DD'),
    TO_DATE('03-12-11', 'RR-MM-DD'),
    TO_DATE('03-12-07', 'RR-MM-DD'),
    'Shipped',
    NULL,
    141
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10204,
    TO_DATE('03-12-02', 'RR-MM-DD'),
    TO_DATE('03-12-10', 'RR-MM-DD'),
    TO_DATE('03-12-04', 'RR-MM-DD'),
    'Shipped',
    NULL,
    151
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10205,
    TO_DATE('03-12-03', 'RR-MM-DD'),
    TO_DATE('03-12-09', 'RR-MM-DD'),
    TO_DATE('03-12-07', 'RR-MM-DD'),
    'Shipped',
    ' I need all the information I can get on our competitors.',
    141
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10206,
    TO_DATE('03-12-05', 'RR-MM-DD'),
    TO_DATE('03-12-13', 'RR-MM-DD'),
    TO_DATE('03-12-08', 'RR-MM-DD'),
    'Shipped',
    'Can we renegotiate this one?',
    202
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10207,
    TO_DATE('03-12-09', 'RR-MM-DD'),
    TO_DATE('03-12-17', 'RR-MM-DD'),
    TO_DATE('03-12-11', 'RR-MM-DD'),
    'Shipped',
    'Check on availability.',
    495
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10208,
    TO_DATE('04-01-02', 'RR-MM-DD'),
    TO_DATE('04-01-11', 'RR-MM-DD'),
    TO_DATE('04-01-04', 'RR-MM-DD'),
    'Shipped',
    NULL,
    146
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10209,
    TO_DATE('04-01-09', 'RR-MM-DD'),
    TO_DATE('04-01-15', 'RR-MM-DD'),
    TO_DATE('04-01-12', 'RR-MM-DD'),
    'Shipped',
    NULL,
    347
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10210,
    TO_DATE('04-01-12', 'RR-MM-DD'),
    TO_DATE('04-01-22', 'RR-MM-DD'),
    TO_DATE('04-01-20', 'RR-MM-DD'),
    'Shipped',
    NULL,
    177
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10211,
    TO_DATE('04-01-15', 'RR-MM-DD'),
    TO_DATE('04-01-25', 'RR-MM-DD'),
    TO_DATE('04-01-18', 'RR-MM-DD'),
    'Shipped',
    NULL,
    406
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10212,
    TO_DATE('04-01-16', 'RR-MM-DD'),
    TO_DATE('04-01-24', 'RR-MM-DD'),
    TO_DATE('04-01-18', 'RR-MM-DD'),
    'Shipped',
    NULL,
    141
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10213,
    TO_DATE('04-01-22', 'RR-MM-DD'),
    TO_DATE('04-01-28', 'RR-MM-DD'),
    TO_DATE('04-01-27', 'RR-MM-DD'),
    'Shipped',
    'Difficult to negotiate with customer. We need more marketing materials',
    489
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10214,
    TO_DATE('04-01-26', 'RR-MM-DD'),
    TO_DATE('04-02-04', 'RR-MM-DD'),
    TO_DATE('04-01-29', 'RR-MM-DD'),
    'Shipped',
    NULL,
    458
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10215,
    TO_DATE('04-01-29', 'RR-MM-DD'),
    TO_DATE('04-02-08', 'RR-MM-DD'),
    TO_DATE('04-02-01', 'RR-MM-DD'),
    'Shipped',
    'Customer requested that FedEx Ground is used for this shipping',
    475
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10216,
    TO_DATE('04-02-02', 'RR-MM-DD'),
    TO_DATE('04-02-10', 'RR-MM-DD'),
    TO_DATE('04-02-04', 'RR-MM-DD'),
    'Shipped',
    NULL,
    256
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10217,
    TO_DATE('04-02-04', 'RR-MM-DD'),
    TO_DATE('04-02-14', 'RR-MM-DD'),
    TO_DATE('04-02-06', 'RR-MM-DD'),
    'Shipped',
    NULL,
    166
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10218,
    TO_DATE('04-02-09', 'RR-MM-DD'),
    TO_DATE('04-02-16', 'RR-MM-DD'),
    TO_DATE('04-02-11', 'RR-MM-DD'),
    'Shipped',
    'Customer requested that ad materials (such as posters, pamphlets) be included in the shippment',
    473
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10219,
    TO_DATE('04-02-10', 'RR-MM-DD'),
    TO_DATE('04-02-17', 'RR-MM-DD'),
    TO_DATE('04-02-12', 'RR-MM-DD'),
    'Shipped',
    NULL,
    487
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10220,
    TO_DATE('04-02-12', 'RR-MM-DD'),
    TO_DATE('04-02-19', 'RR-MM-DD'),
    TO_DATE('04-02-16', 'RR-MM-DD'),
    'Shipped',
    NULL,
    189
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10221,
    TO_DATE('04-02-18', 'RR-MM-DD'),
    TO_DATE('04-02-26', 'RR-MM-DD'),
    TO_DATE('04-02-19', 'RR-MM-DD'),
    'Shipped',
    NULL,
    314
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10222,
    TO_DATE('04-02-19', 'RR-MM-DD'),
    TO_DATE('04-02-27', 'RR-MM-DD'),
    TO_DATE('04-02-20', 'RR-MM-DD'),
    'Shipped',
    NULL,
    239
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10223,
    TO_DATE('04-02-20', 'RR-MM-DD'),
    TO_DATE('04-02-29', 'RR-MM-DD'),
    TO_DATE('04-02-24', 'RR-MM-DD'),
    'Shipped',
    NULL,
    114
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10224,
    TO_DATE('04-02-21', 'RR-MM-DD'),
    TO_DATE('04-03-02', 'RR-MM-DD'),
    TO_DATE('04-02-26', 'RR-MM-DD'),
    'Shipped',
    'Customer has worked with some of our vendors in the past and is aware of their MSRP',
    171
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10225,
    TO_DATE('04-02-22', 'RR-MM-DD'),
    TO_DATE('04-03-01', 'RR-MM-DD'),
    TO_DATE('04-02-24', 'RR-MM-DD'),
    'Shipped',
    NULL,
    298
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10226,
    TO_DATE('04-02-26', 'RR-MM-DD'),
    TO_DATE('04-03-06', 'RR-MM-DD'),
    TO_DATE('04-03-02', 'RR-MM-DD'),
    'Shipped',
    NULL,
    239
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10227,
    TO_DATE('04-03-02', 'RR-MM-DD'),
    TO_DATE('04-03-12', 'RR-MM-DD'),
    TO_DATE('04-03-08', 'RR-MM-DD'),
    'Shipped',
    NULL,
    146
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10228,
    TO_DATE('04-03-10', 'RR-MM-DD'),
    TO_DATE('04-03-18', 'RR-MM-DD'),
    TO_DATE('04-03-13', 'RR-MM-DD'),
    'Shipped',
    NULL,
    173
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10229,
    TO_DATE('04-03-11', 'RR-MM-DD'),
    TO_DATE('04-03-20', 'RR-MM-DD'),
    TO_DATE('04-03-12', 'RR-MM-DD'),
    'Shipped',
    NULL,
    124
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10230,
    TO_DATE('04-03-15', 'RR-MM-DD'),
    TO_DATE('04-03-24', 'RR-MM-DD'),
    TO_DATE('04-03-20', 'RR-MM-DD'),
    'Shipped',
    'Customer very concerned about the exact color of the models. There is high risk that he may dispute the order because there is a slight color mismatch',
    128
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10231,
    TO_DATE('04-03-19', 'RR-MM-DD'),
    TO_DATE('04-03-26', 'RR-MM-DD'),
    TO_DATE('04-03-25', 'RR-MM-DD'),
    'Shipped',
    NULL,
    344
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10232,
    TO_DATE('04-03-20', 'RR-MM-DD'),
    TO_DATE('04-03-30', 'RR-MM-DD'),
    TO_DATE('04-03-25', 'RR-MM-DD'),
    'Shipped',
    NULL,
    240
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10233,
    TO_DATE('04-03-29', 'RR-MM-DD'),
    TO_DATE('04-04-04', 'RR-MM-DD'),
    TO_DATE('04-04-02', 'RR-MM-DD'),
    'Shipped',
    'Customer requested special shippment. The instructions were passed along to the warehouse',
    328
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10234,
    TO_DATE('04-03-30', 'RR-MM-DD'),
    TO_DATE('04-04-05', 'RR-MM-DD'),
    TO_DATE('04-04-02', 'RR-MM-DD'),
    'Shipped',
    NULL,
    412
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10235,
    TO_DATE('04-04-02', 'RR-MM-DD'),
    TO_DATE('04-04-12', 'RR-MM-DD'),
    TO_DATE('04-04-06', 'RR-MM-DD'),
    'Shipped',
    NULL,
    260
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10236,
    TO_DATE('04-04-03', 'RR-MM-DD'),
    TO_DATE('04-04-11', 'RR-MM-DD'),
    TO_DATE('04-04-08', 'RR-MM-DD'),
    'Shipped',
    NULL,
    486
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10237,
    TO_DATE('04-04-05', 'RR-MM-DD'),
    TO_DATE('04-04-12', 'RR-MM-DD'),
    TO_DATE('04-04-10', 'RR-MM-DD'),
    'Shipped',
    NULL,
    181
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10238,
    TO_DATE('04-04-09', 'RR-MM-DD'),
    TO_DATE('04-04-16', 'RR-MM-DD'),
    TO_DATE('04-04-10', 'RR-MM-DD'),
    'Shipped',
    NULL,
    145
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10239,
    TO_DATE('04-04-12', 'RR-MM-DD'),
    TO_DATE('04-04-21', 'RR-MM-DD'),
    TO_DATE('04-04-17', 'RR-MM-DD'),
    'Shipped',
    NULL,
    311
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10240,
    TO_DATE('04-04-13', 'RR-MM-DD'),
    TO_DATE('04-04-20', 'RR-MM-DD'),
    TO_DATE('04-04-20', 'RR-MM-DD'),
    'Shipped',
    NULL,
    177
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10241,
    TO_DATE('04-04-13', 'RR-MM-DD'),
    TO_DATE('04-04-20', 'RR-MM-DD'),
    TO_DATE('04-04-19', 'RR-MM-DD'),
    'Shipped',
    NULL,
    209
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10242,
    TO_DATE('04-04-20', 'RR-MM-DD'),
    TO_DATE('04-04-28', 'RR-MM-DD'),
    TO_DATE('04-04-25', 'RR-MM-DD'),
    'Shipped',
    'Customer is interested in buying more Ferrari models',
    456
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10243,
    TO_DATE('04-04-26', 'RR-MM-DD'),
    TO_DATE('04-05-03', 'RR-MM-DD'),
    TO_DATE('04-04-28', 'RR-MM-DD'),
    'Shipped',
    NULL,
    495
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10244,
    TO_DATE('04-04-29', 'RR-MM-DD'),
    TO_DATE('04-05-09', 'RR-MM-DD'),
    TO_DATE('04-05-04', 'RR-MM-DD'),
    'Shipped',
    NULL,
    141
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10245,
    TO_DATE('04-05-04', 'RR-MM-DD'),
    TO_DATE('04-05-12', 'RR-MM-DD'),
    TO_DATE('04-05-09', 'RR-MM-DD'),
    'Shipped',
    NULL,
    455
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10246,
    TO_DATE('04-05-05', 'RR-MM-DD'),
    TO_DATE('04-05-13', 'RR-MM-DD'),
    TO_DATE('04-05-06', 'RR-MM-DD'),
    'Shipped',
    NULL,
    141
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10247,
    TO_DATE('04-05-05', 'RR-MM-DD'),
    TO_DATE('04-05-11', 'RR-MM-DD'),
    TO_DATE('04-05-08', 'RR-MM-DD'),
    'Shipped',
    NULL,
    334
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10248,
    TO_DATE('04-05-07', 'RR-MM-DD'),
    TO_DATE('04-05-14', 'RR-MM-DD'),
    NULL,
    'Cancelled',
    'Order was mistakenly placed. The warehouse noticed the lack of documentation.',
    131
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10249,
    TO_DATE('04-05-08', 'RR-MM-DD'),
    TO_DATE('04-05-17', 'RR-MM-DD'),
    TO_DATE('04-05-11', 'RR-MM-DD'),
    'Shipped',
    'Can we deliver the new Ford Mustang models by end-of-quarter?',
    173
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10250,
    TO_DATE('04-05-11', 'RR-MM-DD'),
    TO_DATE('04-05-19', 'RR-MM-DD'),
    TO_DATE('04-05-15', 'RR-MM-DD'),
    'Shipped',
    NULL,
    450
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10251,
    TO_DATE('04-05-18', 'RR-MM-DD'),
    TO_DATE('04-05-24', 'RR-MM-DD'),
    TO_DATE('04-05-24', 'RR-MM-DD'),
    'Shipped',
    NULL,
    328
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10252,
    TO_DATE('04-05-26', 'RR-MM-DD'),
    TO_DATE('04-06-04', 'RR-MM-DD'),
    TO_DATE('04-05-29', 'RR-MM-DD'),
    'Shipped',
    NULL,
    406
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10253,
    TO_DATE('04-06-01', 'RR-MM-DD'),
    TO_DATE('04-06-09', 'RR-MM-DD'),
    TO_DATE('04-06-02', 'RR-MM-DD'),
    'Cancelled',
    'Customer disputed the order and we agreed to cancel it. We must be more cautions with this customer going forward, since they are very hard to please. We must cover the shipping fees.',
    201
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10254,
    TO_DATE('04-06-03', 'RR-MM-DD'),
    TO_DATE('04-06-13', 'RR-MM-DD'),
    TO_DATE('04-06-04', 'RR-MM-DD'),
    'Shipped',
    'Customer requested that DHL is used for this shipping',
    323
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10255,
    TO_DATE('04-06-04', 'RR-MM-DD'),
    TO_DATE('04-06-12', 'RR-MM-DD'),
    TO_DATE('04-06-09', 'RR-MM-DD'),
    'Shipped',
    NULL,
    209
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10256,
    TO_DATE('04-06-08', 'RR-MM-DD'),
    TO_DATE('04-06-16', 'RR-MM-DD'),
    TO_DATE('04-06-10', 'RR-MM-DD'),
    'Shipped',
    NULL,
    145
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10257,
    TO_DATE('04-06-14', 'RR-MM-DD'),
    TO_DATE('04-06-24', 'RR-MM-DD'),
    TO_DATE('04-06-15', 'RR-MM-DD'),
    'Shipped',
    NULL,
    450
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10258,
    TO_DATE('04-06-15', 'RR-MM-DD'),
    TO_DATE('04-06-25', 'RR-MM-DD'),
    TO_DATE('04-06-23', 'RR-MM-DD'),
    'Shipped',
    NULL,
    398
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10259,
    TO_DATE('04-06-15', 'RR-MM-DD'),
    TO_DATE('04-06-22', 'RR-MM-DD'),
    TO_DATE('04-06-17', 'RR-MM-DD'),
    'Shipped',
    NULL,
    166
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10260,
    TO_DATE('04-06-16', 'RR-MM-DD'),
    TO_DATE('04-06-22', 'RR-MM-DD'),
    NULL,
    'Cancelled',
    'Customer heard complaints from their customers and called to cancel this order. Will notify the Sales Manager.',
    357
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10261,
    TO_DATE('04-06-17', 'RR-MM-DD'),
    TO_DATE('04-06-25', 'RR-MM-DD'),
    TO_DATE('04-06-22', 'RR-MM-DD'),
    'Shipped',
    NULL,
    233
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10262,
    TO_DATE('04-06-24', 'RR-MM-DD'),
    TO_DATE('04-07-01', 'RR-MM-DD'),
    NULL,
    'Cancelled',
    'This customer found a better offer from one of our competitors. Will call back to renegotiate.',
    141
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10263,
    TO_DATE('04-06-28', 'RR-MM-DD'),
    TO_DATE('04-07-04', 'RR-MM-DD'),
    TO_DATE('04-07-02', 'RR-MM-DD'),
    'Shipped',
    NULL,
    175
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10264,
    TO_DATE('04-06-30', 'RR-MM-DD'),
    TO_DATE('04-07-06', 'RR-MM-DD'),
    TO_DATE('04-07-01', 'RR-MM-DD'),
    'Shipped',
    'Customer will send a truck to our local warehouse on 7/1/2004',
    362
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10265,
    TO_DATE('04-07-02', 'RR-MM-DD'),
    TO_DATE('04-07-09', 'RR-MM-DD'),
    TO_DATE('04-07-07', 'RR-MM-DD'),
    'Shipped',
    NULL,
    471
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10266,
    TO_DATE('04-07-06', 'RR-MM-DD'),
    TO_DATE('04-07-14', 'RR-MM-DD'),
    TO_DATE('04-07-10', 'RR-MM-DD'),
    'Shipped',
    NULL,
    386
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10267,
    TO_DATE('04-07-07', 'RR-MM-DD'),
    TO_DATE('04-07-17', 'RR-MM-DD'),
    TO_DATE('04-07-09', 'RR-MM-DD'),
    'Shipped',
    NULL,
    151
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10268,
    TO_DATE('04-07-12', 'RR-MM-DD'),
    TO_DATE('04-07-18', 'RR-MM-DD'),
    TO_DATE('04-07-14', 'RR-MM-DD'),
    'Shipped',
    NULL,
    412
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10269,
    TO_DATE('04-07-16', 'RR-MM-DD'),
    TO_DATE('04-07-22', 'RR-MM-DD'),
    TO_DATE('04-07-18', 'RR-MM-DD'),
    'Shipped',
    NULL,
    382
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10270,
    TO_DATE('04-07-19', 'RR-MM-DD'),
    TO_DATE('04-07-27', 'RR-MM-DD'),
    TO_DATE('04-07-24', 'RR-MM-DD'),
    'Shipped',
    'Can we renegotiate this one?',
    282
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10271,
    TO_DATE('04-07-20', 'RR-MM-DD'),
    TO_DATE('04-07-29', 'RR-MM-DD'),
    TO_DATE('04-07-23', 'RR-MM-DD'),
    'Shipped',
    NULL,
    124
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10272,
    TO_DATE('04-07-20', 'RR-MM-DD'),
    TO_DATE('04-07-26', 'RR-MM-DD'),
    TO_DATE('04-07-22', 'RR-MM-DD'),
    'Shipped',
    NULL,
    157
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10273,
    TO_DATE('04-07-21', 'RR-MM-DD'),
    TO_DATE('04-07-28', 'RR-MM-DD'),
    TO_DATE('04-07-22', 'RR-MM-DD'),
    'Shipped',
    NULL,
    314
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10274,
    TO_DATE('04-07-21', 'RR-MM-DD'),
    TO_DATE('04-07-29', 'RR-MM-DD'),
    TO_DATE('04-07-22', 'RR-MM-DD'),
    'Shipped',
    NULL,
    379
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10275,
    TO_DATE('04-07-23', 'RR-MM-DD'),
    TO_DATE('04-08-02', 'RR-MM-DD'),
    TO_DATE('04-07-29', 'RR-MM-DD'),
    'Shipped',
    NULL,
    119
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10276,
    TO_DATE('04-08-02', 'RR-MM-DD'),
    TO_DATE('04-08-11', 'RR-MM-DD'),
    TO_DATE('04-08-08', 'RR-MM-DD'),
    'Shipped',
    NULL,
    204
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10277,
    TO_DATE('04-08-04', 'RR-MM-DD'),
    TO_DATE('04-08-12', 'RR-MM-DD'),
    TO_DATE('04-08-05', 'RR-MM-DD'),
    'Shipped',
    NULL,
    148
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10278,
    TO_DATE('04-08-06', 'RR-MM-DD'),
    TO_DATE('04-08-16', 'RR-MM-DD'),
    TO_DATE('04-08-09', 'RR-MM-DD'),
    'Shipped',
    NULL,
    112
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10279,
    TO_DATE('04-08-09', 'RR-MM-DD'),
    TO_DATE('04-08-19', 'RR-MM-DD'),
    TO_DATE('04-08-15', 'RR-MM-DD'),
    'Shipped',
    'Cautious optimism. We have happy customers here, if we can keep them well stocked.  I need all the information I can get on the planned shippments of Porches',
    141
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10280,
    TO_DATE('04-08-17', 'RR-MM-DD'),
    TO_DATE('04-08-27', 'RR-MM-DD'),
    TO_DATE('04-08-19', 'RR-MM-DD'),
    'Shipped',
    NULL,
    249
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10281,
    TO_DATE('04-08-19', 'RR-MM-DD'),
    TO_DATE('04-08-28', 'RR-MM-DD'),
    TO_DATE('04-08-23', 'RR-MM-DD'),
    'Shipped',
    NULL,
    157
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10282,
    TO_DATE('04-08-20', 'RR-MM-DD'),
    TO_DATE('04-08-26', 'RR-MM-DD'),
    TO_DATE('04-08-22', 'RR-MM-DD'),
    'Shipped',
    NULL,
    124
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10283,
    TO_DATE('04-08-20', 'RR-MM-DD'),
    TO_DATE('04-08-30', 'RR-MM-DD'),
    TO_DATE('04-08-23', 'RR-MM-DD'),
    'Shipped',
    NULL,
    260
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10284,
    TO_DATE('04-08-21', 'RR-MM-DD'),
    TO_DATE('04-08-29', 'RR-MM-DD'),
    TO_DATE('04-08-26', 'RR-MM-DD'),
    'Shipped',
    'Custom shipping instructions sent to warehouse',
    299
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10285,
    TO_DATE('04-08-27', 'RR-MM-DD'),
    TO_DATE('04-09-04', 'RR-MM-DD'),
    TO_DATE('04-08-31', 'RR-MM-DD'),
    'Shipped',
    NULL,
    286
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10286,
    TO_DATE('04-08-28', 'RR-MM-DD'),
    TO_DATE('04-09-06', 'RR-MM-DD'),
    TO_DATE('04-09-01', 'RR-MM-DD'),
    'Shipped',
    NULL,
    172
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10287,
    TO_DATE('04-08-30', 'RR-MM-DD'),
    TO_DATE('04-09-06', 'RR-MM-DD'),
    TO_DATE('04-09-01', 'RR-MM-DD'),
    'Shipped',
    NULL,
    298
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10288,
    TO_DATE('04-09-01', 'RR-MM-DD'),
    TO_DATE('04-09-11', 'RR-MM-DD'),
    TO_DATE('04-09-05', 'RR-MM-DD'),
    'Shipped',
    NULL,
    166
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10289,
    TO_DATE('04-09-03', 'RR-MM-DD'),
    TO_DATE('04-09-13', 'RR-MM-DD'),
    TO_DATE('04-09-04', 'RR-MM-DD'),
    'Shipped',
    'We need to keep in close contact with their Marketing VP. He is the decision maker for all their purchases.',
    167
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10290,
    TO_DATE('04-09-07', 'RR-MM-DD'),
    TO_DATE('04-09-15', 'RR-MM-DD'),
    TO_DATE('04-09-13', 'RR-MM-DD'),
    'Shipped',
    NULL,
    198
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10291,
    TO_DATE('04-09-08', 'RR-MM-DD'),
    TO_DATE('04-09-17', 'RR-MM-DD'),
    TO_DATE('04-09-14', 'RR-MM-DD'),
    'Shipped',
    NULL,
    448
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10292,
    TO_DATE('04-09-08', 'RR-MM-DD'),
    TO_DATE('04-09-18', 'RR-MM-DD'),
    TO_DATE('04-09-11', 'RR-MM-DD'),
    'Shipped',
    'They want to reevaluate their terms agreement with Finance.',
    131
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10293,
    TO_DATE('04-09-09', 'RR-MM-DD'),
    TO_DATE('04-09-18', 'RR-MM-DD'),
    TO_DATE('04-09-14', 'RR-MM-DD'),
    'Shipped',
    NULL,
    249
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10294,
    TO_DATE('04-09-10', 'RR-MM-DD'),
    TO_DATE('04-09-17', 'RR-MM-DD'),
    TO_DATE('04-09-14', 'RR-MM-DD'),
    'Shipped',
    NULL,
    204
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10295,
    TO_DATE('04-09-10', 'RR-MM-DD'),
    TO_DATE('04-09-17', 'RR-MM-DD'),
    TO_DATE('04-09-14', 'RR-MM-DD'),
    'Shipped',
    'They want to reevaluate their terms agreement with Finance.',
    362
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10296,
    TO_DATE('04-09-15', 'RR-MM-DD'),
    TO_DATE('04-09-22', 'RR-MM-DD'),
    TO_DATE('04-09-16', 'RR-MM-DD'),
    'Shipped',
    NULL,
    415
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10297,
    TO_DATE('04-09-16', 'RR-MM-DD'),
    TO_DATE('04-09-22', 'RR-MM-DD'),
    TO_DATE('04-09-21', 'RR-MM-DD'),
    'Shipped',
    'We must be cautions with this customer. Their VP of Sales resigned. Company may be heading down.',
    189
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10298,
    TO_DATE('04-09-27', 'RR-MM-DD'),
    TO_DATE('04-10-05', 'RR-MM-DD'),
    TO_DATE('04-10-01', 'RR-MM-DD'),
    'Shipped',
    NULL,
    103
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10299,
    TO_DATE('04-09-30', 'RR-MM-DD'),
    TO_DATE('04-10-10', 'RR-MM-DD'),
    TO_DATE('04-10-01', 'RR-MM-DD'),
    'Shipped',
    NULL,
    186
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10300,
    TO_DATE('03-10-04', 'RR-MM-DD'),
    TO_DATE('03-10-13', 'RR-MM-DD'),
    TO_DATE('03-10-09', 'RR-MM-DD'),
    'Shipped',
    NULL,
    128
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10301,
    TO_DATE('03-10-05', 'RR-MM-DD'),
    TO_DATE('03-10-15', 'RR-MM-DD'),
    TO_DATE('03-10-08', 'RR-MM-DD'),
    'Shipped',
    NULL,
    299
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10302,
    TO_DATE('03-10-06', 'RR-MM-DD'),
    TO_DATE('03-10-16', 'RR-MM-DD'),
    TO_DATE('03-10-07', 'RR-MM-DD'),
    'Shipped',
    NULL,
    201
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10303,
    TO_DATE('04-10-06', 'RR-MM-DD'),
    TO_DATE('04-10-14', 'RR-MM-DD'),
    TO_DATE('04-10-09', 'RR-MM-DD'),
    'Shipped',
    'Customer inquired about remote controlled models and gold models.',
    484
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10304,
    TO_DATE('04-10-11', 'RR-MM-DD'),
    TO_DATE('04-10-20', 'RR-MM-DD'),
    TO_DATE('04-10-17', 'RR-MM-DD'),
    'Shipped',
    NULL,
    256
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10305,
    TO_DATE('04-10-13', 'RR-MM-DD'),
    TO_DATE('04-10-22', 'RR-MM-DD'),
    TO_DATE('04-10-15', 'RR-MM-DD'),
    'Shipped',
    'Check on availability.',
    286
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10306,
    TO_DATE('04-10-14', 'RR-MM-DD'),
    TO_DATE('04-10-21', 'RR-MM-DD'),
    TO_DATE('04-10-17', 'RR-MM-DD'),
    'Shipped',
    NULL,
    187
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10307,
    TO_DATE('04-10-14', 'RR-MM-DD'),
    TO_DATE('04-10-23', 'RR-MM-DD'),
    TO_DATE('04-10-20', 'RR-MM-DD'),
    'Shipped',
    NULL,
    339
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10308,
    TO_DATE('04-10-15', 'RR-MM-DD'),
    TO_DATE('04-10-24', 'RR-MM-DD'),
    TO_DATE('04-10-20', 'RR-MM-DD'),
    'Shipped',
    'Customer requested that FedEx Ground is used for this shipping',
    319
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10309,
    TO_DATE('04-10-15', 'RR-MM-DD'),
    TO_DATE('04-10-24', 'RR-MM-DD'),
    TO_DATE('04-10-18', 'RR-MM-DD'),
    'Shipped',
    NULL,
    121
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10310,
    TO_DATE('04-10-16', 'RR-MM-DD'),
    TO_DATE('04-10-24', 'RR-MM-DD'),
    TO_DATE('04-10-18', 'RR-MM-DD'),
    'Shipped',
    NULL,
    259
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10311,
    TO_DATE('04-10-16', 'RR-MM-DD'),
    TO_DATE('04-10-23', 'RR-MM-DD'),
    TO_DATE('04-10-20', 'RR-MM-DD'),
    'Shipped',
    'Difficult to negotiate with customer. We need more marketing materials',
    141
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10312,
    TO_DATE('04-10-21', 'RR-MM-DD'),
    TO_DATE('04-10-27', 'RR-MM-DD'),
    TO_DATE('04-10-23', 'RR-MM-DD'),
    'Shipped',
    NULL,
    124
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10313,
    TO_DATE('04-10-22', 'RR-MM-DD'),
    TO_DATE('04-10-28', 'RR-MM-DD'),
    TO_DATE('04-10-25', 'RR-MM-DD'),
    'Shipped',
    'Customer requested that FedEx Ground is used for this shipping',
    202
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10314,
    TO_DATE('04-10-22', 'RR-MM-DD'),
    TO_DATE('04-11-01', 'RR-MM-DD'),
    TO_DATE('04-10-23', 'RR-MM-DD'),
    'Shipped',
    NULL,
    227
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10315,
    TO_DATE('04-10-29', 'RR-MM-DD'),
    TO_DATE('04-11-08', 'RR-MM-DD'),
    TO_DATE('04-10-30', 'RR-MM-DD'),
    'Shipped',
    NULL,
    119
);

INSERT INTO ORDERS (
    ORDERNUMBER,
    ORDERDATE,
    REQUIREDDATE,
    SHIPPEDDATE,
    STATUS,
    COMMENTS,
    CUSTOMERNUMBER
) VALUES (
    10316,
    TO_DATE('04-11-01', 'RR-MM-DD'),
    TO_DATE('04-11-09', 'RR-MM-DD'),
    TO_DATE('04-11-07', 'RR-MM-DD'),
    'Shipped',
    'Customer requested that ad materials (such as posters, pamphlets) be included in the shippment',
    240
);

--------------------------------------------------------
--  Constraints for Table ORDERS
--------------------------------------------------------

ALTER TABLE ORDERS MODIFY ("ORDERNUMBER" NOT NULL ENABLE);

ALTER TABLE ORDERS MODIFY ("ORDERDATE" NOT NULL ENABLE);

ALTER TABLE ORDERS MODIFY ("REQUIREDDATE" NOT NULL ENABLE);

ALTER TABLE ORDERS MODIFY ("STATUS" NOT NULL ENABLE);

ALTER TABLE ORDERS MODIFY ("CUSTOMERNUMBER" NOT NULL ENABLE);

ALTER TABLE ORDERS ADD PRIMARY KEY ("ORDERNUMBER") USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645 PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT) TABLESPACE "USER_DATA" ENABLE;

--------------------------------------------------------
--  DDL for Table CUSTOMERS
--------------------------------------------------------

CREATE TABLE CUSTOMERS (
    "CUSTOMERNUMBER" NUMBER(*, 0),
    "CUSTOMERNAME" VARCHAR2(50 BYTE),
    "CONTACTLASTNAME" VARCHAR2(50 BYTE),
    "CONTACTFIRSTNAME" VARCHAR2(50 BYTE),
    "PHONE" VARCHAR2(50 BYTE),
    "ADDRESSLINE1" VARCHAR2(50 BYTE),
    "ADDRESSLINE2" VARCHAR2(50 BYTE) DEFAULT NULL,
    "CITY" VARCHAR2(50 BYTE),
    "STATE" VARCHAR2(50 BYTE) DEFAULT NULL,
    "POSTALCODE" VARCHAR2(15 BYTE) DEFAULT NULL,
    "COUNTRY" VARCHAR2(50 BYTE),
    "SALESREPEMPLOYEENUMBER" NUMBER(*, 0) DEFAULT NULL,
    "CREDITLIMIT" NUMBER(10, 2) DEFAULT NULL
) SEGMENT CREATION IMMEDIATE PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING STORAGE(
    INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645 PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT
) TABLESPACE "USER_DATA";

REM INSERTING into CUSTOMERS
SET DEFINE OFF;

INSERT INTO CUSTOMERS (
    CUSTOMERNUMBER,
    CUSTOMERNAME,
    CONTACTLASTNAME,
    CONTACTFIRSTNAME,
    PHONE,
    ADDRESSLINE1,
    ADDRESSLINE2,
    CITY,
    STATE,
    POSTALCODE,
    COUNTRY,
    SALESREPEMPLOYEENUMBER,
    CREDITLIMIT
) VALUES (
    103,
    'Atelier graphique',
    'Schmitt',
    'Carine ',
    '40.32.2555',
    '54, rue Royale',
    NULL,
    'Nantes',
    NULL,
    '44000',
    'France',
    1370,
    21000
);

INSERT INTO CUSTOMERS (
    CUSTOMERNUMBER,
    CUSTOMERNAME,
    CONTACTLASTNAME,
    CONTACTFIRSTNAME,
    PHONE,
    ADDRESSLINE1,
    ADDRESSLINE2,
    CITY,
    STATE,
    POSTALCODE,
    COUNTRY,
    SALESREPEMPLOYEENUMBER,
    CREDITLIMIT
) VALUES (
    112,
    'Signal Gift Stores',
    'King',
    'Jean',
    '7025551838',
    '8489 Strong St.',
    NULL,
    'Las Vegas',
    'NV',
    '83030',
    'USA',
    1166,
    71800
);

INSERT INTO CUSTOMERS (
    CUSTOMERNUMBER,
    CUSTOMERNAME,
    CONTACTLASTNAME,
    CONTACTFIRSTNAME,
    PHONE,
    ADDRESSLINE1,
    ADDRESSLINE2,
    CITY,
    STATE,
    POSTALCODE,
    COUNTRY,
    SALESREPEMPLOYEENUMBER,
    CREDITLIMIT
) VALUES (
    114,
    'Australian Collectors, Co.',
    'Ferguson',
    'Peter',
    '03 9520 4555',
    '636 St Kilda Road',
    'Level 3',
    'Melbourne',
    'Victoria',
    '3004',
    'Australia',
    1611,
    117300
);

INSERT INTO CUSTOMERS (
    CUSTOMERNUMBER,
    CUSTOMERNAME,
    CONTACTLASTNAME,
    CONTACTFIRSTNAME,
    PHONE,
    ADDRESSLINE1,
    ADDRESSLINE2,
    CITY,
    STATE,
    POSTALCODE,
    COUNTRY,
    SALESREPEMPLOYEENUMBER,
    CREDITLIMIT
) VALUES (
    119,
    'La Rochelle Gifts',
    'Labrune',
    'Janine ',
    '40.67.8555',
    '67, rue des Cinquante Otages',
    NULL,
    'Nantes',
    NULL,
    '44000',
    'France',
    1370,
    118200
);

INSERT INTO CUSTOMERS (
    CUSTOMERNUMBER,
    CUSTOMERNAME,
    CONTACTLASTNAME,
    CONTACTFIRSTNAME,
    PHONE,
    ADDRESSLINE1,
    ADDRESSLINE2,
    CITY,
    STATE,
    POSTALCODE,
    COUNTRY,
    SALESREPEMPLOYEENUMBER,
    CREDITLIMIT
) VALUES (
    121,
    'Baane Mini Imports',
    'Bergulfsen',
    'Jonas ',
    '07-98 9555',
    'Erling Skakkes gate 78',
    NULL,
    'Stavern',
    NULL,
    '4110',
    'Norway',
    1504,
    81700
);

INSERT INTO CUSTOMERS (
    CUSTOMERNUMBER,
    CUSTOMERNAME,
    CONTACTLASTNAME,
    CONTACTFIRSTNAME,
    PHONE,
    ADDRESSLINE1,
    ADDRESSLINE2,
    CITY,
    STATE,
    POSTALCODE,
    COUNTRY,
    SALESREPEMPLOYEENUMBER,
    CREDITLIMIT
) VALUES (
    124,
    'Mini Gifts Distributors Ltd.',
    'Nelson',
    'Susan',
    '4155551450',
    '5677 Strong St.',
    NULL,
    'San Rafael',
    'CA',
    '97562',
    'USA',
    1165,
    210500
);

INSERT INTO CUSTOMERS (
    CUSTOMERNUMBER,
    CUSTOMERNAME,
    CONTACTLASTNAME,
    CONTACTFIRSTNAME,
    PHONE,
    ADDRESSLINE1,
    ADDRESSLINE2,
    CITY,
    STATE,
    POSTALCODE,
    COUNTRY,
    SALESREPEMPLOYEENUMBER,
    CREDITLIMIT
) VALUES (
    125,
    'Havel "&" Zbyszek Co',
    'Piestrzeniewicz',
    'Zbyszek ',
    '(26) 642-7555',
    'ul. Filtrowa 68',
    NULL,
    'Warszawa',
    NULL,
    '01-012',
    'Poland',
    NULL,
    0
);

INSERT INTO CUSTOMERS (
    CUSTOMERNUMBER,
    CUSTOMERNAME,
    CONTACTLASTNAME,
    CONTACTFIRSTNAME,
    PHONE,
    ADDRESSLINE1,
    ADDRESSLINE2,
    CITY,
    STATE,
    POSTALCODE,
    COUNTRY,
    SALESREPEMPLOYEENUMBER,
    CREDITLIMIT
) VALUES (
    128,
    'Blauer See Auto, Co.',
    'Keitel',
    'Roland',
    '+49 69 66 90 2555',
    'Lyonerstr. 34',
    NULL,
    'Frankfurt',
    NULL,
    '60528',
    'Germany',
    1504,
    59700
);

INSERT INTO CUSTOMERS (
    CUSTOMERNUMBER,
    CUSTOMERNAME,
    CONTACTLASTNAME,
    CONTACTFIRSTNAME,
    PHONE,
    ADDRESSLINE1,
    ADDRESSLINE2,
    CITY,
    STATE,
    POSTALCODE,
    COUNTRY,
    SALESREPEMPLOYEENUMBER,
    CREDITLIMIT
) VALUES (
    129,
    'Mini Wheels Co.',
    'Murphy',
    'Julie',
    '6505555787',
    '5557 North Pendale Street',
    NULL,
    'San Francisco',
    'CA',
    '94217',
    'USA',
    1165,
    64600
);

INSERT INTO CUSTOMERS (
    CUSTOMERNUMBER,
    CUSTOMERNAME,
    CONTACTLASTNAME,
    CONTACTFIRSTNAME,
    PHONE,
    ADDRESSLINE1,
    ADDRESSLINE2,
    CITY,
    STATE,
    POSTALCODE,
    COUNTRY,
    SALESREPEMPLOYEENUMBER,
    CREDITLIMIT
) VALUES (
    131,
    'Land of Toys Inc.',
    'Lee',
    'Kwai',
    '2125557818',
    '897 Long Airport Avenue',
    NULL,
    'NYC',
    'NY',
    '10022',
    'USA',
    1323,
    114900
);

INSERT INTO CUSTOMERS (
    CUSTOMERNUMBER,
    CUSTOMERNAME,
    CONTACTLASTNAME,
    CONTACTFIRSTNAME,
    PHONE,
    ADDRESSLINE1,
    ADDRESSLINE2,
    CITY,
    STATE,
    POSTALCODE,
    COUNTRY,
    SALESREPEMPLOYEENUMBER,
    CREDITLIMIT
) VALUES (
    141,
    'Euro+ Shopping Channel',
    'Freyre',
    'Diego ',
    '(91) 555 94 44',
    'C/ Moralzarzal, 86',
    NULL,
    'Madrid',
    NULL,
    '28034',
    'Spain',
    1370,
    227600
);

INSERT INTO CUSTOMERS (
    CUSTOMERNUMBER,
    CUSTOMERNAME,
    CONTACTLASTNAME,
    CONTACTFIRSTNAME,
    PHONE,
    ADDRESSLINE1,
    ADDRESSLINE2,
    CITY,
    STATE,
    POSTALCODE,
    COUNTRY,
    SALESREPEMPLOYEENUMBER,
    CREDITLIMIT
) VALUES (
    144,
    'Volvo Model Replicas, Co',
    'Berglund',
    'Christina ',
    '0921-12 3555',
    'BerguvsvÃ¤gen  8',
    NULL,
    'LuleÃ¥',
    NULL,
    'S-958 22',
    'Sweden',
    1504,
    53100
);

INSERT INTO CUSTOMERS (
    CUSTOMERNUMBER,
    CUSTOMERNAME,
    CONTACTLASTNAME,
    CONTACTFIRSTNAME,
    PHONE,
    ADDRESSLINE1,
    ADDRESSLINE2,
    CITY,
    STATE,
    POSTALCODE,
    COUNTRY,
    SALESREPEMPLOYEENUMBER,
    CREDITLIMIT
) VALUES (
    145,
    'Danish Wholesale Imports',
    'Petersen',
    'Jytte ',
    '31 12 3555',
    'VinbÃ¦ltet 34',
    NULL,
    'Kobenhavn',
    NULL,
    '1734',
    'Denmark',
    1401,
    83400
);

INSERT INTO CUSTOMERS (
    CUSTOMERNUMBER,
    CUSTOMERNAME,
    CONTACTLASTNAME,
    CONTACTFIRSTNAME,
    PHONE,
    ADDRESSLINE1,
    ADDRESSLINE2,
    CITY,
    STATE,
    POSTALCODE,
    COUNTRY,
    SALESREPEMPLOYEENUMBER,
    CREDITLIMIT
) VALUES (
    146,
    'Saveley "&" Henriot, Co.',
    'Saveley',
    'Mary ',
    '78.32.5555',
    '2, rue du Commerce',
    NULL,
    'Lyon',
    NULL,
    '69004',
    'France',
    1337,
    123900
);

INSERT INTO CUSTOMERS (
    CUSTOMERNUMBER,
    CUSTOMERNAME,
    CONTACTLASTNAME,
    CONTACTFIRSTNAME,
    PHONE,
    ADDRESSLINE1,
    ADDRESSLINE2,
    CITY,
    STATE,
    POSTALCODE,
    COUNTRY,
    SALESREPEMPLOYEENUMBER,
    CREDITLIMIT
) VALUES (
    148,
    'Dragon Souveniers, Ltd.',
    'Natividad',
    'Eric',
    '+65 221 7555',
    'Bronz Sok.',
    'Bronz Apt. 3/6 Tesvikiye',
    'Singapore',
    NULL,
    '079903',
    'Singapore',
    1621,
    103800
);

INSERT INTO CUSTOMERS (
    CUSTOMERNUMBER,
    CUSTOMERNAME,
    CONTACTLASTNAME,
    CONTACTFIRSTNAME,
    PHONE,
    ADDRESSLINE1,
    ADDRESSLINE2,
    CITY,
    STATE,
    POSTALCODE,
    COUNTRY,
    SALESREPEMPLOYEENUMBER,
    CREDITLIMIT
) VALUES (
    151,
    'Muscle Machine Inc',
    'Young',
    'Jeff',
    '2125557413',
    '4092 Furth Circle',
    'Suite 400',
    'NYC',
    'NY',
    '10022',
    'USA',
    1286,
    138500
);

INSERT INTO CUSTOMERS (
    CUSTOMERNUMBER,
    CUSTOMERNAME,
    CONTACTLASTNAME,
    CONTACTFIRSTNAME,
    PHONE,
    ADDRESSLINE1,
    ADDRESSLINE2,
    CITY,
    STATE,
    POSTALCODE,
    COUNTRY,
    SALESREPEMPLOYEENUMBER,
    CREDITLIMIT
) VALUES (
    157,
    'Diecast Classics Inc.',
    'Leong',
    'Kelvin',
    '2155551555',
    '7586 Pompton St.',
    NULL,
    'Allentown',
    'PA',
    '70267',
    'USA',
    1216,
    100600
);

INSERT INTO CUSTOMERS (
    CUSTOMERNUMBER,
    CUSTOMERNAME,
    CONTACTLASTNAME,
    CONTACTFIRSTNAME,
    PHONE,
    ADDRESSLINE1,
    ADDRESSLINE2,
    CITY,
    STATE,
    POSTALCODE,
    COUNTRY,
    SALESREPEMPLOYEENUMBER,
    CREDITLIMIT
) VALUES (
    161,
    'Technics Stores Inc.',
    'Hashimoto',
    'Juri',
    '6505556809',
    '9408 Furth Circle',
    NULL,
    'Burlingame',
    'CA',
    '94217',
    'USA',
    1165,
    84600
);

INSERT INTO CUSTOMERS (
    CUSTOMERNUMBER,
    CUSTOMERNAME,
    CONTACTLASTNAME,
    CONTACTFIRSTNAME,
    PHONE,
    ADDRESSLINE1,
    ADDRESSLINE2,
    CITY,
    STATE,
    POSTALCODE,
    COUNTRY,
    SALESREPEMPLOYEENUMBER,
    CREDITLIMIT
) VALUES (
    166,
    'Handji Gifts"&" Co',
    'Victorino',
    'Wendy',
    '+65 224 1555',
    '106 Linden Road Sandown',
    '2nd Floor',
    'Singapore',
    NULL,
    '069045',
    'Singapore',
    1612,
    97900
);

INSERT INTO CUSTOMERS (
    CUSTOMERNUMBER,
    CUSTOMERNAME,
    CONTACTLASTNAME,
    CONTACTFIRSTNAME,
    PHONE,
    ADDRESSLINE1,
    ADDRESSLINE2,
    CITY,
    STATE,
    POSTALCODE,
    COUNTRY,
    SALESREPEMPLOYEENUMBER,
    CREDITLIMIT
) VALUES (
    167,
    'Herkku Gifts',
    'Oeztan',
    'Veysel',
    '+47 2267 3215',
    'Brehmen St. 121',
    'PR 334 Sentrum',
    'Bergen',
    NULL,
    'N 5804',
    'Norway  ',
    1504,
    96800
);

INSERT INTO CUSTOMERS (
    CUSTOMERNUMBER,
    CUSTOMERNAME,
    CONTACTLASTNAME,
    CONTACTFIRSTNAME,
    PHONE,
    ADDRESSLINE1,
    ADDRESSLINE2,
    CITY,
    STATE,
    POSTALCODE,
    COUNTRY,
    SALESREPEMPLOYEENUMBER,
    CREDITLIMIT
) VALUES (
    168,
    'American Souvenirs Inc',
    'Franco',
    'Keith',
    '2035557845',
    '149 Spinnaker Dr.',
    'Suite 101',
    'New Haven',
    'CT',
    '97823',
    'USA',
    1286,
    0
);

INSERT INTO CUSTOMERS (
    CUSTOMERNUMBER,
    CUSTOMERNAME,
    CONTACTLASTNAME,
    CONTACTFIRSTNAME,
    PHONE,
    ADDRESSLINE1,
    ADDRESSLINE2,
    CITY,
    STATE,
    POSTALCODE,
    COUNTRY,
    SALESREPEMPLOYEENUMBER,
    CREDITLIMIT
) VALUES (
    169,
    'Porto Imports Co.',
    'de Castro',
    'Isabel ',
    '(1) 356-5555',
    'Estrada da saÃºde n. 58',
    NULL,
    'Lisboa',
    NULL,
    '1756',
    'Portugal',
    NULL,
    0
);

INSERT INTO CUSTOMERS (
    CUSTOMERNUMBER,
    CUSTOMERNAME,
    CONTACTLASTNAME,
    CONTACTFIRSTNAME,
    PHONE,
    ADDRESSLINE1,
    ADDRESSLINE2,
    CITY,
    STATE,
    POSTALCODE,
    COUNTRY,
    SALESREPEMPLOYEENUMBER,
    CREDITLIMIT
) VALUES (
    171,
    'Daedalus Designs Imports',
    'RancÃ©',
    'Martine ',
    '20.16.1555',
    '184, chaussÃ©e de Tournai',
    NULL,
    'Lille',
    NULL,
    '59000',
    'France',
    1370,
    82900
);

INSERT INTO CUSTOMERS (
    CUSTOMERNUMBER,
    CUSTOMERNAME,
    CONTACTLASTNAME,
    CONTACTFIRSTNAME,
    PHONE,
    ADDRESSLINE1,
    ADDRESSLINE2,
    CITY,
    STATE,
    POSTALCODE,
    COUNTRY,
    SALESREPEMPLOYEENUMBER,
    CREDITLIMIT
) VALUES (
    172,
    'La Corne ''abondance, Co.',
    'Bertrand',
    'Marie',
    '(1) 42.34.2555',
    '265, boulevard Charonne',
    NULL,
    'Paris',
    NULL,
    '75012',
    'France',
    1337,
    84300
);

INSERT INTO CUSTOMERS (
    CUSTOMERNUMBER,
    CUSTOMERNAME,
    CONTACTLASTNAME,
    CONTACTFIRSTNAME,
    PHONE,
    ADDRESSLINE1,
    ADDRESSLINE2,
    CITY,
    STATE,
    POSTALCODE,
    COUNTRY,
    SALESREPEMPLOYEENUMBER,
    CREDITLIMIT
) VALUES (
    173,
    'Cambridge Collectables Co.',
    'Tseng',
    'Jerry',
    '6175555555',
    '4658 Baden Av.',
    NULL,
    'Cambridge',
    'MA',
    '51247',
    'USA',
    1188,
    43400
);

INSERT INTO CUSTOMERS (
    CUSTOMERNUMBER,
    CUSTOMERNAME,
    CONTACTLASTNAME,
    CONTACTFIRSTNAME,
    PHONE,
    ADDRESSLINE1,
    ADDRESSLINE2,
    CITY,
    STATE,
    POSTALCODE,
    COUNTRY,
    SALESREPEMPLOYEENUMBER,
    CREDITLIMIT
) VALUES (
    175,
    'Gift Depot Inc.',
    'King',
    'Julie',
    '2035552570',
    '25593 South Bay Ln.',
    NULL,
    'Bridgewater',
    'CT',
    '97562',
    'USA',
    1323,
    84300
);

INSERT INTO CUSTOMERS (
    CUSTOMERNUMBER,
    CUSTOMERNAME,
    CONTACTLASTNAME,
    CONTACTFIRSTNAME,
    PHONE,
    ADDRESSLINE1,
    ADDRESSLINE2,
    CITY,
    STATE,
    POSTALCODE,
    COUNTRY,
    SALESREPEMPLOYEENUMBER,
    CREDITLIMIT
) VALUES (
    177,
    'Osaka Souveniers Co.',
    'Kentary',
    'Mory',
    '+81 06 6342 5555',
    '1-6-20 Dojima',
    NULL,
    'Kita-ku',
    'Osaka',
    ' 530-0003',
    'Japan',
    1621,
    81200
);

INSERT INTO CUSTOMERS (
    CUSTOMERNUMBER,
    CUSTOMERNAME,
    CONTACTLASTNAME,
    CONTACTFIRSTNAME,
    PHONE,
    ADDRESSLINE1,
    ADDRESSLINE2,
    CITY,
    STATE,
    POSTALCODE,
    COUNTRY,
    SALESREPEMPLOYEENUMBER,
    CREDITLIMIT
) VALUES (
    181,
    'Vitachrome Inc.',
    'Frick',
    'Michael',
    '2125551500',
    '2678 Kingston Rd.',
    'Suite 101',
    'NYC',
    'NY',
    '10022',
    'USA',
    1286,
    76400
);

INSERT INTO CUSTOMERS (
    CUSTOMERNUMBER,
    CUSTOMERNAME,
    CONTACTLASTNAME,
    CONTACTFIRSTNAME,
    PHONE,
    ADDRESSLINE1,
    ADDRESSLINE2,
    CITY,
    STATE,
    POSTALCODE,
    COUNTRY,
    SALESREPEMPLOYEENUMBER,
    CREDITLIMIT
) VALUES (
    186,
    'Toys of Finland, Co.',
    'Karttunen',
    'Matti',
    '90-224 8555',
    'Keskuskatu 45',
    NULL,
    'Helsinki',
    NULL,
    '21240',
    'Finland',
    1501,
    96500
);

INSERT INTO CUSTOMERS (
    CUSTOMERNUMBER,
    CUSTOMERNAME,
    CONTACTLASTNAME,
    CONTACTFIRSTNAME,
    PHONE,
    ADDRESSLINE1,
    ADDRESSLINE2,
    CITY,
    STATE,
    POSTALCODE,
    COUNTRY,
    SALESREPEMPLOYEENUMBER,
    CREDITLIMIT
) VALUES (
    187,
    'AV Stores, Co.',
    'Ashworth',
    'Rachel',
    '(171) 555-1555',
    'Fauntleroy Circus',
    NULL,
    'Manchester',
    NULL,
    'EC2 5NT',
    'UK',
    1501,
    136800
);

INSERT INTO CUSTOMERS (
    CUSTOMERNUMBER,
    CUSTOMERNAME,
    CONTACTLASTNAME,
    CONTACTFIRSTNAME,
    PHONE,
    ADDRESSLINE1,
    ADDRESSLINE2,
    CITY,
    STATE,
    POSTALCODE,
    COUNTRY,
    SALESREPEMPLOYEENUMBER,
    CREDITLIMIT
) VALUES (
    189,
    'Clover Collections, Co.',
    'Cassidy',
    'Dean',
    '+353 1862 1555',
    '25 Maiden Lane',
    'Floor No. 4',
    'Dublin',
    NULL,
    '2',
    'Ireland',
    1504,
    69400
);

INSERT INTO CUSTOMERS (
    CUSTOMERNUMBER,
    CUSTOMERNAME,
    CONTACTLASTNAME,
    CONTACTFIRSTNAME,
    PHONE,
    ADDRESSLINE1,
    ADDRESSLINE2,
    CITY,
    STATE,
    POSTALCODE,
    COUNTRY,
    SALESREPEMPLOYEENUMBER,
    CREDITLIMIT
) VALUES (
    198,
    'Auto-Moto Classics Inc.',
    'Taylor',
    'Leslie',
    '6175558428',
    '16780 Pompton St.',
    NULL,
    'Brickhaven',
    'MA',
    '58339',
    'USA',
    1216,
    23000
);

INSERT INTO CUSTOMERS (
    CUSTOMERNUMBER,
    CUSTOMERNAME,
    CONTACTLASTNAME,
    CONTACTFIRSTNAME,
    PHONE,
    ADDRESSLINE1,
    ADDRESSLINE2,
    CITY,
    STATE,
    POSTALCODE,
    COUNTRY,
    SALESREPEMPLOYEENUMBER,
    CREDITLIMIT
) VALUES (
    201,
    'UK Collectables, Ltd.',
    'Devon',
    'Elizabeth',
    '(171) 555-2282',
    '12, Berkeley Gardens Blvd',
    NULL,
    'Liverpool',
    NULL,
    'WX1 6LT',
    'UK',
    1501,
    92700
);

INSERT INTO CUSTOMERS (
    CUSTOMERNUMBER,
    CUSTOMERNAME,
    CONTACTLASTNAME,
    CONTACTFIRSTNAME,
    PHONE,
    ADDRESSLINE1,
    ADDRESSLINE2,
    CITY,
    STATE,
    POSTALCODE,
    COUNTRY,
    SALESREPEMPLOYEENUMBER,
    CREDITLIMIT
) VALUES (
    202,
    'Canadian Gift Exchange Network',
    'Tamuri',
    'Yoshi ',
    '(604) 555-3392',
    '1900 Oak St.',
    NULL,
    'Vancouver',
    'BC',
    'V3F 2K1',
    'Canada',
    1323,
    90300
);

INSERT INTO CUSTOMERS (
    CUSTOMERNUMBER,
    CUSTOMERNAME,
    CONTACTLASTNAME,
    CONTACTFIRSTNAME,
    PHONE,
    ADDRESSLINE1,
    ADDRESSLINE2,
    CITY,
    STATE,
    POSTALCODE,
    COUNTRY,
    SALESREPEMPLOYEENUMBER,
    CREDITLIMIT
) VALUES (
    204,
    'Online Mini Collectables',
    'Barajas',
    'Miguel',
    '6175557555',
    '7635 Spinnaker Dr.',
    NULL,
    'Brickhaven',
    'MA',
    '58339',
    'USA',
    1188,
    68700
);

INSERT INTO CUSTOMERS (
    CUSTOMERNUMBER,
    CUSTOMERNAME,
    CONTACTLASTNAME,
    CONTACTFIRSTNAME,
    PHONE,
    ADDRESSLINE1,
    ADDRESSLINE2,
    CITY,
    STATE,
    POSTALCODE,
    COUNTRY,
    SALESREPEMPLOYEENUMBER,
    CREDITLIMIT
) VALUES (
    205,
    'Toys4GrownUps.com',
    'Young',
    'Julie',
    '6265557265',
    '78934 Hillside Dr.',
    NULL,
    'Pasadena',
    'CA',
    '90003',
    'USA',
    1166,
    90700
);

INSERT INTO CUSTOMERS (
    CUSTOMERNUMBER,
    CUSTOMERNAME,
    CONTACTLASTNAME,
    CONTACTFIRSTNAME,
    PHONE,
    ADDRESSLINE1,
    ADDRESSLINE2,
    CITY,
    STATE,
    POSTALCODE,
    COUNTRY,
    SALESREPEMPLOYEENUMBER,
    CREDITLIMIT
) VALUES (
    206,
    'Asian Shopping Network, Co',
    'Walker',
    'Brydey',
    '+612 9411 1555',
    'Suntec Tower Three',
    '8 Temasek',
    'Singapore',
    NULL,
    '038988',
    'Singapore',
    NULL,
    0
);

INSERT INTO CUSTOMERS (
    CUSTOMERNUMBER,
    CUSTOMERNAME,
    CONTACTLASTNAME,
    CONTACTFIRSTNAME,
    PHONE,
    ADDRESSLINE1,
    ADDRESSLINE2,
    CITY,
    STATE,
    POSTALCODE,
    COUNTRY,
    SALESREPEMPLOYEENUMBER,
    CREDITLIMIT
) VALUES (
    209,
    'Mini Caravy',
    'Citeaux',
    'FrÃ©dÃ©rique ',
    '88.60.1555',
    '24, place KlÃ©ber',
    NULL,
    'Strasbourg',
    NULL,
    '67000',
    'France',
    1370,
    53800
);

INSERT INTO CUSTOMERS (
    CUSTOMERNUMBER,
    CUSTOMERNAME,
    CONTACTLASTNAME,
    CONTACTFIRSTNAME,
    PHONE,
    ADDRESSLINE1,
    ADDRESSLINE2,
    CITY,
    STATE,
    POSTALCODE,
    COUNTRY,
    SALESREPEMPLOYEENUMBER,
    CREDITLIMIT
) VALUES (
    211,
    'King Kong Collectables, Co.',
    'Gao',
    'Mike',
    '+852 2251 1555',
    'Bank of China Tower',
    '1 Garden Road',
    'Central Hong Kong',
    NULL,
    NULL,
    'Hong Kong',
    1621,
    58600
);

INSERT INTO CUSTOMERS (
    CUSTOMERNUMBER,
    CUSTOMERNAME,
    CONTACTLASTNAME,
    CONTACTFIRSTNAME,
    PHONE,
    ADDRESSLINE1,
    ADDRESSLINE2,
    CITY,
    STATE,
    POSTALCODE,
    COUNTRY,
    SALESREPEMPLOYEENUMBER,
    CREDITLIMIT
) VALUES (
    216,
    'Enaco Distributors',
    'Saavedra',
    'Eduardo ',
    '(93) 203 4555',
    'Rambla de CataluÃ±a, 23',
    NULL,
    'Barcelona',
    NULL,
    '08022',
    'Spain',
    1702,
    60300
);

INSERT INTO CUSTOMERS (
    CUSTOMERNUMBER,
    CUSTOMERNAME,
    CONTACTLASTNAME,
    CONTACTFIRSTNAME,
    PHONE,
    ADDRESSLINE1,
    ADDRESSLINE2,
    CITY,
    STATE,
    POSTALCODE,
    COUNTRY,
    SALESREPEMPLOYEENUMBER,
    CREDITLIMIT
) VALUES (
    219,
    'Boards "&" Toys Co.',
    'Young',
    'Mary',
    '3105552373',
    '4097 Douglas Av.',
    NULL,
    'Glendale',
    'CA',
    '92561',
    'USA',
    1166,
    11000
);

INSERT INTO CUSTOMERS (
    CUSTOMERNUMBER,
    CUSTOMERNAME,
    CONTACTLASTNAME,
    CONTACTFIRSTNAME,
    PHONE,
    ADDRESSLINE1,
    ADDRESSLINE2,
    CITY,
    STATE,
    POSTALCODE,
    COUNTRY,
    SALESREPEMPLOYEENUMBER,
    CREDITLIMIT
) VALUES (
    223,
    'NatÃ¼rlich Autos',
    'Kloss',
    'Horst ',
    '0372-555188',
    'TaucherstraÃŸe 10',
    NULL,
    'Cunewalde',
    NULL,
    '01307',
    'Germany',
    NULL,
    0
);

INSERT INTO CUSTOMERS (
    CUSTOMERNUMBER,
    CUSTOMERNAME,
    CONTACTLASTNAME,
    CONTACTFIRSTNAME,
    PHONE,
    ADDRESSLINE1,
    ADDRESSLINE2,
    CITY,
    STATE,
    POSTALCODE,
    COUNTRY,
    SALESREPEMPLOYEENUMBER,
    CREDITLIMIT
) VALUES (
    227,
    'Heintze Collectables',
    'Ibsen',
    'Palle',
    '86 21 3555',
    'Smagsloget 45',
    NULL,
    'Ã…rhus',
    NULL,
    '8200',
    'Denmark',
    1401,
    120800
);

INSERT INTO CUSTOMERS (
    CUSTOMERNUMBER,
    CUSTOMERNAME,
    CONTACTLASTNAME,
    CONTACTFIRSTNAME,
    PHONE,
    ADDRESSLINE1,
    ADDRESSLINE2,
    CITY,
    STATE,
    POSTALCODE,
    COUNTRY,
    SALESREPEMPLOYEENUMBER,
    CREDITLIMIT
) VALUES (
    233,
    'QuÃ©bec Home Shopping Network',
    'FresniÃ¨re',
    'Jean ',
    '(514) 555-8054',
    '43 rue St. Laurent',
    NULL,
    'MontrÃ©al',
    'QuÃ©bec',
    'H1J 1C3',
    'Canada',
    1286,
    48700
);

INSERT INTO CUSTOMERS (
    CUSTOMERNUMBER,
    CUSTOMERNAME,
    CONTACTLASTNAME,
    CONTACTFIRSTNAME,
    PHONE,
    ADDRESSLINE1,
    ADDRESSLINE2,
    CITY,
    STATE,
    POSTALCODE,
    COUNTRY,
    SALESREPEMPLOYEENUMBER,
    CREDITLIMIT
) VALUES (
    237,
    'ANG Resellers',
    'Camino',
    'Alejandra ',
    '(91) 745 6555',
    'Gran VÃ­a, 1',
    NULL,
    'Madrid',
    NULL,
    '28001',
    'Spain',
    NULL,
    0
);

INSERT INTO CUSTOMERS (
    CUSTOMERNUMBER,
    CUSTOMERNAME,
    CONTACTLASTNAME,
    CONTACTFIRSTNAME,
    PHONE,
    ADDRESSLINE1,
    ADDRESSLINE2,
    CITY,
    STATE,
    POSTALCODE,
    COUNTRY,
    SALESREPEMPLOYEENUMBER,
    CREDITLIMIT
) VALUES (
    239,
    'Collectable Mini Designs Co.',
    'Thompson',
    'Valarie',
    '7605558146',
    '361 Furth Circle',
    NULL,
    'San Diego',
    'CA',
    '91217',
    'USA',
    1166,
    105000
);

INSERT INTO CUSTOMERS (
    CUSTOMERNUMBER,
    CUSTOMERNAME,
    CONTACTLASTNAME,
    CONTACTFIRSTNAME,
    PHONE,
    ADDRESSLINE1,
    ADDRESSLINE2,
    CITY,
    STATE,
    POSTALCODE,
    COUNTRY,
    SALESREPEMPLOYEENUMBER,
    CREDITLIMIT
) VALUES (
    240,
    'giftsbymail.co.uk',
    'Bennett',
    'Helen ',
    '(198) 555-8888',
    'Garden House',
    'Crowther Way 23',
    'Cowes',
    'Isle of Wight',
    'PO31 7PJ',
    'UK',
    1501,
    93900
);

INSERT INTO CUSTOMERS (
    CUSTOMERNUMBER,
    CUSTOMERNAME,
    CONTACTLASTNAME,
    CONTACTFIRSTNAME,
    PHONE,
    ADDRESSLINE1,
    ADDRESSLINE2,
    CITY,
    STATE,
    POSTALCODE,
    COUNTRY,
    SALESREPEMPLOYEENUMBER,
    CREDITLIMIT
) VALUES (
    242,
    'Alpha Cognac',
    'Roulet',
    'Annette ',
    '61.77.6555',
    '1 rue Alsace-Lorraine',
    NULL,
    'Toulouse',
    NULL,
    '31000',
    'France',
    1370,
    61100
);

INSERT INTO CUSTOMERS (
    CUSTOMERNUMBER,
    CUSTOMERNAME,
    CONTACTLASTNAME,
    CONTACTFIRSTNAME,
    PHONE,
    ADDRESSLINE1,
    ADDRESSLINE2,
    CITY,
    STATE,
    POSTALCODE,
    COUNTRY,
    SALESREPEMPLOYEENUMBER,
    CREDITLIMIT
) VALUES (
    247,
    'Messner Shopping Network',
    'Messner',
    'Renate ',
    '069-0555984',
    'Magazinweg 7',
    NULL,
    'Frankfurt',
    NULL,
    '60528',
    'Germany',
    NULL,
    0
);

INSERT INTO CUSTOMERS (
    CUSTOMERNUMBER,
    CUSTOMERNAME,
    CONTACTLASTNAME,
    CONTACTFIRSTNAME,
    PHONE,
    ADDRESSLINE1,
    ADDRESSLINE2,
    CITY,
    STATE,
    POSTALCODE,
    COUNTRY,
    SALESREPEMPLOYEENUMBER,
    CREDITLIMIT
) VALUES (
    249,
    'Amica Models "&" Co.',
    'Accorti',
    'Paolo ',
    '011-4988555',
    'Via Monte Bianco 34',
    NULL,
    'Torino',
    NULL,
    '10100',
    'Italy',
    1401,
    113000
);

INSERT INTO CUSTOMERS (
    CUSTOMERNUMBER,
    CUSTOMERNAME,
    CONTACTLASTNAME,
    CONTACTFIRSTNAME,
    PHONE,
    ADDRESSLINE1,
    ADDRESSLINE2,
    CITY,
    STATE,
    POSTALCODE,
    COUNTRY,
    SALESREPEMPLOYEENUMBER,
    CREDITLIMIT
) VALUES (
    250,
    'Lyon Souveniers',
    'Da Silva',
    'Daniel',
    '+33 1 46 62 7555',
    '27 rue du Colonel Pierre Avia',
    NULL,
    'Paris',
    NULL,
    '75508',
    'France',
    1337,
    68100
);

INSERT INTO CUSTOMERS (
    CUSTOMERNUMBER,
    CUSTOMERNAME,
    CONTACTLASTNAME,
    CONTACTFIRSTNAME,
    PHONE,
    ADDRESSLINE1,
    ADDRESSLINE2,
    CITY,
    STATE,
    POSTALCODE,
    COUNTRY,
    SALESREPEMPLOYEENUMBER,
    CREDITLIMIT
) VALUES (
    256,
    'Auto AssociÃ©s "&" Cie.',
    'Tonini',
    'Daniel ',
    '30.59.8555',
    '67, avenue de l''Europe',
    NULL,
    'Versailles',
    NULL,
    '78000',
    'France',
    1370,
    77900
);

INSERT INTO CUSTOMERS (
    CUSTOMERNUMBER,
    CUSTOMERNAME,
    CONTACTLASTNAME,
    CONTACTFIRSTNAME,
    PHONE,
    ADDRESSLINE1,
    ADDRESSLINE2,
    CITY,
    STATE,
    POSTALCODE,
    COUNTRY,
    SALESREPEMPLOYEENUMBER,
    CREDITLIMIT
) VALUES (
    259,
    'Toms SpezialitÃ¤ten, Ltd',
    'Pfalzheim',
    'Henriette ',
    '0221-5554327',
    'Mehrheimerstr. 369',
    NULL,
    'KÃ¶ln',
    NULL,
    '50739',
    'Germany',
    1504,
    120400
);

INSERT INTO CUSTOMERS (
    CUSTOMERNUMBER,
    CUSTOMERNAME,
    CONTACTLASTNAME,
    CONTACTFIRSTNAME,
    PHONE,
    ADDRESSLINE1,
    ADDRESSLINE2,
    CITY,
    STATE,
    POSTALCODE,
    COUNTRY,
    SALESREPEMPLOYEENUMBER,
    CREDITLIMIT
) VALUES (
    260,
    'Royal Canadian Collectables, Ltd.',
    'Lincoln',
    'Elizabeth ',
    '(604) 555-4555',
    '23 Tsawassen Blvd.',
    NULL,
    'Tsawassen',
    'BC',
    'T2F 8M4',
    'Canada',
    1323,
    89600
);

INSERT INTO CUSTOMERS (
    CUSTOMERNUMBER,
    CUSTOMERNAME,
    CONTACTLASTNAME,
    CONTACTFIRSTNAME,
    PHONE,
    ADDRESSLINE1,
    ADDRESSLINE2,
    CITY,
    STATE,
    POSTALCODE,
    COUNTRY,
    SALESREPEMPLOYEENUMBER,
    CREDITLIMIT
) VALUES (
    273,
    'Franken Gifts, Co',
    'Franken',
    'Peter ',
    '089-0877555',
    'Berliner Platz 43',
    NULL,
    'MÃ¼nchen',
    NULL,
    '80805',
    'Germany',
    NULL,
    0
);

INSERT INTO CUSTOMERS (
    CUSTOMERNUMBER,
    CUSTOMERNAME,
    CONTACTLASTNAME,
    CONTACTFIRSTNAME,
    PHONE,
    ADDRESSLINE1,
    ADDRESSLINE2,
    CITY,
    STATE,
    POSTALCODE,
    COUNTRY,
    SALESREPEMPLOYEENUMBER,
    CREDITLIMIT
) VALUES (
    276,
    'Anna''s Decorations, Ltd',
    'O''Hara',
    'Anna',
    '02 9936 8555',
    '201 Miller Street',
    'Level 15',
    'North Sydney',
    'NSW',
    '2060',
    'Australia',
    1611,
    107800
);

INSERT INTO CUSTOMERS (
    CUSTOMERNUMBER,
    CUSTOMERNAME,
    CONTACTLASTNAME,
    CONTACTFIRSTNAME,
    PHONE,
    ADDRESSLINE1,
    ADDRESSLINE2,
    CITY,
    STATE,
    POSTALCODE,
    COUNTRY,
    SALESREPEMPLOYEENUMBER,
    CREDITLIMIT
) VALUES (
    278,
    'Rovelli Gifts',
    'Rovelli',
    'Giovanni ',
    '035-640555',
    'Via Ludovico il Moro 22',
    NULL,
    'Bergamo',
    NULL,
    '24100',
    'Italy',
    1401,
    119600
);

INSERT INTO CUSTOMERS (
    CUSTOMERNUMBER,
    CUSTOMERNAME,
    CONTACTLASTNAME,
    CONTACTFIRSTNAME,
    PHONE,
    ADDRESSLINE1,
    ADDRESSLINE2,
    CITY,
    STATE,
    POSTALCODE,
    COUNTRY,
    SALESREPEMPLOYEENUMBER,
    CREDITLIMIT
) VALUES (
    282,
    'Souveniers And Things Co.',
    'Huxley',
    'Adrian',
    '+61 2 9495 8555',
    'Monitor Money Building',
    '815 Pacific Hwy',
    'Chatswood',
    'NSW',
    '2067',
    'Australia',
    1611,
    93300
);

INSERT INTO CUSTOMERS (
    CUSTOMERNUMBER,
    CUSTOMERNAME,
    CONTACTLASTNAME,
    CONTACTFIRSTNAME,
    PHONE,
    ADDRESSLINE1,
    ADDRESSLINE2,
    CITY,
    STATE,
    POSTALCODE,
    COUNTRY,
    SALESREPEMPLOYEENUMBER,
    CREDITLIMIT
) VALUES (
    286,
    'Marta''s Replicas Co.',
    'Hernandez',
    'Marta',
    '6175558555',
    '39323 Spinnaker Dr.',
    NULL,
    'Cambridge',
    'MA',
    '51247',
    'USA',
    1216,
    123700
);

INSERT INTO CUSTOMERS (
    CUSTOMERNUMBER,
    CUSTOMERNAME,
    CONTACTLASTNAME,
    CONTACTFIRSTNAME,
    PHONE,
    ADDRESSLINE1,
    ADDRESSLINE2,
    CITY,
    STATE,
    POSTALCODE,
    COUNTRY,
    SALESREPEMPLOYEENUMBER,
    CREDITLIMIT
) VALUES (
    293,
    'BG"&"E Collectables',
    'Harrison',
    'Ed',
    '+41 26 425 50 01',
    'Rte des Arsenaux 41 ',
    NULL,
    'Fribourg',
    NULL,
    '1700',
    'Switzerland',
    NULL,
    0
);

INSERT INTO CUSTOMERS (
    CUSTOMERNUMBER,
    CUSTOMERNAME,
    CONTACTLASTNAME,
    CONTACTFIRSTNAME,
    PHONE,
    ADDRESSLINE1,
    ADDRESSLINE2,
    CITY,
    STATE,
    POSTALCODE,
    COUNTRY,
    SALESREPEMPLOYEENUMBER,
    CREDITLIMIT
) VALUES (
    298,
    'Vida Sport, Ltd',
    'Holz',
    'Mihael',
    '0897-034555',
    'Grenzacherweg 237',
    NULL,
    'GenÃ¨ve',
    NULL,
    '1203',
    'Switzerland',
    1702,
    141300
);

INSERT INTO CUSTOMERS (
    CUSTOMERNUMBER,
    CUSTOMERNAME,
    CONTACTLASTNAME,
    CONTACTFIRSTNAME,
    PHONE,
    ADDRESSLINE1,
    ADDRESSLINE2,
    CITY,
    STATE,
    POSTALCODE,
    COUNTRY,
    SALESREPEMPLOYEENUMBER,
    CREDITLIMIT
) VALUES (
    299,
    'Norway Gifts By Mail, Co.',
    'Klaeboe',
    'Jan',
    '+47 2212 1555',
    'Drammensveien 126A',
    'PB 211 Sentrum',
    'Oslo',
    NULL,
    'N 0106',
    'Norway  ',
    1504,
    95100
);

INSERT INTO CUSTOMERS (
    CUSTOMERNUMBER,
    CUSTOMERNAME,
    CONTACTLASTNAME,
    CONTACTFIRSTNAME,
    PHONE,
    ADDRESSLINE1,
    ADDRESSLINE2,
    CITY,
    STATE,
    POSTALCODE,
    COUNTRY,
    SALESREPEMPLOYEENUMBER,
    CREDITLIMIT
) VALUES (
    303,
    'Schuyler Imports',
    'Schuyler',
    'Bradley',
    '+31 20 491 9555',
    'Kingsfordweg 151',
    NULL,
    'Amsterdam',
    NULL,
    '1043 GR',
    'Netherlands',
    NULL,
    0
);

INSERT INTO CUSTOMERS (
    CUSTOMERNUMBER,
    CUSTOMERNAME,
    CONTACTLASTNAME,
    CONTACTFIRSTNAME,
    PHONE,
    ADDRESSLINE1,
    ADDRESSLINE2,
    CITY,
    STATE,
    POSTALCODE,
    COUNTRY,
    SALESREPEMPLOYEENUMBER,
    CREDITLIMIT
) VALUES (
    307,
    'Der Hund Imports',
    'Andersen',
    'Mel',
    '030-0074555',
    'Obere Str. 57',
    NULL,
    'Berlin',
    NULL,
    '12209',
    'Germany',
    NULL,
    0
);

INSERT INTO CUSTOMERS (
    CUSTOMERNUMBER,
    CUSTOMERNAME,
    CONTACTLASTNAME,
    CONTACTFIRSTNAME,
    PHONE,
    ADDRESSLINE1,
    ADDRESSLINE2,
    CITY,
    STATE,
    POSTALCODE,
    COUNTRY,
    SALESREPEMPLOYEENUMBER,
    CREDITLIMIT
) VALUES (
    311,
    'Oulu Toy Supplies, Inc.',
    'Koskitalo',
    'Pirkko',
    '981-443655',
    'Torikatu 38',
    NULL,
    'Oulu',
    NULL,
    '90110',
    'Finland',
    1501,
    90500
);

INSERT INTO CUSTOMERS (
    CUSTOMERNUMBER,
    CUSTOMERNAME,
    CONTACTLASTNAME,
    CONTACTFIRSTNAME,
    PHONE,
    ADDRESSLINE1,
    ADDRESSLINE2,
    CITY,
    STATE,
    POSTALCODE,
    COUNTRY,
    SALESREPEMPLOYEENUMBER,
    CREDITLIMIT
) VALUES (
    314,
    'Petit Auto',
    'Dewey',
    'Catherine ',
    '(02) 5554 67',
    'Rue Joseph-Bens 532',
    NULL,
    'Bruxelles',
    NULL,
    'B-1180',
    'Belgium',
    1401,
    79900
);

INSERT INTO CUSTOMERS (
    CUSTOMERNUMBER,
    CUSTOMERNAME,
    CONTACTLASTNAME,
    CONTACTFIRSTNAME,
    PHONE,
    ADDRESSLINE1,
    ADDRESSLINE2,
    CITY,
    STATE,
    POSTALCODE,
    COUNTRY,
    SALESREPEMPLOYEENUMBER,
    CREDITLIMIT
) VALUES (
    319,
    'Mini Classics',
    'Frick',
    'Steve',
    '9145554562',
    '3758 North Pendale Street',
    NULL,
    'White Plains',
    'NY',
    '24067',
    'USA',
    1323,
    102700
);

INSERT INTO CUSTOMERS (
    CUSTOMERNUMBER,
    CUSTOMERNAME,
    CONTACTLASTNAME,
    CONTACTFIRSTNAME,
    PHONE,
    ADDRESSLINE1,
    ADDRESSLINE2,
    CITY,
    STATE,
    POSTALCODE,
    COUNTRY,
    SALESREPEMPLOYEENUMBER,
    CREDITLIMIT
) VALUES (
    320,
    'Mini Creations Ltd.',
    'Huang',
    'Wing',
    '5085559555',
    '4575 Hillside Dr.',
    NULL,
    'New Bedford',
    'MA',
    '50553',
    'USA',
    1188,
    94500
);

INSERT INTO CUSTOMERS (
    CUSTOMERNUMBER,
    CUSTOMERNAME,
    CONTACTLASTNAME,
    CONTACTFIRSTNAME,
    PHONE,
    ADDRESSLINE1,
    ADDRESSLINE2,
    CITY,
    STATE,
    POSTALCODE,
    COUNTRY,
    SALESREPEMPLOYEENUMBER,
    CREDITLIMIT
) VALUES (
    321,
    'Corporate Gift Ideas Co.',
    'Brown',
    'Julie',
    '6505551386',
    '7734 Strong St.',
    NULL,
    'San Francisco',
    'CA',
    '94217',
    'USA',
    1165,
    105000
);

INSERT INTO CUSTOMERS (
    CUSTOMERNUMBER,
    CUSTOMERNAME,
    CONTACTLASTNAME,
    CONTACTFIRSTNAME,
    PHONE,
    ADDRESSLINE1,
    ADDRESSLINE2,
    CITY,
    STATE,
    POSTALCODE,
    COUNTRY,
    SALESREPEMPLOYEENUMBER,
    CREDITLIMIT
) VALUES (
    323,
    'Down Under Souveniers, Inc',
    'Graham',
    'Mike',
    '+64 9 312 5555',
    '162-164 Grafton Road',
    'Level 2',
    'Auckland',
    NULL,
    NULL,
    'New Zealand',
    1612,
    88000
);

INSERT INTO CUSTOMERS (
    CUSTOMERNUMBER,
    CUSTOMERNAME,
    CONTACTLASTNAME,
    CONTACTFIRSTNAME,
    PHONE,
    ADDRESSLINE1,
    ADDRESSLINE2,
    CITY,
    STATE,
    POSTALCODE,
    COUNTRY,
    SALESREPEMPLOYEENUMBER,
    CREDITLIMIT
) VALUES (
    324,
    'Stylish Desk Decors, Co.',
    'Brown',
    'Ann ',
    '(171) 555-0297',
    '35 King George',
    NULL,
    'London',
    NULL,
    'WX3 6FW',
    'UK',
    1501,
    77000
);

INSERT INTO CUSTOMERS (
    CUSTOMERNUMBER,
    CUSTOMERNAME,
    CONTACTLASTNAME,
    CONTACTFIRSTNAME,
    PHONE,
    ADDRESSLINE1,
    ADDRESSLINE2,
    CITY,
    STATE,
    POSTALCODE,
    COUNTRY,
    SALESREPEMPLOYEENUMBER,
    CREDITLIMIT
) VALUES (
    328,
    'Tekni Collectables Inc.',
    'Brown',
    'William',
    '2015559350',
    '7476 Moss Rd.',
    NULL,
    'Newark',
    'NJ',
    '94019',
    'USA',
    1323,
    43000
);

INSERT INTO CUSTOMERS (
    CUSTOMERNUMBER,
    CUSTOMERNAME,
    CONTACTLASTNAME,
    CONTACTFIRSTNAME,
    PHONE,
    ADDRESSLINE1,
    ADDRESSLINE2,
    CITY,
    STATE,
    POSTALCODE,
    COUNTRY,
    SALESREPEMPLOYEENUMBER,
    CREDITLIMIT
) VALUES (
    333,
    'Australian Gift Network, Co',
    'Calaghan',
    'Ben',
    '61-7-3844-6555',
    '31 Duncan St. West End',
    NULL,
    'South Brisbane',
    'Queensland',
    '4101',
    'Australia',
    1611,
    51600
);

INSERT INTO CUSTOMERS (
    CUSTOMERNUMBER,
    CUSTOMERNAME,
    CONTACTLASTNAME,
    CONTACTFIRSTNAME,
    PHONE,
    ADDRESSLINE1,
    ADDRESSLINE2,
    CITY,
    STATE,
    POSTALCODE,
    COUNTRY,
    SALESREPEMPLOYEENUMBER,
    CREDITLIMIT
) VALUES (
    334,
    'Suominen Souveniers',
    'Suominen',
    'Kalle',
    '+358 9 8045 555',
    'Software Engineering Center',
    'SEC Oy',
    'Espoo',
    NULL,
    'FIN-02271',
    'Finland',
    1501,
    98800
);

INSERT INTO CUSTOMERS (
    CUSTOMERNUMBER,
    CUSTOMERNAME,
    CONTACTLASTNAME,
    CONTACTFIRSTNAME,
    PHONE,
    ADDRESSLINE1,
    ADDRESSLINE2,
    CITY,
    STATE,
    POSTALCODE,
    COUNTRY,
    SALESREPEMPLOYEENUMBER,
    CREDITLIMIT
) VALUES (
    335,
    'Cramer SpezialitÃ¤ten, Ltd',
    'Cramer',
    'Philip ',
    '0555-09555',
    'Maubelstr. 90',
    NULL,
    'Brandenburg',
    NULL,
    '14776',
    'Germany',
    NULL,
    0
);

INSERT INTO CUSTOMERS (
    CUSTOMERNUMBER,
    CUSTOMERNAME,
    CONTACTLASTNAME,
    CONTACTFIRSTNAME,
    PHONE,
    ADDRESSLINE1,
    ADDRESSLINE2,
    CITY,
    STATE,
    POSTALCODE,
    COUNTRY,
    SALESREPEMPLOYEENUMBER,
    CREDITLIMIT
) VALUES (
    339,
    'Classic Gift Ideas, Inc',
    'Cervantes',
    'Francisca',
    '2155554695',
    '782 First Street',
    NULL,
    'Philadelphia',
    'PA',
    '71270',
    'USA',
    1188,
    81100
);

INSERT INTO CUSTOMERS (
    CUSTOMERNUMBER,
    CUSTOMERNAME,
    CONTACTLASTNAME,
    CONTACTFIRSTNAME,
    PHONE,
    ADDRESSLINE1,
    ADDRESSLINE2,
    CITY,
    STATE,
    POSTALCODE,
    COUNTRY,
    SALESREPEMPLOYEENUMBER,
    CREDITLIMIT
) VALUES (
    344,
    'CAF Imports',
    'Fernandez',
    'Jesus',
    '+34 913 728 555',
    'Merchants House',
    '27-30 Merchant''s Quay',
    'Madrid',
    NULL,
    '28023',
    'Spain',
    1702,
    59600
);

INSERT INTO CUSTOMERS (
    CUSTOMERNUMBER,
    CUSTOMERNAME,
    CONTACTLASTNAME,
    CONTACTFIRSTNAME,
    PHONE,
    ADDRESSLINE1,
    ADDRESSLINE2,
    CITY,
    STATE,
    POSTALCODE,
    COUNTRY,
    SALESREPEMPLOYEENUMBER,
    CREDITLIMIT
) VALUES (
    347,
    'Men ''R'' US Retailers, Ltd.',
    'Chandler',
    'Brian',
    '2155554369',
    '6047 Douglas Av.',
    NULL,
    'Los Angeles',
    'CA',
    '91003',
    'USA',
    1166,
    57700
);

INSERT INTO CUSTOMERS (
    CUSTOMERNUMBER,
    CUSTOMERNAME,
    CONTACTLASTNAME,
    CONTACTFIRSTNAME,
    PHONE,
    ADDRESSLINE1,
    ADDRESSLINE2,
    CITY,
    STATE,
    POSTALCODE,
    COUNTRY,
    SALESREPEMPLOYEENUMBER,
    CREDITLIMIT
) VALUES (
    348,
    'Asian Treasures, Inc.',
    'McKenna',
    'Patricia ',
    '2967 555',
    '8 Johnstown Road',
    NULL,
    'Cork',
    'Co. Cork',
    NULL,
    'Ireland',
    NULL,
    0
);

INSERT INTO CUSTOMERS (
    CUSTOMERNUMBER,
    CUSTOMERNAME,
    CONTACTLASTNAME,
    CONTACTFIRSTNAME,
    PHONE,
    ADDRESSLINE1,
    ADDRESSLINE2,
    CITY,
    STATE,
    POSTALCODE,
    COUNTRY,
    SALESREPEMPLOYEENUMBER,
    CREDITLIMIT
) VALUES (
    350,
    'Marseille Mini Autos',
    'Lebihan',
    'Laurence ',
    '91.24.4555',
    '12, rue des Bouchers',
    NULL,
    'Marseille',
    NULL,
    '13008',
    'France',
    1337,
    65000
);

INSERT INTO CUSTOMERS (
    CUSTOMERNUMBER,
    CUSTOMERNAME,
    CONTACTLASTNAME,
    CONTACTFIRSTNAME,
    PHONE,
    ADDRESSLINE1,
    ADDRESSLINE2,
    CITY,
    STATE,
    POSTALCODE,
    COUNTRY,
    SALESREPEMPLOYEENUMBER,
    CREDITLIMIT
) VALUES (
    353,
    'Reims Collectables',
    'Henriot',
    'Paul ',
    '26.47.1555',
    '59 rue de l''Abbaye',
    NULL,
    'Reims',
    NULL,
    '51100',
    'France',
    1337,
    81100
);

INSERT INTO CUSTOMERS (
    CUSTOMERNUMBER,
    CUSTOMERNAME,
    CONTACTLASTNAME,
    CONTACTFIRSTNAME,
    PHONE,
    ADDRESSLINE1,
    ADDRESSLINE2,
    CITY,
    STATE,
    POSTALCODE,
    COUNTRY,
    SALESREPEMPLOYEENUMBER,
    CREDITLIMIT
) VALUES (
    356,
    'SAR Distributors, Co',
    'Kuger',
    'Armand',
    '+27 21 550 3555',
    '1250 Pretorius Street',
    NULL,
    'Hatfield',
    'Pretoria',
    '0028',
    'South Africa',
    NULL,
    0
);

INSERT INTO CUSTOMERS (
    CUSTOMERNUMBER,
    CUSTOMERNAME,
    CONTACTLASTNAME,
    CONTACTFIRSTNAME,
    PHONE,
    ADDRESSLINE1,
    ADDRESSLINE2,
    CITY,
    STATE,
    POSTALCODE,
    COUNTRY,
    SALESREPEMPLOYEENUMBER,
    CREDITLIMIT
) VALUES (
    357,
    'GiftsForHim.com',
    'MacKinlay',
    'Wales',
    '64-9-3763555',
    '199 Great North Road',
    NULL,
    'Auckland',
    NULL,
    NULL,
    'New Zealand',
    1612,
    77700
);

INSERT INTO CUSTOMERS (
    CUSTOMERNUMBER,
    CUSTOMERNAME,
    CONTACTLASTNAME,
    CONTACTFIRSTNAME,
    PHONE,
    ADDRESSLINE1,
    ADDRESSLINE2,
    CITY,
    STATE,
    POSTALCODE,
    COUNTRY,
    SALESREPEMPLOYEENUMBER,
    CREDITLIMIT
) VALUES (
    361,
    'Kommission Auto',
    'Josephs',
    'Karin',
    '0251-555259',
    'Luisenstr. 48',
    NULL,
    'MÃ¼nster',
    NULL,
    '44087',
    'Germany',
    NULL,
    0
);

INSERT INTO CUSTOMERS (
    CUSTOMERNUMBER,
    CUSTOMERNAME,
    CONTACTLASTNAME,
    CONTACTFIRSTNAME,
    PHONE,
    ADDRESSLINE1,
    ADDRESSLINE2,
    CITY,
    STATE,
    POSTALCODE,
    COUNTRY,
    SALESREPEMPLOYEENUMBER,
    CREDITLIMIT
) VALUES (
    362,
    'Gifts4AllAges.com',
    'Yoshido',
    'Juri',
    '6175559555',
    '8616 Spinnaker Dr.',
    NULL,
    'Boston',
    'MA',
    '51003',
    'USA',
    1216,
    41900
);

INSERT INTO CUSTOMERS (
    CUSTOMERNUMBER,
    CUSTOMERNAME,
    CONTACTLASTNAME,
    CONTACTFIRSTNAME,
    PHONE,
    ADDRESSLINE1,
    ADDRESSLINE2,
    CITY,
    STATE,
    POSTALCODE,
    COUNTRY,
    SALESREPEMPLOYEENUMBER,
    CREDITLIMIT
) VALUES (
    363,
    'Online Diecast Creations Co.',
    'Young',
    'Dorothy',
    '6035558647',
    '2304 Long Airport Avenue',
    NULL,
    'Nashua',
    'NH',
    '62005',
    'USA',
    1216,
    114200
);

INSERT INTO CUSTOMERS (
    CUSTOMERNUMBER,
    CUSTOMERNAME,
    CONTACTLASTNAME,
    CONTACTFIRSTNAME,
    PHONE,
    ADDRESSLINE1,
    ADDRESSLINE2,
    CITY,
    STATE,
    POSTALCODE,
    COUNTRY,
    SALESREPEMPLOYEENUMBER,
    CREDITLIMIT
) VALUES (
    369,
    'Lisboa Souveniers, Inc',
    'Rodriguez',
    'Lino ',
    '(1) 354-2555',
    'Jardim das rosas n. 32',
    NULL,
    'Lisboa',
    NULL,
    '1675',
    'Portugal',
    NULL,
    0
);

INSERT INTO CUSTOMERS (
    CUSTOMERNUMBER,
    CUSTOMERNAME,
    CONTACTLASTNAME,
    CONTACTFIRSTNAME,
    PHONE,
    ADDRESSLINE1,
    ADDRESSLINE2,
    CITY,
    STATE,
    POSTALCODE,
    COUNTRY,
    SALESREPEMPLOYEENUMBER,
    CREDITLIMIT
) VALUES (
    376,
    'Precious Collectables',
    'Urs',
    'Braun',
    '0452-076555',
    'Hauptstr. 29',
    NULL,
    'Bern',
    NULL,
    '3012',
    'Switzerland',
    1702,
    0
);

INSERT INTO CUSTOMERS (
    CUSTOMERNUMBER,
    CUSTOMERNAME,
    CONTACTLASTNAME,
    CONTACTFIRSTNAME,
    PHONE,
    ADDRESSLINE1,
    ADDRESSLINE2,
    CITY,
    STATE,
    POSTALCODE,
    COUNTRY,
    SALESREPEMPLOYEENUMBER,
    CREDITLIMIT
) VALUES (
    379,
    'Collectables For Less Inc.',
    'Nelson',
    'Allen',
    '6175558555',
    '7825 Douglas Av.',
    NULL,
    'Brickhaven',
    'MA',
    '58339',
    'USA',
    1188,
    70700
);

INSERT INTO CUSTOMERS (
    CUSTOMERNUMBER,
    CUSTOMERNAME,
    CONTACTLASTNAME,
    CONTACTFIRSTNAME,
    PHONE,
    ADDRESSLINE1,
    ADDRESSLINE2,
    CITY,
    STATE,
    POSTALCODE,
    COUNTRY,
    SALESREPEMPLOYEENUMBER,
    CREDITLIMIT
) VALUES (
    381,
    'Royale Belge',
    'Cartrain',
    'Pascale ',
    '(071) 23 67 2555',
    'Boulevard Tirou, 255',
    NULL,
    'Charleroi',
    NULL,
    'B-6000',
    'Belgium',
    1401,
    23500
);

INSERT INTO CUSTOMERS (
    CUSTOMERNUMBER,
    CUSTOMERNAME,
    CONTACTLASTNAME,
    CONTACTFIRSTNAME,
    PHONE,
    ADDRESSLINE1,
    ADDRESSLINE2,
    CITY,
    STATE,
    POSTALCODE,
    COUNTRY,
    SALESREPEMPLOYEENUMBER,
    CREDITLIMIT
) VALUES (
    382,
    'Salzburg Collectables',
    'Pipps',
    'Georg ',
    '6562-9555',
    'Geislweg 14',
    NULL,
    'Salzburg',
    NULL,
    '5020',
    'Austria',
    1401,
    71700
);

INSERT INTO CUSTOMERS (
    CUSTOMERNUMBER,
    CUSTOMERNAME,
    CONTACTLASTNAME,
    CONTACTFIRSTNAME,
    PHONE,
    ADDRESSLINE1,
    ADDRESSLINE2,
    CITY,
    STATE,
    POSTALCODE,
    COUNTRY,
    SALESREPEMPLOYEENUMBER,
    CREDITLIMIT
) VALUES (
    385,
    'Cruz "&" Sons Co.',
    'Cruz',
    'Arnold',
    '+63 2 555 3587',
    '15 McCallum Street',
    'NatWest Center #13-03',
    'Makati City',
    NULL,
    '1227 MM',
    'Philippines',
    1621,
    81500
);

INSERT INTO CUSTOMERS (
    CUSTOMERNUMBER,
    CUSTOMERNAME,
    CONTACTLASTNAME,
    CONTACTFIRSTNAME,
    PHONE,
    ADDRESSLINE1,
    ADDRESSLINE2,
    CITY,
    STATE,
    POSTALCODE,
    COUNTRY,
    SALESREPEMPLOYEENUMBER,
    CREDITLIMIT
) VALUES (
    386,
    'L''ordine Souveniers',
    'Moroni',
    'Maurizio ',
    '0522-556555',
    'Strada Provinciale 124',
    NULL,
    'Reggio Emilia',
    NULL,
    '42100',
    'Italy',
    1401,
    121400
);

INSERT INTO CUSTOMERS (
    CUSTOMERNUMBER,
    CUSTOMERNAME,
    CONTACTLASTNAME,
    CONTACTFIRSTNAME,
    PHONE,
    ADDRESSLINE1,
    ADDRESSLINE2,
    CITY,
    STATE,
    POSTALCODE,
    COUNTRY,
    SALESREPEMPLOYEENUMBER,
    CREDITLIMIT
) VALUES (
    398,
    'Tokyo Collectables, Ltd',
    'Shimamura',
    'Akiko',
    '+81 3 3584 0555',
    '2-2-8 Roppongi',
    NULL,
    'Minato-ku',
    'Tokyo',
    '106-0032',
    'Japan',
    1621,
    94400
);

INSERT INTO CUSTOMERS (
    CUSTOMERNUMBER,
    CUSTOMERNAME,
    CONTACTLASTNAME,
    CONTACTFIRSTNAME,
    PHONE,
    ADDRESSLINE1,
    ADDRESSLINE2,
    CITY,
    STATE,
    POSTALCODE,
    COUNTRY,
    SALESREPEMPLOYEENUMBER,
    CREDITLIMIT
) VALUES (
    406,
    'Auto Canal+ Petit',
    'Perrier',
    'Dominique',
    '(1) 47.55.6555',
    '25, rue Lauriston',
    NULL,
    'Paris',
    NULL,
    '75016',
    'France',
    1337,
    95000
);

INSERT INTO CUSTOMERS (
    CUSTOMERNUMBER,
    CUSTOMERNAME,
    CONTACTLASTNAME,
    CONTACTFIRSTNAME,
    PHONE,
    ADDRESSLINE1,
    ADDRESSLINE2,
    CITY,
    STATE,
    POSTALCODE,
    COUNTRY,
    SALESREPEMPLOYEENUMBER,
    CREDITLIMIT
) VALUES (
    409,
    'Stuttgart Collectable Exchange',
    'MÃ¼ller',
    'Rita ',
    '0711-555361',
    'Adenauerallee 900',
    NULL,
    'Stuttgart',
    NULL,
    '70563',
    'Germany',
    NULL,
    0
);

INSERT INTO CUSTOMERS (
    CUSTOMERNUMBER,
    CUSTOMERNAME,
    CONTACTLASTNAME,
    CONTACTFIRSTNAME,
    PHONE,
    ADDRESSLINE1,
    ADDRESSLINE2,
    CITY,
    STATE,
    POSTALCODE,
    COUNTRY,
    SALESREPEMPLOYEENUMBER,
    CREDITLIMIT
) VALUES (
    412,
    'Extreme Desk Decorations, Ltd',
    'McRoy',
    'Sarah',
    '04 499 9555',
    '101 Lambton Quay',
    'Level 11',
    'Wellington',
    NULL,
    NULL,
    'New Zealand',
    1612,
    86800
);

INSERT INTO CUSTOMERS (
    CUSTOMERNUMBER,
    CUSTOMERNAME,
    CONTACTLASTNAME,
    CONTACTFIRSTNAME,
    PHONE,
    ADDRESSLINE1,
    ADDRESSLINE2,
    CITY,
    STATE,
    POSTALCODE,
    COUNTRY,
    SALESREPEMPLOYEENUMBER,
    CREDITLIMIT
) VALUES (
    415,
    'Bavarian Collectables Imports, Co.',
    'Donnermeyer',
    'Michael',
    ' +49 89 61 08 9555',
    'Hansastr. 15',
    NULL,
    'Munich',
    NULL,
    '80686',
    'Germany',
    1504,
    77000
);

INSERT INTO CUSTOMERS (
    CUSTOMERNUMBER,
    CUSTOMERNAME,
    CONTACTLASTNAME,
    CONTACTFIRSTNAME,
    PHONE,
    ADDRESSLINE1,
    ADDRESSLINE2,
    CITY,
    STATE,
    POSTALCODE,
    COUNTRY,
    SALESREPEMPLOYEENUMBER,
    CREDITLIMIT
) VALUES (
    424,
    'Classic Legends Inc.',
    'Hernandez',
    'Maria',
    '2125558493',
    '5905 Pompton St.',
    'Suite 750',
    'NYC',
    'NY',
    '10022',
    'USA',
    1286,
    67500
);

INSERT INTO CUSTOMERS (
    CUSTOMERNUMBER,
    CUSTOMERNAME,
    CONTACTLASTNAME,
    CONTACTFIRSTNAME,
    PHONE,
    ADDRESSLINE1,
    ADDRESSLINE2,
    CITY,
    STATE,
    POSTALCODE,
    COUNTRY,
    SALESREPEMPLOYEENUMBER,
    CREDITLIMIT
) VALUES (
    443,
    'Feuer Online Stores, Inc',
    'Feuer',
    'Alexander ',
    '0342-555176',
    'Heerstr. 22',
    NULL,
    'Leipzig',
    NULL,
    '04179',
    'Germany',
    NULL,
    0
);

INSERT INTO CUSTOMERS (
    CUSTOMERNUMBER,
    CUSTOMERNAME,
    CONTACTLASTNAME,
    CONTACTFIRSTNAME,
    PHONE,
    ADDRESSLINE1,
    ADDRESSLINE2,
    CITY,
    STATE,
    POSTALCODE,
    COUNTRY,
    SALESREPEMPLOYEENUMBER,
    CREDITLIMIT
) VALUES (
    447,
    'Gift Ideas Corp.',
    'Lewis',
    'Dan',
    '2035554407',
    '2440 Pompton St.',
    NULL,
    'Glendale',
    'CT',
    '97561',
    'USA',
    1323,
    49700
);

INSERT INTO CUSTOMERS (
    CUSTOMERNUMBER,
    CUSTOMERNAME,
    CONTACTLASTNAME,
    CONTACTFIRSTNAME,
    PHONE,
    ADDRESSLINE1,
    ADDRESSLINE2,
    CITY,
    STATE,
    POSTALCODE,
    COUNTRY,
    SALESREPEMPLOYEENUMBER,
    CREDITLIMIT
) VALUES (
    448,
    'Scandinavian Gift Ideas',
    'Larsson',
    'Martha',
    '0695-34 6555',
    'Ã…kergatan 24',
    NULL,
    'BrÃ¤cke',
    NULL,
    'S-844 67',
    'Sweden',
    1504,
    116400
);

INSERT INTO CUSTOMERS (
    CUSTOMERNUMBER,
    CUSTOMERNAME,
    CONTACTLASTNAME,
    CONTACTFIRSTNAME,
    PHONE,
    ADDRESSLINE1,
    ADDRESSLINE2,
    CITY,
    STATE,
    POSTALCODE,
    COUNTRY,
    SALESREPEMPLOYEENUMBER,
    CREDITLIMIT
) VALUES (
    450,
    'The Sharp Gifts Warehouse',
    'Frick',
    'Sue',
    '4085553659',
    '3086 Ingle Ln.',
    NULL,
    'San Jose',
    'CA',
    '94217',
    'USA',
    1165,
    77600
);

INSERT INTO CUSTOMERS (
    CUSTOMERNUMBER,
    CUSTOMERNAME,
    CONTACTLASTNAME,
    CONTACTFIRSTNAME,
    PHONE,
    ADDRESSLINE1,
    ADDRESSLINE2,
    CITY,
    STATE,
    POSTALCODE,
    COUNTRY,
    SALESREPEMPLOYEENUMBER,
    CREDITLIMIT
) VALUES (
    452,
    'Mini Auto Werke',
    'Mendel',
    'Roland ',
    '7675-3555',
    'Kirchgasse 6',
    NULL,
    'Graz',
    NULL,
    '8010',
    'Austria',
    1401,
    45300
);

INSERT INTO CUSTOMERS (
    CUSTOMERNUMBER,
    CUSTOMERNAME,
    CONTACTLASTNAME,
    CONTACTFIRSTNAME,
    PHONE,
    ADDRESSLINE1,
    ADDRESSLINE2,
    CITY,
    STATE,
    POSTALCODE,
    COUNTRY,
    SALESREPEMPLOYEENUMBER,
    CREDITLIMIT
) VALUES (
    455,
    'Super Scale Inc.',
    'Murphy',
    'Leslie',
    '2035559545',
    '567 North Pendale Street',
    NULL,
    'New Haven',
    'CT',
    '97823',
    'USA',
    1286,
    95400
);

INSERT INTO CUSTOMERS (
    CUSTOMERNUMBER,
    CUSTOMERNAME,
    CONTACTLASTNAME,
    CONTACTFIRSTNAME,
    PHONE,
    ADDRESSLINE1,
    ADDRESSLINE2,
    CITY,
    STATE,
    POSTALCODE,
    COUNTRY,
    SALESREPEMPLOYEENUMBER,
    CREDITLIMIT
) VALUES (
    456,
    'Microscale Inc.',
    'Choi',
    'Yu',
    '2125551957',
    '5290 North Pendale Street',
    'Suite 200',
    'NYC',
    'NY',
    '10022',
    'USA',
    1286,
    39800
);

INSERT INTO CUSTOMERS (
    CUSTOMERNUMBER,
    CUSTOMERNAME,
    CONTACTLASTNAME,
    CONTACTFIRSTNAME,
    PHONE,
    ADDRESSLINE1,
    ADDRESSLINE2,
    CITY,
    STATE,
    POSTALCODE,
    COUNTRY,
    SALESREPEMPLOYEENUMBER,
    CREDITLIMIT
) VALUES (
    458,
    'Corrida Auto Replicas, Ltd',
    'Sommer',
    'MartÃn ',
    '(91) 555 22 82',
    'C/ Araquil, 67',
    NULL,
    'Madrid',
    NULL,
    '28023',
    'Spain',
    1702,
    104600
);

INSERT INTO CUSTOMERS (
    CUSTOMERNUMBER,
    CUSTOMERNAME,
    CONTACTLASTNAME,
    CONTACTFIRSTNAME,
    PHONE,
    ADDRESSLINE1,
    ADDRESSLINE2,
    CITY,
    STATE,
    POSTALCODE,
    COUNTRY,
    SALESREPEMPLOYEENUMBER,
    CREDITLIMIT
) VALUES (
    459,
    'Warburg Exchange',
    'Ottlieb',
    'Sven ',
    '0241-039123',
    'Walserweg 21',
    NULL,
    'Aachen',
    NULL,
    '52066',
    'Germany',
    NULL,
    0
);

INSERT INTO CUSTOMERS (
    CUSTOMERNUMBER,
    CUSTOMERNAME,
    CONTACTLASTNAME,
    CONTACTFIRSTNAME,
    PHONE,
    ADDRESSLINE1,
    ADDRESSLINE2,
    CITY,
    STATE,
    POSTALCODE,
    COUNTRY,
    SALESREPEMPLOYEENUMBER,
    CREDITLIMIT
) VALUES (
    462,
    'FunGiftIdeas.com',
    'Benitez',
    'Violeta',
    '5085552555',
    '1785 First Street',
    NULL,
    'New Bedford',
    'MA',
    '50553',
    'USA',
    1216,
    85800
);

INSERT INTO CUSTOMERS (
    CUSTOMERNUMBER,
    CUSTOMERNAME,
    CONTACTLASTNAME,
    CONTACTFIRSTNAME,
    PHONE,
    ADDRESSLINE1,
    ADDRESSLINE2,
    CITY,
    STATE,
    POSTALCODE,
    COUNTRY,
    SALESREPEMPLOYEENUMBER,
    CREDITLIMIT
) VALUES (
    465,
    'Anton Designs, Ltd.',
    'Anton',
    'Carmen',
    '+34 913 728555',
    'c/ Gobelas, 19-1 Urb. La Florida',
    NULL,
    'Madrid',
    NULL,
    '28023',
    'Spain',
    NULL,
    0
);

INSERT INTO CUSTOMERS (
    CUSTOMERNUMBER,
    CUSTOMERNAME,
    CONTACTLASTNAME,
    CONTACTFIRSTNAME,
    PHONE,
    ADDRESSLINE1,
    ADDRESSLINE2,
    CITY,
    STATE,
    POSTALCODE,
    COUNTRY,
    SALESREPEMPLOYEENUMBER,
    CREDITLIMIT
) VALUES (
    471,
    'Australian Collectables, Ltd',
    'Clenahan',
    'Sean',
    '61-9-3844-6555',
    '7 Allen Street',
    NULL,
    'Glen Waverly',
    'Victoria',
    '3150',
    'Australia',
    1611,
    60300
);

INSERT INTO CUSTOMERS (
    CUSTOMERNUMBER,
    CUSTOMERNAME,
    CONTACTLASTNAME,
    CONTACTFIRSTNAME,
    PHONE,
    ADDRESSLINE1,
    ADDRESSLINE2,
    CITY,
    STATE,
    POSTALCODE,
    COUNTRY,
    SALESREPEMPLOYEENUMBER,
    CREDITLIMIT
) VALUES (
    473,
    'Frau da Collezione',
    'Ricotti',
    'Franco',
    '+39 022515555',
    '20093 Cologno Monzese',
    'Alessandro Volta 16',
    'Milan',
    NULL,
    NULL,
    'Italy',
    1401,
    34800
);

INSERT INTO CUSTOMERS (
    CUSTOMERNUMBER,
    CUSTOMERNAME,
    CONTACTLASTNAME,
    CONTACTFIRSTNAME,
    PHONE,
    ADDRESSLINE1,
    ADDRESSLINE2,
    CITY,
    STATE,
    POSTALCODE,
    COUNTRY,
    SALESREPEMPLOYEENUMBER,
    CREDITLIMIT
) VALUES (
    475,
    'West Coast Collectables Co.',
    'Thompson',
    'Steve',
    '3105553722',
    '3675 Furth Circle',
    NULL,
    'Burbank',
    'CA',
    '94019',
    'USA',
    1166,
    55400
);

INSERT INTO CUSTOMERS (
    CUSTOMERNUMBER,
    CUSTOMERNAME,
    CONTACTLASTNAME,
    CONTACTFIRSTNAME,
    PHONE,
    ADDRESSLINE1,
    ADDRESSLINE2,
    CITY,
    STATE,
    POSTALCODE,
    COUNTRY,
    SALESREPEMPLOYEENUMBER,
    CREDITLIMIT
) VALUES (
    477,
    'Mit VergnÃ¼gen "&" Co.',
    'Moos',
    'Hanna ',
    '0621-08555',
    'Forsterstr. 57',
    NULL,
    'Mannheim',
    NULL,
    '68306',
    'Germany',
    NULL,
    0
);

INSERT INTO CUSTOMERS (
    CUSTOMERNUMBER,
    CUSTOMERNAME,
    CONTACTLASTNAME,
    CONTACTFIRSTNAME,
    PHONE,
    ADDRESSLINE1,
    ADDRESSLINE2,
    CITY,
    STATE,
    POSTALCODE,
    COUNTRY,
    SALESREPEMPLOYEENUMBER,
    CREDITLIMIT
) VALUES (
    480,
    'Kremlin Collectables, Co.',
    'Semenov',
    'Alexander ',
    '+7 812 293 0521',
    '2 Pobedy Square',
    NULL,
    'Saint Petersburg',
    NULL,
    '196143',
    'Russia',
    NULL,
    0
);

INSERT INTO CUSTOMERS (
    CUSTOMERNUMBER,
    CUSTOMERNAME,
    CONTACTLASTNAME,
    CONTACTFIRSTNAME,
    PHONE,
    ADDRESSLINE1,
    ADDRESSLINE2,
    CITY,
    STATE,
    POSTALCODE,
    COUNTRY,
    SALESREPEMPLOYEENUMBER,
    CREDITLIMIT
) VALUES (
    481,
    'Raanan Stores, Inc',
    'Altagar,G M',
    'Raanan',
    '+ 972 9 959 8555',
    '3 Hagalim Blv.',
    NULL,
    'Herzlia',
    NULL,
    '47625',
    'Israel',
    NULL,
    0
);

INSERT INTO CUSTOMERS (
    CUSTOMERNUMBER,
    CUSTOMERNAME,
    CONTACTLASTNAME,
    CONTACTFIRSTNAME,
    PHONE,
    ADDRESSLINE1,
    ADDRESSLINE2,
    CITY,
    STATE,
    POSTALCODE,
    COUNTRY,
    SALESREPEMPLOYEENUMBER,
    CREDITLIMIT
) VALUES (
    484,
    'Iberia Gift Imports, Corp.',
    'Roel',
    'JosÃ© Pedro ',
    '(95) 555 82 82',
    'C/ Romero, 33',
    NULL,
    'Sevilla',
    NULL,
    '41101',
    'Spain',
    1702,
    65700
);

INSERT INTO CUSTOMERS (
    CUSTOMERNUMBER,
    CUSTOMERNAME,
    CONTACTLASTNAME,
    CONTACTFIRSTNAME,
    PHONE,
    ADDRESSLINE1,
    ADDRESSLINE2,
    CITY,
    STATE,
    POSTALCODE,
    COUNTRY,
    SALESREPEMPLOYEENUMBER,
    CREDITLIMIT
) VALUES (
    486,
    'Motor Mint Distributors Inc.',
    'Salazar',
    'Rosa',
    '2155559857',
    '11328 Douglas Av.',
    NULL,
    'Philadelphia',
    'PA',
    '71270',
    'USA',
    1323,
    72600
);

INSERT INTO CUSTOMERS (
    CUSTOMERNUMBER,
    CUSTOMERNAME,
    CONTACTLASTNAME,
    CONTACTFIRSTNAME,
    PHONE,
    ADDRESSLINE1,
    ADDRESSLINE2,
    CITY,
    STATE,
    POSTALCODE,
    COUNTRY,
    SALESREPEMPLOYEENUMBER,
    CREDITLIMIT
) VALUES (
    487,
    'Signal Collectibles Ltd.',
    'Taylor',
    'Sue',
    '4155554312',
    '2793 Furth Circle',
    NULL,
    'Brisbane',
    'CA',
    '94217',
    'USA',
    1165,
    60300
);

INSERT INTO CUSTOMERS (
    CUSTOMERNUMBER,
    CUSTOMERNAME,
    CONTACTLASTNAME,
    CONTACTFIRSTNAME,
    PHONE,
    ADDRESSLINE1,
    ADDRESSLINE2,
    CITY,
    STATE,
    POSTALCODE,
    COUNTRY,
    SALESREPEMPLOYEENUMBER,
    CREDITLIMIT
) VALUES (
    489,
    'Double Decker Gift Stores, Ltd',
    'Smith',
    'Thomas ',
    '(171) 555-7555',
    '120 Hanover Sq.',
    NULL,
    'London',
    NULL,
    'WA1 1DP',
    'UK',
    1501,
    43300
);

INSERT INTO CUSTOMERS (
    CUSTOMERNUMBER,
    CUSTOMERNAME,
    CONTACTLASTNAME,
    CONTACTFIRSTNAME,
    PHONE,
    ADDRESSLINE1,
    ADDRESSLINE2,
    CITY,
    STATE,
    POSTALCODE,
    COUNTRY,
    SALESREPEMPLOYEENUMBER,
    CREDITLIMIT
) VALUES (
    495,
    'Diecast Collectables',
    'Franco',
    'Valarie',
    '6175552555',
    '6251 Ingle Ln.',
    NULL,
    'Boston',
    'MA',
    '51003',
    'USA',
    1188,
    85100
);

INSERT INTO CUSTOMERS (
    CUSTOMERNUMBER,
    CUSTOMERNAME,
    CONTACTLASTNAME,
    CONTACTFIRSTNAME,
    PHONE,
    ADDRESSLINE1,
    ADDRESSLINE2,
    CITY,
    STATE,
    POSTALCODE,
    COUNTRY,
    SALESREPEMPLOYEENUMBER,
    CREDITLIMIT
) VALUES (
    496,
    'Kelly''s Gift Shop',
    'Snowden',
    'Tony',
    '+64 9 5555500',
    'Arenales 1938 3''A''',
    NULL,
    'Auckland',
    NULL,
    NULL,
    'New Zealand',
    1612,
    110000
);

--------------------------------------------------------
--  Constraints for Table CUSTOMERS
--------------------------------------------------------

ALTER TABLE CUSTOMERS MODIFY ("CUSTOMERNUMBER" NOT NULL ENABLE);

ALTER TABLE CUSTOMERS MODIFY ("CUSTOMERNAME" NOT NULL ENABLE);

ALTER TABLE CUSTOMERS MODIFY ("CONTACTLASTNAME" NOT NULL ENABLE);

ALTER TABLE CUSTOMERS MODIFY ("CONTACTFIRSTNAME" NOT NULL ENABLE);

ALTER TABLE CUSTOMERS MODIFY ("PHONE" NOT NULL ENABLE);

ALTER TABLE CUSTOMERS MODIFY ("ADDRESSLINE1" NOT NULL ENABLE);

ALTER TABLE CUSTOMERS MODIFY ("CITY" NOT NULL ENABLE);

ALTER TABLE CUSTOMERS MODIFY ("COUNTRY" NOT NULL ENABLE);

--------------------------------------------------------
--  DDL for Table ORDERDETAILS
--------------------------------------------------------

CREATE TABLE ORDERDETAILS (
    "ORDERNUMBER" NUMBER(*, 0),
    "PRODUCTCODE" VARCHAR2(15 BYTE),
    "QUANTITYORDERED" NUMBER(*, 0),
    "PRICEEACH" NUMBER(10, 2),
    "ORDERLINENUMBER" NUMBER(*, 0)
) SEGMENT CREATION IMMEDIATE PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING STORAGE(
    INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645 PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT
) TABLESPACE "USER_DATA";

REM INSERTING into ORDERDETAILS
SET DEFINE OFF;

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10155,
    'S18_1662',
    38,
    138.77,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10155,
    'S18_3029',
    44,
    83.44,
    11
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10155,
    'S18_3856',
    29,
    105.87,
    10
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10155,
    'S24_2841',
    23,
    62.34,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10155,
    'S24_3420',
    34,
    56.55,
    7
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10155,
    'S24_3816',
    37,
    76.31,
    12
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10155,
    'S24_3949',
    44,
    58.69,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10155,
    'S700_2047',
    32,
    89.61,
    9
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10155,
    'S700_2466',
    20,
    87.75,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10155,
    'S700_3167',
    43,
    76.8,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10155,
    'S700_4002',
    44,
    70.33,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10155,
    'S72_1253',
    34,
    49.16,
    8
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10156,
    'S50_1341',
    20,
    43.64,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10156,
    'S700_1691',
    48,
    77.64,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10157,
    'S18_2581',
    33,
    69.27,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10157,
    'S24_1785',
    40,
    89.72,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10157,
    'S24_4278',
    33,
    66.65,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10157,
    'S32_1374',
    34,
    83.91,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10157,
    'S32_4289',
    28,
    56.41,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10157,
    'S700_2834',
    48,
    109.16,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10158,
    'S24_2000',
    22,
    67.79,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10159,
    'S10_1678',
    49,
    81.35,
    14
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10159,
    'S10_2016',
    37,
    101.1,
    17
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10159,
    'S10_4698',
    22,
    170.42,
    16
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10159,
    'S12_1099',
    41,
    188.73,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10159,
    'S12_2823',
    38,
    131.04,
    13
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10159,
    'S12_3990',
    24,
    67.03,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10159,
    'S18_2625',
    42,
    51.48,
    18
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10159,
    'S18_3278',
    21,
    66.74,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10159,
    'S18_3482',
    25,
    129.35,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10159,
    'S18_3782',
    21,
    54.71,
    8
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10159,
    'S18_4721',
    32,
    142.85,
    7
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10159,
    'S24_1578',
    44,
    100.3,
    15
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10159,
    'S24_2360',
    27,
    67.18,
    11
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10159,
    'S24_3371',
    50,
    49.6,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10159,
    'S24_4620',
    23,
    80.84,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10159,
    'S32_2206',
    35,
    39.43,
    9
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10159,
    'S32_4485',
    23,
    86.74,
    12
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10159,
    'S50_4713',
    31,
    78.11,
    10
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10160,
    'S12_3380',
    46,
    96.3,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10160,
    'S12_4675',
    50,
    93.28,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10160,
    'S18_1889',
    38,
    70.84,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10160,
    'S18_3232',
    20,
    140.55,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10160,
    'S24_2972',
    42,
    30.59,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10160,
    'S24_3856',
    35,
    130.6,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10161,
    'S18_1129',
    28,
    121.72,
    12
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10161,
    'S18_1589',
    43,
    102.04,
    8
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10161,
    'S18_1984',
    48,
    139.41,
    11
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10161,
    'S18_2870',
    23,
    125.4,
    9
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10161,
    'S18_3685',
    36,
    132.8,
    10
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10161,
    'S18_4933',
    25,
    62.72,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10161,
    'S24_1046',
    37,
    73.49,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10161,
    'S24_1628',
    23,
    47.29,
    7
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10161,
    'S24_2766',
    20,
    82.69,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10161,
    'S24_2887',
    25,
    108.04,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10161,
    'S24_3191',
    20,
    72.77,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10161,
    'S24_3432',
    30,
    94.23,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10162,
    'S18_1342',
    48,
    87.33,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10162,
    'S18_1367',
    45,
    45.28,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10162,
    'S18_1749',
    29,
    141.1,
    9
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10162,
    'S18_2248',
    27,
    53.28,
    8
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10162,
    'S18_2325',
    38,
    113.15,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10162,
    'S18_2795',
    48,
    156.94,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10162,
    'S18_4409',
    39,
    86.51,
    10
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10162,
    'S24_1937',
    37,
    27.55,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10162,
    'S24_2022',
    43,
    38.98,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10162,
    'S24_3969',
    37,
    32.82,
    7
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10163,
    'S10_1949',
    21,
    212.16,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10163,
    'S18_2949',
    31,
    101.31,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10163,
    'S18_2957',
    48,
    59.96,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10163,
    'S18_3136',
    40,
    101.58,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10163,
    'S18_3320',
    43,
    80.36,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10163,
    'S24_4258',
    42,
    96.42,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10164,
    'S10_4962',
    21,
    143.31,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10164,
    'S12_1666',
    49,
    121.64,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10164,
    'S18_1097',
    36,
    103.84,
    8
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10164,
    'S18_4600',
    45,
    107.76,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10164,
    'S18_4668',
    25,
    46.29,
    7
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10164,
    'S32_1268',
    24,
    91.49,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10164,
    'S32_3522',
    49,
    57.53,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10164,
    'S700_2824',
    39,
    86.99,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10165,
    'S12_1108',
    44,
    168.32,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10165,
    'S12_3148',
    34,
    123.89,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10165,
    'S12_3891',
    27,
    152.26,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10165,
    'S12_4473',
    48,
    109.02,
    12
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10165,
    'S18_2238',
    29,
    134.26,
    11
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10165,
    'S18_2319',
    46,
    120.28,
    15
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10165,
    'S18_2432',
    31,
    60.77,
    18
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10165,
    'S18_3232',
    47,
    154.1,
    16
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10165,
    'S18_3259',
    50,
    84.71,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10165,
    'S18_4027',
    28,
    123.51,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10165,
    'S24_1444',
    25,
    46.82,
    9
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10165,
    'S24_2300',
    32,
    117.57,
    17
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10165,
    'S24_2840',
    27,
    31.12,
    13
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10165,
    'S24_4048',
    24,
    106.45,
    8
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10165,
    'S32_2509',
    48,
    50.86,
    14
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10165,
    'S32_3207',
    44,
    55.3,
    7
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10165,
    'S50_1392',
    48,
    106.49,
    10
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10165,
    'S50_1514',
    38,
    49.21,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10166,
    'S18_3140',
    43,
    136.59,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10166,
    'S18_4522',
    26,
    72.85,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10166,
    'S700_1938',
    29,
    76.22,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10167,
    'S10_4757',
    44,
    123.76,
    9
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10167,
    'S18_1662',
    43,
    141.92,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10167,
    'S18_3029',
    46,
    69.68,
    7
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10167,
    'S18_3856',
    34,
    84.7,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10167,
    'S24_2011',
    33,
    110.6,
    16
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10167,
    'S24_2841',
    21,
    54.81,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10167,
    'S24_3151',
    20,
    77,
    11
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10167,
    'S24_3420',
    32,
    64.44,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10167,
    'S24_3816',
    29,
    73.8,
    8
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10167,
    'S700_1138',
    43,
    66,
    12
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10167,
    'S700_2047',
    29,
    87.8,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10167,
    'S700_2610',
    46,
    62.16,
    10
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10167,
    'S700_3505',
    24,
    85.14,
    13
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10167,
    'S700_3962',
    28,
    83.42,
    14
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10167,
    'S72_1253',
    40,
    42.71,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10167,
    'S72_3212',
    38,
    43.68,
    15
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10168,
    'S10_1678',
    36,
    94.74,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10168,
    'S10_2016',
    27,
    97.53,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10168,
    'S10_4698',
    20,
    160.74,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10168,
    'S18_2581',
    21,
    75.19,
    9
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10168,
    'S18_2625',
    46,
    49.06,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10168,
    'S24_1578',
    50,
    103.68,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10168,
    'S24_1785',
    49,
    93.01,
    11
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10168,
    'S24_2000',
    29,
    72.36,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10168,
    'S24_3949',
    27,
    57.32,
    18
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10168,
    'S24_4278',
    48,
    68.1,
    10
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10168,
    'S32_1374',
    28,
    89.9,
    7
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10168,
    'S32_4289',
    31,
    57.78,
    12
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10168,
    'S50_1341',
    48,
    39.71,
    13
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10168,
    'S700_1691',
    28,
    91.34,
    14
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10168,
    'S700_2466',
    31,
    87.75,
    16
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10168,
    'S700_2834',
    36,
    94.92,
    8
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10168,
    'S700_3167',
    48,
    72,
    15
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10168,
    'S700_4002',
    39,
    67.37,
    17
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10169,
    'S12_1099',
    30,
    163.44,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10169,
    'S12_2823',
    35,
    126.52,
    13
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10169,
    'S12_3990',
    36,
    71.82,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10169,
    'S18_3278',
    32,
    65.13,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10169,
    'S18_3482',
    36,
    136.7,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10169,
    'S18_3782',
    38,
    52.84,
    8
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10169,
    'S18_4721',
    33,
    120.53,
    7
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10169,
    'S24_2360',
    38,
    66.49,
    11
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10169,
    'S24_3371',
    34,
    53.27,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10169,
    'S24_4620',
    24,
    77.61,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10169,
    'S32_2206',
    26,
    37.01,
    9
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10169,
    'S32_4485',
    34,
    83.68,
    12
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10169,
    'S50_4713',
    48,
    75.66,
    10
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10170,
    'S12_3380',
    47,
    116.27,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10170,
    'S12_4675',
    41,
    93.28,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10170,
    'S18_1889',
    20,
    70.07,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10170,
    'S24_3856',
    34,
    130.6,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10171,
    'S18_1129',
    35,
    134.46,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10171,
    'S18_1984',
    35,
    128.03,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10171,
    'S18_3232',
    39,
    165.95,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10171,
    'S24_2972',
    36,
    34.74,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10172,
    'S18_1589',
    42,
    109.51,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10172,
    'S18_2870',
    39,
    117.48,
    7
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10172,
    'S18_3685',
    48,
    139.87,
    8
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10172,
    'S24_1046',
    32,
    61,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10172,
    'S24_1628',
    34,
    43.27,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10172,
    'S24_2766',
    22,
    79.97,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10172,
    'S24_3191',
    24,
    77.91,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10172,
    'S24_3432',
    22,
    87.81,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10173,
    'S18_1342',
    43,
    101.71,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10173,
    'S18_1367',
    48,
    51.75,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10173,
    'S18_1749',
    24,
    168.3,
    13
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10173,
    'S18_2248',
    26,
    55.09,
    12
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10173,
    'S18_2325',
    31,
    127.13,
    10
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10173,
    'S18_2795',
    22,
    140.06,
    7
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10173,
    'S18_2957',
    28,
    56.84,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10173,
    'S18_3136',
    31,
    86.92,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10173,
    'S18_3320',
    29,
    90.28,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10173,
    'S18_4409',
    21,
    77.31,
    14
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10173,
    'S18_4933',
    39,
    58.44,
    15
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10173,
    'S24_1937',
    31,
    29.87,
    9
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10173,
    'S24_2022',
    27,
    39.42,
    8
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10173,
    'S24_2887',
    23,
    98.65,
    16
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10173,
    'S24_3969',
    35,
    35.7,
    11
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10173,
    'S24_4258',
    22,
    93.49,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10174,
    'S10_1949',
    34,
    207.87,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10174,
    'S12_1666',
    43,
    113.44,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10174,
    'S18_1097',
    48,
    108.5,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10174,
    'S18_2949',
    46,
    100.3,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10174,
    'S18_4668',
    49,
    44.27,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10175,
    'S10_4962',
    33,
    119.67,
    9
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10175,
    'S12_4473',
    26,
    109.02,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10175,
    'S18_2319',
    48,
    101.87,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10175,
    'S18_2432',
    41,
    59.55,
    7
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10175,
    'S18_3232',
    29,
    150.71,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10175,
    'S18_4600',
    47,
    102.92,
    10
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10175,
    'S24_2300',
    28,
    121.4,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10175,
    'S24_2840',
    37,
    32.18,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10175,
    'S32_1268',
    22,
    89.57,
    8
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10175,
    'S32_2509',
    50,
    50.86,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10175,
    'S32_3522',
    29,
    56.24,
    12
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10175,
    'S700_2824',
    42,
    80.92,
    11
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10176,
    'S12_1108',
    33,
    166.24,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10176,
    'S12_3148',
    47,
    145.04,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10176,
    'S12_3891',
    50,
    160.91,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10176,
    'S18_2238',
    20,
    139.17,
    10
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10176,
    'S18_4027',
    36,
    140.75,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10176,
    'S24_1444',
    27,
    55.49,
    8
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10176,
    'S24_4048',
    29,
    101.72,
    7
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10176,
    'S32_3207',
    22,
    62.14,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10176,
    'S50_1392',
    23,
    109.96,
    9
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10176,
    'S50_1514',
    38,
    52.14,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10177,
    'S18_3140',
    23,
    113.37,
    9
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10177,
    'S18_3259',
    29,
    92.77,
    11
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10177,
    'S18_4522',
    35,
    82.5,
    8
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10177,
    'S24_2011',
    50,
    115.52,
    7
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10177,
    'S24_3151',
    45,
    79.66,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10177,
    'S700_1138',
    24,
    58.67,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10177,
    'S700_1938',
    31,
    77.95,
    10
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10177,
    'S700_2610',
    32,
    64.33,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10177,
    'S700_3505',
    44,
    88.15,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10177,
    'S700_3962',
    24,
    83.42,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10177,
    'S72_3212',
    40,
    52.96,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10178,
    'S10_4757',
    24,
    131.92,
    12
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10178,
    'S18_1662',
    42,
    127.73,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10178,
    'S18_3029',
    41,
    70.54,
    10
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10178,
    'S18_3856',
    48,
    104.81,
    9
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10178,
    'S24_2841',
    34,
    67.82,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10178,
    'S24_3420',
    27,
    65.75,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10178,
    'S24_3816',
    21,
    68.77,
    11
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10178,
    'S24_3949',
    30,
    64.15,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10178,
    'S700_2047',
    34,
    86.9,
    8
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10178,
    'S700_2466',
    22,
    91.74,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10178,
    'S700_4002',
    45,
    68.11,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10178,
    'S72_1253',
    45,
    41.71,
    7
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10179,
    'S18_2581',
    24,
    82.79,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10179,
    'S24_1785',
    47,
    105.04,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10179,
    'S24_4278',
    27,
    66.65,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10179,
    'S32_1374',
    45,
    86.9,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10179,
    'S32_4289',
    24,
    63.97,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10179,
    'S50_1341',
    34,
    43.2,
    7
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10179,
    'S700_1691',
    23,
    75.81,
    8
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10179,
    'S700_2834',
    25,
    98.48,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10179,
    'S700_3167',
    39,
    80,
    9
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10180,
    'S10_1678',
    29,
    76.56,
    9
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10180,
    'S10_2016',
    42,
    99.91,
    12
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10180,
    'S10_4698',
    41,
    164.61,
    11
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10180,
    'S12_2823',
    40,
    131.04,
    8
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10180,
    'S18_2625',
    25,
    48.46,
    13
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10180,
    'S18_3782',
    21,
    59.06,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10180,
    'S18_4721',
    44,
    147.31,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10180,
    'S24_1578',
    48,
    98.05,
    10
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10180,
    'S24_2000',
    28,
    61.7,
    14
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10180,
    'S24_2360',
    35,
    60.95,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10180,
    'S24_4620',
    28,
    68.71,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10180,
    'S32_2206',
    34,
    33.39,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10180,
    'S32_4485',
    22,
    102.05,
    7
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10180,
    'S50_4713',
    21,
    74.85,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10181,
    'S12_1099',
    27,
    155.66,
    14
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10181,
    'S12_3380',
    28,
    113.92,
    12
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10181,
    'S12_3990',
    20,
    67.03,
    15
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10181,
    'S12_4675',
    36,
    107.1,
    11
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10181,
    'S18_1129',
    44,
    124.56,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10181,
    'S18_1589',
    42,
    124.44,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10181,
    'S18_1889',
    22,
    74.69,
    10
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10181,
    'S18_1984',
    21,
    129.45,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10181,
    'S18_2870',
    27,
    130.68,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10181,
    'S18_3232',
    45,
    147.33,
    7
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10181,
    'S18_3278',
    30,
    73.17,
    17
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10181,
    'S18_3482',
    22,
    120.53,
    16
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10181,
    'S18_3685',
    39,
    137.04,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10181,
    'S24_1628',
    34,
    45.28,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10181,
    'S24_2972',
    37,
    32.85,
    8
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10181,
    'S24_3371',
    23,
    54.49,
    13
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10181,
    'S24_3856',
    25,
    122.17,
    9
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10182,
    'S18_1342',
    25,
    83.22,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10182,
    'S18_1367',
    32,
    44.21,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10182,
    'S18_1749',
    44,
    159.8,
    10
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10182,
    'S18_2248',
    38,
    54.49,
    9
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10182,
    'S18_2325',
    20,
    105.52,
    7
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10182,
    'S18_2795',
    21,
    135,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10182,
    'S18_3320',
    33,
    86.31,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10182,
    'S18_4409',
    36,
    88.35,
    11
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10182,
    'S18_4933',
    44,
    61.29,
    12
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10182,
    'S24_1046',
    47,
    63.2,
    16
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10182,
    'S24_1937',
    39,
    31.86,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10182,
    'S24_2022',
    31,
    39.87,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10182,
    'S24_2766',
    36,
    87.24,
    14
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10182,
    'S24_2887',
    20,
    116.27,
    13
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10182,
    'S24_3191',
    33,
    73.62,
    15
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10182,
    'S24_3432',
    49,
    95.3,
    17
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10182,
    'S24_3969',
    23,
    34.88,
    8
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10183,
    'S10_1949',
    23,
    180.01,
    8
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10183,
    'S10_4962',
    28,
    127.06,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10183,
    'S12_1666',
    41,
    114.8,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10183,
    'S18_1097',
    21,
    108.5,
    7
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10183,
    'S18_2949',
    37,
    91.18,
    9
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10183,
    'S18_2957',
    39,
    51.22,
    11
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10183,
    'S18_3136',
    22,
    90.06,
    10
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10183,
    'S18_4600',
    21,
    118.66,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10183,
    'S18_4668',
    40,
    42.26,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10183,
    'S24_4258',
    47,
    81.81,
    12
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10183,
    'S32_3522',
    49,
    52.36,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10183,
    'S700_2824',
    23,
    85.98,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10184,
    'S12_4473',
    37,
    105.47,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10184,
    'S18_2238',
    46,
    145.72,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10184,
    'S18_2319',
    46,
    119.05,
    9
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10184,
    'S18_2432',
    44,
    60.77,
    12
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10184,
    'S18_3232',
    28,
    165.95,
    10
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10184,
    'S24_1444',
    31,
    57.22,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10184,
    'S24_2300',
    24,
    117.57,
    11
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10184,
    'S24_2840',
    42,
    30.06,
    7
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10184,
    'S24_4048',
    49,
    114.73,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10184,
    'S32_1268',
    46,
    84.75,
    13
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10184,
    'S32_2509',
    33,
    52.49,
    8
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10184,
    'S32_3207',
    48,
    59.03,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10184,
    'S50_1392',
    45,
    92.6,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10185,
    'S12_1108',
    21,
    195.33,
    13
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10185,
    'S12_3148',
    33,
    146.55,
    14
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10185,
    'S12_3891',
    43,
    147.07,
    12
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10185,
    'S18_3140',
    28,
    124.3,
    9
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10185,
    'S18_3259',
    49,
    94.79,
    11
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10185,
    'S18_4027',
    39,
    127.82,
    16
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10185,
    'S18_4522',
    47,
    87.77,
    8
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10185,
    'S24_2011',
    30,
    105.69,
    7
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10185,
    'S24_3151',
    33,
    83.2,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10185,
    'S50_1514',
    20,
    46.86,
    15
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10185,
    'S700_1138',
    21,
    64.67,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10185,
    'S700_1938',
    30,
    79.68,
    10
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10185,
    'S700_2610',
    39,
    61.44,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10185,
    'S700_3505',
    37,
    99.17,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10185,
    'S700_3962',
    22,
    93.35,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10185,
    'S72_3212',
    28,
    47.5,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10186,
    'S10_4757',
    26,
    108.8,
    9
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10186,
    'S18_1662',
    32,
    137.19,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10186,
    'S18_3029',
    32,
    73.12,
    7
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10186,
    'S18_3856',
    46,
    98.46,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10186,
    'S24_2841',
    22,
    60.29,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10186,
    'S24_3420',
    21,
    59.83,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10186,
    'S24_3816',
    36,
    68.77,
    8
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10186,
    'S700_2047',
    24,
    80.56,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10186,
    'S72_1253',
    28,
    42.71,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10187,
    'S18_2581',
    45,
    70.12,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10187,
    'S24_1785',
    46,
    96.29,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10187,
    'S24_3949',
    43,
    55.96,
    10
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10187,
    'S24_4278',
    33,
    64.48,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10187,
    'S32_4289',
    31,
    61.22,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10187,
    'S50_1341',
    41,
    39.71,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10187,
    'S700_1691',
    34,
    84.95,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10187,
    'S700_2466',
    44,
    95.73,
    8
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10187,
    'S700_3167',
    34,
    72,
    7
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10187,
    'S700_4002',
    44,
    70.33,
    9
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10188,
    'S10_1678',
    48,
    95.7,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10188,
    'S10_2016',
    38,
    111.8,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10188,
    'S10_4698',
    45,
    182.04,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10188,
    'S18_2625',
    32,
    52.09,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10188,
    'S24_1578',
    25,
    95.8,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10188,
    'S24_2000',
    40,
    61.7,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10188,
    'S32_1374',
    44,
    81.91,
    7
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10188,
    'S700_2834',
    29,
    96.11,
    8
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10189,
    'S12_2823',
    28,
    138.57,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10190,
    'S24_2360',
    42,
    58.87,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10190,
    'S32_2206',
    46,
    38.62,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10190,
    'S32_4485',
    42,
    89.8,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10190,
    'S50_4713',
    40,
    67.53,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10191,
    'S12_1099',
    21,
    155.66,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10191,
    'S12_3380',
    40,
    104.52,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10191,
    'S12_3990',
    30,
    70.22,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10191,
    'S18_3278',
    36,
    75.59,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10191,
    'S18_3482',
    23,
    119.06,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10191,
    'S18_3782',
    43,
    60.93,
    9
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10191,
    'S18_4721',
    32,
    136.9,
    8
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10191,
    'S24_3371',
    48,
    53.27,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10191,
    'S24_4620',
    44,
    77.61,
    7
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10192,
    'S12_4675',
    27,
    99.04,
    16
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10192,
    'S18_1129',
    22,
    140.12,
    11
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10192,
    'S18_1589',
    29,
    100.8,
    7
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10192,
    'S18_1889',
    45,
    70.84,
    15
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10192,
    'S18_1984',
    47,
    128.03,
    10
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10192,
    'S18_2870',
    38,
    110.88,
    8
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10192,
    'S18_3232',
    26,
    137.17,
    12
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10192,
    'S18_3685',
    45,
    125.74,
    9
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10192,
    'S24_1046',
    37,
    72.02,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10192,
    'S24_1628',
    47,
    49.3,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10192,
    'S24_2766',
    46,
    86.33,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10192,
    'S24_2887',
    23,
    112.74,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10192,
    'S24_2972',
    30,
    33.23,
    13
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10192,
    'S24_3191',
    32,
    69.34,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10192,
    'S24_3432',
    46,
    93.16,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10192,
    'S24_3856',
    45,
    112.34,
    14
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10193,
    'S18_1342',
    28,
    92.47,
    7
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10193,
    'S18_1367',
    46,
    46.36,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10193,
    'S18_1749',
    21,
    153,
    14
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10193,
    'S18_2248',
    42,
    60.54,
    13
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10193,
    'S18_2325',
    44,
    115.69,
    11
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10193,
    'S18_2795',
    22,
    143.44,
    8
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10193,
    'S18_2949',
    28,
    87.13,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10193,
    'S18_2957',
    24,
    53.09,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10193,
    'S18_3136',
    23,
    97.39,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10193,
    'S18_3320',
    32,
    79.37,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10193,
    'S18_4409',
    24,
    92.03,
    15
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10193,
    'S18_4933',
    25,
    66.28,
    16
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10193,
    'S24_1937',
    26,
    32.19,
    10
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10193,
    'S24_2022',
    20,
    44.8,
    9
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10193,
    'S24_3969',
    22,
    38.16,
    12
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10193,
    'S24_4258',
    20,
    92.52,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10194,
    'S10_1949',
    42,
    203.59,
    11
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10194,
    'S10_4962',
    26,
    134.44,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10194,
    'S12_1666',
    38,
    124.37,
    8
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10194,
    'S18_1097',
    21,
    103.84,
    10
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10194,
    'S18_2432',
    45,
    51.05,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10194,
    'S18_4600',
    32,
    113.82,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10194,
    'S18_4668',
    41,
    47.79,
    9
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10194,
    'S24_2300',
    49,
    112.46,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10194,
    'S32_1268',
    37,
    77.05,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10194,
    'S32_3522',
    39,
    61.41,
    7
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10194,
    'S700_2824',
    26,
    80.92,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10195,
    'S12_4473',
    49,
    118.5,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10195,
    'S18_2238',
    27,
    139.17,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10195,
    'S18_2319',
    35,
    112.91,
    9
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10195,
    'S18_3232',
    50,
    150.71,
    10
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10195,
    'S24_1444',
    44,
    54.33,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10195,
    'S24_2840',
    32,
    31.82,
    7
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10195,
    'S24_4048',
    34,
    95.81,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10195,
    'S32_2509',
    32,
    51.95,
    8
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10195,
    'S32_3207',
    33,
    59.03,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10195,
    'S50_1392',
    49,
    97.23,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10196,
    'S12_1108',
    47,
    203.64,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10196,
    'S12_3148',
    24,
    151.08,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10196,
    'S12_3891',
    38,
    147.07,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10196,
    'S18_3140',
    49,
    127.03,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10196,
    'S18_3259',
    35,
    81.68,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10196,
    'S18_4027',
    27,
    126.39,
    8
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10196,
    'S50_1514',
    46,
    56.82,
    7
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10196,
    'S700_1938',
    50,
    84.88,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10197,
    'S10_4757',
    45,
    118.32,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10197,
    'S18_3029',
    46,
    83.44,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10197,
    'S18_3856',
    22,
    85.75,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10197,
    'S18_4522',
    50,
    78.99,
    14
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10197,
    'S24_2011',
    41,
    109.37,
    13
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10197,
    'S24_3151',
    47,
    83.2,
    8
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10197,
    'S24_3816',
    22,
    67.93,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10197,
    'S700_1138',
    23,
    60,
    9
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10197,
    'S700_2047',
    24,
    78.75,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10197,
    'S700_2610',
    50,
    66.5,
    7
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10197,
    'S700_3505',
    27,
    100.17,
    10
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10197,
    'S700_3962',
    35,
    88.39,
    11
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10197,
    'S72_1253',
    29,
    39.73,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10197,
    'S72_3212',
    42,
    48.59,
    12
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10198,
    'S18_1662',
    42,
    149.81,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10198,
    'S24_2841',
    48,
    60.97,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10198,
    'S24_3420',
    27,
    61.81,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10198,
    'S24_3949',
    43,
    65.51,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10198,
    'S700_2466',
    42,
    94.73,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10198,
    'S700_4002',
    40,
    74.03,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10199,
    'S50_1341',
    29,
    37.97,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10199,
    'S700_1691',
    48,
    81.29,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10199,
    'S700_3167',
    38,
    70.4,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10200,
    'S18_2581',
    28,
    74.34,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10200,
    'S24_1785',
    33,
    99.57,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10200,
    'S24_4278',
    39,
    70.28,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10200,
    'S32_1374',
    35,
    80.91,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10200,
    'S32_4289',
    27,
    65.35,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10200,
    'S700_2834',
    39,
    115.09,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10201,
    'S10_1678',
    22,
    82.3,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10201,
    'S10_2016',
    24,
    116.56,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10201,
    'S10_4698',
    49,
    191.72,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10201,
    'S12_2823',
    25,
    126.52,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10201,
    'S18_2625',
    30,
    48.46,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10201,
    'S24_1578',
    39,
    93.54,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10201,
    'S24_2000',
    25,
    66.27,
    7
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10202,
    'S18_3782',
    30,
    55.33,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10202,
    'S18_4721',
    43,
    124.99,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10202,
    'S24_2360',
    50,
    56.1,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10202,
    'S24_4620',
    50,
    75.18,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10202,
    'S32_2206',
    27,
    33.39,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10202,
    'S32_4485',
    31,
    81.64,
    7
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10202,
    'S50_4713',
    40,
    79.73,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10203,
    'S12_1099',
    20,
    161.49,
    8
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10203,
    'S12_3380',
    20,
    111.57,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10203,
    'S12_3990',
    44,
    63.84,
    9
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10203,
    'S12_4675',
    47,
    115.16,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10203,
    'S18_1889',
    45,
    73.15,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10203,
    'S18_3232',
    48,
    157.49,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10203,
    'S18_3278',
    33,
    66.74,
    11
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10203,
    'S18_3482',
    32,
    127.88,
    10
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10203,
    'S24_2972',
    21,
    33.23,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10203,
    'S24_3371',
    34,
    56.94,
    7
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10203,
    'S24_3856',
    47,
    140.43,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10204,
    'S18_1129',
    42,
    114.65,
    17
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10204,
    'S18_1589',
    40,
    113.24,
    13
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10204,
    'S18_1749',
    33,
    153,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10204,
    'S18_1984',
    38,
    133.72,
    16
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10204,
    'S18_2248',
    23,
    59.33,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10204,
    'S18_2325',
    26,
    119.5,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10204,
    'S18_2870',
    27,
    106.92,
    14
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10204,
    'S18_3685',
    35,
    132.8,
    15
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10204,
    'S18_4409',
    29,
    83.75,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10204,
    'S18_4933',
    45,
    69.84,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10204,
    'S24_1046',
    20,
    69.82,
    10
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10204,
    'S24_1628',
    45,
    46.79,
    12
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10204,
    'S24_2766',
    47,
    79.06,
    8
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10204,
    'S24_2887',
    42,
    112.74,
    7
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10204,
    'S24_3191',
    40,
    84.75,
    9
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10204,
    'S24_3432',
    48,
    104.94,
    11
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10204,
    'S24_3969',
    39,
    34.88,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10205,
    'S18_1342',
    36,
    98.63,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10205,
    'S18_1367',
    48,
    45.82,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10205,
    'S18_2795',
    40,
    138.38,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10205,
    'S24_1937',
    32,
    27.88,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10205,
    'S24_2022',
    24,
    36.74,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10206,
    'S10_1949',
    47,
    203.59,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10206,
    'S12_1666',
    28,
    109.34,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10206,
    'S18_1097',
    34,
    115.5,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10206,
    'S18_2949',
    37,
    98.27,
    7
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10206,
    'S18_2957',
    28,
    51.84,
    9
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10206,
    'S18_3136',
    30,
    102.63,
    8
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10206,
    'S18_3320',
    28,
    99.21,
    11
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10206,
    'S18_4668',
    21,
    45.78,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10206,
    'S24_4258',
    33,
    95.44,
    10
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10206,
    'S32_3522',
    36,
    54.94,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10206,
    'S700_2824',
    33,
    89.01,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10207,
    'S10_4962',
    31,
    125.58,
    15
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10207,
    'S12_4473',
    34,
    95.99,
    7
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10207,
    'S18_2238',
    44,
    140.81,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10207,
    'S18_2319',
    43,
    109.23,
    10
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10207,
    'S18_2432',
    37,
    60.77,
    13
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10207,
    'S18_3232',
    25,
    140.55,
    11
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10207,
    'S18_4027',
    40,
    143.62,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10207,
    'S18_4600',
    47,
    119.87,
    16
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10207,
    'S24_1444',
    49,
    57.8,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10207,
    'S24_2300',
    46,
    127.79,
    12
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10207,
    'S24_2840',
    42,
    30.76,
    8
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10207,
    'S24_4048',
    28,
    108.82,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10207,
    'S32_1268',
    49,
    84.75,
    14
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10207,
    'S32_2509',
    27,
    51.95,
    9
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10207,
    'S32_3207',
    45,
    55.3,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10207,
    'S50_1392',
    28,
    106.49,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10208,
    'S12_1108',
    46,
    176.63,
    13
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10208,
    'S12_3148',
    26,
    128.42,
    14
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10208,
    'S12_3891',
    20,
    152.26,
    12
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10208,
    'S18_3140',
    24,
    117.47,
    9
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10208,
    'S18_3259',
    48,
    96.81,
    11
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10208,
    'S18_4522',
    45,
    72.85,
    8
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10208,
    'S24_2011',
    35,
    122.89,
    7
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10208,
    'S24_3151',
    20,
    80.54,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10208,
    'S50_1514',
    30,
    57.99,
    15
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10208,
    'S700_1138',
    38,
    56.67,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10208,
    'S700_1938',
    40,
    73.62,
    10
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10208,
    'S700_2610',
    46,
    63.61,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10208,
    'S700_3505',
    37,
    95.16,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10208,
    'S700_3962',
    33,
    95.34,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10208,
    'S72_3212',
    42,
    48.05,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10209,
    'S10_4757',
    39,
    129.2,
    8
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10209,
    'S18_3029',
    28,
    82.58,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10209,
    'S18_3856',
    20,
    97.4,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10209,
    'S24_2841',
    43,
    66.45,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10209,
    'S24_3420',
    36,
    56.55,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10209,
    'S24_3816',
    22,
    79.67,
    7
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10209,
    'S700_2047',
    33,
    90.52,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10209,
    'S72_1253',
    48,
    44.2,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10210,
    'S10_2016',
    23,
    112.99,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10210,
    'S10_4698',
    34,
    189.79,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10210,
    'S18_1662',
    31,
    141.92,
    17
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10210,
    'S18_2581',
    50,
    68.43,
    7
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10210,
    'S18_2625',
    40,
    51.48,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10210,
    'S24_1785',
    27,
    100.67,
    9
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10210,
    'S24_2000',
    30,
    63.22,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10210,
    'S24_3949',
    29,
    56.64,
    16
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10210,
    'S24_4278',
    40,
    68.1,
    8
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10210,
    'S32_1374',
    46,
    84.91,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10210,
    'S32_4289',
    39,
    57.1,
    10
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10210,
    'S50_1341',
    43,
    43.2,
    11
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10210,
    'S700_1691',
    21,
    87.69,
    12
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10210,
    'S700_2466',
    26,
    93.74,
    14
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10210,
    'S700_2834',
    25,
    98.48,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10210,
    'S700_3167',
    31,
    64,
    13
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10210,
    'S700_4002',
    42,
    60.7,
    15
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10211,
    'S10_1678',
    41,
    90.92,
    14
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10211,
    'S12_1099',
    41,
    171.22,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10211,
    'S12_2823',
    36,
    126.52,
    13
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10211,
    'S12_3990',
    28,
    79.8,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10211,
    'S18_3278',
    35,
    73.17,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10211,
    'S18_3482',
    28,
    138.17,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10211,
    'S18_3782',
    46,
    60.3,
    8
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10211,
    'S18_4721',
    41,
    148.8,
    7
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10211,
    'S24_1578',
    25,
    109.32,
    15
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10211,
    'S24_2360',
    21,
    62.33,
    11
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10211,
    'S24_3371',
    48,
    52.66,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10211,
    'S24_4620',
    22,
    80.84,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10211,
    'S32_2206',
    41,
    39.83,
    9
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10211,
    'S32_4485',
    37,
    94.91,
    12
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10211,
    'S50_4713',
    40,
    70.78,
    10
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10212,
    'S12_3380',
    39,
    99.82,
    16
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10212,
    'S12_4675',
    33,
    110.55,
    15
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10212,
    'S18_1129',
    29,
    117.48,
    10
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10212,
    'S18_1589',
    38,
    105.77,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10212,
    'S18_1889',
    20,
    64.68,
    14
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10212,
    'S18_1984',
    41,
    133.72,
    9
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10212,
    'S18_2870',
    40,
    117.48,
    7
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10212,
    'S18_3232',
    40,
    155.79,
    11
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10212,
    'S18_3685',
    45,
    115.85,
    8
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10212,
    'S24_1046',
    41,
    61.73,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10212,
    'S24_1628',
    45,
    43.27,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10212,
    'S24_2766',
    45,
    81.78,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10212,
    'S24_2972',
    34,
    37.38,
    12
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10212,
    'S24_3191',
    27,
    77.91,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10212,
    'S24_3432',
    46,
    100.66,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10212,
    'S24_3856',
    49,
    117.96,
    13
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10213,
    'S18_4409',
    38,
    84.67,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10213,
    'S18_4933',
    25,
    58.44,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10213,
    'S24_2887',
    27,
    97.48,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10214,
    'S18_1749',
    30,
    166.6,
    7
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10214,
    'S18_2248',
    21,
    53.28,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10214,
    'S18_2325',
    27,
    125.86,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10214,
    'S18_2795',
    50,
    167.06,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10214,
    'S24_1937',
    20,
    32.19,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10214,
    'S24_2022',
    49,
    39.87,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10214,
    'S24_3969',
    44,
    38.57,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10215,
    'S10_1949',
    35,
    205.73,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10215,
    'S18_1097',
    46,
    100.34,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10215,
    'S18_1342',
    27,
    92.47,
    10
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10215,
    'S18_1367',
    33,
    53.91,
    9
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10215,
    'S18_2949',
    49,
    97.26,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10215,
    'S18_2957',
    31,
    56.21,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10215,
    'S18_3136',
    49,
    89.01,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10215,
    'S18_3320',
    41,
    84.33,
    8
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10215,
    'S18_4668',
    46,
    42.76,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10215,
    'S24_4258',
    39,
    94.47,
    7
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10216,
    'S12_1666',
    43,
    133.94,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10217,
    'S10_4962',
    48,
    132.97,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10217,
    'S18_2432',
    35,
    58.34,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10217,
    'S18_4600',
    38,
    118.66,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10217,
    'S24_2300',
    28,
    103.51,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10217,
    'S32_1268',
    21,
    78.97,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10217,
    'S32_3522',
    39,
    56.24,
    7
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10217,
    'S700_2824',
    31,
    90.02,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10218,
    'S18_2319',
    22,
    110.46,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10218,
    'S18_3232',
    34,
    152.41,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10219,
    'S12_4473',
    48,
    94.8,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10219,
    'S18_2238',
    43,
    132.62,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10219,
    'S24_2840',
    21,
    31.12,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10219,
    'S32_2509',
    35,
    47.62,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10220,
    'S12_1108',
    32,
    189.1,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10220,
    'S12_3148',
    30,
    151.08,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10220,
    'S12_3891',
    27,
    166.1,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10220,
    'S18_4027',
    50,
    126.39,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10220,
    'S24_1444',
    26,
    48.55,
    8
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10220,
    'S24_4048',
    37,
    101.72,
    7
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10220,
    'S32_3207',
    20,
    49.71,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10220,
    'S50_1392',
    37,
    92.6,
    9
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10220,
    'S50_1514',
    30,
    56.82,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10221,
    'S18_3140',
    33,
    133.86,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10221,
    'S18_3259',
    23,
    89.75,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10221,
    'S18_4522',
    39,
    84.26,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10221,
    'S24_2011',
    49,
    113.06,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10221,
    'S700_1938',
    23,
    69.29,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10222,
    'S10_4757',
    49,
    133.28,
    12
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10222,
    'S18_1662',
    49,
    137.19,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10222,
    'S18_3029',
    49,
    79.14,
    10
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10222,
    'S18_3856',
    45,
    88.93,
    9
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10222,
    'S24_2841',
    32,
    56.86,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10222,
    'S24_3151',
    47,
    74.35,
    14
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10222,
    'S24_3420',
    43,
    61.15,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10222,
    'S24_3816',
    46,
    77.99,
    11
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10222,
    'S24_3949',
    48,
    55.27,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10222,
    'S700_1138',
    31,
    58.67,
    15
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10222,
    'S700_2047',
    26,
    80.56,
    8
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10222,
    'S700_2466',
    37,
    90.75,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10222,
    'S700_2610',
    36,
    69.39,
    13
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10222,
    'S700_3505',
    38,
    84.14,
    16
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10222,
    'S700_3962',
    31,
    81.43,
    17
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10222,
    'S700_4002',
    43,
    66.63,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10222,
    'S72_1253',
    31,
    45.19,
    7
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10222,
    'S72_3212',
    36,
    48.59,
    18
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10223,
    'S10_1678',
    37,
    80.39,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10223,
    'S10_2016',
    47,
    110.61,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10223,
    'S10_4698',
    49,
    189.79,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10223,
    'S18_2581',
    47,
    67.58,
    9
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10223,
    'S18_2625',
    28,
    58.75,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10223,
    'S24_1578',
    32,
    104.81,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10223,
    'S24_1785',
    34,
    87.54,
    11
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10223,
    'S24_2000',
    38,
    60.94,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10223,
    'S24_4278',
    23,
    68.1,
    10
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10223,
    'S32_1374',
    21,
    90.9,
    7
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10223,
    'S32_4289',
    20,
    66.73,
    12
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10223,
    'S50_1341',
    41,
    41.02,
    13
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10223,
    'S700_1691',
    25,
    84.03,
    14
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10223,
    'S700_2834',
    29,
    113.9,
    8
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10223,
    'S700_3167',
    26,
    79.2,
    15
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10224,
    'S12_2823',
    43,
    141.58,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10224,
    'S18_3782',
    38,
    57.2,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10224,
    'S24_2360',
    37,
    60.26,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10224,
    'S32_2206',
    43,
    37.01,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10224,
    'S32_4485',
    30,
    94.91,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10224,
    'S50_4713',
    50,
    81.36,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10225,
    'S12_1099',
    27,
    157.6,
    9
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10225,
    'S12_3380',
    25,
    101,
    7
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10225,
    'S12_3990',
    37,
    64.64,
    10
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10225,
    'S12_4675',
    21,
    100.19,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10225,
    'S18_1129',
    32,
    116.06,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10225,
    'S18_1889',
    47,
    71.61,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10225,
    'S18_3232',
    43,
    162.57,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10225,
    'S18_3278',
    37,
    69.96,
    12
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10225,
    'S18_3482',
    27,
    119.06,
    11
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10225,
    'S18_4721',
    35,
    135.41,
    14
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10225,
    'S24_2972',
    42,
    34.74,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10225,
    'S24_3371',
    24,
    51.43,
    8
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10225,
    'S24_3856',
    40,
    130.6,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10225,
    'S24_4620',
    46,
    77.61,
    13
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10226,
    'S18_1589',
    38,
    108.26,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10226,
    'S18_1984',
    24,
    129.45,
    7
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10226,
    'S18_2870',
    24,
    125.4,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10226,
    'S18_3685',
    46,
    122.91,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10226,
    'S24_1046',
    21,
    65.41,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10226,
    'S24_1628',
    36,
    47.79,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10226,
    'S24_3432',
    48,
    95.3,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10227,
    'S18_1342',
    25,
    85.27,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10227,
    'S18_1367',
    31,
    50.14,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10227,
    'S18_1749',
    26,
    136,
    10
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10227,
    'S18_2248',
    28,
    59.93,
    9
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10227,
    'S18_2325',
    46,
    118.23,
    7
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10227,
    'S18_2795',
    29,
    146.81,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10227,
    'S18_3320',
    33,
    99.21,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10227,
    'S18_4409',
    34,
    87.43,
    11
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10227,
    'S18_4933',
    37,
    70.56,
    12
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10227,
    'S24_1937',
    42,
    27.22,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10227,
    'S24_2022',
    24,
    39.42,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10227,
    'S24_2766',
    47,
    84.51,
    14
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10227,
    'S24_2887',
    33,
    102.17,
    13
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10227,
    'S24_3191',
    40,
    78.76,
    15
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10227,
    'S24_3969',
    27,
    34.88,
    8
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10228,
    'S10_1949',
    29,
    214.3,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10228,
    'S18_1097',
    32,
    100.34,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10228,
    'S18_2949',
    24,
    101.31,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10228,
    'S18_2957',
    45,
    57.46,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10228,
    'S18_3136',
    31,
    100.53,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10228,
    'S24_4258',
    33,
    84.73,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10229,
    'S10_4962',
    50,
    138.88,
    9
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10229,
    'S12_1666',
    25,
    110.7,
    13
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10229,
    'S12_4473',
    36,
    95.99,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10229,
    'S18_2319',
    26,
    104.32,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10100,
    'S18_1749',
    30,
    136,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10100,
    'S18_2248',
    50,
    55.09,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10100,
    'S18_4409',
    22,
    75.46,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10100,
    'S24_3969',
    49,
    35.29,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10101,
    'S18_2325',
    25,
    108.06,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10101,
    'S18_2795',
    26,
    167.06,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10101,
    'S24_1937',
    45,
    32.53,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10101,
    'S24_2022',
    46,
    44.35,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10102,
    'S18_1342',
    39,
    95.55,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10102,
    'S18_1367',
    41,
    43.13,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10103,
    'S10_1949',
    26,
    214.3,
    11
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10103,
    'S10_4962',
    42,
    119.67,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10103,
    'S12_1666',
    27,
    121.64,
    8
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10103,
    'S18_1097',
    35,
    94.5,
    10
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10103,
    'S18_2432',
    22,
    58.34,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10103,
    'S18_2949',
    27,
    92.19,
    12
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10103,
    'S18_2957',
    35,
    61.84,
    14
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10103,
    'S18_3136',
    25,
    86.92,
    13
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10103,
    'S18_3320',
    46,
    86.31,
    16
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10103,
    'S18_4600',
    36,
    98.07,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10103,
    'S18_4668',
    41,
    40.75,
    9
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10103,
    'S24_2300',
    36,
    107.34,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10103,
    'S24_4258',
    25,
    88.62,
    15
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10103,
    'S32_1268',
    31,
    92.46,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10103,
    'S32_3522',
    45,
    63.35,
    7
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10103,
    'S700_2824',
    42,
    94.07,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10104,
    'S12_3148',
    34,
    131.44,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10104,
    'S12_4473',
    41,
    111.39,
    9
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10104,
    'S18_2238',
    24,
    135.9,
    8
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10104,
    'S18_2319',
    29,
    122.73,
    12
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10104,
    'S18_3232',
    23,
    165.95,
    13
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10104,
    'S18_4027',
    38,
    119.2,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10104,
    'S24_1444',
    35,
    52.02,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10104,
    'S24_2840',
    44,
    30.41,
    10
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10104,
    'S24_4048',
    26,
    106.45,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10104,
    'S32_2509',
    35,
    51.95,
    11
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10104,
    'S32_3207',
    49,
    56.55,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10104,
    'S50_1392',
    33,
    114.59,
    7
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10104,
    'S50_1514',
    32,
    53.31,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10105,
    'S10_4757',
    50,
    127.84,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10105,
    'S12_1108',
    41,
    205.72,
    15
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10105,
    'S12_3891',
    29,
    141.88,
    14
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10105,
    'S18_3140',
    22,
    136.59,
    11
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10105,
    'S18_3259',
    38,
    87.73,
    13
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10105,
    'S18_4522',
    41,
    75.48,
    10
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10105,
    'S24_2011',
    43,
    117.97,
    9
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10105,
    'S24_3151',
    44,
    73.46,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10105,
    'S24_3816',
    50,
    75.47,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10105,
    'S700_1138',
    41,
    54,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10105,
    'S700_1938',
    29,
    86.61,
    12
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10105,
    'S700_2610',
    31,
    60.72,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10105,
    'S700_3505',
    39,
    92.16,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10105,
    'S700_3962',
    22,
    99.31,
    7
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10105,
    'S72_3212',
    25,
    44.77,
    8
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10106,
    'S18_1662',
    36,
    134.04,
    12
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10106,
    'S18_2581',
    34,
    81.1,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10106,
    'S18_3029',
    41,
    80.86,
    18
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10106,
    'S18_3856',
    41,
    94.22,
    17
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10106,
    'S24_1785',
    28,
    107.23,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10106,
    'S24_2841',
    49,
    65.77,
    13
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10106,
    'S24_3420',
    31,
    55.89,
    14
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10106,
    'S24_3949',
    50,
    55.96,
    11
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10106,
    'S24_4278',
    26,
    71,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10106,
    'S32_4289',
    33,
    65.35,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10106,
    'S50_1341',
    39,
    35.78,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10106,
    'S700_1691',
    31,
    91.34,
    7
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10106,
    'S700_2047',
    30,
    85.09,
    16
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10106,
    'S700_2466',
    34,
    99.72,
    9
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10106,
    'S700_2834',
    32,
    113.9,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10106,
    'S700_3167',
    44,
    76,
    8
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10106,
    'S700_4002',
    48,
    70.33,
    10
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10106,
    'S72_1253',
    48,
    43.7,
    15
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10107,
    'S10_1678',
    30,
    81.35,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10107,
    'S10_2016',
    39,
    105.86,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10107,
    'S10_4698',
    27,
    172.36,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10107,
    'S12_2823',
    21,
    122,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10107,
    'S18_2625',
    29,
    52.7,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10107,
    'S24_1578',
    25,
    96.92,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10107,
    'S24_2000',
    38,
    73.12,
    7
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10107,
    'S32_1374',
    20,
    88.9,
    8
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10108,
    'S12_1099',
    33,
    165.38,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10108,
    'S12_3380',
    45,
    96.3,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10108,
    'S12_3990',
    39,
    75.81,
    7
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10108,
    'S12_4675',
    36,
    107.1,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10108,
    'S18_1889',
    38,
    67.76,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10108,
    'S18_3278',
    26,
    73.17,
    9
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10108,
    'S18_3482',
    29,
    132.29,
    8
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10108,
    'S18_3782',
    43,
    52.84,
    12
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10108,
    'S18_4721',
    44,
    139.87,
    11
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10108,
    'S24_2360',
    35,
    64.41,
    15
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10108,
    'S24_3371',
    30,
    60.01,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10108,
    'S24_3856',
    40,
    132,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10108,
    'S24_4620',
    31,
    67.1,
    10
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10108,
    'S32_2206',
    27,
    36.21,
    13
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10108,
    'S32_4485',
    31,
    87.76,
    16
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10108,
    'S50_4713',
    34,
    74.85,
    14
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10109,
    'S18_1129',
    26,
    117.48,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10109,
    'S18_1984',
    38,
    137.98,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10109,
    'S18_2870',
    26,
    126.72,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10109,
    'S18_3232',
    46,
    160.87,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10109,
    'S18_3685',
    47,
    125.74,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10109,
    'S24_2972',
    29,
    32.1,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10110,
    'S18_1589',
    37,
    118.22,
    16
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10110,
    'S18_1749',
    42,
    153,
    7
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10110,
    'S18_2248',
    32,
    51.46,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10110,
    'S18_2325',
    33,
    115.69,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10110,
    'S18_2795',
    31,
    163.69,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10110,
    'S18_4409',
    28,
    81.91,
    8
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10110,
    'S18_4933',
    42,
    62,
    9
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10110,
    'S24_1046',
    36,
    72.02,
    13
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10110,
    'S24_1628',
    29,
    43.27,
    15
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10110,
    'S24_1937',
    20,
    28.88,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10110,
    'S24_2022',
    39,
    40.77,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10110,
    'S24_2766',
    43,
    82.69,
    11
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10110,
    'S24_2887',
    46,
    112.74,
    10
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10110,
    'S24_3191',
    27,
    80.47,
    12
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10110,
    'S24_3432',
    37,
    96.37,
    14
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10110,
    'S24_3969',
    48,
    35.29,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10111,
    'S18_1342',
    33,
    87.33,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10111,
    'S18_1367',
    48,
    48.52,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10111,
    'S18_2957',
    28,
    53.09,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10111,
    'S18_3136',
    43,
    94.25,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10111,
    'S18_3320',
    39,
    91.27,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10111,
    'S24_4258',
    26,
    85.7,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10112,
    'S10_1949',
    29,
    197.16,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10112,
    'S18_2949',
    23,
    85.1,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10113,
    'S12_1666',
    21,
    121.64,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10113,
    'S18_1097',
    49,
    101.5,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10113,
    'S18_4668',
    50,
    43.27,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10113,
    'S32_3522',
    23,
    58.82,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10114,
    'S10_4962',
    31,
    128.53,
    8
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10114,
    'S18_2319',
    39,
    106.78,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10114,
    'S18_2432',
    45,
    53.48,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10114,
    'S18_3232',
    48,
    169.34,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10114,
    'S18_4600',
    41,
    105.34,
    9
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10114,
    'S24_2300',
    21,
    102.23,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10114,
    'S24_2840',
    24,
    28.64,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10114,
    'S32_1268',
    32,
    88.61,
    7
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10114,
    'S32_2509',
    28,
    43.83,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10114,
    'S700_2824',
    42,
    82.94,
    10
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10115,
    'S12_4473',
    46,
    111.39,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10115,
    'S18_2238',
    46,
    140.81,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10115,
    'S24_1444',
    47,
    56.64,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10115,
    'S24_4048',
    44,
    106.45,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10115,
    'S50_1392',
    27,
    100.7,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10116,
    'S32_3207',
    27,
    60.28,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10117,
    'S12_1108',
    33,
    195.33,
    9
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10117,
    'S12_3148',
    43,
    148.06,
    10
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10117,
    'S12_3891',
    39,
    173.02,
    8
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10117,
    'S18_3140',
    26,
    121.57,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10117,
    'S18_3259',
    21,
    81.68,
    7
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10117,
    'S18_4027',
    22,
    122.08,
    12
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10117,
    'S18_4522',
    23,
    73.73,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10117,
    'S24_2011',
    41,
    119.2,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10117,
    'S50_1514',
    21,
    55.65,
    11
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10117,
    'S700_1938',
    38,
    75.35,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10117,
    'S700_3962',
    45,
    89.38,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10117,
    'S72_3212',
    50,
    52.42,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10118,
    'S700_3505',
    36,
    86.15,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10119,
    'S10_4757',
    46,
    112.88,
    11
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10119,
    'S18_1662',
    43,
    151.38,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10119,
    'S18_3029',
    21,
    74.84,
    9
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10119,
    'S18_3856',
    27,
    95.28,
    8
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10119,
    'S24_2841',
    41,
    64.4,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10119,
    'S24_3151',
    35,
    72.58,
    13
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10119,
    'S24_3420',
    20,
    63.12,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10119,
    'S24_3816',
    35,
    82.18,
    10
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10119,
    'S24_3949',
    28,
    62.1,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10119,
    'S700_1138',
    25,
    57.34,
    14
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10119,
    'S700_2047',
    29,
    74.23,
    7
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10119,
    'S700_2610',
    38,
    67.22,
    12
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10119,
    'S700_4002',
    26,
    63.67,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10119,
    'S72_1253',
    28,
    40.22,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10120,
    'S10_2016',
    29,
    118.94,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10120,
    'S10_4698',
    46,
    158.8,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10120,
    'S18_2581',
    29,
    82.79,
    8
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10120,
    'S18_2625',
    46,
    57.54,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10120,
    'S24_1578',
    35,
    110.45,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10120,
    'S24_1785',
    39,
    93.01,
    10
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10120,
    'S24_2000',
    34,
    72.36,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10120,
    'S24_4278',
    29,
    71.73,
    9
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10120,
    'S32_1374',
    22,
    94.9,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10120,
    'S32_4289',
    29,
    68.79,
    11
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10120,
    'S50_1341',
    49,
    41.46,
    12
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10120,
    'S700_1691',
    47,
    91.34,
    13
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10120,
    'S700_2466',
    24,
    81.77,
    15
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10120,
    'S700_2834',
    24,
    106.79,
    7
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10120,
    'S700_3167',
    43,
    72,
    14
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10121,
    'S10_1678',
    34,
    86.13,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10121,
    'S12_2823',
    50,
    126.52,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10121,
    'S24_2360',
    32,
    58.18,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10121,
    'S32_4485',
    25,
    95.93,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10121,
    'S50_4713',
    44,
    72.41,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10122,
    'S12_1099',
    42,
    155.66,
    10
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10122,
    'S12_3380',
    37,
    113.92,
    8
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10122,
    'S12_3990',
    32,
    65.44,
    11
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10122,
    'S12_4675',
    20,
    104.8,
    7
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10122,
    'S18_1129',
    34,
    114.65,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10122,
    'S18_1889',
    43,
    62.37,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10122,
    'S18_1984',
    31,
    113.8,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10122,
    'S18_3232',
    25,
    137.17,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10122,
    'S18_3278',
    21,
    69.15,
    13
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10122,
    'S18_3482',
    21,
    133.76,
    12
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10122,
    'S18_3782',
    35,
    59.06,
    16
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10122,
    'S18_4721',
    28,
    145.82,
    15
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10122,
    'S24_2972',
    39,
    34.74,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10122,
    'S24_3371',
    34,
    50.82,
    9
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10122,
    'S24_3856',
    43,
    136.22,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10122,
    'S24_4620',
    29,
    67.1,
    14
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10122,
    'S32_2206',
    31,
    33.79,
    17
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10123,
    'S18_1589',
    26,
    120.71,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10123,
    'S18_2870',
    46,
    114.84,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10123,
    'S18_3685',
    34,
    117.26,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10123,
    'S24_1628',
    50,
    43.27,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10124,
    'S18_1749',
    21,
    153,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10124,
    'S18_2248',
    42,
    58.12,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10124,
    'S18_2325',
    42,
    111.87,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10124,
    'S18_4409',
    36,
    75.46,
    7
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10124,
    'S18_4933',
    23,
    66.28,
    8
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10124,
    'S24_1046',
    22,
    62.47,
    12
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10124,
    'S24_1937',
    45,
    30.53,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10124,
    'S24_2022',
    22,
    36.29,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10124,
    'S24_2766',
    32,
    74.51,
    10
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10124,
    'S24_2887',
    25,
    93.95,
    9
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10124,
    'S24_3191',
    49,
    76.19,
    11
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10124,
    'S24_3432',
    43,
    101.73,
    13
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10124,
    'S24_3969',
    46,
    36.11,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10125,
    'S18_1342',
    32,
    89.38,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10125,
    'S18_2795',
    34,
    138.38,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10126,
    'S10_1949',
    38,
    205.73,
    11
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10126,
    'S10_4962',
    22,
    122.62,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10126,
    'S12_1666',
    21,
    135.3,
    8
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10126,
    'S18_1097',
    38,
    116.67,
    10
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10126,
    'S18_1367',
    42,
    51.21,
    17
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10126,
    'S18_2432',
    43,
    51.05,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10126,
    'S18_2949',
    31,
    93.21,
    12
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10126,
    'S18_2957',
    46,
    61.84,
    14
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10126,
    'S18_3136',
    30,
    93.2,
    13
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10126,
    'S18_3320',
    38,
    94.25,
    16
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10126,
    'S18_4600',
    50,
    102.92,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10126,
    'S18_4668',
    43,
    47.29,
    9
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10126,
    'S24_2300',
    27,
    122.68,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10126,
    'S24_4258',
    34,
    83.76,
    15
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10126,
    'S32_1268',
    43,
    82.83,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10126,
    'S32_3522',
    26,
    62.05,
    7
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10126,
    'S700_2824',
    45,
    97.1,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10127,
    'S12_1108',
    46,
    193.25,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10127,
    'S12_3148',
    46,
    140.5,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10127,
    'S12_3891',
    42,
    169.56,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10127,
    'S12_4473',
    24,
    100.73,
    11
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10127,
    'S18_2238',
    45,
    140.81,
    10
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10127,
    'S18_2319',
    45,
    114.14,
    14
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10127,
    'S18_3232',
    22,
    149.02,
    15
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10127,
    'S18_4027',
    25,
    126.39,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10127,
    'S24_1444',
    20,
    50.86,
    8
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10127,
    'S24_2840',
    39,
    34.3,
    12
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10127,
    'S24_4048',
    20,
    107.63,
    7
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10127,
    'S32_2509',
    45,
    46.53,
    13
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10127,
    'S32_3207',
    29,
    60.9,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10127,
    'S50_1392',
    46,
    111.12,
    9
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10127,
    'S50_1514',
    46,
    55.65,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10128,
    'S18_3140',
    41,
    120.2,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10128,
    'S18_3259',
    41,
    80.67,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10128,
    'S18_4522',
    43,
    77.24,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10128,
    'S700_1938',
    32,
    72.75,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10129,
    'S10_4757',
    33,
    123.76,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10129,
    'S24_2011',
    45,
    113.06,
    9
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10129,
    'S24_3151',
    41,
    81.43,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10129,
    'S24_3816',
    50,
    76.31,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10129,
    'S700_1138',
    31,
    58.67,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10129,
    'S700_2610',
    45,
    72.28,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10129,
    'S700_3505',
    42,
    90.15,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10129,
    'S700_3962',
    30,
    94.34,
    7
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10129,
    'S72_3212',
    32,
    44.23,
    8
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10130,
    'S18_3029',
    40,
    68.82,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10130,
    'S18_3856',
    33,
    99.52,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10131,
    'S18_1662',
    21,
    141.92,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10131,
    'S24_2841',
    35,
    60.97,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10131,
    'S24_3420',
    29,
    52.6,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10131,
    'S24_3949',
    50,
    54.59,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10131,
    'S700_2047',
    22,
    76.94,
    8
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10131,
    'S700_2466',
    40,
    86.76,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10131,
    'S700_4002',
    26,
    63.67,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10131,
    'S72_1253',
    21,
    40.22,
    7
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10132,
    'S700_3167',
    36,
    80,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10133,
    'S18_2581',
    49,
    80.26,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10133,
    'S24_1785',
    41,
    109.42,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10133,
    'S24_4278',
    46,
    61.58,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10133,
    'S32_1374',
    23,
    80.91,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10133,
    'S32_4289',
    49,
    67.41,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10133,
    'S50_1341',
    27,
    37.09,
    7
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10133,
    'S700_1691',
    24,
    76.73,
    8
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10133,
    'S700_2834',
    27,
    115.09,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10134,
    'S10_1678',
    41,
    90.92,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10134,
    'S10_2016',
    27,
    116.56,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10134,
    'S10_4698',
    31,
    187.85,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10134,
    'S12_2823',
    20,
    131.04,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10134,
    'S18_2625',
    30,
    51.48,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10134,
    'S24_1578',
    35,
    94.67,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10134,
    'S24_2000',
    43,
    75.41,
    7
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10135,
    'S12_1099',
    42,
    173.17,
    7
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10135,
    'S12_3380',
    48,
    110.39,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10135,
    'S12_3990',
    24,
    72.62,
    8
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10135,
    'S12_4675',
    29,
    103.64,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10135,
    'S18_1889',
    48,
    66.99,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10135,
    'S18_3278',
    45,
    65.94,
    10
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10135,
    'S18_3482',
    42,
    139.64,
    9
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10135,
    'S18_3782',
    45,
    49.74,
    13
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10135,
    'S18_4721',
    31,
    133.92,
    12
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10135,
    'S24_2360',
    29,
    67.18,
    16
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10135,
    'S24_2972',
    20,
    34.36,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10135,
    'S24_3371',
    27,
    52.05,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10135,
    'S24_3856',
    47,
    139.03,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10135,
    'S24_4620',
    23,
    76.8,
    11
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10135,
    'S32_2206',
    33,
    38.62,
    14
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10135,
    'S32_4485',
    30,
    91.85,
    17
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10135,
    'S50_4713',
    44,
    78.92,
    15
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10136,
    'S18_1129',
    25,
    117.48,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10136,
    'S18_1984',
    36,
    120.91,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10136,
    'S18_3232',
    41,
    169.34,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10137,
    'S18_1589',
    44,
    115.73,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10137,
    'S18_2870',
    37,
    110.88,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10137,
    'S18_3685',
    31,
    118.68,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10137,
    'S24_1628',
    26,
    40.25,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10138,
    'S18_1749',
    33,
    149.6,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10138,
    'S18_2248',
    22,
    51.46,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10138,
    'S18_2325',
    38,
    114.42,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10138,
    'S18_4409',
    47,
    79.15,
    7
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10138,
    'S18_4933',
    23,
    64.86,
    8
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10138,
    'S24_1046',
    45,
    59.53,
    12
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10138,
    'S24_1937',
    22,
    33.19,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10138,
    'S24_2022',
    33,
    38.53,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10138,
    'S24_2766',
    28,
    73.6,
    10
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10138,
    'S24_2887',
    30,
    96.3,
    9
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10138,
    'S24_3191',
    49,
    77.05,
    11
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10138,
    'S24_3432',
    21,
    99.58,
    13
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10138,
    'S24_3969',
    29,
    32.82,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10139,
    'S18_1342',
    31,
    89.38,
    7
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10139,
    'S18_1367',
    49,
    52.83,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10139,
    'S18_2795',
    41,
    151.88,
    8
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10139,
    'S18_2949',
    46,
    91.18,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10139,
    'S18_2957',
    20,
    52.47,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10139,
    'S18_3136',
    20,
    101.58,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10139,
    'S18_3320',
    30,
    81.35,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10139,
    'S24_4258',
    29,
    93.49,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10140,
    'S10_1949',
    37,
    186.44,
    11
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10140,
    'S10_4962',
    26,
    131.49,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10140,
    'S12_1666',
    38,
    118.9,
    8
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10140,
    'S18_1097',
    32,
    95.67,
    10
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10140,
    'S18_2432',
    46,
    51.05,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10140,
    'S18_4600',
    40,
    100.5,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10140,
    'S18_4668',
    29,
    40.25,
    9
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10140,
    'S24_2300',
    47,
    118.84,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10140,
    'S32_1268',
    26,
    87.64,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10140,
    'S32_3522',
    28,
    62.05,
    7
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10140,
    'S700_2824',
    36,
    101.15,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10141,
    'S12_4473',
    21,
    114.95,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10141,
    'S18_2238',
    39,
    160.46,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10141,
    'S18_2319',
    47,
    103.09,
    8
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10141,
    'S18_3232',
    34,
    143.94,
    9
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10141,
    'S24_1444',
    20,
    50.86,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10141,
    'S24_2840',
    21,
    32.18,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10141,
    'S24_4048',
    40,
    104.09,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10141,
    'S32_2509',
    24,
    53.03,
    7
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10141,
    'S50_1392',
    44,
    94.92,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10142,
    'S12_1108',
    33,
    166.24,
    12
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10142,
    'S12_3148',
    33,
    140.5,
    13
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10142,
    'S12_3891',
    46,
    167.83,
    11
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10142,
    'S18_3140',
    47,
    129.76,
    8
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10142,
    'S18_3259',
    22,
    95.8,
    10
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10142,
    'S18_4027',
    24,
    122.08,
    15
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10142,
    'S18_4522',
    24,
    79.87,
    7
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10142,
    'S24_2011',
    33,
    114.29,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10142,
    'S24_3151',
    49,
    74.35,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10142,
    'S32_3207',
    42,
    60.9,
    16
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10142,
    'S50_1514',
    42,
    56.24,
    14
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10142,
    'S700_1138',
    41,
    55.34,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10142,
    'S700_1938',
    43,
    77.08,
    9
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10142,
    'S700_3505',
    21,
    92.16,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10142,
    'S700_3962',
    38,
    91.37,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10142,
    'S72_3212',
    39,
    46.96,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10143,
    'S10_4757',
    49,
    133.28,
    15
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10143,
    'S18_1662',
    32,
    126.15,
    7
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10143,
    'S18_3029',
    46,
    70.54,
    13
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10143,
    'S18_3856',
    34,
    99.52,
    12
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10143,
    'S24_2841',
    27,
    63.71,
    8
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10143,
    'S24_3420',
    33,
    59.83,
    9
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10143,
    'S24_3816',
    23,
    74.64,
    14
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10143,
    'S24_3949',
    28,
    55.96,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10143,
    'S50_1341',
    34,
    34.91,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10143,
    'S700_1691',
    36,
    86.77,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10143,
    'S700_2047',
    26,
    87.8,
    11
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10143,
    'S700_2466',
    26,
    79.78,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10143,
    'S700_2610',
    31,
    69.39,
    16
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10143,
    'S700_3167',
    28,
    70.4,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10143,
    'S700_4002',
    34,
    65.15,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10143,
    'S72_1253',
    37,
    49.66,
    10
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10144,
    'S32_4289',
    20,
    56.41,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10145,
    'S10_1678',
    45,
    76.56,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10145,
    'S10_2016',
    37,
    104.67,
    9
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10145,
    'S10_4698',
    33,
    154.93,
    8
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10145,
    'S12_2823',
    49,
    146.1,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10145,
    'S18_2581',
    30,
    71.81,
    14
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10145,
    'S18_2625',
    30,
    52.7,
    10
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10145,
    'S24_1578',
    43,
    103.68,
    7
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10145,
    'S24_1785',
    40,
    87.54,
    16
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10145,
    'S24_2000',
    47,
    63.98,
    11
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10145,
    'S24_2360',
    27,
    56.1,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10145,
    'S24_4278',
    33,
    71.73,
    15
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10145,
    'S32_1374',
    33,
    99.89,
    12
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10145,
    'S32_2206',
    31,
    39.43,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10145,
    'S32_4485',
    27,
    95.93,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10145,
    'S50_4713',
    38,
    73.22,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10145,
    'S700_2834',
    20,
    113.9,
    13
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10146,
    'S18_3782',
    47,
    60.3,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10146,
    'S18_4721',
    29,
    130.94,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10147,
    'S12_1099',
    48,
    161.49,
    7
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10147,
    'S12_3380',
    31,
    110.39,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10147,
    'S12_3990',
    21,
    74.21,
    8
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10147,
    'S12_4675',
    33,
    97.89,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10147,
    'S18_1889',
    26,
    70.84,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10147,
    'S18_3278',
    36,
    74.78,
    10
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10147,
    'S18_3482',
    37,
    129.35,
    9
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10147,
    'S24_2972',
    25,
    33.23,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10147,
    'S24_3371',
    30,
    48.98,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10147,
    'S24_3856',
    23,
    123.58,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10147,
    'S24_4620',
    31,
    72.76,
    11
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10148,
    'S18_1129',
    23,
    114.65,
    13
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10148,
    'S18_1589',
    47,
    108.26,
    9
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10148,
    'S18_1984',
    25,
    136.56,
    12
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10148,
    'S18_2870',
    27,
    113.52,
    10
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10148,
    'S18_3232',
    32,
    143.94,
    14
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10148,
    'S18_3685',
    28,
    135.63,
    11
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10148,
    'S18_4409',
    34,
    83.75,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10148,
    'S18_4933',
    29,
    66.28,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10148,
    'S24_1046',
    25,
    65.41,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10148,
    'S24_1628',
    47,
    46.29,
    8
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10148,
    'S24_2766',
    21,
    77.24,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10148,
    'S24_2887',
    34,
    115.09,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10148,
    'S24_3191',
    31,
    71.91,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10148,
    'S24_3432',
    27,
    96.37,
    7
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10149,
    'S18_1342',
    50,
    87.33,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10149,
    'S18_1367',
    30,
    48.52,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10149,
    'S18_1749',
    34,
    156.4,
    11
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10149,
    'S18_2248',
    24,
    50.85,
    10
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10149,
    'S18_2325',
    33,
    125.86,
    8
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10149,
    'S18_2795',
    23,
    167.06,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10149,
    'S18_3320',
    42,
    89.29,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10149,
    'S24_1937',
    36,
    31.2,
    7
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10149,
    'S24_2022',
    49,
    39.87,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10149,
    'S24_3969',
    26,
    38.57,
    9
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10149,
    'S24_4258',
    20,
    90.57,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10150,
    'S10_1949',
    45,
    182.16,
    8
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10150,
    'S10_4962',
    20,
    121.15,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10150,
    'S12_1666',
    30,
    135.3,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10150,
    'S18_1097',
    34,
    95.67,
    7
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10150,
    'S18_2949',
    47,
    93.21,
    9
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10150,
    'S18_2957',
    30,
    56.21,
    11
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10150,
    'S18_3136',
    26,
    97.39,
    10
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10150,
    'S18_4600',
    49,
    111.39,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10150,
    'S18_4668',
    30,
    47.29,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10150,
    'S32_3522',
    49,
    62.05,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10150,
    'S700_2824',
    20,
    95.08,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10151,
    'S12_4473',
    24,
    114.95,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10151,
    'S18_2238',
    43,
    152.27,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10151,
    'S18_2319',
    49,
    106.78,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10151,
    'S18_2432',
    39,
    58.34,
    9
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10151,
    'S18_3232',
    21,
    167.65,
    7
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10151,
    'S24_2300',
    42,
    109.9,
    8
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10151,
    'S24_2840',
    30,
    29.35,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10151,
    'S32_1268',
    27,
    84.75,
    10
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10151,
    'S32_2509',
    41,
    43.29,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10151,
    'S50_1392',
    26,
    108.81,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10152,
    'S18_4027',
    35,
    117.77,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10152,
    'S24_1444',
    25,
    49.13,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10152,
    'S24_4048',
    23,
    112.37,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10152,
    'S32_3207',
    33,
    57.17,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10153,
    'S12_1108',
    20,
    201.57,
    11
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10153,
    'S12_3148',
    42,
    128.42,
    12
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10153,
    'S12_3891',
    49,
    155.72,
    10
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10153,
    'S18_3140',
    31,
    125.66,
    7
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10153,
    'S18_3259',
    29,
    82.69,
    9
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10153,
    'S18_4522',
    22,
    82.5,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10153,
    'S24_2011',
    40,
    111.83,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10153,
    'S50_1514',
    31,
    53.31,
    13
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10153,
    'S700_1138',
    43,
    58,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10153,
    'S700_1938',
    31,
    80.55,
    8
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10153,
    'S700_3505',
    50,
    87.15,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10153,
    'S700_3962',
    20,
    85.41,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10153,
    'S72_3212',
    50,
    51.87,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10154,
    'S24_3151',
    31,
    75.23,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10154,
    'S700_2610',
    36,
    59.27,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10155,
    'S10_4757',
    32,
    129.2,
    13
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10285,
    'S10_4698',
    27,
    166.55,
    8
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10285,
    'S12_2823',
    49,
    131.04,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10285,
    'S18_2625',
    20,
    50.88,
    10
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10285,
    'S24_1578',
    34,
    91.29,
    7
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10285,
    'S24_2000',
    39,
    61.7,
    11
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10285,
    'S24_2360',
    38,
    64.41,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10285,
    'S32_1374',
    37,
    82.91,
    12
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10285,
    'S32_2206',
    37,
    36.61,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10285,
    'S32_4485',
    26,
    100.01,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10285,
    'S50_4713',
    39,
    76.48,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10285,
    'S700_2834',
    45,
    102.04,
    13
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10286,
    'S18_3782',
    38,
    51.6,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10287,
    'S12_1099',
    21,
    190.68,
    12
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10287,
    'S12_3380',
    45,
    117.44,
    10
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10287,
    'S12_3990',
    41,
    74.21,
    13
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10287,
    'S12_4675',
    23,
    107.1,
    9
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10287,
    'S18_1129',
    41,
    113.23,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10287,
    'S18_1889',
    44,
    61.6,
    8
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10287,
    'S18_1984',
    24,
    123.76,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10287,
    'S18_2870',
    44,
    114.84,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10287,
    'S18_3232',
    36,
    137.17,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10287,
    'S18_3278',
    43,
    68.35,
    15
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10287,
    'S18_3482',
    40,
    127.88,
    14
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10287,
    'S18_3685',
    27,
    139.87,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10287,
    'S18_4721',
    34,
    119.04,
    17
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10287,
    'S24_2972',
    36,
    31.34,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10287,
    'S24_3371',
    20,
    58.17,
    11
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10287,
    'S24_3856',
    36,
    137.62,
    7
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10287,
    'S24_4620',
    40,
    79.22,
    16
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10288,
    'S18_1589',
    20,
    120.71,
    14
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10288,
    'S18_1749',
    32,
    168.3,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10288,
    'S18_2248',
    28,
    50.25,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10288,
    'S18_2325',
    31,
    102.98,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10288,
    'S18_4409',
    35,
    90.19,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10288,
    'S18_4933',
    23,
    57.02,
    7
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10288,
    'S24_1046',
    36,
    66.88,
    11
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10288,
    'S24_1628',
    50,
    49.3,
    13
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10288,
    'S24_1937',
    29,
    32.19,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10288,
    'S24_2766',
    35,
    81.78,
    9
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10288,
    'S24_2887',
    48,
    109.22,
    8
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10288,
    'S24_3191',
    34,
    76.19,
    10
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10288,
    'S24_3432',
    41,
    101.73,
    12
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10288,
    'S24_3969',
    33,
    37.75,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10289,
    'S18_1342',
    38,
    92.47,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10289,
    'S18_1367',
    24,
    44.75,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10289,
    'S18_2795',
    43,
    141.75,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10289,
    'S24_2022',
    45,
    41.22,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10290,
    'S18_3320',
    26,
    80.36,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10290,
    'S24_4258',
    45,
    83.76,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10291,
    'S10_1949',
    37,
    210.01,
    11
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10291,
    'S10_4962',
    30,
    141.83,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10291,
    'S12_1666',
    41,
    123,
    8
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10291,
    'S18_1097',
    41,
    96.84,
    10
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10291,
    'S18_2432',
    26,
    52.26,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10291,
    'S18_2949',
    47,
    99.28,
    12
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10291,
    'S18_2957',
    37,
    56.21,
    14
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10291,
    'S18_3136',
    23,
    93.2,
    13
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10291,
    'S18_4600',
    48,
    96.86,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10291,
    'S18_4668',
    29,
    45.28,
    9
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10291,
    'S24_2300',
    48,
    109.9,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10291,
    'S32_1268',
    26,
    82.83,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10291,
    'S32_3522',
    32,
    53,
    7
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10291,
    'S700_2824',
    28,
    86.99,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10292,
    'S12_4473',
    21,
    94.8,
    8
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10292,
    'S18_2238',
    26,
    140.81,
    7
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10292,
    'S18_2319',
    41,
    103.09,
    11
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10292,
    'S18_3232',
    21,
    147.33,
    12
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10292,
    'S18_4027',
    44,
    114.9,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10292,
    'S24_1444',
    40,
    48.55,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10292,
    'S24_2840',
    39,
    34.3,
    9
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10292,
    'S24_4048',
    27,
    113.55,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10292,
    'S32_2509',
    50,
    54.11,
    10
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10292,
    'S32_3207',
    31,
    59.65,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10292,
    'S50_1392',
    41,
    113.44,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10292,
    'S50_1514',
    35,
    49.79,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10293,
    'S12_1108',
    46,
    187.02,
    8
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10293,
    'S12_3148',
    24,
    129.93,
    9
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10293,
    'S12_3891',
    45,
    171.29,
    7
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10293,
    'S18_3140',
    24,
    110.64,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10293,
    'S18_3259',
    22,
    91.76,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10293,
    'S18_4522',
    49,
    72.85,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10293,
    'S24_2011',
    21,
    111.83,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10293,
    'S700_1938',
    29,
    77.95,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10293,
    'S72_3212',
    32,
    51.32,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10294,
    'S700_3962',
    45,
    98.32,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10295,
    'S10_4757',
    24,
    136,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10295,
    'S24_3151',
    46,
    84.08,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10295,
    'S700_1138',
    26,
    62,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10295,
    'S700_2610',
    44,
    71.56,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10295,
    'S700_3505',
    34,
    93.16,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10296,
    'S18_1662',
    36,
    146.65,
    7
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10296,
    'S18_3029',
    21,
    69.68,
    13
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10296,
    'S18_3856',
    22,
    105.87,
    12
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10296,
    'S24_2841',
    21,
    60.97,
    8
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10296,
    'S24_3420',
    31,
    63.78,
    9
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10296,
    'S24_3816',
    22,
    83.02,
    14
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10296,
    'S24_3949',
    32,
    63.46,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10296,
    'S50_1341',
    26,
    41.02,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10296,
    'S700_1691',
    42,
    75.81,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10296,
    'S700_2047',
    34,
    89.61,
    11
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10296,
    'S700_2466',
    24,
    96.73,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10296,
    'S700_3167',
    22,
    74.4,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10296,
    'S700_4002',
    47,
    61.44,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10296,
    'S72_1253',
    21,
    46.68,
    10
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10297,
    'S18_2581',
    25,
    81.95,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10297,
    'S24_1785',
    32,
    107.23,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10297,
    'S24_2000',
    32,
    70.08,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10297,
    'S24_4278',
    23,
    71.73,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10297,
    'S32_1374',
    26,
    88.9,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10297,
    'S32_4289',
    28,
    63.29,
    7
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10297,
    'S700_2834',
    35,
    111.53,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10298,
    'S10_2016',
    39,
    105.86,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10298,
    'S18_2625',
    32,
    60.57,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10299,
    'S10_1678',
    23,
    76.56,
    9
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10299,
    'S10_4698',
    29,
    164.61,
    11
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10299,
    'S12_2823',
    24,
    123.51,
    8
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10299,
    'S18_3782',
    39,
    62.17,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10299,
    'S18_4721',
    49,
    119.04,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10299,
    'S24_1578',
    47,
    107.07,
    10
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10299,
    'S24_2360',
    33,
    58.87,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10299,
    'S24_4620',
    32,
    66.29,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10299,
    'S32_2206',
    24,
    36.21,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10299,
    'S32_4485',
    38,
    84.7,
    7
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10299,
    'S50_4713',
    44,
    77.29,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10300,
    'S12_1099',
    33,
    184.84,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10300,
    'S12_3380',
    29,
    116.27,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10300,
    'S12_3990',
    22,
    76.61,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10300,
    'S12_4675',
    23,
    95.58,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10300,
    'S18_1889',
    41,
    63.14,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10300,
    'S18_3278',
    49,
    65.94,
    8
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10300,
    'S18_3482',
    23,
    144.05,
    7
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10300,
    'S24_3371',
    31,
    52.05,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10301,
    'S18_1129',
    37,
    114.65,
    8
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10301,
    'S18_1589',
    32,
    118.22,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10301,
    'S18_1984',
    47,
    119.49,
    7
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10301,
    'S18_2870',
    22,
    113.52,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10301,
    'S18_3232',
    23,
    135.47,
    9
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10301,
    'S18_3685',
    39,
    137.04,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10301,
    'S24_1046',
    27,
    64.67,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10301,
    'S24_1628',
    22,
    40.75,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10301,
    'S24_2972',
    48,
    32.1,
    10
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10301,
    'S24_3432',
    22,
    86.73,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10301,
    'S24_3856',
    50,
    122.17,
    11
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10302,
    'S18_1749',
    43,
    166.6,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10302,
    'S18_4409',
    38,
    82.83,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10302,
    'S18_4933',
    23,
    70.56,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10302,
    'S24_2766',
    49,
    75.42,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10302,
    'S24_2887',
    45,
    104.52,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10302,
    'S24_3191',
    48,
    74.48,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10303,
    'S18_2248',
    46,
    56.91,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10303,
    'S24_3969',
    24,
    35.7,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10304,
    'S10_1949',
    47,
    201.44,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10304,
    'S12_1666',
    39,
    117.54,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10304,
    'S18_1097',
    46,
    106.17,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10304,
    'S18_1342',
    37,
    95.55,
    13
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10304,
    'S18_1367',
    37,
    46.9,
    12
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10304,
    'S18_2325',
    24,
    102.98,
    17
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10304,
    'S18_2795',
    20,
    141.75,
    14
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10304,
    'S18_2949',
    46,
    98.27,
    7
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10304,
    'S18_2957',
    24,
    54.34,
    9
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10304,
    'S18_3136',
    26,
    90.06,
    8
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10304,
    'S18_3320',
    38,
    95.24,
    11
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10304,
    'S18_4668',
    34,
    44.27,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10304,
    'S24_1937',
    23,
    29.21,
    16
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10304,
    'S24_2022',
    44,
    42.11,
    15
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10304,
    'S24_4258',
    33,
    80.83,
    10
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10304,
    'S32_3522',
    36,
    52.36,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10304,
    'S700_2824',
    40,
    80.92,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10305,
    'S10_4962',
    38,
    130.01,
    13
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10305,
    'S12_4473',
    38,
    107.84,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10305,
    'S18_2238',
    27,
    132.62,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10305,
    'S18_2319',
    36,
    117.82,
    8
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10305,
    'S18_2432',
    41,
    58.95,
    11
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10305,
    'S18_3232',
    37,
    160.87,
    9
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10305,
    'S18_4600',
    22,
    112.6,
    14
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10305,
    'S24_1444',
    45,
    48.55,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10305,
    'S24_2300',
    24,
    107.34,
    10
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10305,
    'S24_2840',
    48,
    30.76,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10305,
    'S24_4048',
    36,
    118.28,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10305,
    'S32_1268',
    28,
    94.38,
    12
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10305,
    'S32_2509',
    40,
    48.7,
    7
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10305,
    'S50_1392',
    42,
    109.96,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10306,
    'S12_1108',
    31,
    182.86,
    13
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10306,
    'S12_3148',
    34,
    145.04,
    14
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10306,
    'S12_3891',
    20,
    145.34,
    12
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10306,
    'S18_3140',
    32,
    114.74,
    9
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10306,
    'S18_3259',
    40,
    83.7,
    11
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10306,
    'S18_4027',
    23,
    126.39,
    16
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10306,
    'S18_4522',
    39,
    85.14,
    8
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10306,
    'S24_2011',
    29,
    109.37,
    7
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10306,
    'S24_3151',
    31,
    76.12,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10306,
    'S32_3207',
    46,
    60.28,
    17
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10306,
    'S50_1514',
    34,
    51.55,
    15
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10306,
    'S700_1138',
    50,
    61.34,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10306,
    'S700_1938',
    38,
    73.62,
    10
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10306,
    'S700_2610',
    43,
    62.16,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10306,
    'S700_3505',
    32,
    99.17,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10306,
    'S700_3962',
    30,
    87.39,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10306,
    'S72_3212',
    35,
    48.05,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10307,
    'S10_4757',
    22,
    118.32,
    9
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10307,
    'S18_1662',
    39,
    135.61,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10307,
    'S18_3029',
    31,
    71.4,
    7
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10307,
    'S18_3856',
    48,
    92.11,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10307,
    'S24_2841',
    25,
    58.23,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10307,
    'S24_3420',
    22,
    64.44,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10307,
    'S24_3816',
    22,
    75.47,
    8
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10307,
    'S700_2047',
    34,
    81.47,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10307,
    'S72_1253',
    34,
    44.2,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10308,
    'S10_2016',
    34,
    115.37,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10308,
    'S10_4698',
    20,
    187.85,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10308,
    'S18_2581',
    27,
    81.95,
    7
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10308,
    'S18_2625',
    34,
    48.46,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10308,
    'S24_1785',
    31,
    99.57,
    9
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10308,
    'S24_2000',
    47,
    68.55,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10308,
    'S24_3949',
    43,
    58,
    16
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10308,
    'S24_4278',
    44,
    71.73,
    8
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10308,
    'S32_1374',
    24,
    99.89,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10308,
    'S32_4289',
    46,
    61.22,
    10
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10308,
    'S50_1341',
    47,
    37.09,
    11
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10308,
    'S700_1691',
    21,
    73.07,
    12
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10308,
    'S700_2466',
    35,
    88.75,
    14
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10308,
    'S700_2834',
    31,
    100.85,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10308,
    'S700_3167',
    21,
    79.2,
    13
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10308,
    'S700_4002',
    39,
    62.93,
    15
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10309,
    'S10_1678',
    41,
    94.74,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10309,
    'S12_2823',
    26,
    144.6,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10309,
    'S24_1578',
    21,
    96.92,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10309,
    'S24_2360',
    24,
    59.56,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10309,
    'S32_4485',
    50,
    93.89,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10309,
    'S50_4713',
    28,
    74.04,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10310,
    'S12_1099',
    33,
    165.38,
    10
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10310,
    'S12_3380',
    24,
    105.7,
    8
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10310,
    'S12_3990',
    49,
    77.41,
    11
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10310,
    'S12_4675',
    25,
    101.34,
    7
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10310,
    'S18_1129',
    37,
    128.8,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10310,
    'S18_1889',
    20,
    66.99,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10310,
    'S18_1984',
    24,
    129.45,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10310,
    'S18_3232',
    48,
    159.18,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10310,
    'S18_3278',
    27,
    70.76,
    13
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10310,
    'S18_3482',
    49,
    122,
    12
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10310,
    'S18_3782',
    42,
    59.06,
    16
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10310,
    'S18_4721',
    40,
    133.92,
    15
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10310,
    'S24_2972',
    33,
    33.23,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10310,
    'S24_3371',
    38,
    50.21,
    9
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10310,
    'S24_3856',
    45,
    139.03,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10310,
    'S24_4620',
    49,
    75.18,
    14
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10310,
    'S32_2206',
    36,
    38.62,
    17
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10419,
    'S24_3856',
    70,
    112.34,
    8
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10420,
    'S18_1749',
    37,
    153,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10420,
    'S18_2248',
    36,
    52.06,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10420,
    'S18_2325',
    45,
    116.96,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10420,
    'S18_4409',
    66,
    73.62,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10420,
    'S18_4933',
    36,
    68.42,
    7
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10420,
    'S24_1046',
    60,
    60.26,
    11
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10420,
    'S24_1628',
    37,
    48.8,
    13
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10420,
    'S24_1937',
    45,
    32.19,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10420,
    'S24_2766',
    39,
    76.33,
    9
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10420,
    'S24_2887',
    55,
    115.09,
    8
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10420,
    'S24_3191',
    35,
    77.05,
    10
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10420,
    'S24_3432',
    26,
    104.94,
    12
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10420,
    'S24_3969',
    15,
    35.29,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10421,
    'S18_2795',
    35,
    167.06,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10421,
    'S24_2022',
    40,
    44.8,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10422,
    'S18_1342',
    51,
    91.44,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10422,
    'S18_1367',
    25,
    47.44,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10423,
    'S18_2949',
    10,
    89.15,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10423,
    'S18_2957',
    31,
    56.21,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10423,
    'S18_3136',
    21,
    98.44,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10423,
    'S18_3320',
    21,
    80.36,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10423,
    'S24_4258',
    28,
    78.89,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10424,
    'S10_1949',
    50,
    201.44,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10424,
    'S12_1666',
    49,
    121.64,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10424,
    'S18_1097',
    54,
    108.5,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10424,
    'S18_4668',
    26,
    40.25,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10424,
    'S32_3522',
    44,
    54.94,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10424,
    'S700_2824',
    46,
    85.98,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10425,
    'S10_4962',
    38,
    131.49,
    12
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10425,
    'S12_4473',
    33,
    95.99,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10425,
    'S18_2238',
    28,
    147.36,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10425,
    'S18_2319',
    38,
    117.82,
    7
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10425,
    'S18_2432',
    19,
    48.62,
    10
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10425,
    'S18_3232',
    28,
    140.55,
    8
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10425,
    'S18_4600',
    38,
    107.76,
    13
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10425,
    'S24_1444',
    55,
    53.75,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10425,
    'S24_2300',
    49,
    127.79,
    9
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10425,
    'S24_2840',
    31,
    31.82,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10425,
    'S32_1268',
    41,
    83.79,
    11
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10425,
    'S32_2509',
    11,
    50.32,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10425,
    'S50_1392',
    18,
    94.92,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10311,
    'S18_1589',
    29,
    124.44,
    9
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10311,
    'S18_2870',
    43,
    114.84,
    10
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10311,
    'S18_3685',
    32,
    134.22,
    11
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10311,
    'S18_4409',
    41,
    92.03,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10311,
    'S18_4933',
    25,
    66.99,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10311,
    'S24_1046',
    26,
    70.55,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10311,
    'S24_1628',
    45,
    48.8,
    8
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10311,
    'S24_2766',
    28,
    89.05,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10311,
    'S24_2887',
    43,
    116.27,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10311,
    'S24_3191',
    25,
    85.61,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10311,
    'S24_3432',
    46,
    91.02,
    7
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10312,
    'S10_1949',
    48,
    214.3,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10312,
    'S18_1097',
    32,
    101.5,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10312,
    'S18_1342',
    43,
    102.74,
    10
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10312,
    'S18_1367',
    25,
    43.67,
    9
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10312,
    'S18_1749',
    48,
    146.2,
    17
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10312,
    'S18_2248',
    30,
    48.43,
    16
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10312,
    'S18_2325',
    31,
    111.87,
    14
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10312,
    'S18_2795',
    25,
    150.19,
    11
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10312,
    'S18_2949',
    37,
    91.18,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10312,
    'S18_2957',
    35,
    54.34,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10312,
    'S18_3136',
    38,
    93.2,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10312,
    'S18_3320',
    33,
    84.33,
    8
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10312,
    'S18_4668',
    39,
    44.27,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10312,
    'S24_1937',
    39,
    27.88,
    13
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10312,
    'S24_2022',
    23,
    43.46,
    12
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10312,
    'S24_3969',
    31,
    40.21,
    15
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10312,
    'S24_4258',
    44,
    96.42,
    7
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10313,
    'S10_4962',
    40,
    141.83,
    7
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10313,
    'S12_1666',
    21,
    131.2,
    11
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10313,
    'S18_2319',
    29,
    109.23,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10313,
    'S18_2432',
    34,
    52.87,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10313,
    'S18_3232',
    25,
    143.94,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10313,
    'S18_4600',
    28,
    110.18,
    8
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10313,
    'S24_2300',
    42,
    102.23,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10313,
    'S32_1268',
    27,
    96.31,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10313,
    'S32_2509',
    38,
    48.7,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10313,
    'S32_3522',
    34,
    55.59,
    10
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10313,
    'S700_2824',
    30,
    96.09,
    9
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10314,
    'S12_1108',
    38,
    176.63,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10314,
    'S12_3148',
    46,
    125.4,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10314,
    'S12_3891',
    36,
    169.56,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10314,
    'S12_4473',
    45,
    95.99,
    14
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10314,
    'S18_2238',
    42,
    135.9,
    13
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10314,
    'S18_3140',
    20,
    129.76,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10314,
    'S18_3259',
    23,
    84.71,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10314,
    'S18_4027',
    29,
    129.26,
    8
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10314,
    'S24_1444',
    44,
    51.44,
    11
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10314,
    'S24_2840',
    39,
    31.82,
    15
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10314,
    'S24_4048',
    38,
    111.18,
    10
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10314,
    'S32_3207',
    35,
    58.41,
    9
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10314,
    'S50_1392',
    28,
    115.75,
    12
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10314,
    'S50_1514',
    38,
    50.38,
    7
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10314,
    'S700_1938',
    23,
    83.15,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10315,
    'S18_4522',
    36,
    78.12,
    7
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10315,
    'S24_2011',
    35,
    111.83,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10315,
    'S24_3151',
    24,
    78.77,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10315,
    'S700_1138',
    41,
    60.67,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10315,
    'S700_3505',
    31,
    99.17,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10315,
    'S700_3962',
    37,
    88.39,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10315,
    'S72_3212',
    40,
    51.32,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10316,
    'S10_4757',
    33,
    126.48,
    17
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10316,
    'S18_1662',
    27,
    140.34,
    9
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10316,
    'S18_3029',
    21,
    72.26,
    15
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10316,
    'S18_3856',
    47,
    89.99,
    14
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10316,
    'S24_1785',
    25,
    93.01,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10316,
    'S24_2841',
    34,
    67.14,
    10
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10316,
    'S24_3420',
    47,
    55.23,
    11
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10316,
    'S24_3816',
    25,
    77.15,
    16
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10316,
    'S24_3949',
    30,
    67.56,
    8
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10316,
    'S32_4289',
    24,
    59.16,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10316,
    'S50_1341',
    34,
    36.66,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10316,
    'S700_1691',
    34,
    74.9,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10316,
    'S700_2047',
    45,
    73.32,
    13
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10316,
    'S700_2466',
    23,
    85.76,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10316,
    'S700_2610',
    48,
    67.22,
    18
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10316,
    'S700_3167',
    48,
    77.6,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10316,
    'S700_4002',
    44,
    68.11,
    7
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10316,
    'S72_1253',
    34,
    43.7,
    12
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10317,
    'S24_4278',
    35,
    69.55,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10318,
    'S10_1678',
    46,
    84.22,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10318,
    'S10_2016',
    45,
    102.29,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10318,
    'S10_4698',
    37,
    189.79,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10318,
    'S18_2581',
    31,
    81.95,
    9
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10318,
    'S18_2625',
    42,
    49.67,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10318,
    'S24_1578',
    48,
    93.54,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10318,
    'S24_2000',
    26,
    60.94,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10318,
    'S32_1374',
    47,
    81.91,
    7
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10318,
    'S700_2834',
    50,
    102.04,
    8
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10319,
    'S12_2823',
    30,
    134.05,
    9
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10319,
    'S18_3278',
    46,
    77.19,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10319,
    'S18_3782',
    44,
    54.71,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10319,
    'S18_4721',
    45,
    120.53,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10319,
    'S24_2360',
    31,
    65.8,
    7
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10319,
    'S24_4620',
    43,
    78.41,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10319,
    'S32_2206',
    29,
    35,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10319,
    'S32_4485',
    22,
    96.95,
    8
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10319,
    'S50_4713',
    45,
    79.73,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10320,
    'S12_1099',
    31,
    184.84,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10320,
    'S12_3380',
    35,
    102.17,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10320,
    'S12_3990',
    38,
    63.84,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10320,
    'S18_3482',
    25,
    139.64,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10320,
    'S24_3371',
    26,
    60.62,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10321,
    'S12_4675',
    24,
    105.95,
    15
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10321,
    'S18_1129',
    41,
    123.14,
    10
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10321,
    'S18_1589',
    44,
    120.71,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10321,
    'S18_1889',
    37,
    73.92,
    14
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10321,
    'S18_1984',
    25,
    142.25,
    9
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10321,
    'S18_2870',
    27,
    126.72,
    7
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10321,
    'S18_3232',
    33,
    164.26,
    11
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10321,
    'S18_3685',
    28,
    138.45,
    8
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10321,
    'S24_1046',
    30,
    68.35,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10321,
    'S24_1628',
    48,
    42.76,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10321,
    'S24_2766',
    30,
    74.51,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10321,
    'S24_2972',
    37,
    31.72,
    12
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10321,
    'S24_3191',
    39,
    81.33,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10321,
    'S24_3432',
    21,
    103.87,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10321,
    'S24_3856',
    26,
    137.62,
    13
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10322,
    'S10_1949',
    40,
    180.01,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10322,
    'S10_4962',
    46,
    141.83,
    8
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10322,
    'S12_1666',
    27,
    136.67,
    9
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10322,
    'S18_1097',
    22,
    101.5,
    10
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10322,
    'S18_1342',
    43,
    92.47,
    14
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10322,
    'S18_1367',
    41,
    44.21,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10322,
    'S18_2325',
    50,
    120.77,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10322,
    'S18_2432',
    35,
    57.12,
    11
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10322,
    'S18_2795',
    36,
    158.63,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10322,
    'S18_2949',
    33,
    100.3,
    12
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10322,
    'S18_2957',
    41,
    54.34,
    13
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10322,
    'S18_3136',
    48,
    90.06,
    7
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10322,
    'S24_1937',
    20,
    26.55,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10322,
    'S24_2022',
    30,
    40.77,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10323,
    'S18_3320',
    33,
    88.3,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10323,
    'S18_4600',
    47,
    96.86,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10324,
    'S12_3148',
    27,
    148.06,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10324,
    'S12_4473',
    26,
    100.73,
    7
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10324,
    'S18_2238',
    47,
    142.45,
    8
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10324,
    'S18_2319',
    33,
    105.55,
    10
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10324,
    'S18_3232',
    27,
    137.17,
    12
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10324,
    'S18_4027',
    49,
    120.64,
    13
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10324,
    'S18_4668',
    38,
    49.81,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10324,
    'S24_1444',
    25,
    49.71,
    14
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10324,
    'S24_2300',
    31,
    107.34,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10324,
    'S24_2840',
    30,
    29.35,
    9
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10324,
    'S24_4258',
    33,
    95.44,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10324,
    'S32_1268',
    20,
    91.49,
    11
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10324,
    'S32_3522',
    48,
    60.76,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10324,
    'S700_2824',
    34,
    80.92,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10325,
    'S10_4757',
    47,
    111.52,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10325,
    'S12_1108',
    42,
    193.25,
    8
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10325,
    'S12_3891',
    24,
    166.1,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10325,
    'S18_3140',
    24,
    114.74,
    9
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10325,
    'S24_4048',
    44,
    114.73,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10325,
    'S32_2509',
    38,
    44.37,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10325,
    'S32_3207',
    28,
    55.3,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10325,
    'S50_1392',
    38,
    99.55,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10325,
    'S50_1514',
    44,
    56.24,
    7
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10326,
    'S18_3259',
    32,
    94.79,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10326,
    'S18_4522',
    50,
    73.73,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10326,
    'S24_2011',
    41,
    120.43,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10326,
    'S24_3151',
    41,
    86.74,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10326,
    'S24_3816',
    20,
    81.34,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10326,
    'S700_1138',
    39,
    60.67,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10327,
    'S18_1662',
    25,
    154.54,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10327,
    'S18_2581',
    45,
    74.34,
    8
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10327,
    'S18_3029',
    25,
    74.84,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10327,
    'S700_1938',
    20,
    79.68,
    7
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10327,
    'S700_2610',
    21,
    65.05,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10327,
    'S700_3505',
    43,
    85.14,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10327,
    'S700_3962',
    37,
    83.42,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10327,
    'S72_3212',
    37,
    48.05,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10328,
    'S18_3856',
    34,
    104.81,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10328,
    'S24_1785',
    47,
    87.54,
    14
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10328,
    'S24_2841',
    48,
    67.82,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10328,
    'S24_3420',
    20,
    56.55,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10328,
    'S24_3949',
    35,
    55.96,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10328,
    'S24_4278',
    43,
    69.55,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10328,
    'S32_4289',
    24,
    57.1,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10328,
    'S50_1341',
    34,
    42.33,
    7
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10328,
    'S700_1691',
    27,
    84.03,
    8
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10328,
    'S700_2047',
    41,
    75.13,
    9
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10328,
    'S700_2466',
    37,
    95.73,
    10
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10328,
    'S700_2834',
    33,
    117.46,
    11
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10328,
    'S700_3167',
    33,
    71.2,
    13
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10328,
    'S700_4002',
    39,
    69.59,
    12
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10329,
    'S10_1678',
    42,
    80.39,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10329,
    'S10_2016',
    20,
    109.42,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10329,
    'S10_4698',
    26,
    164.61,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10329,
    'S12_1099',
    41,
    182.9,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10329,
    'S12_2823',
    24,
    128.03,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10329,
    'S12_3380',
    46,
    117.44,
    13
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10329,
    'S12_3990',
    33,
    74.21,
    14
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10329,
    'S12_4675',
    39,
    102.49,
    15
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10329,
    'S18_1889',
    29,
    66.22,
    9
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10329,
    'S18_2625',
    38,
    55.72,
    12
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10329,
    'S18_3278',
    38,
    65.13,
    10
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10329,
    'S24_1578',
    30,
    104.81,
    7
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10329,
    'S24_2000',
    37,
    71.6,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10329,
    'S32_1374',
    45,
    80.91,
    11
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10329,
    'S72_1253',
    44,
    41.22,
    8
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10330,
    'S18_3482',
    37,
    136.7,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10330,
    'S18_3782',
    29,
    59.06,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10330,
    'S18_4721',
    50,
    133.92,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10330,
    'S24_2360',
    42,
    56.1,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10331,
    'S18_1129',
    46,
    120.31,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10331,
    'S18_1589',
    44,
    99.55,
    14
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10331,
    'S18_1749',
    44,
    154.7,
    7
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10331,
    'S18_1984',
    30,
    135.14,
    8
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10331,
    'S18_2870',
    26,
    130.68,
    10
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10331,
    'S18_3232',
    27,
    169.34,
    11
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10331,
    'S18_3685',
    26,
    132.8,
    12
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10331,
    'S24_2972',
    27,
    37,
    13
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10331,
    'S24_3371',
    25,
    55.11,
    9
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10331,
    'S24_3856',
    21,
    139.03,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10331,
    'S24_4620',
    41,
    70.33,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10331,
    'S32_2206',
    28,
    33.39,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10331,
    'S32_4485',
    32,
    100.01,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10331,
    'S50_4713',
    20,
    74.04,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10332,
    'S18_1342',
    46,
    89.38,
    15
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10332,
    'S18_1367',
    27,
    51.21,
    16
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10332,
    'S18_2248',
    38,
    53.88,
    9
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10332,
    'S18_2325',
    35,
    116.96,
    8
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10332,
    'S18_2795',
    24,
    138.38,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10332,
    'S18_2957',
    26,
    53.09,
    17
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10332,
    'S18_3136',
    40,
    100.53,
    18
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10332,
    'S18_4409',
    50,
    92.03,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10332,
    'S18_4933',
    21,
    70.56,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10332,
    'S24_1046',
    23,
    61.73,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10332,
    'S24_1628',
    20,
    47.29,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10332,
    'S24_1937',
    45,
    29.87,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10332,
    'S24_2022',
    26,
    43.01,
    10
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10332,
    'S24_2766',
    39,
    84.51,
    7
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10332,
    'S24_2887',
    44,
    108.04,
    11
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10332,
    'S24_3191',
    45,
    77.91,
    12
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10332,
    'S24_3432',
    31,
    94.23,
    13
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10332,
    'S24_3969',
    41,
    34.47,
    14
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10333,
    'S10_1949',
    26,
    188.58,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10333,
    'S12_1666',
    33,
    121.64,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10333,
    'S18_1097',
    29,
    110.84,
    7
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10333,
    'S18_2949',
    31,
    95.23,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10333,
    'S18_3320',
    46,
    95.24,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10333,
    'S18_4668',
    24,
    42.26,
    8
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10333,
    'S24_4258',
    39,
    95.44,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10333,
    'S32_3522',
    33,
    62.05,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10334,
    'S10_4962',
    26,
    130.01,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10334,
    'S18_2319',
    46,
    108,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10334,
    'S18_2432',
    34,
    52.87,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10334,
    'S18_3232',
    20,
    147.33,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10334,
    'S18_4600',
    49,
    101.71,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10334,
    'S24_2300',
    42,
    117.57,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10335,
    'S24_2840',
    33,
    32.88,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10335,
    'S32_1268',
    44,
    77.05,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10335,
    'S32_2509',
    40,
    49.78,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10336,
    'S12_1108',
    33,
    176.63,
    10
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10336,
    'S12_3148',
    33,
    126.91,
    11
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10336,
    'S12_3891',
    49,
    141.88,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10336,
    'S12_4473',
    38,
    95.99,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10336,
    'S18_2238',
    49,
    153.91,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10336,
    'S18_3140',
    48,
    135.22,
    12
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10336,
    'S18_3259',
    21,
    100.84,
    7
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10336,
    'S24_1444',
    45,
    49.71,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10336,
    'S24_4048',
    31,
    113.55,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10336,
    'S32_3207',
    31,
    59.03,
    9
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10336,
    'S50_1392',
    23,
    109.96,
    8
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10336,
    'S700_2824',
    46,
    94.07,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10337,
    'S10_4757',
    25,
    131.92,
    8
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10337,
    'S18_4027',
    36,
    140.75,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10337,
    'S18_4522',
    29,
    76.36,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10337,
    'S24_2011',
    29,
    119.2,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10337,
    'S50_1514',
    21,
    54.48,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10337,
    'S700_1938',
    36,
    73.62,
    9
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10337,
    'S700_3505',
    31,
    84.14,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10337,
    'S700_3962',
    36,
    83.42,
    7
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10337,
    'S72_3212',
    42,
    49.14,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10338,
    'S18_1662',
    41,
    137.19,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10338,
    'S18_3029',
    28,
    80.86,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10338,
    'S18_3856',
    45,
    93.17,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10339,
    'S10_2016',
    40,
    117.75,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10339,
    'S10_4698',
    39,
    178.17,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10339,
    'S18_2581',
    27,
    79.41,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10339,
    'S18_2625',
    30,
    48.46,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10339,
    'S24_1578',
    27,
    96.92,
    10
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10339,
    'S24_1785',
    21,
    106.14,
    7
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10339,
    'S24_2841',
    55,
    67.82,
    12
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10339,
    'S24_3151',
    55,
    73.46,
    13
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10339,
    'S24_3420',
    29,
    57.86,
    14
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10339,
    'S24_3816',
    42,
    72.96,
    16
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10339,
    'S24_3949',
    45,
    57.32,
    11
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10339,
    'S700_1138',
    22,
    53.34,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10339,
    'S700_2047',
    55,
    86.9,
    15
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10339,
    'S700_2610',
    50,
    62.16,
    9
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10339,
    'S700_4002',
    50,
    66.63,
    8
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10339,
    'S72_1253',
    27,
    49.66,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10340,
    'S24_2000',
    55,
    62.46,
    8
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10340,
    'S24_4278',
    40,
    63.76,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10340,
    'S32_1374',
    55,
    95.89,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10340,
    'S32_4289',
    39,
    67.41,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10340,
    'S50_1341',
    40,
    37.09,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10340,
    'S700_1691',
    30,
    73.99,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10340,
    'S700_2466',
    55,
    81.77,
    7
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10340,
    'S700_2834',
    29,
    98.48,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10341,
    'S10_1678',
    41,
    84.22,
    9
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10341,
    'S12_1099',
    45,
    192.62,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10341,
    'S12_2823',
    55,
    120.5,
    8
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10341,
    'S12_3380',
    44,
    111.57,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10341,
    'S12_3990',
    36,
    77.41,
    10
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10341,
    'S12_4675',
    55,
    109.4,
    7
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10341,
    'S24_2360',
    32,
    63.03,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10341,
    'S32_4485',
    31,
    95.93,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10341,
    'S50_4713',
    38,
    78.11,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10341,
    'S700_3167',
    34,
    70.4,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10342,
    'S18_1129',
    40,
    118.89,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10342,
    'S18_1889',
    55,
    63.14,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10342,
    'S18_1984',
    22,
    115.22,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10342,
    'S18_3232',
    30,
    167.65,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10342,
    'S18_3278',
    25,
    76.39,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10342,
    'S18_3482',
    55,
    136.7,
    7
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10342,
    'S18_3782',
    26,
    57.82,
    8
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10342,
    'S18_4721',
    38,
    124.99,
    11
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10342,
    'S24_2972',
    39,
    30.59,
    9
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10342,
    'S24_3371',
    48,
    60.01,
    10
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10342,
    'S24_3856',
    42,
    112.34,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10343,
    'S18_1589',
    36,
    109.51,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10343,
    'S18_2870',
    25,
    118.8,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10343,
    'S18_3685',
    44,
    127.15,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10343,
    'S24_1628',
    27,
    44.78,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10343,
    'S24_4620',
    30,
    76.8,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10343,
    'S32_2206',
    29,
    37.41,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10344,
    'S18_1749',
    45,
    168.3,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10344,
    'S18_2248',
    40,
    49.04,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10344,
    'S18_2325',
    30,
    118.23,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10344,
    'S18_4409',
    21,
    80.99,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10344,
    'S18_4933',
    26,
    68.42,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10344,
    'S24_1046',
    29,
    61,
    7
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10344,
    'S24_1937',
    20,
    27.88,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10345,
    'S24_2022',
    43,
    38.98,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10346,
    'S18_1342',
    42,
    88.36,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10346,
    'S24_2766',
    25,
    87.24,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10346,
    'S24_2887',
    24,
    117.44,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10346,
    'S24_3191',
    24,
    80.47,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10346,
    'S24_3432',
    26,
    103.87,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10346,
    'S24_3969',
    22,
    38.57,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10347,
    'S10_1949',
    30,
    188.58,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10347,
    'S10_4962',
    27,
    132.97,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10347,
    'S12_1666',
    29,
    132.57,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10347,
    'S18_1097',
    42,
    113.17,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10347,
    'S18_1367',
    21,
    46.36,
    7
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10347,
    'S18_2432',
    50,
    51.05,
    8
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10347,
    'S18_2795',
    21,
    136.69,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10347,
    'S18_2949',
    48,
    84.09,
    9
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10347,
    'S18_2957',
    34,
    60.59,
    10
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10347,
    'S18_3136',
    45,
    95.3,
    11
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10347,
    'S18_3320',
    26,
    84.33,
    12
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10347,
    'S18_4600',
    45,
    115.03,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10348,
    'S12_1108',
    48,
    207.8,
    8
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10348,
    'S12_3148',
    47,
    122.37,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10348,
    'S18_4668',
    29,
    43.77,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10348,
    'S24_2300',
    37,
    107.34,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10348,
    'S24_4258',
    39,
    82.78,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10348,
    'S32_1268',
    42,
    90.53,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10348,
    'S32_3522',
    31,
    62.7,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10348,
    'S700_2824',
    32,
    100.14,
    7
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10349,
    'S12_3891',
    26,
    166.1,
    10
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10349,
    'S12_4473',
    48,
    114.95,
    9
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10349,
    'S18_2238',
    38,
    142.45,
    8
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10349,
    'S18_2319',
    38,
    117.82,
    7
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10349,
    'S18_3232',
    48,
    164.26,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10349,
    'S18_4027',
    34,
    140.75,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10349,
    'S24_1444',
    48,
    50.29,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10349,
    'S24_2840',
    36,
    31.47,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10349,
    'S24_4048',
    23,
    111.18,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10349,
    'S32_2509',
    33,
    44.37,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10350,
    'S10_4757',
    26,
    110.16,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10350,
    'S18_3029',
    43,
    84.3,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10350,
    'S18_3140',
    44,
    135.22,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10350,
    'S18_3259',
    41,
    94.79,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10350,
    'S18_4522',
    30,
    70.22,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10350,
    'S24_2011',
    34,
    98.31,
    7
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10350,
    'S24_3151',
    30,
    86.74,
    9
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10350,
    'S24_3816',
    25,
    77.15,
    10
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10350,
    'S32_3207',
    27,
    61.52,
    14
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10350,
    'S50_1392',
    31,
    104.18,
    8
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10350,
    'S50_1514',
    44,
    56.82,
    17
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10350,
    'S700_1138',
    46,
    56,
    11
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10350,
    'S700_1938',
    28,
    76.22,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10350,
    'S700_2610',
    29,
    68.67,
    12
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10350,
    'S700_3505',
    31,
    87.15,
    13
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10350,
    'S700_3962',
    25,
    97.32,
    16
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10350,
    'S72_3212',
    20,
    48.05,
    15
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10351,
    'S18_1662',
    39,
    143.5,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10351,
    'S18_3856',
    20,
    104.81,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10351,
    'S24_2841',
    25,
    64.4,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10351,
    'S24_3420',
    38,
    53.92,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10351,
    'S24_3949',
    34,
    68.24,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10352,
    'S700_2047',
    23,
    75.13,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10352,
    'S700_2466',
    49,
    87.75,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10352,
    'S700_4002',
    22,
    62.19,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10352,
    'S72_1253',
    49,
    46.18,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10353,
    'S18_2581',
    27,
    71.81,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10353,
    'S24_1785',
    28,
    107.23,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10353,
    'S24_4278',
    35,
    69.55,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10353,
    'S32_1374',
    46,
    86.9,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10353,
    'S32_4289',
    40,
    68.1,
    7
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10353,
    'S50_1341',
    40,
    35.78,
    8
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10353,
    'S700_1691',
    39,
    73.07,
    9
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10353,
    'S700_2834',
    48,
    98.48,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10353,
    'S700_3167',
    43,
    74.4,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10354,
    'S10_1678',
    42,
    84.22,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10354,
    'S10_2016',
    20,
    95.15,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10354,
    'S10_4698',
    42,
    178.17,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10354,
    'S12_1099',
    31,
    157.6,
    9
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10354,
    'S12_2823',
    35,
    141.58,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10354,
    'S12_3380',
    29,
    98.65,
    11
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10354,
    'S12_3990',
    23,
    76.61,
    12
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10354,
    'S12_4675',
    28,
    100.19,
    13
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10354,
    'S18_1889',
    21,
    76.23,
    8
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10354,
    'S18_2625',
    28,
    49.06,
    10
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10354,
    'S18_3278',
    36,
    69.15,
    7
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10354,
    'S24_1578',
    21,
    96.92,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10354,
    'S24_2000',
    28,
    62.46,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10355,
    'S18_3482',
    23,
    117.59,
    7
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10355,
    'S18_3782',
    31,
    60.3,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10355,
    'S18_4721',
    25,
    124.99,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10355,
    'S24_2360',
    41,
    56.1,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10355,
    'S24_2972',
    36,
    37.38,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10355,
    'S24_3371',
    44,
    60.62,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10355,
    'S24_3856',
    32,
    137.62,
    8
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10355,
    'S24_4620',
    28,
    75.18,
    9
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10355,
    'S32_2206',
    38,
    32.99,
    10
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10355,
    'S32_4485',
    40,
    93.89,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10356,
    'S18_1129',
    43,
    120.31,
    8
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10356,
    'S18_1342',
    50,
    82.19,
    9
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10356,
    'S18_1367',
    22,
    44.75,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10356,
    'S18_1984',
    27,
    130.87,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10356,
    'S18_2325',
    29,
    106.79,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10356,
    'S18_2795',
    30,
    158.63,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10356,
    'S24_1937',
    48,
    31.86,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10356,
    'S24_2022',
    26,
    42.11,
    7
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10356,
    'S50_4713',
    26,
    78.11,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10357,
    'S10_1949',
    32,
    199.3,
    10
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10357,
    'S10_4962',
    43,
    135.92,
    9
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10357,
    'S12_1666',
    49,
    109.34,
    8
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10357,
    'S18_1097',
    39,
    112,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10357,
    'S18_2432',
    41,
    58.95,
    7
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10357,
    'S18_2949',
    41,
    91.18,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10357,
    'S18_2957',
    49,
    59.34,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10357,
    'S18_3136',
    44,
    104.72,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10357,
    'S18_3320',
    25,
    84.33,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10357,
    'S18_4600',
    28,
    105.34,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10358,
    'S12_3148',
    49,
    129.93,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10358,
    'S12_4473',
    42,
    98.36,
    9
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10358,
    'S18_2238',
    20,
    142.45,
    10
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10358,
    'S18_2319',
    20,
    99.41,
    11
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10358,
    'S18_3232',
    32,
    137.17,
    12
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10358,
    'S18_4027',
    25,
    117.77,
    13
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10358,
    'S18_4668',
    30,
    46.29,
    8
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10358,
    'S24_1444',
    44,
    56.07,
    14
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10358,
    'S24_2300',
    41,
    127.79,
    7
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10358,
    'S24_2840',
    36,
    33.59,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10358,
    'S24_4258',
    41,
    88.62,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10358,
    'S32_1268',
    41,
    82.83,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10358,
    'S32_3522',
    36,
    51.71,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10358,
    'S700_2824',
    27,
    85.98,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10359,
    'S10_4757',
    48,
    122.4,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10359,
    'S12_1108',
    42,
    180.79,
    8
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10359,
    'S12_3891',
    49,
    162.64,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10359,
    'S24_4048',
    22,
    108.82,
    7
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10359,
    'S32_2509',
    36,
    45.45,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10359,
    'S32_3207',
    22,
    62.14,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10359,
    'S50_1392',
    46,
    99.55,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10359,
    'S50_1514',
    25,
    47.45,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10360,
    'S18_1662',
    50,
    126.15,
    12
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10360,
    'S18_2581',
    41,
    68.43,
    13
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10360,
    'S18_3029',
    46,
    71.4,
    14
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10360,
    'S18_3140',
    29,
    122.93,
    8
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10360,
    'S18_3259',
    29,
    94.79,
    18
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10360,
    'S18_3856',
    40,
    101.64,
    15
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10360,
    'S18_4522',
    40,
    76.36,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10360,
    'S24_1785',
    22,
    106.14,
    17
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10360,
    'S24_2011',
    31,
    100.77,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10360,
    'S24_2841',
    49,
    55.49,
    16
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10360,
    'S24_3151',
    36,
    70.81,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10360,
    'S24_3816',
    22,
    78.83,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10360,
    'S700_1138',
    32,
    64.67,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10360,
    'S700_1938',
    26,
    86.61,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10360,
    'S700_2610',
    30,
    70.11,
    7
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10360,
    'S700_3505',
    35,
    83.14,
    9
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10360,
    'S700_3962',
    31,
    92.36,
    10
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10360,
    'S72_3212',
    31,
    54.05,
    11
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10361,
    'S10_1678',
    20,
    92.83,
    13
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10361,
    'S10_2016',
    26,
    114.18,
    8
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10361,
    'S24_3420',
    34,
    62.46,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10361,
    'S24_3949',
    26,
    61.42,
    7
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10361,
    'S24_4278',
    25,
    68.83,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10361,
    'S32_4289',
    49,
    56.41,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10361,
    'S50_1341',
    33,
    35.78,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10361,
    'S700_1691',
    20,
    88.6,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10361,
    'S700_2047',
    24,
    85.99,
    14
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10361,
    'S700_2466',
    26,
    91.74,
    9
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10361,
    'S700_2834',
    44,
    107.97,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10361,
    'S700_3167',
    44,
    76.8,
    10
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10361,
    'S700_4002',
    35,
    62.19,
    11
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10361,
    'S72_1253',
    23,
    47.67,
    12
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10362,
    'S10_4698',
    22,
    182.04,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10362,
    'S12_2823',
    22,
    131.04,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10362,
    'S18_2625',
    23,
    53.91,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10362,
    'S24_1578',
    50,
    91.29,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10363,
    'S12_1099',
    33,
    180.95,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10363,
    'S12_3380',
    34,
    106.87,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10363,
    'S12_3990',
    34,
    68.63,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10363,
    'S12_4675',
    46,
    103.64,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10363,
    'S18_1889',
    22,
    61.6,
    7
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10363,
    'S18_3278',
    46,
    69.15,
    10
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10363,
    'S18_3482',
    24,
    124.94,
    11
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10363,
    'S18_3782',
    32,
    52.22,
    12
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10363,
    'S18_4721',
    28,
    123.5,
    13
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10363,
    'S24_2000',
    21,
    70.08,
    8
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10363,
    'S24_2360',
    43,
    56.1,
    14
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10363,
    'S24_3371',
    21,
    52.05,
    15
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10363,
    'S24_3856',
    31,
    113.75,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10363,
    'S24_4620',
    43,
    75.99,
    9
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10363,
    'S32_1374',
    50,
    92.9,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10364,
    'S32_2206',
    48,
    38.22,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10365,
    'S18_1129',
    30,
    116.06,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10365,
    'S32_4485',
    22,
    82.66,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10365,
    'S50_4713',
    44,
    68.34,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10366,
    'S18_1984',
    34,
    116.65,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10366,
    'S18_2870',
    49,
    105.6,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10366,
    'S18_3232',
    34,
    154.1,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10367,
    'S18_1589',
    49,
    105.77,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10367,
    'S18_1749',
    37,
    144.5,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10367,
    'S18_2248',
    45,
    50.25,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10367,
    'S18_2325',
    27,
    124.59,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10367,
    'S18_2795',
    32,
    140.06,
    7
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10367,
    'S18_3685',
    46,
    131.39,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10367,
    'S18_4409',
    43,
    77.31,
    8
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10367,
    'S18_4933',
    44,
    66.99,
    9
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10367,
    'S24_1046',
    21,
    72.76,
    10
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10367,
    'S24_1628',
    38,
    50.31,
    11
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10367,
    'S24_1937',
    23,
    29.54,
    13
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10367,
    'S24_2022',
    28,
    43.01,
    12
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10367,
    'S24_2972',
    36,
    36.25,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10368,
    'S24_2766',
    40,
    73.6,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10368,
    'S24_2887',
    31,
    115.09,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10368,
    'S24_3191',
    46,
    83.04,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10368,
    'S24_3432',
    20,
    93.16,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10368,
    'S24_3969',
    46,
    36.52,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10369,
    'S10_1949',
    41,
    195.01,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10369,
    'S18_1342',
    44,
    89.38,
    8
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10369,
    'S18_1367',
    32,
    46.36,
    7
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10369,
    'S18_2949',
    42,
    100.3,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10369,
    'S18_2957',
    28,
    51.84,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10369,
    'S18_3136',
    21,
    90.06,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10369,
    'S18_3320',
    45,
    80.36,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10369,
    'S24_4258',
    40,
    93.49,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10370,
    'S10_4962',
    35,
    128.53,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10370,
    'S12_1666',
    49,
    128.47,
    8
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10370,
    'S18_1097',
    27,
    100.34,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10370,
    'S18_2319',
    22,
    101.87,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10370,
    'S18_2432',
    22,
    60.16,
    7
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10370,
    'S18_3232',
    27,
    167.65,
    9
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10370,
    'S18_4600',
    29,
    105.34,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10370,
    'S18_4668',
    20,
    41.76,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10370,
    'S32_3522',
    25,
    63.99,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10371,
    'S12_1108',
    32,
    178.71,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10371,
    'S12_4473',
    49,
    104.28,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10371,
    'S18_2238',
    25,
    160.46,
    7
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10371,
    'S24_1444',
    25,
    53.75,
    12
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10371,
    'S24_2300',
    20,
    126.51,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10371,
    'S24_2840',
    45,
    35.01,
    8
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10371,
    'S24_4048',
    28,
    95.81,
    9
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10371,
    'S32_1268',
    26,
    82.83,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10371,
    'S32_2509',
    20,
    44.37,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10371,
    'S32_3207',
    30,
    53.44,
    11
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10371,
    'S50_1392',
    48,
    97.23,
    10
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10371,
    'S700_2824',
    34,
    83.95,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10372,
    'S12_3148',
    40,
    146.55,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10372,
    'S12_3891',
    34,
    140.15,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10372,
    'S18_3140',
    28,
    131.13,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10372,
    'S18_3259',
    25,
    91.76,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10372,
    'S18_4027',
    48,
    119.2,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10372,
    'S18_4522',
    41,
    78.99,
    7
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10372,
    'S24_2011',
    37,
    102,
    8
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10372,
    'S50_1514',
    24,
    56.82,
    9
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10372,
    'S700_1938',
    44,
    74.48,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10373,
    'S10_4757',
    39,
    118.32,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10373,
    'S18_1662',
    28,
    143.5,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10373,
    'S18_3029',
    22,
    75.7,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10373,
    'S18_3856',
    50,
    99.52,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10373,
    'S24_2841',
    38,
    58.92,
    7
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10373,
    'S24_3151',
    33,
    82.31,
    12
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10373,
    'S24_3420',
    46,
    53.92,
    11
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10373,
    'S24_3816',
    23,
    83.86,
    10
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10373,
    'S24_3949',
    39,
    62.1,
    13
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10373,
    'S700_1138',
    44,
    58,
    14
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10373,
    'S700_2047',
    32,
    76.94,
    15
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10373,
    'S700_2610',
    41,
    69.39,
    16
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10373,
    'S700_3505',
    34,
    94.16,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10373,
    'S700_3962',
    37,
    83.42,
    8
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10373,
    'S700_4002',
    45,
    68.11,
    17
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10373,
    'S72_1253',
    25,
    44.2,
    9
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10373,
    'S72_3212',
    29,
    48.05,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10374,
    'S10_2016',
    39,
    115.37,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10374,
    'S10_4698',
    22,
    158.8,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10374,
    'S18_2581',
    42,
    75.19,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10374,
    'S18_2625',
    22,
    48.46,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10374,
    'S24_1578',
    38,
    112.7,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10374,
    'S24_1785',
    46,
    107.23,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10375,
    'S10_1678',
    21,
    76.56,
    12
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10375,
    'S12_1099',
    45,
    184.84,
    7
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10375,
    'S12_2823',
    49,
    150.62,
    13
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10375,
    'S24_2000',
    23,
    67.03,
    9
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10375,
    'S24_2360',
    20,
    60.26,
    14
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10375,
    'S24_4278',
    43,
    60.13,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10375,
    'S32_1374',
    37,
    87.9,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10375,
    'S32_4289',
    44,
    59.85,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10375,
    'S32_4485',
    41,
    96.95,
    15
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10375,
    'S50_1341',
    49,
    36.22,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10375,
    'S50_4713',
    49,
    69.16,
    8
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10375,
    'S700_1691',
    37,
    86.77,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10375,
    'S700_2466',
    33,
    94.73,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10375,
    'S700_2834',
    25,
    98.48,
    10
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10375,
    'S700_3167',
    44,
    69.6,
    11
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10376,
    'S12_3380',
    35,
    98.65,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10377,
    'S12_3990',
    24,
    65.44,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10377,
    'S12_4675',
    50,
    112.86,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10377,
    'S18_1129',
    35,
    124.56,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10377,
    'S18_1889',
    31,
    61.6,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10377,
    'S18_1984',
    36,
    125.18,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10377,
    'S18_3232',
    39,
    143.94,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10378,
    'S18_1589',
    34,
    121.95,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10378,
    'S18_3278',
    22,
    66.74,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10378,
    'S18_3482',
    43,
    146.99,
    10
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10378,
    'S18_3782',
    28,
    60.3,
    9
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10378,
    'S18_4721',
    49,
    122.02,
    8
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10378,
    'S24_2972',
    41,
    30.59,
    7
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10378,
    'S24_3371',
    46,
    52.66,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10378,
    'S24_3856',
    33,
    129.2,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10378,
    'S24_4620',
    41,
    80.84,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10378,
    'S32_2206',
    40,
    35.8,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10379,
    'S18_1749',
    39,
    156.4,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10379,
    'S18_2248',
    27,
    50.85,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10379,
    'S18_2870',
    29,
    113.52,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10379,
    'S18_3685',
    32,
    134.22,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10379,
    'S24_1628',
    32,
    48.8,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10380,
    'S18_1342',
    27,
    88.36,
    13
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10380,
    'S18_2325',
    40,
    119.5,
    10
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10380,
    'S18_2795',
    21,
    156.94,
    8
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10380,
    'S18_4409',
    32,
    78.23,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10380,
    'S18_4933',
    24,
    66.99,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10380,
    'S24_1046',
    34,
    66.88,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10380,
    'S24_1937',
    32,
    29.87,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10380,
    'S24_2022',
    27,
    37.63,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10380,
    'S24_2766',
    36,
    77.24,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10380,
    'S24_2887',
    44,
    111.57,
    7
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10380,
    'S24_3191',
    44,
    77.05,
    9
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10380,
    'S24_3432',
    34,
    91.02,
    11
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10380,
    'S24_3969',
    43,
    32.82,
    12
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10381,
    'S10_1949',
    36,
    182.16,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10381,
    'S10_4962',
    37,
    138.88,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10381,
    'S12_1666',
    20,
    132.57,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10381,
    'S18_1097',
    48,
    114.34,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10381,
    'S18_1367',
    25,
    49.6,
    9
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10381,
    'S18_2432',
    35,
    60.77,
    7
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10381,
    'S18_2949',
    41,
    100.3,
    8
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10381,
    'S18_2957',
    40,
    51.22,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10381,
    'S18_3136',
    35,
    93.2,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10382,
    'S12_1108',
    34,
    166.24,
    10
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10382,
    'S12_3148',
    37,
    145.04,
    11
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10382,
    'S12_3891',
    34,
    143.61,
    12
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10382,
    'S12_4473',
    32,
    103.1,
    13
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10382,
    'S18_2238',
    25,
    160.46,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10382,
    'S18_3320',
    50,
    84.33,
    7
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10382,
    'S18_4600',
    39,
    115.03,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10382,
    'S18_4668',
    39,
    46.29,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10382,
    'S24_2300',
    20,
    120.12,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10382,
    'S24_4258',
    33,
    97.39,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10382,
    'S32_1268',
    26,
    85.72,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10382,
    'S32_3522',
    48,
    57.53,
    8
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10382,
    'S700_2824',
    34,
    101.15,
    9
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10383,
    'S18_2319',
    27,
    119.05,
    11
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10383,
    'S18_3140',
    24,
    125.66,
    9
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10383,
    'S18_3232',
    47,
    155.79,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10383,
    'S18_3259',
    26,
    83.7,
    12
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10383,
    'S18_4027',
    38,
    137.88,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10383,
    'S18_4522',
    28,
    77.24,
    7
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10383,
    'S24_1444',
    22,
    52.6,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10383,
    'S24_2840',
    40,
    33.24,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10383,
    'S24_4048',
    21,
    117.1,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10383,
    'S32_2509',
    32,
    53.57,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10383,
    'S32_3207',
    44,
    55.93,
    8
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10383,
    'S50_1392',
    29,
    94.92,
    13
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10383,
    'S50_1514',
    38,
    48.62,
    10
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10384,
    'S10_4757',
    34,
    129.2,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10384,
    'S24_2011',
    28,
    114.29,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10384,
    'S24_3151',
    43,
    71.69,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10384,
    'S700_1938',
    49,
    71.02,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10385,
    'S24_3816',
    37,
    78.83,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10385,
    'S700_1138',
    25,
    62,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10386,
    'S18_1662',
    25,
    130.88,
    7
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10386,
    'S18_2581',
    21,
    72.65,
    18
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10386,
    'S18_3029',
    37,
    73.12,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10386,
    'S18_3856',
    22,
    100.58,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10386,
    'S24_1785',
    33,
    101.76,
    11
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10386,
    'S24_2841',
    39,
    56.86,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10386,
    'S24_3420',
    35,
    54.57,
    9
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10386,
    'S24_3949',
    41,
    55.96,
    12
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10386,
    'S24_4278',
    50,
    71.73,
    8
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10386,
    'S700_2047',
    29,
    85.09,
    13
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10386,
    'S700_2466',
    37,
    90.75,
    14
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10386,
    'S700_2610',
    37,
    67.22,
    10
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10386,
    'S700_3167',
    32,
    68,
    17
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10386,
    'S700_3505',
    45,
    83.14,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10386,
    'S700_3962',
    30,
    80.44,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10386,
    'S700_4002',
    44,
    59.22,
    15
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10386,
    'S72_1253',
    50,
    47.67,
    16
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10386,
    'S72_3212',
    43,
    52.42,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10387,
    'S32_1374',
    44,
    79.91,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10388,
    'S10_1678',
    42,
    80.39,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10388,
    'S10_2016',
    50,
    118.94,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10388,
    'S10_4698',
    21,
    156.86,
    7
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10388,
    'S12_2823',
    44,
    125.01,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10388,
    'S32_4289',
    35,
    58.47,
    8
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10388,
    'S50_1341',
    27,
    41.02,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10388,
    'S700_1691',
    46,
    74.9,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10388,
    'S700_2834',
    50,
    111.53,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10389,
    'S12_1099',
    26,
    182.9,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10389,
    'S12_3380',
    25,
    95.13,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10389,
    'S12_3990',
    36,
    76.61,
    7
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10389,
    'S12_4675',
    47,
    102.49,
    8
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10389,
    'S18_1889',
    49,
    63.91,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10389,
    'S18_2625',
    39,
    52.09,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10389,
    'S24_1578',
    45,
    112.7,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10389,
    'S24_2000',
    49,
    61.7,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10390,
    'S18_1129',
    36,
    117.48,
    14
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10390,
    'S18_1984',
    34,
    132.29,
    15
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10390,
    'S18_2325',
    31,
    102.98,
    16
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10390,
    'S18_2795',
    26,
    162,
    7
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10390,
    'S18_3278',
    40,
    75.59,
    9
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10390,
    'S18_3482',
    50,
    135.23,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10390,
    'S18_3782',
    36,
    54.09,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10390,
    'S18_4721',
    49,
    122.02,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10390,
    'S24_2360',
    35,
    67.87,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10390,
    'S24_2972',
    37,
    35.87,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10390,
    'S24_3371',
    46,
    51.43,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10390,
    'S24_3856',
    45,
    134.81,
    8
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10390,
    'S24_4620',
    30,
    66.29,
    10
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10390,
    'S32_2206',
    41,
    39.02,
    11
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10390,
    'S32_4485',
    45,
    101.03,
    12
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10390,
    'S50_4713',
    22,
    81.36,
    13
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10391,
    'S10_1949',
    24,
    195.01,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10391,
    'S10_4962',
    37,
    121.15,
    7
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10391,
    'S12_1666',
    39,
    110.7,
    9
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10391,
    'S18_1097',
    29,
    114.34,
    10
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10391,
    'S18_1342',
    35,
    102.74,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10391,
    'S18_1367',
    42,
    47.44,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10391,
    'S18_2432',
    44,
    57.73,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10391,
    'S18_2949',
    32,
    99.28,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10391,
    'S24_1937',
    33,
    26.55,
    8
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10391,
    'S24_2022',
    24,
    36.29,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10392,
    'S18_2957',
    37,
    61.21,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10392,
    'S18_3136',
    29,
    103.67,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10392,
    'S18_3320',
    36,
    98.22,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10393,
    'S12_3148',
    35,
    145.04,
    8
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10393,
    'S12_4473',
    32,
    99.54,
    10
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10393,
    'S18_2238',
    20,
    137.53,
    11
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10393,
    'S18_2319',
    38,
    104.32,
    7
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10393,
    'S18_4600',
    30,
    106.55,
    9
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10393,
    'S18_4668',
    44,
    41.76,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10393,
    'S24_2300',
    33,
    112.46,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10393,
    'S24_4258',
    33,
    88.62,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10393,
    'S32_1268',
    38,
    84.75,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10393,
    'S32_3522',
    31,
    63.35,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10393,
    'S700_2824',
    21,
    83.95,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10394,
    'S18_3232',
    22,
    135.47,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10394,
    'S18_4027',
    37,
    124.95,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10394,
    'S24_1444',
    31,
    53.18,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10394,
    'S24_2840',
    46,
    35.36,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10394,
    'S24_4048',
    37,
    104.09,
    7
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10394,
    'S32_2509',
    36,
    47.08,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10394,
    'S32_3207',
    30,
    55.93,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10395,
    'S10_4757',
    32,
    125.12,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10395,
    'S12_1108',
    33,
    205.72,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10395,
    'S50_1392',
    46,
    98.39,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10395,
    'S50_1514',
    45,
    57.99,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10396,
    'S12_3891',
    33,
    155.72,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10396,
    'S18_3140',
    33,
    129.76,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10396,
    'S18_3259',
    24,
    91.76,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10396,
    'S18_4522',
    45,
    83.38,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10396,
    'S24_2011',
    49,
    100.77,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10396,
    'S24_3151',
    27,
    77,
    7
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10396,
    'S24_3816',
    37,
    77.99,
    8
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10396,
    'S700_1138',
    39,
    62,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10397,
    'S700_1938',
    32,
    69.29,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10397,
    'S700_2610',
    22,
    62.88,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10397,
    'S700_3505',
    48,
    86.15,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10397,
    'S700_3962',
    36,
    80.44,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10397,
    'S72_3212',
    34,
    52.96,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10398,
    'S18_1662',
    33,
    130.88,
    11
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10398,
    'S18_2581',
    34,
    82.79,
    15
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10398,
    'S18_3029',
    28,
    70.54,
    18
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10398,
    'S18_3856',
    45,
    92.11,
    17
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10398,
    'S24_1785',
    43,
    100.67,
    16
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10398,
    'S24_2841',
    28,
    60.29,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10398,
    'S24_3420',
    34,
    61.15,
    13
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10398,
    'S24_3949',
    41,
    56.64,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10398,
    'S24_4278',
    45,
    65.93,
    14
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10398,
    'S32_4289',
    22,
    60.54,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10398,
    'S50_1341',
    49,
    38.84,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10398,
    'S700_1691',
    47,
    78.55,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10398,
    'S700_2047',
    36,
    75.13,
    7
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10398,
    'S700_2466',
    22,
    98.72,
    8
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10398,
    'S700_2834',
    23,
    102.04,
    9
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10398,
    'S700_3167',
    29,
    76.8,
    10
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10398,
    'S700_4002',
    36,
    62.19,
    12
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10398,
    'S72_1253',
    34,
    41.22,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10399,
    'S10_1678',
    40,
    77.52,
    8
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10399,
    'S10_2016',
    51,
    99.91,
    7
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10399,
    'S10_4698',
    22,
    156.86,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10399,
    'S12_2823',
    29,
    123.51,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10399,
    'S18_2625',
    30,
    51.48,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10399,
    'S24_1578',
    57,
    104.81,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10399,
    'S24_2000',
    58,
    75.41,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10399,
    'S32_1374',
    32,
    97.89,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10400,
    'S10_4757',
    64,
    134.64,
    9
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10400,
    'S18_1662',
    34,
    129.31,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10400,
    'S18_3029',
    30,
    74.84,
    7
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10400,
    'S18_3856',
    58,
    88.93,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10400,
    'S24_2841',
    24,
    55.49,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10400,
    'S24_3420',
    38,
    59.18,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10400,
    'S24_3816',
    42,
    74.64,
    8
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10400,
    'S700_2047',
    46,
    82.37,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10400,
    'S72_1253',
    20,
    41.71,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10401,
    'S18_2581',
    42,
    75.19,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10401,
    'S24_1785',
    38,
    87.54,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10401,
    'S24_3949',
    64,
    59.37,
    12
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10401,
    'S24_4278',
    52,
    65.93,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10401,
    'S32_1374',
    49,
    81.91,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10401,
    'S32_4289',
    62,
    62.6,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10401,
    'S50_1341',
    56,
    41.46,
    7
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10401,
    'S700_1691',
    11,
    77.64,
    8
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10401,
    'S700_2466',
    85,
    98.72,
    10
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10401,
    'S700_2834',
    21,
    96.11,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10401,
    'S700_3167',
    77,
    73.6,
    9
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10401,
    'S700_4002',
    40,
    66.63,
    11
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10402,
    'S10_2016',
    45,
    118.94,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10402,
    'S18_2625',
    55,
    58.15,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10402,
    'S24_2000',
    59,
    61.7,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10403,
    'S10_1678',
    24,
    85.17,
    7
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10403,
    'S10_4698',
    66,
    174.29,
    9
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10403,
    'S12_2823',
    66,
    122,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10403,
    'S18_3782',
    36,
    55.33,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10403,
    'S24_1578',
    46,
    109.32,
    8
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10403,
    'S24_2360',
    27,
    57.49,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10403,
    'S32_2206',
    30,
    35.8,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10403,
    'S32_4485',
    45,
    88.78,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10403,
    'S50_4713',
    31,
    65.09,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10404,
    'S12_1099',
    64,
    163.44,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10404,
    'S12_3380',
    43,
    102.17,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10404,
    'S12_3990',
    77,
    67.03,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10404,
    'S18_3278',
    90,
    67.54,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10404,
    'S18_3482',
    28,
    127.88,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10404,
    'S18_4721',
    48,
    124.99,
    8
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10404,
    'S24_3371',
    49,
    53.27,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10404,
    'S24_4620',
    48,
    65.48,
    7
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10405,
    'S12_4675',
    97,
    115.16,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10405,
    'S18_1889',
    61,
    72.38,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10405,
    'S18_3232',
    55,
    147.33,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10405,
    'S24_2972',
    47,
    37.38,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10405,
    'S24_3856',
    76,
    127.79,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10406,
    'S18_1129',
    61,
    124.56,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10406,
    'S18_1984',
    48,
    133.72,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10406,
    'S18_3685',
    65,
    117.26,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10407,
    'S18_1589',
    59,
    114.48,
    11
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10407,
    'S18_1749',
    76,
    141.1,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10407,
    'S18_2248',
    42,
    58.12,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10407,
    'S18_2870',
    41,
    132,
    12
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10407,
    'S18_4409',
    6,
    91.11,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10407,
    'S18_4933',
    66,
    64.14,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10407,
    'S24_1046',
    26,
    68.35,
    8
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10407,
    'S24_1628',
    64,
    45.78,
    10
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10407,
    'S24_2766',
    76,
    81.78,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10407,
    'S24_2887',
    59,
    98.65,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10407,
    'S24_3191',
    13,
    77.05,
    7
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10407,
    'S24_3432',
    43,
    101.73,
    9
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10408,
    'S24_3969',
    15,
    41.03,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10409,
    'S18_2325',
    6,
    104.25,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10409,
    'S24_1937',
    61,
    27.88,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10410,
    'S18_1342',
    65,
    99.66,
    7
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10410,
    'S18_1367',
    44,
    51.21,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10410,
    'S18_2795',
    56,
    145.13,
    8
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10410,
    'S18_2949',
    47,
    93.21,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10410,
    'S18_2957',
    53,
    49.97,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10410,
    'S18_3136',
    34,
    84.82,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10410,
    'S18_3320',
    44,
    81.35,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10410,
    'S24_2022',
    31,
    42.56,
    9
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10410,
    'S24_4258',
    50,
    95.44,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10411,
    'S10_1949',
    23,
    205.73,
    9
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10411,
    'S10_4962',
    27,
    144.79,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10411,
    'S12_1666',
    40,
    110.7,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10411,
    'S18_1097',
    27,
    109.67,
    8
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10411,
    'S18_4600',
    46,
    106.55,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10411,
    'S18_4668',
    35,
    41.25,
    7
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10411,
    'S32_1268',
    26,
    78.01,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10411,
    'S32_3522',
    27,
    60.76,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10411,
    'S700_2824',
    34,
    89.01,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10412,
    'S12_4473',
    54,
    100.73,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10412,
    'S18_2238',
    41,
    150.63,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10412,
    'S18_2319',
    56,
    120.28,
    8
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10412,
    'S18_2432',
    47,
    49.83,
    11
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10412,
    'S18_3232',
    60,
    157.49,
    9
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10412,
    'S24_1444',
    21,
    47.4,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10412,
    'S24_2300',
    70,
    109.9,
    10
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10412,
    'S24_2840',
    30,
    32.88,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10412,
    'S24_4048',
    31,
    108.82,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10412,
    'S32_2509',
    19,
    50.86,
    7
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10412,
    'S50_1392',
    26,
    105.33,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10413,
    'S12_1108',
    36,
    201.57,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10413,
    'S12_3148',
    47,
    145.04,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10413,
    'S12_3891',
    22,
    173.02,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10413,
    'S18_4027',
    49,
    133.57,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10413,
    'S32_3207',
    24,
    56.55,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10413,
    'S50_1514',
    51,
    53.31,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10414,
    'S10_4757',
    49,
    114.24,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10414,
    'S18_3029',
    44,
    77.42,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10414,
    'S18_3140',
    41,
    128.39,
    12
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10414,
    'S18_3259',
    48,
    85.71,
    14
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10414,
    'S18_4522',
    56,
    83.38,
    11
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10414,
    'S24_2011',
    43,
    108.14,
    10
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10414,
    'S24_3151',
    60,
    72.58,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10414,
    'S24_3816',
    51,
    72.96,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10414,
    'S700_1138',
    37,
    62,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10414,
    'S700_1938',
    34,
    74.48,
    13
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10414,
    'S700_2610',
    31,
    61.44,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10414,
    'S700_3505',
    28,
    84.14,
    7
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10414,
    'S700_3962',
    40,
    84.41,
    8
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10414,
    'S72_3212',
    47,
    54.6,
    9
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10415,
    'S18_3856',
    51,
    86.81,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10415,
    'S24_2841',
    21,
    60.97,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10415,
    'S24_3420',
    18,
    59.83,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10415,
    'S700_2047',
    32,
    73.32,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10415,
    'S72_1253',
    42,
    43.2,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10416,
    'S18_1662',
    24,
    129.31,
    14
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10416,
    'S18_2581',
    15,
    70.96,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10416,
    'S24_1785',
    47,
    90.82,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10416,
    'S24_2000',
    32,
    62.46,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10416,
    'S24_3949',
    18,
    64.83,
    13
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10416,
    'S24_4278',
    48,
    70.28,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10416,
    'S32_1374',
    45,
    86.9,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10416,
    'S32_4289',
    26,
    68.1,
    7
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10416,
    'S50_1341',
    37,
    39.71,
    8
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10416,
    'S700_1691',
    23,
    88.6,
    9
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10416,
    'S700_2466',
    22,
    84.76,
    11
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10416,
    'S700_2834',
    41,
    98.48,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10416,
    'S700_3167',
    39,
    65.6,
    10
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10416,
    'S700_4002',
    43,
    63.67,
    12
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10417,
    'S10_1678',
    66,
    79.43,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10417,
    'S10_2016',
    45,
    116.56,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10417,
    'S10_4698',
    56,
    162.67,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10417,
    'S12_2823',
    21,
    144.6,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10417,
    'S18_2625',
    36,
    58.75,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10417,
    'S24_1578',
    35,
    109.32,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10418,
    'S18_3278',
    16,
    70.76,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10418,
    'S18_3482',
    27,
    139.64,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10418,
    'S18_3782',
    33,
    56.57,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10418,
    'S18_4721',
    28,
    120.53,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10418,
    'S24_2360',
    52,
    64.41,
    8
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10418,
    'S24_4620',
    10,
    66.29,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10418,
    'S32_2206',
    43,
    36.61,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10418,
    'S32_4485',
    50,
    100.01,
    9
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10418,
    'S50_4713',
    40,
    72.41,
    7
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10419,
    'S12_1099',
    12,
    182.9,
    13
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10419,
    'S12_3380',
    10,
    111.57,
    11
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10419,
    'S12_3990',
    34,
    64.64,
    14
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10419,
    'S12_4675',
    32,
    99.04,
    10
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10419,
    'S18_1129',
    38,
    117.48,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10419,
    'S18_1589',
    37,
    100.8,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10419,
    'S18_1889',
    39,
    67.76,
    9
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10419,
    'S18_1984',
    34,
    133.72,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10419,
    'S18_2870',
    55,
    116.16,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10419,
    'S18_3232',
    35,
    165.95,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10419,
    'S18_3685',
    43,
    114.44,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10419,
    'S24_2972',
    15,
    32.1,
    7
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10419,
    'S24_3371',
    55,
    52.66,
    12
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10229,
    'S18_2432',
    28,
    53.48,
    7
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10229,
    'S18_3232',
    22,
    157.49,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10229,
    'S18_4600',
    41,
    119.87,
    10
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10229,
    'S18_4668',
    39,
    43.77,
    14
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10229,
    'S24_2300',
    48,
    115.01,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10229,
    'S24_2840',
    33,
    34.65,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10229,
    'S32_1268',
    25,
    78.97,
    8
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10229,
    'S32_2509',
    23,
    49.78,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10229,
    'S32_3522',
    30,
    52.36,
    12
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10229,
    'S700_2824',
    50,
    91.04,
    11
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10230,
    'S12_3148',
    43,
    128.42,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10230,
    'S18_2238',
    49,
    153.91,
    8
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10230,
    'S18_4027',
    42,
    142.18,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10230,
    'S24_1444',
    36,
    47.4,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10230,
    'S24_4048',
    45,
    99.36,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10230,
    'S32_3207',
    46,
    59.03,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10230,
    'S50_1392',
    34,
    100.7,
    7
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10230,
    'S50_1514',
    43,
    57.41,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10231,
    'S12_1108',
    42,
    193.25,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10231,
    'S12_3891',
    49,
    147.07,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10232,
    'S18_3140',
    22,
    133.86,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10232,
    'S18_3259',
    48,
    97.81,
    8
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10232,
    'S18_4522',
    23,
    78.12,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10232,
    'S24_2011',
    46,
    113.06,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10232,
    'S700_1938',
    26,
    84.88,
    7
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10232,
    'S700_3505',
    48,
    86.15,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10232,
    'S700_3962',
    35,
    81.43,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10232,
    'S72_3212',
    24,
    48.59,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10233,
    'S24_3151',
    40,
    70.81,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10233,
    'S700_1138',
    36,
    66,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10233,
    'S700_2610',
    29,
    67.94,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10234,
    'S10_4757',
    48,
    118.32,
    9
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10234,
    'S18_1662',
    50,
    146.65,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10234,
    'S18_3029',
    48,
    84.3,
    7
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10234,
    'S18_3856',
    39,
    85.75,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10234,
    'S24_2841',
    44,
    67.14,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10234,
    'S24_3420',
    25,
    65.09,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10234,
    'S24_3816',
    31,
    78.83,
    8
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10234,
    'S700_2047',
    29,
    83.28,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10234,
    'S72_1253',
    40,
    45.69,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10235,
    'S18_2581',
    24,
    81.95,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10235,
    'S24_1785',
    23,
    89.72,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10235,
    'S24_3949',
    33,
    55.27,
    12
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10235,
    'S24_4278',
    40,
    63.03,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10235,
    'S32_1374',
    41,
    90.9,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10235,
    'S32_4289',
    34,
    66.73,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10235,
    'S50_1341',
    41,
    37.09,
    7
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10235,
    'S700_1691',
    25,
    88.6,
    8
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10235,
    'S700_2466',
    38,
    92.74,
    10
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10235,
    'S700_2834',
    25,
    116.28,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10235,
    'S700_3167',
    32,
    73.6,
    9
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10235,
    'S700_4002',
    34,
    70.33,
    11
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10236,
    'S10_2016',
    22,
    105.86,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10236,
    'S18_2625',
    23,
    52.7,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10236,
    'S24_2000',
    36,
    65.51,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10237,
    'S10_1678',
    23,
    91.87,
    7
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10237,
    'S10_4698',
    39,
    158.8,
    9
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10237,
    'S12_2823',
    32,
    129.53,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10237,
    'S18_3782',
    26,
    49.74,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10237,
    'S24_1578',
    20,
    109.32,
    8
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10237,
    'S24_2360',
    26,
    62.33,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10237,
    'S32_2206',
    26,
    35,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10237,
    'S32_4485',
    27,
    94.91,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10237,
    'S50_4713',
    20,
    78.92,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10238,
    'S12_1099',
    28,
    161.49,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10238,
    'S12_3380',
    29,
    104.52,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10238,
    'S12_3990',
    20,
    73.42,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10238,
    'S18_3278',
    41,
    68.35,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10238,
    'S18_3482',
    49,
    144.05,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10238,
    'S18_4721',
    44,
    120.53,
    8
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10238,
    'S24_3371',
    47,
    53.88,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10238,
    'S24_4620',
    22,
    67.91,
    7
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10239,
    'S12_4675',
    21,
    100.19,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10239,
    'S18_1889',
    46,
    70.07,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10239,
    'S18_3232',
    47,
    135.47,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10239,
    'S24_2972',
    20,
    32.47,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10239,
    'S24_3856',
    29,
    133.41,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10240,
    'S18_1129',
    41,
    125.97,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10240,
    'S18_1984',
    37,
    136.56,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10240,
    'S18_3685',
    37,
    134.22,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10241,
    'S18_1589',
    21,
    119.46,
    11
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10241,
    'S18_1749',
    41,
    153,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10241,
    'S18_2248',
    33,
    55.7,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10241,
    'S18_2870',
    44,
    126.72,
    12
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10241,
    'S18_4409',
    42,
    77.31,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10241,
    'S18_4933',
    30,
    62.72,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10241,
    'S24_1046',
    22,
    72.02,
    8
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10241,
    'S24_1628',
    21,
    47.29,
    10
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10241,
    'S24_2766',
    47,
    89.05,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10241,
    'S24_2887',
    28,
    117.44,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10241,
    'S24_3191',
    26,
    69.34,
    7
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10241,
    'S24_3432',
    27,
    107.08,
    9
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10242,
    'S24_3969',
    46,
    36.52,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10243,
    'S18_2325',
    47,
    111.87,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10243,
    'S24_1937',
    33,
    30.87,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10244,
    'S18_1342',
    40,
    99.66,
    7
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10244,
    'S18_1367',
    20,
    48.52,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10244,
    'S18_2795',
    43,
    141.75,
    8
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10244,
    'S18_2949',
    30,
    87.13,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10244,
    'S18_2957',
    24,
    54.96,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10244,
    'S18_3136',
    29,
    85.87,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10244,
    'S18_3320',
    36,
    87.3,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10244,
    'S24_2022',
    39,
    42.11,
    9
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10244,
    'S24_4258',
    40,
    97.39,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10245,
    'S10_1949',
    34,
    195.01,
    9
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10245,
    'S10_4962',
    28,
    147.74,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10245,
    'S12_1666',
    38,
    120.27,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10245,
    'S18_1097',
    29,
    114.34,
    8
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10245,
    'S18_4600',
    21,
    111.39,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10245,
    'S18_4668',
    45,
    48.8,
    7
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10245,
    'S32_1268',
    37,
    81.86,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10245,
    'S32_3522',
    44,
    54.94,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10245,
    'S700_2824',
    44,
    81.93,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10246,
    'S12_4473',
    46,
    99.54,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10246,
    'S18_2238',
    40,
    144.08,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10246,
    'S18_2319',
    22,
    100.64,
    8
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10246,
    'S18_2432',
    30,
    57.73,
    11
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10246,
    'S18_3232',
    36,
    145.63,
    9
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10246,
    'S24_1444',
    44,
    46.24,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10246,
    'S24_2300',
    29,
    118.84,
    10
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10246,
    'S24_2840',
    49,
    34.65,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10246,
    'S24_4048',
    46,
    100.54,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10246,
    'S32_2509',
    35,
    45.45,
    7
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10246,
    'S50_1392',
    22,
    113.44,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10247,
    'S12_1108',
    44,
    195.33,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10247,
    'S12_3148',
    25,
    140.5,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10247,
    'S12_3891',
    27,
    167.83,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10247,
    'S18_4027',
    48,
    143.62,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10247,
    'S32_3207',
    40,
    58.41,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10247,
    'S50_1514',
    49,
    51.55,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10248,
    'S10_4757',
    20,
    126.48,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10248,
    'S18_3029',
    21,
    80.86,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10248,
    'S18_3140',
    32,
    133.86,
    12
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10248,
    'S18_3259',
    42,
    95.8,
    14
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10248,
    'S18_4522',
    42,
    87.77,
    11
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10248,
    'S24_2011',
    48,
    122.89,
    10
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10248,
    'S24_3151',
    30,
    85.85,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10248,
    'S24_3816',
    23,
    83.02,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10248,
    'S700_1138',
    36,
    66,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10248,
    'S700_1938',
    40,
    81.41,
    13
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10248,
    'S700_2610',
    32,
    69.39,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10248,
    'S700_3505',
    30,
    84.14,
    7
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10248,
    'S700_3962',
    35,
    92.36,
    8
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10248,
    'S72_3212',
    23,
    53.51,
    9
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10249,
    'S18_3856',
    46,
    88.93,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10249,
    'S24_2841',
    20,
    54.81,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10249,
    'S24_3420',
    25,
    65.75,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10249,
    'S700_2047',
    40,
    85.99,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10249,
    'S72_1253',
    32,
    49.16,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10250,
    'S18_1662',
    45,
    148.23,
    14
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10250,
    'S18_2581',
    27,
    84.48,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10250,
    'S24_1785',
    31,
    95.2,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10250,
    'S24_2000',
    32,
    63.22,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10250,
    'S24_3949',
    40,
    61.42,
    13
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10250,
    'S24_4278',
    37,
    72.45,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10250,
    'S32_1374',
    31,
    99.89,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10250,
    'S32_4289',
    50,
    62.6,
    7
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10250,
    'S50_1341',
    36,
    36.66,
    8
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10250,
    'S700_1691',
    31,
    91.34,
    9
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10250,
    'S700_2466',
    35,
    90.75,
    11
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10250,
    'S700_2834',
    44,
    98.48,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10250,
    'S700_3167',
    44,
    76,
    10
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10250,
    'S700_4002',
    38,
    65.89,
    12
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10251,
    'S10_1678',
    59,
    93.79,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10251,
    'S10_2016',
    44,
    115.37,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10251,
    'S10_4698',
    43,
    172.36,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10251,
    'S12_2823',
    46,
    129.53,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10251,
    'S18_2625',
    44,
    58.15,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10251,
    'S24_1578',
    50,
    91.29,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10252,
    'S18_3278',
    20,
    74.78,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10252,
    'S18_3482',
    41,
    145.52,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10252,
    'S18_3782',
    31,
    50.36,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10252,
    'S18_4721',
    26,
    127.97,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10252,
    'S24_2360',
    47,
    63.03,
    8
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10252,
    'S24_4620',
    38,
    69.52,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10252,
    'S32_2206',
    36,
    36.21,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10252,
    'S32_4485',
    25,
    93.89,
    9
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10252,
    'S50_4713',
    48,
    72.41,
    7
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10253,
    'S12_1099',
    24,
    157.6,
    13
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10253,
    'S12_3380',
    22,
    102.17,
    11
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10253,
    'S12_3990',
    25,
    67.03,
    14
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10253,
    'S12_4675',
    41,
    109.4,
    10
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10253,
    'S18_1129',
    26,
    130.22,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10253,
    'S18_1589',
    24,
    103.29,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10253,
    'S18_1889',
    23,
    67.76,
    9
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10253,
    'S18_1984',
    33,
    130.87,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10253,
    'S18_2870',
    37,
    114.84,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10253,
    'S18_3232',
    40,
    145.63,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10253,
    'S18_3685',
    31,
    139.87,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10253,
    'S24_2972',
    40,
    34.74,
    7
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10253,
    'S24_3371',
    24,
    50.82,
    12
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10253,
    'S24_3856',
    39,
    115.15,
    8
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10254,
    'S18_1749',
    49,
    137.7,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10254,
    'S18_2248',
    36,
    55.09,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10254,
    'S18_2325',
    41,
    102.98,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10254,
    'S18_4409',
    34,
    80.99,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10254,
    'S18_4933',
    30,
    59.87,
    7
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10254,
    'S24_1046',
    34,
    66.88,
    11
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10254,
    'S24_1628',
    32,
    43.27,
    13
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10254,
    'S24_1937',
    38,
    28.88,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10254,
    'S24_2766',
    31,
    85.42,
    9
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10254,
    'S24_2887',
    33,
    111.57,
    8
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10254,
    'S24_3191',
    42,
    69.34,
    10
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10254,
    'S24_3432',
    49,
    101.73,
    12
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10254,
    'S24_3969',
    20,
    39.8,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10255,
    'S18_2795',
    24,
    135,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10255,
    'S24_2022',
    37,
    37.63,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10256,
    'S18_1342',
    34,
    93.49,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10256,
    'S18_1367',
    29,
    52.83,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10257,
    'S18_2949',
    50,
    92.19,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10257,
    'S18_2957',
    49,
    59.34,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10257,
    'S18_3136',
    37,
    83.78,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10257,
    'S18_3320',
    26,
    91.27,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10257,
    'S24_4258',
    46,
    81.81,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10258,
    'S10_1949',
    32,
    177.87,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10258,
    'S12_1666',
    41,
    133.94,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10258,
    'S18_1097',
    41,
    113.17,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10258,
    'S18_4668',
    21,
    49.81,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10258,
    'S32_3522',
    20,
    62.7,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10258,
    'S700_2824',
    45,
    86.99,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10259,
    'S10_4962',
    26,
    121.15,
    12
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10259,
    'S12_4473',
    46,
    117.32,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10259,
    'S18_2238',
    30,
    134.26,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10259,
    'S18_2319',
    34,
    120.28,
    7
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10259,
    'S18_2432',
    30,
    59.55,
    10
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10259,
    'S18_3232',
    27,
    152.41,
    8
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10259,
    'S18_4600',
    41,
    107.76,
    13
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10259,
    'S24_1444',
    28,
    46.82,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10259,
    'S24_2300',
    47,
    121.4,
    9
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10259,
    'S24_2840',
    31,
    31.47,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10259,
    'S32_1268',
    45,
    95.35,
    11
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10259,
    'S32_2509',
    40,
    45.99,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10259,
    'S50_1392',
    29,
    105.33,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10260,
    'S12_1108',
    46,
    180.79,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10260,
    'S12_3148',
    30,
    140.5,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10260,
    'S12_3891',
    44,
    169.56,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10260,
    'S18_3140',
    32,
    121.57,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10260,
    'S18_3259',
    29,
    92.77,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10260,
    'S18_4027',
    23,
    137.88,
    8
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10260,
    'S24_4048',
    23,
    117.1,
    10
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10260,
    'S32_3207',
    27,
    55.3,
    9
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10260,
    'S50_1514',
    21,
    56.24,
    7
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10260,
    'S700_1938',
    33,
    80.55,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10261,
    'S10_4757',
    27,
    116.96,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10261,
    'S18_4522',
    20,
    80.75,
    9
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10261,
    'S24_2011',
    36,
    105.69,
    8
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10261,
    'S24_3151',
    22,
    79.66,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10261,
    'S700_1138',
    34,
    64,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10261,
    'S700_2610',
    44,
    58.55,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10261,
    'S700_3505',
    25,
    89.15,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10261,
    'S700_3962',
    50,
    88.39,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10261,
    'S72_3212',
    29,
    43.68,
    7
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10262,
    'S18_1662',
    49,
    157.69,
    9
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10262,
    'S18_3029',
    32,
    81.72,
    15
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10262,
    'S18_3856',
    34,
    85.75,
    14
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10262,
    'S24_1785',
    34,
    98.48,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10262,
    'S24_2841',
    24,
    63.71,
    10
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10262,
    'S24_3420',
    46,
    65.75,
    11
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10262,
    'S24_3816',
    49,
    82.18,
    16
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10262,
    'S24_3949',
    48,
    58.69,
    8
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10262,
    'S32_4289',
    40,
    63.97,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10262,
    'S50_1341',
    49,
    35.78,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10262,
    'S700_1691',
    40,
    87.69,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10262,
    'S700_2047',
    44,
    83.28,
    13
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10262,
    'S700_2466',
    33,
    81.77,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10262,
    'S700_3167',
    27,
    64.8,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10262,
    'S700_4002',
    35,
    64.41,
    7
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10262,
    'S72_1253',
    21,
    41.71,
    12
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10263,
    'S10_1678',
    34,
    89,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10263,
    'S10_2016',
    40,
    107.05,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10263,
    'S10_4698',
    41,
    193.66,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10263,
    'S12_2823',
    48,
    123.51,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10263,
    'S18_2581',
    33,
    67.58,
    10
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10263,
    'S18_2625',
    34,
    50.27,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10263,
    'S24_1578',
    42,
    109.32,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10263,
    'S24_2000',
    37,
    67.03,
    7
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10263,
    'S24_4278',
    24,
    59.41,
    11
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10263,
    'S32_1374',
    31,
    93.9,
    8
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10263,
    'S700_2834',
    47,
    117.46,
    9
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10264,
    'S18_3782',
    48,
    58.44,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10264,
    'S18_4721',
    20,
    124.99,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10264,
    'S24_2360',
    37,
    61.64,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10264,
    'S24_4620',
    47,
    75.18,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10264,
    'S32_2206',
    20,
    39.02,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10264,
    'S32_4485',
    34,
    100.01,
    7
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10264,
    'S50_4713',
    47,
    67.53,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10265,
    'S18_3278',
    45,
    74.78,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10265,
    'S18_3482',
    49,
    123.47,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10266,
    'S12_1099',
    44,
    188.73,
    14
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10266,
    'S12_3380',
    22,
    110.39,
    12
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10266,
    'S12_3990',
    35,
    67.83,
    15
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10266,
    'S12_4675',
    40,
    112.86,
    11
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10266,
    'S18_1129',
    21,
    131.63,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10266,
    'S18_1589',
    36,
    99.55,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10266,
    'S18_1889',
    33,
    77,
    10
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10266,
    'S18_1984',
    49,
    139.41,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10266,
    'S18_2870',
    20,
    113.52,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10266,
    'S18_3232',
    29,
    137.17,
    7
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10266,
    'S18_3685',
    33,
    127.15,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10266,
    'S24_1628',
    28,
    40.25,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10266,
    'S24_2972',
    34,
    35.12,
    8
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10266,
    'S24_3371',
    47,
    56.33,
    13
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10266,
    'S24_3856',
    24,
    119.37,
    9
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10267,
    'S18_4933',
    36,
    71.27,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10267,
    'S24_1046',
    40,
    72.02,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10267,
    'S24_2766',
    38,
    76.33,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10267,
    'S24_2887',
    43,
    93.95,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10267,
    'S24_3191',
    44,
    83.9,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10267,
    'S24_3432',
    43,
    98.51,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10268,
    'S18_1342',
    49,
    93.49,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10268,
    'S18_1367',
    26,
    45.82,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10268,
    'S18_1749',
    34,
    164.9,
    10
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10268,
    'S18_2248',
    31,
    60.54,
    9
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10268,
    'S18_2325',
    50,
    124.59,
    7
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10268,
    'S18_2795',
    35,
    148.5,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10268,
    'S18_3320',
    39,
    96.23,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10268,
    'S18_4409',
    35,
    84.67,
    11
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10268,
    'S24_1937',
    33,
    31.86,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10268,
    'S24_2022',
    40,
    36.29,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10268,
    'S24_3969',
    30,
    37.75,
    8
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10269,
    'S18_2957',
    32,
    57.46,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10269,
    'S24_4258',
    48,
    95.44,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10270,
    'S10_1949',
    21,
    171.44,
    9
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10270,
    'S10_4962',
    32,
    124.1,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10270,
    'S12_1666',
    28,
    135.3,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10270,
    'S18_1097',
    43,
    94.5,
    8
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10270,
    'S18_2949',
    31,
    81.05,
    10
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10270,
    'S18_3136',
    38,
    85.87,
    11
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10270,
    'S18_4600',
    38,
    107.76,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10270,
    'S18_4668',
    44,
    40.25,
    7
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10270,
    'S32_1268',
    32,
    93.42,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10270,
    'S32_3522',
    21,
    52.36,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10270,
    'S700_2824',
    46,
    101.15,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10271,
    'S12_4473',
    31,
    99.54,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10271,
    'S18_2238',
    50,
    147.36,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10271,
    'S18_2319',
    50,
    121.5,
    8
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10271,
    'S18_2432',
    25,
    59.55,
    11
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10271,
    'S18_3232',
    20,
    169.34,
    9
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10271,
    'S24_1444',
    45,
    49.71,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10271,
    'S24_2300',
    43,
    122.68,
    10
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10271,
    'S24_2840',
    38,
    28.64,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10271,
    'S24_4048',
    22,
    110,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10271,
    'S32_2509',
    35,
    51.95,
    7
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10271,
    'S50_1392',
    34,
    93.76,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10272,
    'S12_1108',
    35,
    187.02,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10272,
    'S12_3148',
    27,
    123.89,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10272,
    'S12_3891',
    39,
    148.8,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10272,
    'S18_4027',
    25,
    126.39,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10272,
    'S32_3207',
    45,
    56.55,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10272,
    'S50_1514',
    43,
    53.89,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10273,
    'S10_4757',
    30,
    136,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10273,
    'S18_3029',
    34,
    84.3,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10273,
    'S18_3140',
    40,
    117.47,
    13
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10273,
    'S18_3259',
    47,
    87.73,
    15
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10273,
    'S18_3856',
    50,
    105.87,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10273,
    'S18_4522',
    33,
    72.85,
    12
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10273,
    'S24_2011',
    22,
    103.23,
    11
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10273,
    'S24_3151',
    27,
    84.08,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10273,
    'S24_3816',
    48,
    83.86,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10273,
    'S700_1138',
    21,
    66,
    7
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10273,
    'S700_1938',
    21,
    77.95,
    14
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10273,
    'S700_2610',
    42,
    57.82,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10273,
    'S700_3505',
    40,
    91.15,
    8
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10273,
    'S700_3962',
    26,
    89.38,
    9
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10273,
    'S72_3212',
    37,
    51.32,
    10
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10274,
    'S18_1662',
    41,
    129.31,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10274,
    'S24_2841',
    40,
    56.86,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10274,
    'S24_3420',
    24,
    65.09,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10274,
    'S700_2047',
    24,
    75.13,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10274,
    'S72_1253',
    32,
    49.66,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10275,
    'S10_1678',
    45,
    81.35,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10275,
    'S10_2016',
    22,
    115.37,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10275,
    'S10_4698',
    36,
    154.93,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10275,
    'S18_2581',
    35,
    70.12,
    9
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10275,
    'S18_2625',
    37,
    52.09,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10275,
    'S24_1578',
    21,
    105.94,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10275,
    'S24_1785',
    25,
    97.38,
    11
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10275,
    'S24_2000',
    30,
    61.7,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10275,
    'S24_3949',
    41,
    58,
    18
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10275,
    'S24_4278',
    27,
    67.38,
    10
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10275,
    'S32_1374',
    23,
    89.9,
    7
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10275,
    'S32_4289',
    28,
    58.47,
    12
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10275,
    'S50_1341',
    38,
    40.15,
    13
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10275,
    'S700_1691',
    32,
    85.86,
    14
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10275,
    'S700_2466',
    39,
    82.77,
    16
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10275,
    'S700_2834',
    48,
    102.04,
    8
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10275,
    'S700_3167',
    43,
    72,
    15
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10275,
    'S700_4002',
    31,
    59.96,
    17
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10276,
    'S12_1099',
    50,
    184.84,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10276,
    'S12_2823',
    43,
    150.62,
    14
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10276,
    'S12_3380',
    47,
    104.52,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10276,
    'S12_3990',
    38,
    67.83,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10276,
    'S18_3278',
    38,
    78,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10276,
    'S18_3482',
    30,
    139.64,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10276,
    'S18_3782',
    33,
    54.71,
    9
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10276,
    'S18_4721',
    48,
    120.53,
    8
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10276,
    'S24_2360',
    46,
    61.64,
    12
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10276,
    'S24_3371',
    20,
    58.17,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10276,
    'S24_4620',
    48,
    67.1,
    7
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10276,
    'S32_2206',
    27,
    35.4,
    10
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10276,
    'S32_4485',
    38,
    94.91,
    13
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10276,
    'S50_4713',
    21,
    67.53,
    11
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10277,
    'S12_4675',
    28,
    93.28,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10278,
    'S18_1129',
    34,
    114.65,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10278,
    'S18_1589',
    23,
    107.02,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10278,
    'S18_1889',
    29,
    73.15,
    10
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10278,
    'S18_1984',
    29,
    118.07,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10278,
    'S18_2870',
    39,
    117.48,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10278,
    'S18_3232',
    42,
    167.65,
    7
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10278,
    'S18_3685',
    31,
    114.44,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10278,
    'S24_1628',
    35,
    48.8,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10278,
    'S24_2972',
    31,
    37.38,
    8
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10278,
    'S24_3856',
    25,
    136.22,
    9
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10279,
    'S18_4933',
    26,
    68.42,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10279,
    'S24_1046',
    32,
    68.35,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10279,
    'S24_2766',
    49,
    76.33,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10279,
    'S24_2887',
    48,
    106.87,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10279,
    'S24_3191',
    33,
    78.76,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10279,
    'S24_3432',
    48,
    95.3,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10280,
    'S10_1949',
    34,
    205.73,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10280,
    'S18_1097',
    24,
    98,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10280,
    'S18_1342',
    50,
    87.33,
    9
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10280,
    'S18_1367',
    27,
    47.44,
    8
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10280,
    'S18_1749',
    26,
    161.5,
    16
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10280,
    'S18_2248',
    25,
    53.28,
    15
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10280,
    'S18_2325',
    37,
    109.33,
    13
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10280,
    'S18_2795',
    22,
    158.63,
    10
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10280,
    'S18_2949',
    46,
    82.06,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10280,
    'S18_2957',
    43,
    54.34,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10280,
    'S18_3136',
    29,
    102.63,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10280,
    'S18_3320',
    34,
    99.21,
    7
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10280,
    'S18_4409',
    35,
    77.31,
    17
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10280,
    'S24_1937',
    20,
    29.87,
    12
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10280,
    'S24_2022',
    45,
    36.29,
    11
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10280,
    'S24_3969',
    33,
    35.29,
    14
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10280,
    'S24_4258',
    21,
    79.86,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10281,
    'S10_4962',
    44,
    132.97,
    9
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10281,
    'S12_1666',
    25,
    127.1,
    13
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10281,
    'S12_4473',
    41,
    98.36,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10281,
    'S18_2319',
    48,
    114.14,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10281,
    'S18_2432',
    29,
    56.52,
    7
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10281,
    'S18_3232',
    25,
    135.47,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10281,
    'S18_4600',
    25,
    96.86,
    10
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10281,
    'S18_4668',
    44,
    42.76,
    14
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10281,
    'S24_2300',
    25,
    112.46,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10281,
    'S24_2840',
    20,
    33.95,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10281,
    'S32_1268',
    29,
    80.9,
    8
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10281,
    'S32_2509',
    31,
    44.91,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10281,
    'S32_3522',
    36,
    59.47,
    12
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10281,
    'S700_2824',
    27,
    89.01,
    11
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10282,
    'S12_1108',
    41,
    176.63,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10282,
    'S12_3148',
    27,
    142.02,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10282,
    'S12_3891',
    24,
    169.56,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10282,
    'S18_2238',
    23,
    147.36,
    13
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10282,
    'S18_3140',
    43,
    122.93,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10282,
    'S18_3259',
    36,
    88.74,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10282,
    'S18_4027',
    31,
    132.13,
    8
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10282,
    'S24_1444',
    29,
    49.71,
    11
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10282,
    'S24_4048',
    39,
    96.99,
    10
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10282,
    'S32_3207',
    36,
    51.58,
    9
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10282,
    'S50_1392',
    38,
    114.59,
    12
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10282,
    'S50_1514',
    37,
    56.24,
    7
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10282,
    'S700_1938',
    43,
    77.95,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10283,
    'S10_4757',
    25,
    130.56,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10283,
    'S18_3029',
    21,
    78.28,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10283,
    'S18_3856',
    46,
    100.58,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10283,
    'S18_4522',
    34,
    71.97,
    14
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10283,
    'S24_2011',
    42,
    99.54,
    13
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10283,
    'S24_3151',
    34,
    80.54,
    8
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10283,
    'S24_3816',
    33,
    77.15,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10283,
    'S700_1138',
    45,
    62,
    9
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10283,
    'S700_2047',
    20,
    74.23,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10283,
    'S700_2610',
    47,
    68.67,
    7
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10283,
    'S700_3505',
    22,
    88.15,
    10
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10283,
    'S700_3962',
    38,
    85.41,
    11
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10283,
    'S72_1253',
    43,
    41.22,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10283,
    'S72_3212',
    33,
    49.14,
    12
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10284,
    'S18_1662',
    45,
    137.19,
    11
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10284,
    'S18_2581',
    31,
    68.43,
    1
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10284,
    'S24_1785',
    22,
    101.76,
    3
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10284,
    'S24_2841',
    30,
    65.08,
    12
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10284,
    'S24_3420',
    39,
    59.83,
    13
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10284,
    'S24_3949',
    21,
    65.51,
    10
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10284,
    'S24_4278',
    21,
    66.65,
    2
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10284,
    'S32_4289',
    50,
    60.54,
    4
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10284,
    'S50_1341',
    33,
    35.78,
    5
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10284,
    'S700_1691',
    24,
    87.69,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10284,
    'S700_2466',
    45,
    95.73,
    8
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10284,
    'S700_3167',
    25,
    68,
    7
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10284,
    'S700_4002',
    32,
    73.29,
    9
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10285,
    'S10_1678',
    36,
    95.7,
    6
);

INSERT INTO ORDERDETAILS (
    ORDERNUMBER,
    PRODUCTCODE,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER
) VALUES (
    10285,
    'S10_2016',
    47,
    110.61,
    9
);

--------------------------------------------------------
--  DDL for Index SYS_C001303489
--------------------------------------------------------

CREATE UNIQUE INDEX "XXX"."SYS_C001303489" ON "XXX"."ORDERDETAILS" (
    "ORDERNUMBER",
    "PRODUCTCODE"
) PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS STORAGE(
    INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645 PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT
) TABLESPACE "USER_DATA";

--------------------------------------------------------
--  Constraints for Table ORDERDETAILS
--------------------------------------------------------

ALTER TABLE ORDERDETAILS MODIFY ("ORDERNUMBER" NOT NULL ENABLE);

ALTER TABLE ORDERDETAILS MODIFY ("PRODUCTCODE" NOT NULL ENABLE);

ALTER TABLE ORDERDETAILS MODIFY ("QUANTITYORDERED" NOT NULL ENABLE);

ALTER TABLE ORDERDETAILS MODIFY ("PRICEEACH" NOT NULL ENABLE);

ALTER TABLE ORDERDETAILS MODIFY ("ORDERLINENUMBER" NOT NULL ENABLE);

ALTER TABLE ORDERDETAILS ADD PRIMARY KEY ("ORDERNUMBER", "PRODUCTCODE") USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645 PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT) TABLESPACE "USER_DATA" ENABLE;