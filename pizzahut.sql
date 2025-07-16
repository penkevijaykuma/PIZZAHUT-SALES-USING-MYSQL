create database pizzahut;

select * from pizzas;
select * from pizza_types;
select * from orders;
select * from order_details;


create table  orders ( 
order_id int not null,
order_date date not null,
order_time time not null,
primary key(order_id)
);
select * from orders;

create table order_details(
order_details_id int not null,
order_id int not null,
pizza_id text  not null,
quantity int not null,
primary key(order_details_id));

-- __________________________________________________________
-- ________________BASICS____________________________________
-- retrieve the total no of orders placed ?
select * from orders ;
select count(*) from orders;
-- __________________________________________________________
-- calculate the  total revenue generated from pizza sales ? 
select * from order_details;
select * from pizzas;
SELECT ROUND(SUM(a.price * b.quantity), 3)
FROM pizzas a 
JOIN order_details b;
-- __________________________________________________________

-- _________________________________________________________
-- identify the highest priced pizza ?
select * from pizzas;
select * from pizza_types;
select a.name,b.price from pizza_types a
join pizzas b 
on a.pizza_type_id=b.pizza_type_id
order by price desc 
limit 1;
-- ______________________________________________________

-- ________________________________________________________
-- identify the most pizza size ordered ? 
select * from pizza_types;
select * from pizzas;
select * from order_details;

select size,count(*) from pizzas a 
join order_details b 
on a.pizza_id=b.pizza_id 
group by size
order by count(*)desc
limit 1;
-- _____________________________________________

-- _____________________________________________
-- list the top 5 most  ordered pizza types  along with the qunatities ?
select * from pizzas;
select * from pizza_types;
select * from order_details;
select pizza_id, count(*) from order_details
group by pizza_id;

select a.name ,sum(c.quantity)
from pizza_types a join 
pizzas b 
on a.pizza_type_id=b.pizza_type_id
join order_details c 
on c.pizza_id=b.pizza_id
group by a.name
order by count(*) desc
limit 5;
-- _______________________________________________

-- _______________________________________________
-- __________INTERMEDIATE QUESTIONS_______________
-- Join the necessary tables to find the total quantity of each pizza category ordered ? 
select * from order_details;
select * from pizzas;
select * from pizza_types;

select a.category ,sum(c.quantity)
from pizza_types a join pizzas b
on a.pizza_type_id=b.pizza_type_id join 
order_details c 
on c.pizza_id=b.pizza_id
group by a.category
order by sum(c.quantity) desc;
-- _________________________________________

-- _________________________________________
-- determine the distribution of orders by hour of the day ?
select * from orders;
select * from pizzas;
select * from order_details;

select hour(order_time) ,count(order_id) from orders
group  by hour(order_time);
-- ________________________________________________

-- ________________________________________________
-- join the relevant tables to find the category wise distribution of pizzas ? 
select * from pizza_types;
select * from orders;
select * from order_details;
select * from pizzas;

select category,count(name) from pizza_types
group by category;
-- ______________________________________________________

-- ______________________________________________________
-- determine the top 3 most ordered pizza  types based on revenue ?
select * from pizza_types;
select * from order_details;
select * from pizzas;

select a.name,sum(c.quantity* b.price) 
from pizza_types a join pizzas b 
on a.pizza_type_id=b.pizza_type_id
join order_details c 
on c.pizza_id=b.pizza_id 
group by a.name;
-- ____________________________________________________

