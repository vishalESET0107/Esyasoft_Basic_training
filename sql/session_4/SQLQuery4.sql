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

SELECT
    u.user_id,
    u.email,
    u.name AS user_name,
    o.order_no,
    b.product_id,
    b.title AS book_title,
    b.price
FROM
    users u
INNER JOIN
    orders o ON u.user_id = o.user_id
INNER JOIN
    books b ON o.product_id = b.product_id;

select *
FROM
    users u
INNER JOIN
    orders o ON u.user_id = o.user_id
INNER JOIN
    books b ON o.product_id = b.product_id;


select b.title

from orders as o
inner join books as b 
on o.product_id = b.product_id


SELECT
    
    u.name AS user_name,b.title
    
FROM
    users u
INNER JOIN
    orders o ON u.user_id = o.user_id
INNER JOIN
    books b ON o.product_id = b.product_id;




select u.name , sum(b.price) as sum
    FROM

    
    users u
INNER JOIN
    orders o ON u.user_id = o.user_id
INNER JOIN
    books b ON o.product_id = b.product_id

    group by u.name



    select u.name , sum(b.price) , max(b.price)
    FROM
    
    users u
    where  b.price =max(b.price)
    
   
INNER JOIN
    orders o ON u.user_id = o.user_id
INNER JOIN
    books b ON o.product_id = b.product_id

    group by u.name order by sum(b.price) desc



  select  name 
  
  from
    (select u.name , sum(b.price) as su
    FROM

    
    users u
INNER JOIN
    orders o ON u.user_id = o.user_id
INNER JOIN
    books b ON o.product_id = b.product_id

    group by u.name) as s

     where su = (select max(su) from s)

    order by su desc

    where sum = (select max(sum) from s)




     


    select u.name , max(b.price)
    FROM

    
    users u
INNER JOIN
    orders o ON u.user_id = o.user_id
INNER JOIN
    books b ON o.product_id = b.product_id

    group by u.name




 WITH s AS (
    SELECT 
        u.name, 
        SUM(b.price) as total_sum
    FROM users u
    INNER JOIN orders o ON u.user_id = o.user_id
    INNER JOIN books b ON o.product_id = b.product_id
    GROUP BY u.name
)
SELECT name 
FROM s
WHERE total_sum = (SELECT MAX(total_sum) FROM s);


SELECT DISTINCT u.name
FROM users u
INNER JOIN orders o ON u.user_id = o.user_id
INNER JOIN books b ON o.product_id = b.product_id
GROUP BY u.name
HAVING SUM(b.price) =max( sum(b.price))

SELECT u.name
FROM users u
INNER JOIN orders o ON u.user_id = o.user_id
INNER JOIN books b ON o.product_id = b.product_id
GROUP BY u.name
HAVING SUM(b.price) = (
    SELECT MAX(total_spent)
    FROM (
        SELECT SUM(b2.price) as total_spent
        FROM orders o2
        INNER JOIN books b2 ON o2.product_id = b2.product_id
        GROUP BY o2.user_id
    ) user_totals
);




select title

from books 

where price = (select max(price) from books)


select title

from books 

where price = (select min(price) from books)

select *
from books order by product_id desc








  








