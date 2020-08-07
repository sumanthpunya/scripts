create external table sample.orders
(orderNumber integer,
orderDate date,
requiredDate date,
shippedDate date,
status varchar(15),
comments text,
customerNumber integer)
location ('file://gpdb-sandbox.localdomain:5432/home/gpadmin/sample_project/Interview-Dataset/data/raw/orders.csv')
format 'CSV' (HEADER DELIMITER AS ',');
