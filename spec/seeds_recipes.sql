TRUNCATE TABLE recipes RESTART IDENTITY; -- replace with your own table name.

-- Below this line there should only be `INSERT` statements.
-- Replace these statements with your own seed data.

INSERT INTO recipes (name, cooking_time, rating) VALUES ('Pizza', 30, 2);
INSERT INTO recipes (name, cooking_time, rating) VALUES ('Feta Salad', 90, 5);