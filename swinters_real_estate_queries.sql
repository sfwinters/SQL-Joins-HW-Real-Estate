-- Retrieve all info on the first 10 tenants (Hint: use LIMIT)
select * from tenants
limit 10;

-- Retrieve the name, age, and gender of the first 10 tenants
select name, age, gender from tenants
limit 10;

-- Retrieve all info on all tenants older than 65
select * from tenants where age>65;

-- Retrieve all info on all tenants in apartment with id 20
select * from tenants where apartment_id=20;

-- Retrieve all info on all tenants in apartment with ids 20 or 21
select * from tenants where apartment_id=20 or apartment_id=21;

-- Retrieve the names of all doormen and the address where they work
select doormen.name, buildings.address
from doormen
inner join buildings on doormen.building_id = buildings.id;

-- Delete all tenants whose age is greater than 65
delete from tenants where age>65;

-- Change all doormen from building 3 to work night shifts.
update doormen
set shift='Night'
where building_id=3;

-- Create one new tenant, put them in any apartment you want
insert into tenants (id, name, age, gender, apartment_id)
values (5372, 'Guy Incognito', 45, 'Male', 999);

-- BONUS!!
-- Find just the ids for all apartments for building with id of 2
select id from apartments where building_id=2;

-- Find all info for apartments in building number 3 whose price is greater than $2300
select * from apartments where building_id=3 and price>2300;

-- Geriatric Birthday! Update all tenants whose age is 90 to be 91
update tenants
set age=91
where age=90;