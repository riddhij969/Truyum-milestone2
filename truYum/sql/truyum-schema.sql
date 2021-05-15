-- create database truYum;

use truYum;
-- drop database truyum;

-- drop table menu_item_details;
-- drop table user_details;
-- drop table cart_details;

create table menu_item_details
(
	food_id int primary key,
    name varchar(50),
    price double(5, 2),
    active boolean,
    date_of_lunch date,
    category enum('Main Course', 'Starters', 'Dessert', 'Drinks'),
    free_delivery boolean
);

create table user_details
(
	user_id int primary key,
	user_name varchar(50),
    phone_no varchar(10)
);

create table cart_details
(
	user_id int,
    food_id int,
    name varchar(50),
    price double(5, 2),
    active boolean,
    date_of_lunch date,
    category enum('Main Course', 'Starters', 'Dessert', 'Drinks'),
    free_delivery boolean,
    foreign key(user_id) references user_details(user_id),
    foreign key(food_id) references menu_item_details(food_id)
);

show tables;