select a.orderNumber
,sum(quantityOrdered*priceEach) 
from sample.orders a , sample.orderdetails b
where a.orderNumber = b.orderNumber
 and extract(year from orderDate) = 2004 
 group by a.orderNumber 
order by 2 desc;
