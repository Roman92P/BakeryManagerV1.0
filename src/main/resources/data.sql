INSERT INTO role (id,name) VALUES (NULL,'ROLE_ADMIN');
INSERT INTO role (id,name) VALUES (NULL,'ROLE_USER');
INSERT INTO ingredients (liters, name, quantity, weight) value (20.00,'mleko',0,0);
INSERT INTO ingredients (liters, name, quantity, weight) value (0,'jajka', 10, 0);
INSERT INTO ingredients (liters, name, quantity, weight) value (0,'mąka',0,20.00);
INSERT INTO ingredients (liters, name, quantity, weight) value (1,'woda',0,0);
INSERT INTO recipes value (1,'chleb');
INSERT INTO recipes value (2,'bułka');
INSERT INTO recipe_item(ingredient_quantity, ingredients_id, recipe_id) VALUES (2.00,1,1);
INSERT INTO recipe_item(ingredient_quantity, ingredients_id, recipe_id) VALUES (2.00,2,1);
INSERT INTO recipe_item(ingredient_quantity, ingredients_id, recipe_id) VALUES (2.00,3,1);
INSERT INTO recipe_item(ingredient_quantity, ingredients_id, recipe_id) VALUES (2.00,1,2);
INSERT INTO recipe_item(ingredient_quantity, ingredients_id, recipe_id) VALUES (2.00,2,2);
INSERT INTO recipe_item(ingredient_quantity, ingredients_id, recipe_id) VALUES (2.00,3,2);
INSERT INTO products(name, price, recipe_id)VALUES ('Gruziński chleb żytni', 4.50, 1);
INSERT INTO products(name, price, recipe_id)VALUES ('Chleb polski', 2.50, 1);
INSERT INTO products(name, price, recipe_id)VALUES ('Chleb na maślance', 1.50, 1);
INSERT INTO products(name, price, recipe_id)VALUES ('Chleb górski', 5.50, 1);
INSERT INTO products(name, price, recipe_id)VALUES ('Chleb wrocławski', 8.55, 1);
INSERT INTO products(name, price, recipe_id)VALUES ('Chleb jakiś', 4.49, 1);
INSERT INTO products(name, price, recipe_id)VALUES ('Chleb wiejski', 3.15, 1);
INSERT INTO products(name, price, recipe_id)VALUES ('Chleb bułka', 4.50, 1);
INSERT INTO products(name, price, recipe_id)VALUES ('Chleb ciabata', 4.50, 1);
INSERT INTO manufactureds(id,created_on)VALUES(1,'2020-11-15 08:44:59.236143');
INSERT INTO manufacture_items( quantity, manufactured_id, product_id) VALUES (3, 1, 1);
INSERT INTO stock(product_name, product_price, product_quantity) VALUES ('Gruziński chleb żytni',4.50,3);
INSERT INTO manufactureds(id)VALUES(2);
INSERT INTO manufacture_items( quantity, manufactured_id, product_id) VALUES (2, 1, 1);
INSERT INTO manufacture_items( quantity, manufactured_id , product_id) VALUES (4, 1, 1);
INSERT INTO manufacture_items( quantity, manufactured_id , product_id) VALUES (6, 2, 2);
INSERT INTO produced (product_name, product_price, product_stock_quantity) VALUES ('Gruziński chleb żytni', 2.00, 2);
INSERT INTO produced (product_name, product_price, product_stock_quantity) VALUES ('Gruziński chleb żytni', 2.00, 4);
INSERT INTO produced (product_name, product_price, product_stock_quantity) VALUES ('Chleb polski', 2.50, 6);
INSERT INTO user(active, email, enabled, first_name, last_name, password, username) VALUES (true,'forcodeemailroman@gmail.com',true,'Admin','Admin','$2a$10$scw/kihZM9TA8/9JshJnVuc38aqBUI2j75gWsIfuXfTkoIx3Lrc6K','Admin');
INSERT INTO user_role(user_id, role_id) VALUES (1,1);