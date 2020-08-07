
create external table sample.products
(productCode varchar(15),
productName varchar(70),
productLine varchar(50),
productScale varchar(10),
productVendor varchar(50),
productDescription text,
quantityinStock smallint,
buyPrice decimal(10,2),
MSRP decimal(10,2))
location ('file://gpdb-sandbox.localdomain:5432/home/gpadmin/sample_project/Interview-Dataset/data/raw/products.csv')
format 'CSV' (HEADER DELIMITER AS ',');
