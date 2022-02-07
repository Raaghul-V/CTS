create database cts;

use cts;

CREATE TABLE `warehouse` (
`branchid` varchar(11) NOT NULL,
`branchname` varchar(60) DEFAULT NULL,
`branchlocation` varchar(45) DEFAULT NULL,
`contactno` varchar(11) DEFAULT NULL,
PRIMARY KEY (`branchid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

select * from warehouse;