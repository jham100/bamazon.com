CREATE DATABASE bamazon;
USE bamazon;
CREATE TABLE products (
item_id INT AUTO_INCREMENT NOT NULL,
product_name VARCHAR(30) NOT NULL,
department_name VARCHAR(30) NOT NULL,
price INTEGER(10),
stock_quantity INTEGER(10),
PRIMARY KEY (item_id)
);

INSERT INTO products (product_name,department_name,price,stock_quantity)
VALUES ("cheese","food",7,10);
INSERT INTO products (product_name,department_name,price,stock_quantity)
VALUES ("cat","animals",100,10);
INSERT INTO products (product_name,department_name,price,stock_quantity)
VALUES ("playstation","electronics",200,20);
INSERT INTO products (product_name,department_name,price,stock_quantity)
VALUES ("computer","electronics",800,40);
INSERT INTO products (product_name,department_name,price,stock_quantity)
VALUES ("printer","electronics",75,20);
INSERT INTO products (product_name,department_name,price,stock_quantity)
VALUES ("cat food","food",7,10);
INSERT INTO products (product_name,department_name,price,stock_quantity)
VALUES ("cookies","food",5,70);
INSERT INTO products (product_name,department_name,price,stock_quantity)
VALUES ("dog","animals",100,10);
INSERT INTO products (product_name,department_name,price,stock_quantity)
VALUES ("t-shirt","food",7,30);
INSERT INTO products (product_name,department_name,price,stock_quantity)
VALUES ("kindle","electronics",50,10);


USE bamazon;
SELECT * FROM products;
UPDATE products
SET product_name = "chocolate bar"
WHERE item_id = 9;