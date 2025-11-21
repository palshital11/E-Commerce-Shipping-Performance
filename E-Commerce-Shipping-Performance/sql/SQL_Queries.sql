/*creating database*/
CREATE DATABASE shipping_project;
USE shipping_project;

/*count total shipments*/
select count(*) as total_shipments from shipping_data;

/*count total on time shipments*/
select
round(sum(case when `Reached.on.Time_Y.N` = 1 then 1 else 0 end) / count(*)*100,2)
as on_time_shipment
from shipping_data;

/*count total delayed shipments*/
select
round(sum(case when `Reached.on.Time_Y.N` = 1 then 0 else 1 end) / count(*)*100,2)
as delayed_shipment
from shipping_data;


/*count total shipments based on mode of transport*/
select Mode_of_Shipment, count(*) as total_shipment, round( count(*)/(select count(*) from shipping_data)*100,2) as percentage_share
from shipping_data
group by Mode_of_Shipment
order by total_shipment desc;

/*ratings based on mode of transport*/
select Mode_of_Shipment, round(avg(Customer_rating),2) as Customer_ratings
from shipping_data
group by Mode_of_Shipment
order by Customer_ratings desc;

/*cost of product based on product importance*/
select Product_importance, round(avg(Cost_of_the_Product),2) as Cost
from shipping_data
group by Product_importance
order by Cost desc;

/*delay percentage based on warehouses*/
select Warehouse_block, round(sum(case when `Reached.on.Time_Y.N` = 1 then 1 else 0 end) /count(*)*100,2) as on_time_percentage
from shipping_data
group by Warehouse_block
order by on_time_percentage desc;
