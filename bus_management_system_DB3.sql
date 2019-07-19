clear screen;

DROP TABLE EMPLOYEE CASCADE CONSTRAINTS;
DROP TABLE BUS CASCADE CONSTRAINTS;
DROP TABLE TIME_SLOT CASCADE CONSTRAINTS;
DROP TABLE ROUTE CASCADE CONSTRAINTS;
DROP TABLE PASSENGER CASCADE CONSTRAINTS;
DROP TABLE COUNTER CASCADE CONSTRAINTS;
DROP TABLE TICKET CASCADE CONSTRAINTS;
DROP TABLE PAYMENT CASCADE CONSTRAINTS;

CREATE TABLE EMPLOYEE (
	enum int,
	ename varchar2(30),
	etype varchar2(10),
	pnum varchar2(11),
	address varchar2(20),
	PRIMARY KEY(enum));


CREATE TABLE BUS (
	bnum int,
	enum int,
	btype varchar2(20),
	total_seats int,
	PRIMARY KEY(bnum),
	FOREIGN KEY(enum) REFERENCES EMPLOYEE(enum));


CREATE TABLE TIME_SLOT (
	bnum int,
	journey_date varchar2(11),
	departure_time varchar2(11),
	arrival_time varchar2(11),
	FOREIGN KEY(bnum) REFERENCES BUS(bnum));


CREATE TABLE ROUTE (
	bnum int,
	starting_point varchar2(20),
	destination varchar2(20),
	FOREIGN KEY(bnum) REFERENCES BUS(bnum));


CREATE TABLE PASSENGER (
	pnum varchar2(11),
	pname varchar2(30),
	email varchar2(30),
	PRIMARY KEY(pnum));

CREATE TABLE COUNTER (
	cnum int,
	enum int,
	location varchar2(20),
	pnum varchar2(11),
	PRIMARY KEY(cnum),
	FOREIGN KEY(enum) REFERENCES EMPLOYEE(enum));	


CREATE TABLE TICKET (
	tnum int,
	bnum int,
	pnum varchar2(11),
	cnum int,
	seat_no char(2),
	fare int,
	PRIMARY KEY(tnum),
	FOREIGN KEY(cnum) REFERENCES COUNTER(cnum),
	FOREIGN KEY(pnum) REFERENCES PASSENGER(pnum));
	

CREATE TABLE PAYMENT (
	cnum int,
	tnum int,
	pnum varchar2(11),
	cost int,
	payment_date varchar2(11),
	FOREIGN KEY(pnum) REFERENCES PASSENGER(pnum),
	FOREIGN KEY(cnum) REFERENCES COUNTER(cnum));


insert into employee (enum, ename, etype, pnum, address ) values (1000, 'Abdullah', 'Driver', '01700000100', 'Dhaka');
insert into employee (enum, ename, etype, pnum, address ) values (1001, 'Maruf', 'Staff', '01700000101', 'Dhaka');
insert into employee (enum, ename, etype, pnum, address ) values (1002, 'Dulal', 'Manager', '01700000102', 'Dhaka');
insert into employee (enum, ename, etype, pnum, address ) values (1003, 'Akram', 'Driver', '01700000103', 'Dhaka');
insert into employee (enum, ename, etype, pnum, address ) values (1004, 'Karim', 'Manager', '01700000104', 'Rangpur');
insert into employee (enum, ename, etype, pnum, address ) values (1005, 'Rakib', 'Driver', '01700000105', 'Rangpur');
insert into employee (enum, ename, etype, pnum, address ) values (1006, 'Rahim', 'Driver', '01700000106', 'Rangpur');
insert into employee (enum, ename, etype, pnum, address ) values (1007, 'Karim', 'Staff', '01700000107', 'Rangpur');
insert into employee (enum, ename, etype, pnum, address ) values (1008, 'Trivadi', 'Staff', '01700000108', 'Rangpur');
insert into employee (enum, ename, etype, pnum, address ) values (1009, 'Sajid', 'Manager', '01700000109', 'Comilla');
insert into employee (enum, ename, etype, pnum, address ) values (1010, 'Abir', 'Driver', '01700000110', 'Dinajpur');
insert into employee (enum, ename, etype, pnum, address ) values (1011, 'Hafiz', 'Staff', '01700000111', 'Rajshahi');
insert into employee (enum, ename, etype, pnum, address ) values (1012, 'Abir', 'Driver', '01700000112', 'Dinajpur');
insert into employee (enum, ename, etype, pnum, address ) values (1013, 'Hafiz', 'Staff', '01700000113', 'Rajshahi');
insert into employee (enum, ename, etype, pnum, address ) values (1014, 'Sajid', 'Manager', '01700000114', 'Comilla');

insert into bus (bnum, enum, btype, total_seats) values (101,1000,'AC',28);
insert into bus (bnum, enum, btype, total_seats) values (102,1003,'Non-AC',40);
insert into bus (bnum, enum, btype, total_seats) values (103,1005,'AC',28);
insert into bus (bnum, enum, btype, total_seats) values (104,1008,'AC',28);
insert into bus (bnum, enum, btype, total_seats) values (105,1009,'Non-AC',40);
insert into bus (bnum, enum, btype, total_seats) values (106,1002,'AC',28);

insert into time_slot (bnum, journey_date, departure_time, arrival_time) values (101,'10-05-2018','10:00am','06:00pm');
insert into time_slot (bnum, journey_date, departure_time, arrival_time) values (102,'12-04-2018','09:00am','07:00pm');
insert into time_slot (bnum, journey_date, departure_time, arrival_time) values (103,'18-05-2018','08:00am','05:00pm');
insert into time_slot (bnum, journey_date, departure_time, arrival_time) values (101,'11-05-2018','10:00am','06:00pm');
insert into time_slot (bnum, journey_date, departure_time, arrival_time) values (102,'08-04-2018','08:00am','04:00pm');
insert into time_slot (bnum, journey_date, departure_time, arrival_time) values (103,'26-05-2018','08:00am','08:00pm');

insert into route (bnum, starting_point, destination) values (101,'Dhaka','Dinajpur');
insert into route (bnum, starting_point, destination) values (102,'Rajshahi','Dhaka');
insert into route (bnum, starting_point, destination) values (103,'Dhaka','Rangpur');
insert into route (bnum, starting_point, destination) values (101,'Dhaka','Dinajpur');
insert into route (bnum, starting_point, destination) values (102,'Rajshahi','Dhaka');
insert into route (bnum, starting_point, destination) values (103,'Dhaka','Rangpur');


insert into passenger (pnum, pname, email) values ('01800000200', 'Hafiz', 'hafiz123@gmail.com');
insert into passenger (pnum, pname, email) values ('01800000201', 'Rafiq', 'abcd@gmail.com');
insert into passenger (pnum, pname, email) values ('01800000202', 'Abir', 'abir@gmail.com');

insert into counter (cnum, enum, location, pnum) values (1, 1004, 'Dhaka', '01900000300');
insert into counter (cnum, enum, location, pnum) values (2, 1004, 'Dhaka', '01900000301');
insert into counter (cnum, enum, location, pnum) values (3, 1004, 'Dhaka', '01900000302');
insert into counter (cnum, enum, location, pnum) values (4, 1004, 'Dhaka', '01900000303');
insert into counter (cnum, enum, location, pnum) values (5, 1002, 'Rangpur', '01900000304');
insert into counter (cnum, enum, location, pnum) values (6, 1002, 'Rangpur', '01900000305');
insert into counter (cnum, enum, location, pnum) values (7, 1002, 'Rangpur', '01900000306');
insert into counter (cnum, enum, location, pnum) values (8, 1002, 'Rangpur', '01900000307');
insert into counter (cnum, enum, location, pnum) values (9, 1001, 'Dinjapur', '01900000308');

insert into ticket (tnum, bnum, pnum, cnum, seat_no, fare) values (30001, 101, '01800000200', 1, 'A1', 600);
insert into ticket (tnum, bnum, pnum, cnum, seat_no, fare) values (30002, 102, '01800000201', 2, 'C2', 1000);
insert into ticket (tnum, bnum, pnum, cnum, seat_no, fare) values (30003, 102, '01800000202', 3, 'D4', 1000);

insert into payment (cnum, tnum, pnum, cost, payment_date) values (1, 30001, '01800000200', 600, '10-05-2018'); 
insert into payment (cnum, tnum, pnum, cost, payment_date) values (2, 30002, '01800000201', 1000, '05-02-2018');
insert into payment (cnum, tnum, pnum, cost, payment_date) values (3, 30003, '01800000202', 800, '26-01-2018');

commit;



