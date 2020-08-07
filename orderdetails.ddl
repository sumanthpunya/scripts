create external table sample.orderdetails
(orderNumber integer,
productCode varchar(15),
quantityOrdered integer,
priceEach decimal(10,2),
orderLineNumber smallint)
location ('file://gpdb-sandbox.localdomain:5432/home/gpadmin/sample_project/Interview-Dataset/data/raw/orderdetails.csv')
format 'CSV' (HEADER DELIMITER AS ',');
