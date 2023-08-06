CREATE TABLE zone
(
zoneid VARCHAR(30) NOT NULL,
name VARCHAR(100) NOT NULL,

PRIMARY KEY(zoneid)
);

CREATE TABLE artist
( 
artistid VARCHAR(30) NOT NULL,
name VARCHAR(100) NOT NULL,
country VARCHAR(100) NOT NULL,
contact VARCHAR(30) NOT NULL,

PRIMARY KEY(artistid)
);

CREATE TABLE art
(
artid VARCHAR(20) NOT NULL,
name VARCHAR(100) NOT NULL,
description VARCHAR(200) NOT NULL,
publishdate DATE NOT NULL,
price DOUBLE NOT NULL,
artistid VARCHAR(30) NOT NULL,
zoneid VARCHAR(30) NOT NULL,

PRIMARY KEY(artid),
FOREIGN KEY(zoneid) REFERENCES zone(zoneid),
FOREIGN KEY(artistid) REFERENCES artist(artistid)
);

CREATE TABLE person
(
personid VARCHAR(30) NOT NULL,
password VARCHAR(30) NOT NULL,
name VARCHAR(100) NOT NULL,
contact VARCHAR(30) NOT NULL,
role VARCHAR(30) NOT NULL,

PRIMARY KEY(personid)
);

CREATE TABLE reserve
(
personid VARCHAR(30) NOT NULL,
artid VARCHAR(30) NOT NULL,
date DATE NOT NULL DEFAULT CURRENT_TIMESTAMP,
status VARCHAR(50) NOT NULL,

FOREIGN KEY(personid) REFERENCES person(personid),
FOREIGN KEY(artid) REFERENCES art(artid)
);

INSERT INTO `person`(`personid`,`password`,`name`,`contact`,`role`) VALUES
('P001','123456789','Addison Jacobson','011-4158 4223','customer'),
('P002','password','Jules Vo','011-7557 0393','customer'),
('P003','awekcantik','Fahad Craft','011-8889 9658','staff'),
('P004','123asz','Yvie Griffiths','011-1677 6279','customer'),
('P005','qwer1234','Madelaine Pike','018-472 6448','customer'),
('P006','987654321','Yvie Griffiths','011-8889 6118','customer'),
('P007','apakhabar','Caio Barlow','014-292 4464','staff');

INSERT INTO `zone`(`zoneid`, `name`) VALUES
('1001','Renaissance'),
('1002','Sculpture'),
('1003','Modern Art'),
('1004','Literature'),
('1005','Classical'),
('1006','Gothic'),
('1007','Victorian');

INSERT INTO `artist`(`artistid`, `name`, `country`, `contact`) VALUES
('1001','Linda Cantrell','Thailand','03 8739-1377'),
('1002','Shayla Rocha','Russia','033343-7317'),
('1003','Aairah John','Cameroon','05 5485922'),
('1004','Ahsan Simmonds','Oman','089762310'),
('1005','Oisin Blake','Suriname','039101-2289'),
('1006','Maya Crouch','Thailand','06677-5586'),
('1007','Nazia Salter','Abkhazia','03-5633-3073'),
('1008','Hakeem Li','Mexico','0321415077'),
('1009','Kiefer Clark','Egypt','03 21445481'),
('1010','Lily-Mae Woodcock','Saint Barthelemy','011-8886 7881'),
('1011','Aaken Li','Hungary','0378800854');

INSERT INTO `art` (`artid`, `name`, `price`, `publishdate`, `artistid`, `zoneid`,`description`) VALUES
('1001','Moana Linda','1000000', '1950-12-10','1001','1001','Elegant'),
('1002','Venus Wrath','500450','1970-03-06','1002','1002','Luxurious'),
('1003','John The Carpenter','1000050','2001-06-01', '1003','1005','Elegant'),
('1004','Gotham Asylum','500000','2005-12-12', '1004','1006','Elegant'),
('1005','Abstract Shoes','350000','2010-03-12', '1005','1003','Style'),
('1006','Hamlet','2300250','1977-10-03', '1006','1005','Luxurious'),
('1007','Terracotta Squad','5000300','1980-11-02', '1006','1004','Luxurious'),
('1008','Queen Elizabeth Victoria','750000','1997-04-03', '1001','1007','Style'),
('1009','Iron Will Forged','860560', '2005-12-07 ', '1009','1005','Elegant'),
('1010','Byzantine Elephante','450400','2001-06-05', '1011','1005','Elegant'),
('1011','The Siege of Mongol','3000750','1967-12-03', '1011','1004','Luxurious'),
('1012','Queens of Panic','4500000','1969-04-20', '1001','1005','Royalty'),
('1013','Abstract Message','500000','2000-06-05', '1004','1003','Colourful'),
('1014','la Couverture Divin','7000000','2003-04-13', '1006','1004','Style'),
('1015','Infini','100000','2012-03-14', '1007','1005','Wonderful'),
('1016','Garden of Freedom','750000','2010-03-12', '1004','1005','Elegant'),
('1017','Veiled Beauty','300000','1951-05-22', '1001','1001','Luxurious'),
('1018','Refusal','1050000','1999-04-03', '1005','1006','Dark'),
('1019','Oath','1350000','1977-04-03', '1003','1004','Divine'),
('1020','Euphoric Switch','3050000','1987-04-03', '1004','1003','Style'),
('1021','Gracious Battle','3510000','1997-04-03', '1011','1004','Style'),
('1022','Death of Ice','3750000','1989-04-03', '1001','1001','Divine'),
('1023','Awoken Fall','4350000','2006-04-03', '1010','1002','Dark'),
('1024','Brain','500000','2004-04-03', '1007','1005','Dark'),
('1025','Euphoric Sister','787000','1967-04-16', '1004','1004','Dark'),
('1026','Mask','900000','1996-04-26', '1006','1005','Dark'),
('1027','Wounds','270000','1977-07-07', '1008','1004','Dark'),
('1028','Winter','1000000','2001-11-15', '1006','1003','Elegant'),
('1029','Fall of Evil','980000','2002-01-03', '1005','1002','Fear'),
('1030','Visitor','660000','2003-04-04', '1004','1002','Style');

INSERT INTO `reserve`(`personid`, `artid`, `date`, `status`) VALUES
('P001','1001','2020-12-12','SOLD'),
('P002','1002','2020-11-11','SOLD'),
('P002','1003','2010-01-12','SOLD'),
('P004','1004','2012-02-12','SOLD'),
('P004','1005','2015-03-05','SOLD'),
('P005','1006','2019-05-05','SOLD'),
('P006','1010','2019-09-05','SOLD'),
('P006','1011','2018-02-12','SOLD');

commit;