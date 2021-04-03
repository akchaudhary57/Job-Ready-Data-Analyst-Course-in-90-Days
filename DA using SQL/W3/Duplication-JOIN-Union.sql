-- Remove Duplication

select distinct district from address

SELECT distinct concat(customer_id,inventory_id)
from`rental`

SELECT distinct concat(customer_id,inventory_id) as conc, count(*) as ct
FROM `rental`
group by concat(customer_id,inventory_id)
order by ct desc

-- Check for concatenated rows that shows duplication
SELECT *
FROM `rental`
where concat(customer_id,inventory_id) = '123739'

SELECT concat(customer_id,'-',inventory_id)
FROM `rental`

SELECT distinct year(last_update) FROM `address`

SELECT count(distinct district) FROM `address`

--Merging rows with Group by 

SELECT district,GROUP_CONCAT(phone) FROM `address`
group by district

SELECT district,GROUP_CONCAT(phone order by phone SEPARATOR ';') FROM `address`
group by district


-- Limit data 

SELECT * FROM `payment`
limit 10

-- Structure and visualization of data 


--JOIN data 

SELECT * 
FROM `customer`
join address
on customer.address_id = address.address_id

SELECT * 
FROM `customer` as c
join address as a
on c.address_id = a.address_id


SELECT * 
FROM `customer` as c
join address as a
on c.address_id = a.address_id
where a.district = 'Nagasaki'

SELECT c.first_name,c.email 
FROM `customer` as c
join address as a
on c.address_id = a.address_id
where a.district = 'Nagasaki'

-- Union 

SELECT  'Address' as adl,last_update FROM `address`
union 
select  'Actor' as atl,last_update from actor

-- Union all 

SELECT  'Address' as adl,last_update FROM `address`
union all
select  'Actor' as atl,last_update from actor

-- Union and Filter
SELECT  'Address' as adl,last_update FROM `address`
where address_id<5
union all
select  'Actor' as atl,last_update from actor 
where actor_id <5


