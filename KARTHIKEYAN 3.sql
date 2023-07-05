
/*to crate database1*/
create database bookdb;

/*creating table 1*/
CREATE TABLE bookdb.books (
b_id int,
title varchar(20),
year int,
price int,
primary key (b_id)
);

/*inserting data1*/
insert into bookdb.books values
(1,'panda ',1908,2399),
(2,'predator',3000,999),
(3,'jungle',2027,799),
(4,'mike the pipe',1915,4199),
(5,'james cameroun',2031,6599);

/*creating table 2*/
create table bookdb.authors(
a_id int,
name varchar(20),
age int,
b_id int,
primary key (a_id),
foreign key (b_id) references books(b_id)
);

drop database bookdb;

/*inserting data 2*/
insert into bookdb.authors values
(1,'karthi',40,2),
(2,'naveen',35,3),
(3,'dilkip',56,5),
(4,'shalini c',46,1),
(5,'lakshana',43,4);

/*Retrieve all the books from the database*/
SELECT * FROM bookdb.books;

/*Retrieve the details of a book based on its title*/
SELECT * FROM bookdb.books where title='mike the pipe';

/*Update the price of a book*/
update bookdb.books set price=499 where title='james cameroun';

/*Delete a book from the database based on its title*/
delete from bookdb.books where title='james cameroun';

/*to calculate and display the average price of all the books in the database*/
select avg(price) from bookdb.books;

/*perform a query to retrieve books along with their respective authors*/
SELECT books.title,authors.name FROM bookdb.books
join bookdb.authors on bookdb.books.b_id=bookdb.authors.b_id;