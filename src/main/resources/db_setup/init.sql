\c products;

CREATE TABLE IF NOT EXISTS category (id INT PRIMARY KEY, name VARCHAR (50));

CREATE TABLE IF NOT EXISTS shop (
  id INT PRIMARY KEY,
  name VARCHAR (50),
  address VARCHAR(50)
);

CREATE TABLE IF NOT EXISTS product (
  id INT PRIMARY KEY,
  name VARCHAR (50),
  description VARCHAR (100),
  standard_cost real,
  least_price real,
  category_id INT,
  shop_id INT,
  FOREIGN KEY (category_id) REFERENCES category (id),
  FOREIGN KEY (shop_id) REFERENCES shop (id)
);

INSERT INTO category (id, name) VALUES  
('1', 'clothes'),
('2', 'grocery'),
('3', 'furniture'),
('4', 'tech stuff'),
('5', 'toys');
  
  
INSERT INTO shop (id, name, address) VALUES  
('1', 'Cosmopolite', 'Bandery str 22'),
('2', 'Ocean Plaza', 'Skovoroda str 1'),
('3', 'Arsen', 'Mazepy str 3'),
('4', 'Epitsentr', 'Holosiivska str 14');

INSERT INTO product (id, name, description, standard_cost, least_price, category_id, shop_id) VALUES  
('1', 'toy1', 'Toy for children', '30.00', '29.99', '5', '1'),
('2', 'toy2', 'Toy for children', '32.00', '29.99', '5', '2'),
('3', 'shirt', 'Adidas T-shirt', '22.00', '19.99', '1', '2'),
('4', 'table', 'Fancy table', '123.00', '117.99', '3', '4'),
('5', 'phone', 'Blackberry cool phone', '11333.00', '11117.99', '4', '4'),
('6', 'bread', 'Fresh bread', '32.00', '30.99', '2', '3'),
('7', 'laptop', 'Dell laptop 8096 TB', '200333.00', '180354.79', '4', '3');
