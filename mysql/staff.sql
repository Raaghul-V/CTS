create database cts;

use cts;

CREATE TABLE staff(firstName VARCHAR(50), lastName VARCHAR(50), gender VARCHAR(50), email VARCHAR(50),contactNumber VARCHAR(50),employeeId VARCHAR(50),password VARCHAR(50),salary VARCHAR(50),designation VARCHAR(50),correpondanceAddress VARCHAR(50),loginType VARCHAR(50));

SET SQL_SAFE_UPDATES = 0;

alter table staff add approved varchar(10);

insert into staff (firstname, lastname, gender, email, contactnumber,employeeId, password, salary, designation, correpondanceAddress, loginType)
values("SAYAR", "SAYAR", "Male", "sayar@gmail.com", "9876543210",'1', "sayar", "1000000", "SuperUser", "xyz", "SU");

select * from staff;

