create database cts;

use cts;

CREATE TABLE Quotation(
packageWeight varchar(5),
senderAddress varchar(1000),
receiverAddress varchar(10000),
customerId varchar(5),
type varchar(100),
QuoteDate varchar(15),
offerDate varchar(15),
distance varchar(15),
cost varchar(5),
expectedDeiveryDate varchar(15));



alter table Quotation add useracceptance varchar(10);

select * from quotation;