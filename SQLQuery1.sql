select * from pizza_sales
select sum(total_price) as Total_price from pizza_sales
select sum(total_price)/ count(Distinct order_id) As average_of_order_price from pizza_sales
select sum(quantity) as total_sold_pizza from pizza_sales 
select count(Distinct order_id) as total_order_pizza from pizza_sales
select sum(quantity)/ count(distinct order_id) as average_of_pizza_per_order from pizza_sales
select datename(MONTH, order_date) as order_month ,count(Distinct order_id) as total_order from pizza_sales  group by datename(MONTH,order_date) order by total_order DESC
select pizza_category ,sum(total_price) , sum(total_price)*100 / (select sum(total_price)  from pizza_sales where month(order_date)= 1)as percentage_by_category from pizza_sales 
where month(order_date)= 2 group by pizza_category 