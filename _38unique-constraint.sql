CREATE TABLE contacts(
name VARCHAR(100) NOT NULL,
phone VARCHAR(100) NOT NULL UNIQUE
);

INSERT INTO contacts(name, phone)
VALUES('billybob', '8781213455');

-- Error
INSERT INTO contacts(name, phone)
VALUES('billybob', '8781213455');

-- No problem
INSERT INTO contacts(name, phone)
VALUES('billybob', '9781213455');

SELECT *
FROM contacts;

