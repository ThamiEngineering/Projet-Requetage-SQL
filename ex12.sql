SELECT name FROM creature_template WHERE id IN (SELECT start_creature_id FROM quest WHERE start_creature_id = end_creature_id);
