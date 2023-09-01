-- https://leetcode.com/problems/customer-placing-the-largest-number-of-orders/




--  select customer_number , count(order_number) as numOrder
--  from Orders
--  group by customer_number
--  order by numOrder desc
--  limit 1
-- --  As u saw, this gives wrong answer, so we change approach and apply common table expressions in sql
--  This is efficient and saves storage



with cte as
(select customer_number , count(order_number) as numOrder
from Orders
group by customer_number)

select customer_number
from cte 
where numOrder=(select max(numOrder) from cte)