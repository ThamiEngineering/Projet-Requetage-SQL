CREATE VIEW v_character_stats AS
SELECT 
    c.name AS character_name,
    c.level AS level,
    c.gold AS gold,
    (SELECT COUNT(*) FROM character_quests cq WHERE cq.character_id = c.id AND cq.status = 'Completed') AS quests_completed,
    (SELECT COUNT(*) FROM character_quests cq WHERE cq.character_id = c.id AND cq.status = 'Incomplete') AS quests_incomplete,
    (SELECT COUNT(*) FROM inventory i WHERE i.character_id = c.id) AS items_in_inventory,
    (SELECT COUNT(DISTINCT creature_id) FROM loots l JOIN inventory i ON l.item_id = i.item_id WHERE i.character_id = c.id) AS monsters_killed
FROM 
    character c
ORDER BY 
    gold DESC,
    quests_completed DESC,
    quests_incomplete,
    items_in_inventory DESC;
