select * from Customers where Country='Argentina'
join table orders where 

select firstname, lastname,city FROM Customers JOIN orders ON Country='Argentina'  and CustomerId=Customers.id
group by  FirstName,lastname,City

select * FROM Customers JOIN orders ON Country='Argentina'  and CustomerId=Customers.id


select * from Suppliers JOIN Products ON IsDiscontinued=1 and SupplierId=Suppliers.Id

select * from Customers JOIN Products JOIN OrderItems ON ProductId=Products.Id


select * from Products JOIN OrderItems ON 

select * from orderitems oi
join products p on oi.productid=p.id
where p.productname ='Teatime Chocolate Biscuits'and Quantity>30

select * from products p 
	WHERE NOT P.ID IN (
		SELECT OI.ProductId OI 
			FROM OrderItems OI);

SELECT * FROM PRODUCTS P
	WHERE NOT EXISTS (
		SELECT OI.PRODUCTID FROM OrderItems OI WHERE OI.ProductId = P.ID
	)



insert Orders (OrderDate,OrderNumber,CustomerId,TotalAmount)values ('2009-09-09',34532,4,130.00)

declare @orderid int;
select @orderid;
set @orderid=(select max(id) from Orders);
select @orderid;
set @orderid=@orderid+1
select @orderid;
insert OrderItems (OrderId,ProductId,UnitPrice,Quantity)
	values (@orderid,67,13,18)

select * from OrderItems where orderid =@@IDENTITY

/* */
SELECT SUM(O.TOTALAMOUNT)AS 'Billing in 2013' from orders o 
where o.OrderDate>='2013-01-01'and o.OrderDate<'2014-01-01'

select avg (totalamount) as Promedio from Orders
--promedio por gasto en la tienda
select o.OrderDate as Fecha,o.customerid as Identificador,avg(TotalAmount)as Promedio, sum(TotalAmount)as Total 
from orders o group by o.CustomerId,o.orderdate
order by 1
--lo mismo por año en la tienda--
select month(o.OrderDate) as Mes,o.customerid as Identificador,avg(TotalAmount)as Promedio, sum(TotalAmount)as Total 
from orders o group by month(o.orderdate),o.CustomerId
having avg(TotalAmount)>500
order by 2,1

create or alter view [consulta] as
select top 10 * from [customers]
where lastname='Griffo'
order by id desc

select * from consulta

--Consultas de clase
--1
select count(*)as 'Cantidad de productos' from Products
--2
select count(*)as 'NotSell2014' from Products p join Orders o
	on p.Id=o.Id 
	where not exists (select * from Orders where OrderDate='2014') 
--3
select FirstName from Customers c 
inner join OrderItems oi on 
where Quantity=1


 
select * from OrderItems