select count (*) from film f
inner join "language" l
on l.language_id = l.language_id
where l."name" = 'Português';

select count (*) from "customer" c
inner join "rental" r
on r.customer_id = c.customer_id
inner join "inventory" i
on r.inventory_id = i.inventory_id
inner join "film" f
on i.film_id = f.film_id
where f.film_id = 7;

select count (*) from rental r;

select f.replacement_cost from film f
where f.film_id = 600;

select s.first_name, s.last_name from staff s 
join rental r on s.staff_id = r.staff_id 
group by s.first_name, s.last_name;

select store_id, count(*) from staff
group by store_id;

select s.first_name, s.last_name
count (r.rental_id)
from staff s 
inner join rental r 
on s.staff_id = r.staff_id
group by s.first_name, s.last_name
order by count (r.rental_id) 
desc limit 1;

select a.address, count (*)
from staff sta
inner join store sto on
sta.store_id = sto.store_id 
inner join address a on
a.address_id = sto.address_id 
group a.address;