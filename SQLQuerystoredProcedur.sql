 create database ExerciseDb3
create database Assignment3
use Assignment3
create table Products(
PId int primary key,
PQ int not null,
PPrice float not null,
DiscountPercent float not null,
ManufacturingDate date)

insert into Products values
(1, 20,2000.00,10.00, '07/10/2022'),
(2, 50,7000.00,20.00, '02/19/2023'),
(3, 70,40000.00,30.00, '06/06/2022'),
(4, 90,8000.00,10.00, '12/29/2022'),
(5, 30,2000.00,10.00, '03/12/2023')

select * from Products

create function CalDiscountedValue
(
@price float, @DiscountPercent float
)
returns float as
begin
declare @DiscountValue float;
set @DiscountValue= @price-(@price * @DiscountPercent/100)
 return @DiscountValue
end

select * from dbo.Products

select pid as PID,
Pprice as Price,
discountpercent as Discount,
dbo.Caldiscountedvalue(pprice,DiscountPercent) as PriceAfterDiscount from products