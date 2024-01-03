use mavenmovies;

--  QUE-1 identify the primery keys and foreign keys in mavenmovies db . discuss the diffrences  

 -- A primary key is a genrally focused on a uniqness of the table while foreign key are used to join two or more table with each other.

-- QUE-2 list all the details of actor.

select * from actor;

-- QUE-3 lst all customers information from db.

select * from customer;

-- QUE-4 LIST difffrent countries.

select * from country ;

-- QUE-5 Display all active customers.

select first_name ,last_name,active from customer where active =1;

-- QUE-6 LIST all rental IDs for customer with ID 1.

select rental_id from payment where customer_id= 1;
-- QUE-7 Display all the films whose rental duration is grater then 5 

select title from film where rental_duration >5 ;

-- QUE-8 LIST the total no of films whose replacement cost is greather then $15 and less then $20.

select title from film where replacement_cost between 15 and 20;

-- QUE-9 find the no of films whose rental rate is less then $1 .

select count(rental_rate) from film where rental_rate >1;

-- QUE-10 Display the count of unique first name of actors.

select count(distinct(first_name)) from actor;

-- QUE-11 Dsplay the first 10 records from the coustomer table .

select first_name ,last_name ,email,address_id,customer_id from customer where customer_id between 1 and 10;

-- QUE-12 Display the first 3 records from the coustomers table whose first name starts with B 

select first_name ,last_name ,email,address_id,customer_id from customer where first_name like "b%" limit 3;

-- QUE-13 Display the name of the first 5 moveis which is reted as G .

select title from film where rating = 'g' limit 5;

-- QUE-14 Find all coustomers whose first name start with A.

select first_name from customer where first_name like 'a%';

-- QUE-15 Find all coustomer whose first name end with A.

select first_name from customer where first_name like '%e';

-- QUE-16 Display the list of first 4 cities which start and end with A.

select city from city where city like 'a%a' limit 4;

-- QUE-17 Find all coustomers whose first name have "R" in the second position.

select first_name from customer where first_name like '_r%';

-- QUE-18 Find all the coustomers whose first name start with A and are at least 5 charactor length .

select first_name from customer where first_name like "a%" and length(first_name>=5);

-- QUE-19 Find all the coustomers whose first name start with A and end with "O".

select first_name from customer where first_name like "a%o";

-- QUE-20 Get the films with PG and PG-13 using IN operator.

select title from film where rating in ("pg" ,"pg-13");

-- QUE-21 Get the films with length between 40 and 100 using between operator .

select title from film where length between 40 and 100 ;

-- QUE-22 Get the top 50 actors using limit operators .

select first_name ,last_name from actor limit 50;

-- QUE-23 Get the distinct film IDs from inventory table .

select distinct(film_id) from inventory;