drop database if exists tutorial;
create database tutorial;
use tutorial;
create table author(
authorId varchar(50) primary key,
authorName varchar(50) not null
);
create table book(
bookId varchar(50) primary key,
bookName varchar(50) not null,
authorId varchar(50) not null ,
foreign key(authorId) references author(authorId)
);
insert into author values("AUT0001", "James");
insert into author values("AUT0002", "Harry");
insert into author values("AUT0003", "Potter");
insert into book values ("BOO123","MAGNIFICENT", "AUT0001");
insert into book values ("BOO456","BLACK MAGIC", "AUT0001");
insert into book values ("BOO789","INDEPENDENCE", "AUT0002");
insert into book values ("BOO987","REPUBLIC", "AUT0003");
commit;