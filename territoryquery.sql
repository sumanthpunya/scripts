select territory
,sum(quantityOrdered*priceEach) 
from sample.orders a , sample.orderdetails b, sample.customers c
,sample.employees d, sample.offices e
where a.orderNumber = b.orderNumber
and a.customerNumber = c.customerNumber
and c.salesRepEmployeeNumber = d.employeeNumber
and d.officeCode = e.officeCode
 group by territory 
order by 2 desc;
