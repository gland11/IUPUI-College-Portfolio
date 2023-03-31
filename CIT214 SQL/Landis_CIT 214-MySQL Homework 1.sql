insert into adventure_trip values('45','Jay Peak','Jay','VT','8','8','Hiking','Summer');

select * from adventure_trip; 

CREATE TABLE GUIDE
(GUIDE_NUM CHAR(4),
LAST_NAME CHAR(15),
FIRST_NAME CHAR(15),
ADDRESS CHAR(25),
CITY CHAR(25),
STATE CHAR(2),
POSTAL_CODE CHAR(5),
PHONE_NUM CHAR(12),
HIRE_DATE DATE );

CREATE TABLE CUSTOMER
(CUSTOMER_NUM CHAR(4),
LAST_NAME CHAR(30),
FIRST_NAME CHAR (30),
ADDRESS CHAR(35),
CITY CHAR(35),
STATE CHAR(2),
POSTAL_CODE CHAR(5),
PHONE CHAR(12) );

CREATE TABLE RESERVATION
(RESERVATION_ID CHAR(7),
TRIP_ID DECIMAL(3,0),
TRIP_DATE DATE,
NUM_PERSONS DECIMAL(3,0),
TRIP_PRICE DECIMAL(6,2),
OTHER_FEES DECIMAL(6,2),
CUSTOMER_NUM CHAR(4) );

CREATE TABLE TRIP
(TRIP_ID DECIMAL(3,0),
TRIP_NAME CHAR(75),
START_LOCATION CHAR(50),
STATE CHAR(2),
DISTANCE DECIMAL(4,0),
MAX_GRP_SIZE DECIMAL(4,0),
TYPE CHAR(20),
SEASON CHAR(20) );

CREATE TABLE TRIP_GUIDES
(TRIP_ID DECIMAL(3,0),
GUIDE_NUM CHAR(4));

INSERT INTO GUIDE
VALUES
('AM01','Abrams','Miles','54 Quest Ave.','Williamsburg','MA','01096','617-555-6032','2012-6-3');

INSERT INTO GUIDE
VALUES
('BR01','Boyers','Rita','140 Oakton Rd.','Jaffrey','NH','03452','603-555-2134','2012-3-4');

INSERT INTO GUIDE
VALUES
('DH01','Devon','Harley','25 Old Ranch Rd.','Sunderland','MA','01375','781-555-7767','2012-1-8');

INSERT INTO GUIDE
VALUES
('GZ01','Gregory','Zach','7 Moose Head Rd.','Dummer','NH','03588','603-555-8765','2012-11-4');

INSERT INTO GUIDE
VALUES
('KS01','Kiley','Susan','943 Oakton Rd.','Jaffrey','NH','03452','603-555-1230','2013-4-8');

INSERT INTO GUIDE
VALUES
('KS02','Kelly','Sam','9 Congaree Ave.','Fraconia','NH','03580','603-555-0003','2013-6-10');

INSERT INTO GUIDE
VALUES
('MR01','Marston','Ray','24 Shenandoah Rd.','Springfield','MA','01101','781-555-2323','2015-9-14');

INSERT INTO GUIDE
VALUES
('RH01','Rowan','Hal','12 Heather Rd.','Mount Desert','ME','04660','207-555-9009','2014-6-2');

INSERT INTO GUIDE
VALUES
('SL01','Stevens','Lori','15 Riverton Rd.','Coventry','VT','05825','802-555-3339','2014-9-5-');

INSERT INTO GUIDE
VALUES
('UG01','Unser','Glory','342 Pineview St.','Danbury','CT','06810','203-555-8534','2015-2-2');
