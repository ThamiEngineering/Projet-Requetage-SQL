CREATE TABLE item (id SERIAL PRIMARY KEY, name VARCHAR(64), rarity INT, icon_id INT);
CREATE TABLE inventory (id SERIAL PRIMARY KEY, item_id INT REFERENCES item(id), character_id INT REFERENCES character(id));
CREATE TABLE loots (id SERIAL PRIMARY KEY, item_id INT REFERENCES item(id), creature_id INT REFERENCES creature_template(id));
