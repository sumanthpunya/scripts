create external table sample.productlines
(productLine varchar(50),
textDescription varchar(4000),
htmlDescription text,
image text)
location ('file://gpdb-sandbox.localdomain:5432/home/gpadmin/sample_project/Interview-Dataset/data/raw/productlines.csv')
format 'CSV' (HEADER DELIMITER AS ',');
