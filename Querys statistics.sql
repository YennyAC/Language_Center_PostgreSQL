/*
Basic queries for statistics of clients presenting the language assessment
*/

--Number of clients by assesor and by date
select CONCAT(a.first_name,' ', a.middle_name,' ',a.last_name) as name,
count(sc.id_customer) as total_customer,
a.status_assesor,
sc.last_update as date_assessment
from assesor a
inner join assesor_customer ac on ac.assesor_id_assesor = a.id_assesor
inner join customer cu on cu.id_customer = ac.customer_id_assesor
inner join scorexcustomer sc on sc.id_customer = cu.id_customer
group by a.first_name,a.middle_name,a.last_name,sc.last_update, a.status_assesor

--Number of clients attended by assesor and language center
select 
CONCAT(cu.first_name,' ', cu.middle_name,' ',cu.last_name) as name_customer,
c.name as name_centre,
c.status_centre as status_centre,
CONCAT(a.first_name,' ', a.middle_name,' ',a.last_name) as name_assesor
from customer cu
inner join assesor_customer ac on ac.customer_id_assesor = cu.id_customer
inner join assesor a on a.id_assesor = ac.assesor_id_assesor
inner join centre_assesor ca on ca.assesor_id_centre = a.id_assesor
inner join centre c on c.id_centre = ca.centre_id_centre

--List status of assesor by center
select
CONCAT(a.first_name,' ', a.middle_name,' ',a.last_name) as name_assesor,
a.status_assesor,
c.name as name_centre
from assesor a
inner join centre_assesor ca on ca.assesor_id_centre = a.id_assesor
inner join centre c on c.id_centre = ca.centre_id_centre