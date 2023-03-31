CREATE TABLE "products" (
  "id_product" int,
  "name" varchar(50),
  "price" int,
  "qty" int,
  PRIMARY KEY ("id_product")
)

CREATE TABLE "components" (
  "id_comp" int,
  "id_product" int,
  "id_supplier" int,
  "name_comp" varchar(50),
  "description" text,
  "product_used" varchar(50),
  PRIMARY KEY ("id_comp"),
  CONSTRAINT "FK_components.id_product"
    FOREIGN KEY ("id_product")
      REFERENCES "products"("id_product")
)

CREATE TABLE "suppliers" (
  "id_supplier" int,
  "name_supp" varchar(50),
  "contact" int,
  "address" text,
  PRIMARY KEY ("id_supplier"),
  CONSTRAINT "FK_suppliers.id_supplier"
    FOREIGN KEY ("id_supplier")
      REFERENCES "suppliers"("id_supplier")
);

SELECT * FROM products WHERE name like '%puter%' ;
INSERT INTO products (id_product, name, price, qty) 
VALUES(101, 'komputer', 10000000, 10);

SELECT * FROM components;
INSERT INTO components (id_comp, id_product, id_supplier, name_comp, description, product_used) 
VALUES(201, 101, 301, 'keyboard', 'alat mengetik pada komputer', 'komputer');

SELECT * FROM suppliers;
INSERT INTO suppliers (id_supplier, name_supp, contact, address) 
VALUES(301, 'Logitech Indonesia', 081231232, 'Jakarta, Indonesia');
