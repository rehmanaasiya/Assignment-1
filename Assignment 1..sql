use mavenmovies;

-- IDENTIFY THE PRIMARY AND FOREIGN KEYS IN MAVENMOVIES DB. DISCUSS THE DIFFERENCE.
select 'actor', 'actor_award', 'address', 'advisor', 'category', 'city', 'country, customer', 'film', 'film_actor', 'film_category', 
'film_text','inventory', 'investor', 'language', 'payment', 'rental', 'staff', 'store' primary_key; 

select 'actor', 'actor_award', 'address', 'advisor', 'category', 'city', 'country, customer', 'film', 'film_actor', 'film_category', 
'film_text','inventory', 'investor', 'language', 'payment', 'rental', 'staff', 'store' foreign_key;

-- PRIMARY KEY -- Uniquely identifies records within a table. It has unique values and does not have any null values.

-- FOREIGN KEY -- Establishes relationship between tables by referencing the primary key of another table. It can contains null value.

-- LIST ALL DETAILS OF ACTORS.
select * from actor;

-- LIST ALL CUSTOMER INFORMATION FROM DATABASE.
select * from customer;

-- LIST DIFFERENT COUNTRIES.
select * from country;

-- DISPLAY ALL ACTIVE CUSTOMERS.
select * from customer where active = 1;

-- LIST OF ALL RENTAL IDS FOR CUSTOMER WITH ID 1.
select rental_id, customer_id from rental where customer_id = 1;

-- DISPLAY ALL THE FILMS WHOSE RENTAL DURATION IS GREATER THAN 5.
select * from film where rental_duration > 5;

-- LIST THE TOTAL NUMBER OF FILMS WHOSE REPLACEMENT COST IS GREATER THAN $15 AND LESS THAN $20.
select count(*) from film where replacement_cost between '$15' and '$20';

-- DISPLAY THE COUNT OF UNIQUE FIRST NAMES OF ACTORS.
select count(distinct first_name) from actor;

-- DISPLAY THE FIRST 10 RECORDS FROM THE CUSTOMER TABLE.
select * from customer limit 10;

-- DISPLAY THE FIRST 3 RECORDS FROM THE CUSTOMER TABLE WHOSE FIRST NAME STARTS WITH B.
select * from customer where first_name like 'b%' limit 3;

-- DISPLAY THE NAMES OF FIRST 5 MOVIES WHICH ARE RATED AS G.
select * from film where rating = 'g' limit 5;

-- FIND ALL CUSTOMER WHOSE FIRST NAME STARTS WITH A.
select * from customer where first_name like 'a%';

-- DISPLAY THE LIST OF FIRST 4 CITIES WHICH STARTS AND ENDS WITH A.
select * from city where city like 'a%a'limit 4;

-- FIND ALL CUSTOMERS WHOSE FIRST NAME HAVE 'NI' IN ANY POSITION.
select * from customer where first_name like '%ni%';

-- FIND ALL CUSTOMER WHOSE FIRST NAME HAVE R IN THE SECOND POSITION.
select * from customer where first_name like '_r%';

-- FIND ALL THE CUSTOMER WHOSE FIRST NAME STARTS WITH A AND ARE ATLEAST 5 CHARACTERS IN LENGTH.
select * from customer where first_name like 'a____';

-- FIND ALL CUSTOMERS WHOSE FIRST_NAME STARTS WITH A AND ENDS WITH O.
select * from  customer where first_name like 'a%o';

-- GET THE FILMS WITH PG AND PG 13 RATING USING IN OPERATOR.
select * from film where rating in ('pg', 'pg-13');

-- GET THE FILMS WITH LENGTH BETWEEN 50 TO 100 USING BETWEEN OPERATOR.
select * from film where length between '50' and '100';

-- GET THE TOP 50 ACTORS USING LIMIT OPERATOR.
select * from actor limit 50;

-- GET THE DISTINCT FILM IDS FROM INVENTORY TABLE.
select distinct film_id from inventory;