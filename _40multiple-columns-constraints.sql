CREATE TABLE companies (
name VARCHAR(100) NOT NULL,
address VARCHAR(100) NOT NULL,
CONSTRAINT name_address UNIQUE(name, address)
);

INSERT INTO companies (name, address)
VALUES('blackbird auto', '123 spruce');

INSERT INTO companies (name, address)
VALUES('luigis spies', '123 spruce');

-- Error
INSERT INTO companies (name, address)
VALUES('luigis spies', '123 spruce');


CREATE TABLE houses(
purchase_price INT NOT NULL,
sale_price INT NOT NULL,
CONSTRAINT sprice_gt_pprice CHECK(sale_price >= purchase_price)
);

INSERT INTO houses (purchase_price, sale_price)
VALUES(100, 200);

-- Error
INSERT INTO houses (purchase_price, sale_price)
VALUES(300, 250);


