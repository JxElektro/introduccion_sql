/* Creating table items -- postgres/Base de datos/ Esquemas/public/Tablas/new_Table */
/* Script Opened with 'F3' key */

CREATE TABLE item (
  id serial PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  description TEXT,
  price NUMERIC(10,2) NOT NULL,
  image_url TEXT
);

/* Add a new item to the database */
insert into item (name, description, price, image_url) values ('Cocacola', 'Bebida Gaseosa', 1.00, 'image_url');
insert into item (name, description, price, image_url) values ('Pepsi', 'Bebida Gaseosa', 1.00, 'image_url');
insert into item (name, description, price, image_url) values ('Fanta', 'Bebida Gaseosa', 1.00, 'image_url');
insert into item (name, description, price, image_url) values ('Sprite', 'Bebida Gaseosa', 1.00, 'image_url');
insert into item (name, description, price, image_url) values ('Cerveza', 'Bebida Alcohólica', 1.00, 'image_url');
insert into item (name, description, price, image_url) values ('Ron', 'Bebida Alcohólica', 1.00, 'image_url');
insert into item (name, description, price, image_url) values ('Vodka', 'Bebida Alcohólica', 1.00, 'image_url');
insert into item (name, description, price, image_url) values ('Whisky', 'Bebida Alcohólica', 1.00, 'image_url');
insert into item (name, description, price, image_url) values ('Tequila', 'Bebida Alcohólica', 1.00, 'image_url');

/* Select all the items from the table item */
select * from item;

/* Select with a speficic column */
select i.name, i.price from item i;

/* Select with a speficic column and a condition */
select i.name, i.price from item i where i.price < 3.00;

/* insert a column to the table item */
alter table item add sugar NUMERIC(10,2);

/* delete item */
delete from item where description = 'Bebida Alcoholica';

/* update item */
update item set sugar = 0.50 where description = 'Bebida Gaseosa';

/* drop a column */
alter table item drop column sugar;
