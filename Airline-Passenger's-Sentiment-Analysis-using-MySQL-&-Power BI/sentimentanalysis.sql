use `Flight Details`;
select * from `customer details`;
select * from `extra details`;

select count(`Customer Type`) from `customer details` where `Customer Type` = 'disloyal customer'; -- There are '1835' disloyal customers.
select count(`Customer Type`) from `customer details` where `Customer Type` = 'loyal customer'; -- There are'8366' loyal customers.

select max(`Flight Distance`) as `Max Distance`, min(`Flight Distance`) as `Min Distance` from `customer details`; -- Maximum distance was 4983 and minimum distance was 31.
select id, `Flight Distance` from `customer details` where `Flight Distance` between 200 and 2500; -- id and flight distance to show passengers who  travelled from 200 to 2500.

select count(`Type of Travel`) as `Pasengers (Personal Travel)` from `customer details` where `Type of Travel` = 'Personal Travel'; -- There were 3127 passengers whose type of travel was personal.
select count(`Type of Travel`) as `Pasengers (Business Travel)` from `customer details` where `Type of Travel` = 'Business Travel'; -- There were 7074 passengers whose type of travel was business.

select min(Age) as `Minimum Age`, max(Age) as `Maximum Age` from `customer details`; -- Minimum age of passenger was 7 and maximum age of passenger was 85.

select distinct Class from `customer details`; -- There are 3 types of class.

select distinct Class, count(Class) as `No. of Passengers` from `customer details` group by Class; -- There were 740 passengers in Eco plus class, 4918 in Business class & 4543 in Eco class.

select count(`Customer Type`) as `Disloyal customers who were satisfied` from `customer details` where satisfaction = 'satisfied' and `customer type` = 'disloyal Customer'; -- There were 427 disloyal customers who were satisfied.
select count(`Customer Type`) as `Loyal Customers who were disssatisfied` from `customer details` where satisfaction = 'Neutral or dissatisfied' and `customer type` = 'loyal Customer'; -- There were 4392 loyal customers who were dissatisfied.

create view `business class customers` as select Class, `Customer Type`, satisfaction from `customer details`; -- created a view with only business class customers along with the customer type & satisfaction columns.

select * from `extra details`;

create table `customer info`(select cr.*, ex.`Inflight wifi service`, ex.`Ease of Online booking`, ex.`Food and drink`, ex.`Seat comfort`, ex.`Inflight entertainment`,
ex.`Baggage handling`, ex.`Checkin service`, ex.`Inflight Service`, ex.Cleanliness, ex.`Departure Delay in Minutes`, ex.`Arrival Delay in Minutes`
from `customer details` cr
inner join `extra details` ex
on cr.id = ex.id); -- created a table by joining two tables using inner join command. 

create table `travelled under 2500 km` (select * from `customer info` where `Flight Distance` < 2500); -- created a new table that contains passenger's data who travlled under 2500 km.

select * from `travelled under 2500 km`;
