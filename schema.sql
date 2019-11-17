create table category(id integer primary key auto_increment,title varchar(100));

insert into category(title) values ('Electronics');
insert into category(title) values ('Fashion');
insert into category(title) values ('TV');
insert into category(title) values ('Tablets');

create table product(id integer primary key auto_increment,name varchar(100),description varchar(100));

create table user(id integer primary key auto_increment,name varchar(100),email varchar(100),phone varchar(20),password varchar(100));
