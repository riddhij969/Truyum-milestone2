use truyum;
insert into menu_item_details
values (1,"Sandwich", 99.00, true, '2017-03-15', 'Main Course', true),
       (2,"Burger", 129.00, true, '2017-12-23', 'Main Course', false),
       (3,"Pizza", 149.00, true, '2017-08-21', 'Main Course', false),
       (4,"French Fries", 57.00, false, '2017-07-02', 'Starters', true),
       (5,"Chocolate Brownie", 32.00, true, '2022-11-02', 'Dessert', true);

select * from menu_item_details;

select *
from menu_item_details
where date_of_lunch >= current_date() and active = true;

select * 
from menu_item_details
group by food_id
having food_id = 3;

update menu_item_details 
set name = 'Burrito' 
where food_id = 2;
select * from menu_item_details;

insert into user_details
values (1001, "Riddhi",'9319088878'),
		(1002, "Jain",'7017939415');
select * from user_details;

insert into cart_details 
values (1001,1,"Sandwich", 99.00, true, '2017-03-15', 'Main Course', true),
		(1001, 3,"Pizza", 149.00, true, '2017-08-21', 'Main Course', false),
		(1001, 4,"French Fries", 57.00, false, '2017-07-02', 'Starters', true);

insert into cart_details (user_id)
values (1002);
select * from cart_details;

select *
from cart_details
where user_id in (select user_id from user_details);

select user_id,sum(price)
from cart_details
where user_id in (select user_id from user_details)
group by user_id;

delete from cart_details
where user_id = 1001 and food_id = 4;

-- delete from cart_details
-- where user_id = 1002;

select * from cart_details;