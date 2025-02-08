show databases;
drop database da;
drop database customer;
create database students;
use students;
create table students(id int,
F_name varchar(250), l_name varchar(250),
email varchar(300), phonenumber int, address varchar(300),
city varchar(150));
show tables;
use students;
INSERT INTO students
values(1,'SAI','PRASANNA','ABC@GMAIL.COM',123456,'SALIPETA','TENALI'),
(2,'KAVITHA','MUTHALURI','XYZ@GMAIL.COM',234567,'MRKSEP','TENALI'),
(3,'Rajitha','sri','qwq@gmail.com',234578,'asepe','Tenali'),
(4,'Shiva','permanan','awas@gmail.com',567890,'etyqwe','PRK'),
(5,'Ravi','dasari','rdv@gmail.com',127777,'raaskt','GNT'),
(6,'Kishore','karavathi','kks@gmai.com',780991,'resd','VIJ'),
(7,'pavani','lakshmi','pav@gmail.com',890123,'werr','TNL'),
(8,'Bhavani','d','bvl@gmail.com',36871239,'hgkja','tnl'),
(9,'sailu','m','ss@gmail.com',89333442,'ghjahsui','tnl'),
(10,'lakshmi','prasu','lp@gmail.com',567234,'hatyue','tnl');
select * from students;
insert into students(id,F_name,l_name,email,address)
values(11,'Teju','Sri','ts@gmai.cm','ehua'),
(12, 'Manu','sdr','mm@gmail.com','asuha');
/*to find the null------------------*/
select * from students where city is null;
use students;
/* replace the null value by using wher*/
update students set city ='TNL' where id =11;
/* adding column by using alter command*/
alter table students add grade int;
insert into students(id,grade)
values(1,77),
(2,56),
(3,67),
(4,78),
(5,65),
(6,78),
(7,55),
(8,64),
(9,78),
(10,81),
(11,54),
(12,57);
/*drop column using alter*/
alter table students drop grade;
select * from students;
desc students;
/* delete */
delete from students where id=9;
/*Distinct>> it shows the required columns*/
select distinct email,F_name from students;







