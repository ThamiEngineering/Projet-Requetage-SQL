SELECT DISTINCT ct.name FROM creature_template ct JOIN loots l ON ct.id = l.creature_id JOIN inventory i ON l.item_id = i.item_id JOIN character c ON i.character_id = c.id WHERE c.name = 'LeKrogan';
