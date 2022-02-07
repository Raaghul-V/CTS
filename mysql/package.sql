create database cts;

use cts;

CREATE TABLE package(consignmentId VARCHAR(10),acceptDate VARCHAR(50),packageWeight VARCHAR(50),cost VARCHAR(50),senderAddress VARCHAR(50),receiverAddress VARCHAR(50),distance VARCHAR(10),employeeId VARCHAR(50),customerId VARCHAR(50),type VARCHAR(50),currentLocation VARCHAR(50),packageStatus VARCHAR(50));

alter table package add currentDate varchar(10);

alter table package add distance varchar(10);

select * from package;