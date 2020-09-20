SELECT * FROM lab1_part2.dealers;
SELECT * FROM lab1_part2.items;
SELECT * FROM lab1_part2.item_number;
SELECT * FROM lab1_part2.projects;

/*2*/
select * from projects
where projects.project_city="Лондон";

/*3*/
select dealers.dealer_id from dealers
join item_number
on item_number.dealer_id=dealers.dealer_id
where item_number.projects_id="ПР1";

/*7*/
select distinct
item_number.dealer_id,
item_number.items_id,
item_number.projects_id
from item_number
join dealers
on dealers.dealer_id=item_number.dealer_id
join projects
on projects.project_id=item_number.projects_id
join items
on items.items_id=item_number.items_id
where 
items.item_city!=dealers.dealer_sity 
and items.item_city!=projects.project_city
and dealers.dealer_sity!=projects.project_city;

/*12*/
select distinct items.items_id from items
join item_number
on item_number.items_id=items.items_id
join dealers
on dealers.dealer_id=item_number.dealer_id
where items.item_city!=dealers.dealer_sity;
  
  /*13*/
select distinct item_number.projects_id from item_number
where item_number.projects_id not in 
    (
    select distinct projects.project_id
	from projects
	join item_number
	on item_number.projects_id=projects.project_id
	join dealers
	on dealers.dealer_id=item_number.dealer_id
	where dealers.dealer_sity=projects.project_city
    )
;
/*13old*/
/*select distinct item_number.projects_id from item_number
where item_number.projects_id not in 
(
select item_number.projects_id from item_number
where
	(
    select count(distinct projects.project_id)
	from projects
	join item_number
	on item_number.projects_id=projects.project_id
	join dealers
	on dealers.dealer_id=item_number.dealer_id
	where dealers.dealer_sity=projects.project_city
    )>0
);*/

/*18*/
select item_number.projects_id,avg(item_number.item_count) from item_number
group by item_number.projects_id 
having avg(item_number.item_count)>320;

/*21*/
select item_number.items_id from item_number
join projects 
on projects.project_id=item_number.projects_id
where projects.project_city="Лондон";

/*28*/
select item_number.projects_id from item_number
join items 
on items.items_id=item_number.items_id
where item_number.projects_id 
not in
(
select item_number.projects_id from item_number
join items 
on items.items_id=item_number.items_id
join projects 
on projects.project_id=item_number.projects_id
where items.item_color="Красный" 
and projects.project_city!="Лондон"
 )
 ;

/*30*/
select item_number.items_id from item_number
join projects 
on projects.project_id=item_number.projects_id
where projects.project_city="Лондон";

/*32  -- Получить номера проектов, 
обеспечиваемых по крайней мере всеми деталями поставщика П1*/
select * from item_number
where item_number.dealer_id="П1";