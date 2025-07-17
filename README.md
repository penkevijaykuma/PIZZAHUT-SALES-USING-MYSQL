**🍕 PizzaHut Sales Analysis (MySQL)**
**📋 Project Overview**
This project involves analyzing sales data from a fictional PizzaHut database using MySQL. The goal is to extract valuable business insights from customer orders, such as total revenue, best-selling items, and time-based ordering patterns.

The analysis uses SQL queries across multiple related tables: orders, order_details, pizzas, and pizza_types.

**🛠️ Technologies Used**``
Database: MySQL
Language: SQL
Tools: MySQL Workbench

**🧱 Database Schema**
**1. orders**
Column	Type	Description
order_id	INT	Unique ID for the order
order_date	DATE	Date the order was placed
order_time	TIME	Time the order was placed

**2. order_details**
Column	Type	Description
order_details_id	INT	Unique ID for order detail
order_id	INT	Associated order ID
pizza_id	TEXT	Pizza identifier
quantity	INT	Number of pizzas ordered

**3. pizzas**
Column	Type	Description
pizza_id	TEXT	Unique identifier for pizza
pizza_type_id	TEXT	Links to pizza_types table
size	TEXT	Pizza size (S, M, L)
price	FLOAT	Price of the pizza

**4. pizza_types**
Column	Type	Description
pizza_type_id	TEXT	Unique identifier for pizza type
name	TEXT	Name of the pizza
category	TEXT	Category (Classic, Veggie, etc.)
