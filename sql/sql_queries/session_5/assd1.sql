create database db1;

create table users (user_id int primary key , email varchar(30) , name varchar(50) )

create table books (product_id int primary key , title varchar(30) , price float )

create table orders (order_no int primary key , user_id int , product_id int ,
foreign key (user_id) references users(user_id) , foreign key (product_id) references books(product_id) )


insert into users (user_id , email , name)

values 
(1, 'Callmebhai@gmail.com', 'Gopal'),
(2, 'toxicmanji@gmail.com', 'Manjit'),
(3,'kalajadu@gmail.com', 'SowmayDeep'),
(4, 'VimalpanMasala@gmail.com', 'Jaisai'),
(5,'ghostlaugh@gmail.com', 'Namitha');

insert into books (product_id , title , price )

values
(101, 'MSSQL', 100),
(102, 'half girlfriend', 699.0),
(103,'Blackmagic', 700),
(104,'Marfa',2000),
(105, 'howtolaugh', 2001);


insert into orders (order_no , user_id , product_id)

values 

(401 , 1 , 101),
(402 , 2 , 103),
(404 , 3 , 103),
(405 , 3 , 104),
(406 , 4 , 102),
(407 , 5 , 105),
(408 , 5 , 102);


select u.name , f.title
from  users as u
inner join (
select  b.title , o.product_id , o.user_id  
from books as b 
inner join orders as o 
on b.product_id = o.product_id ) as f

on u.user_id = f.user_id 

select u.name , f.title
from  users as u
inner join (
select  b.title , o.product_id , o.user_id  
from books as b 
inner join orders as o 
on b.product_id = o.product_id ) as f

on u.user_id = f.user_id 

where title = 'blackmagic'

select u.name , f.title
from  users as u
inner join (
select  b.title , o.product_id , o.user_id  
from books as b 
inner join orders as o 
on b.product_id = o.product_id ) as f
on u.user_id = f.user_id 
where b.price = (select max(price) from books) -- this is not working because the b is in sub query










select * from users

select * from books 

select * from orders
