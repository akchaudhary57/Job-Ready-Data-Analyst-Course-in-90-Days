Wildcards: -

SELECT * FROM `actor`
where first_name like 'JOHN%'

SELECT * FROM `actor`
where first_name like 'JA%NE'

SELECT * FROM `actor`
where first_name like 'JA_NE'

SELECT * FROM `actor`
where first_name like 'JANE'

SELECT * FROM `actor`
where first_name like 'JANE'
or first_name like 'JOHN%'

Sort: -

SELECT * FROM `actor`
where first_name like 'JANE'
or first_name like 'JOHN%'
order by last_name asc

Concatenation Functions: -

SELECT first_name,length(first_name) FROM `actor`
SELECT concat(first_name,' ',last_name) FROM `actor`
SELECT concat(first_name,' ',last_name),length(concat(first_name,' ',last_name))
FROM `actor`

SELECT concat(first_name,' ',last_name),length(concat(first_name,' ',last_name))
FROM `actor`
order by length(concat(first_name,' ',last_name)) DESC

SELECT lower(first_name)
FROM `actor`
Proper case
SELECT concat(Upper(left(first_name,1)),Lower(right(first_name,length(first_name)-1))), first_name
FROM `actor`
