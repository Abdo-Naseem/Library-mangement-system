
create database  my;
use my ;
CREATE TABLE `my`.`books` (
  `Book_id` INT NOT NULL,
  `Author` VARCHAR(250) NULL,
  `Title` VARCHAR(45) NULL,
  `Price` VARCHAR(45) NULL,
  `Avaliable` VARCHAR(250) NULL,
  PRIMARY KEY (`Book_id`));

CREATE TABLE `my`.`publisher` (
  `Pub_ID` INT NOT NULL,
  `Address` VARCHAR(250) NULL,
  `Name` VARCHAR(45) NULL,
  PRIMARY KEY (`Pub_ID`));

CREATE TABLE `my`.`member` (
  `Memb_id` INT NOT NULL,
  `Memb_date` VARCHAR(45) NULL,
  `Memb_type` VARCHAR(45) NULL,
  `Address` VARCHAR(250) NULL,
  `Name` VARCHAR(45) NULL,
  `Expiry_date` VARCHAR(45) NULL,
  PRIMARY KEY (`Memb_id`));

insert into `my`.`member` values ('1', '10/10/2020', 'unique', 'kfrelsheikh', 'The first One', '20');
insert into `my`.`publisher` values ('1', 'kfrelsheikh', 'Tom');
insert into `my`.`books` values ('1', 'Tom', 'amazing book', '100', 'is Avaliable');

select * from my.member;
select * from my.publisher;
select * from my.books;

Insert into my.books values( '147', 'ali' , 'network book ' , '60' ,'is not Avaliable');
Insert into my.books values ( '258', 'maram', 'frinds', '75', 'is  Avaliable') ;
Insert into my.books values( '369', 'ahmed' , 'islam' , '250' ,'is Avaliable');
Insert into my.books values ( '148', 'mostafa', 'animals', '80', 'is not Avaliable') ;
Insert into my.publisher values ( '146', 'saudi arabia' ,'omnia') ;
Insert into my.publisher values( '789', 'sudan' , 'alla');
Insert into my.publisher values ( '456', 'tunisia' ,'omar') ;
Insert into my.publisher values( '123', ' algeria ' , 'farah');
Insert into my.member values( '357', ' 12/1/2020 ', ' unique ', ' Bahrain', 'the fourth' ,'7');
Insert into my.member values( '753', ' 12/2/2020 ', ' not unique',  ' mansora ' , 'the fifth ' , '14');
Insert into my.member values( '232', ' 2/11/2020 ', 'not unique ',  'yemen' , 'the sixth ' ,'15');
Insert into my.member values( '513', ' 2/2/2020 ', ' unique ',  ' syria' , 'the seventh ' , '10');

select * from my.books where book_id IN (select book_id from my.member where Memb_date = '12/1/2020' );
select * from my.books where Book_id not in (select distinct Pub_ID from my.publisher) ;
select * from my.books where Book_id not in (select distinct Memb_id from my.member) ;

select count(*) from my.member;
select sum(price) from my.books group by price;
select max(price) from my.books group by price;
select min(price) from my.books group by price;
select avg(price) from my.books group by price;

select count(*) from my.member group by Expiry_date;

Select  count(price) from my.books Group by price Having count(*) <= 80 ;

Select Name , Title From my.member , my.books Where `member`.`Memb_id` = books.Book_id;

Select Address , Author From my.publisher , my.books Where publisher.Pub_ID =  publisher.Pub_id;

Select Address , Title From my.member , my.books Where `member`.`Memb_id` = books.Book_id;

   
  
 Update my.member
 set Expiry_date =15
where Memb_id = 753;

Update my.books
 set price=50
 where Author=' maram';

Update my.member
set Memb_date=' 9/10/2020 ' 
where Expiry_date= 15;

Update my.books
 set Author = 'mostafa'
where Title= 'amazing book';

Update my.publisher
 set Address='Russia ' 
where Name='Tom' ;


Delete from my.member where address =' Bahrain ' ; 
Delete from my.books Where Author=' mostafa '; 
Delete from my.publisher where Name=' omar ' ;
Delete from my.books where Price= 250; 
Delete from my.member where Memb_date = ' 12/2/2020 ' ;
