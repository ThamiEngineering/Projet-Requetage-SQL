SELECT title FROM quest WHERE (start_creature_id = end_creature_id) OR (gold_reward > 100 AND level_required BETWEEN 8 AND 10);
