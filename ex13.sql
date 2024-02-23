SELECT name FROM creature_template WHERE id NOT IN (SELECT template_id FROM creature);
