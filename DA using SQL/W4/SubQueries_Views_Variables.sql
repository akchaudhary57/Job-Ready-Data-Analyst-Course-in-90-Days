-- Subqueries

select * from rental 
where customer_id in 
(
SELECT distinct customer_id FROM `customer`
where first_name = 'MARY'
);

select f.first_name from
(SELECT first_name FROM `actor`) as f;

select f.fn from
(SELECT first_name as fn FROM `actor`) as f;

-- View 
show create view `actor_info`;


CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY INVOKER VIEW `actor_info` AS 
select `a`.`actor_id` AS `actor_id`,`a`.`first_name` AS `first_name`,`a`.`last_name` AS `last_name`,
group_concat(distinct concat(`c`.`name`,': ',
(select group_concat(`f`.`title` order by `f`.`title` ASC separator ', ') 
from ((`film` `f` join `film_category` `fc` on((`f`.`film_id` = `fc`.`film_id`))) 
join `film_actor` `fa` on((`f`.`film_id` = `fa`.`film_id`))) 
where ((`fc`.`category_id` = `c`.`category_id`) 
and (`fa`.`actor_id` = `a`.`actor_id`)))) 
order by `c`.`name` ASC separator '; ') AS `film_info`
 from (((`actor` `a` left join `film_actor` `fa` on((`a`.`actor_id` = `fa`.`actor_id`))) 
 left join `film_category` `fc` on((`fa`.`film_id` = `fc`.`film_id`))) 
 left join `category` `c` on((`fc`.`category_id` = `c`.`category_id`))) 
 group by `a`.`actor_id`,`a`.`first_name`,`a`.`last_name`
 
-- Variables

set @variable1 = 5;
SELECT * FROM `actor` where actor_id < @variable1;

SELECT first_name,last_name into @FN,@LN FROM `actor` limit 1;

-- Function 
select inventory_held_by_customer(2047);



