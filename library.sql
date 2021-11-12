SELECT * FROM library.books_details;
INSERT  INTO  books_details VALUE(1,'DBMS','Ballguruswamy',495.00,'2005','V3');
USE Library;
select * from books_details1;
INSERT  INTO  books_details VALUE(2,'Data Structure ','Padma Raddy',459.00,'2018','V8');
INSERT INTO books_details (Book_id,Book_Name,Author_Name,Book_Price,Publish_year,Book_Volume) value
(3,'Algorithm','SSSS',550.00,'2019','V9');
select book_name,author_name from books_details;
INSERT INTO books_details(Book_id,Book_Name,Author_Name,Book_Price,Publish_year,Book_Volume)value(4,'400 Days','Chetan Bhagat',400.00,'2012','V4');
select * from books_details where Publish_year='2005';
select * from books_details where Publish_year>='2005';
select * from books_details where Publish_year<='2005';
select * from books_details where Publish_year>='2005'AND Book_Price<=500;
select * from books_details where Publish_year>='2005'OR Book_Price>=500;
select * from books_details where Publish_year>='2005'AND Book_Price<=500 AND Author_Name='Ballguru Swamy';


ALTER TABLE books_details ADD column No_Of_Pages int;
ALTER TABLE books_details DROP column No_Of_Pages;
ALTER TABLE books_details rename column Book_price To Book_Price;

ALTER TABLE books_details rename column Book_price To Book_Amount;
ALTER TABLE books_details RENAME TO books;
ALTER TABLE books_details MODIFY Book_Name varchar(35);
CREATE DATABASE Library;

use library;

CREATE TABLE Books_Details1(
    Book_id TINYINT,
    Book_Name VARCHAR(20) UNIQUE,
    Author_Name VARCHAR(30) NOT NULL,
    Book_Price FLOAT DEFAULT  500,
    Publish_Year YEAR CHECK(Publish_Year>2007),
    Book_Volume CHAR(10),
    PRIMARY KEY(Book_id)
    );
    
    SHOW TABLES;
    
    DESCRIBE Books;
    ALTER TABLE Book_details RENAME TO Book_Details1;
    ALTER TABLE Books_Details modify Book_Name varchar(35);
    ALTER TABLE Books_Details MODIFY Book_Name varchar(35)NOT NULL;
    DESCRIBE Books_Details;
    DESCRIBE Books_Details1;
    INSERT INTO books_details1(Book_id,Book_Name,Author_Name,Book_Price,Publish_year)value(4,'400 Days','Chetan Bhagat',400.00,'2012');
INSERT  INTO  books_details1 VALUE(1,'DBMS','Ballguruswamy',495.00,'2008','V3');
    SELECT* FROM Books_Details1 where Book_Volume is NOT NULL;
    
    INSERT  INTO  books_details1 VALUE(7,'ATC','Ballguruswamy',495.00,'2008','V3');
    
   SELECT distinct Author_Name from Books_Details1; 
    SELECT* FROM Books_Details1 where Book_Volume is  NULL;
    update Books_details1 set Book_volume='v1'where Book_id=6;
    update books_details1 set Book_price=500 where Book_id>1000;
    
    Delete from Books_details;
    delete from books_details where book_id=1;
    delete from books_details where book_id=7 or book_name='ATC';
     select * from books_details order by book_price;
     select * from books_details order by book_name desc;
    select * from books_details order by book_price desc;
    
    select * from books_details limit 2;
    select * from books_details order by book_id desc limit 3;
    select * from books_details where book_name='400 Days';
    select * from books_details where book_price between 495 and 410; 
    select * from books_details where publish_year between 2005 and 2010 order by publish_year;
    select book_price as book_amount from books_details where book_price > 500;
     select * from books_details where book_name='ATC';
    select * from books_details where book_name like '%ATC';
    select * from books_details where book_name like 'The%';
    select * from books_details where book_name like 'T%';
    
        --- Date and Time Functions
        select curdate() ;
        select curdate() as present_date;
        
	select curtime() as present_time;
    select now() as present_date_time;
   select date('2021-11-12 12:09:06') as Extracted_date;
   select date(now()) as Extracted_date;
   select time('2021-11-12 12:09:06') as Extracted_time;
   select time(now()) as Extracted_time;
   select dayofmonth('2021-11-12 12:09:06') as Extracted_day;
   select month(' 2021-11-12 12:09:06') as Extracted_month;
   select year('2021-11-12 12:09:06') as Extracted_year;
   select week('2021-11-12 12:09:06') as Extracted_week;
   select dayname('2021-11-12 12:09:06') as Extracted_week;


--  Aggregate Function

select max(book_price) from books_details1;
select min(book_price) from books_details1;
select avg(book_price) as average_cost_of_book from books_details1;
select max(book_price) as highest_cost_of_book from books_details1;
select min(book_price) as lowest_cost_of_book from books_details1;
select sum(book_price) as total_cost_of_book from books_details1;
select count(book_id) as no_of_book from books_details1;
select count(*) as no_of_books from books_details1;
select count(book_name) as no_of_books from books_details;

-- Group By

select count(book_name) from books_details1 group by author_name;
select book_price, count(book_price) as no_of_books_in_price from books_details group by book_price;
select publish_year, count(book_name) as no_of_books_in_year from books_details group by publish_year;
select publish_year,count(book_name)as no_of_books_in_year from books_details1 where publish_year > 2005 group by publish_year;









