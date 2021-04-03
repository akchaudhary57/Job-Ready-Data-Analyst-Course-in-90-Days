Substring function: - 

SELECT  concat(Upper(substring(first_name,1,1)),lower(substring(first_name,2)))
FROM `actor`

SELECT  substring(first_name,-4,4),first_name
FROM `actor`

SELECT description as 'Old description', trim(LEADING 'A ' from description) FROM `film_text`


Locate: -

SELECT substring('Ajit Kumar Chaudhary',1,locate(' ','Ajit Kumar Chaudhary'))
SELECT substring('Ajit Kumar Chaudhary',1,locate(' ','Ajit Kumar Chaudhary',8))
SELECT substring('Ajit Kumar Chaudhary',locate(' ','Ajit Kumar Chaudhary',8),length('Ajit Kumar Chaudhary'))


Date Functions: -


SELECT * FROM `address`
where last_update = '2006-02-15'

SELECT * FROM `address`
where last_update > '2006-02-15'

SELECT * FROM `address`
where date(last_update) = '2006-02-15'

SELECT * FROM `address`
where year(last_update) = '2006'

SELECT date_Format(last_update,'%m-%d-%Y')
FROM `address`

SELECT date_Format(last_update,'%M %D %Y')
FROM `address`

Group by: -

SELECT count(*) FROM `address`
SELECT count(address2) FROM `address`

SELECT * FROM `address`
where address2 is null

SELECT district,count(*) FROM `address`
group by district

SELECT district,count(*) as ct 
FROM `address`
group by district
order by ct

SELECT district,count(*) as ct 
FROM `address`
where address_id <10
group by district
order by ct desc

Having Clause: -

SELECT district,count(*) as ct 
FROM `address`
where district like 'B%'
group by district
having count(*)>2
order by ct desc

SELECT min(rental_duration),max(rental_duration),avg(rental_duration) FROM `film`

SELECT rating,sum(rental_duration) FROM `film`
group by rating

SELECT avg(year(last_update)) FROM actor
