SELECT title FROM quest JOIN character_quests ON quest.id = character_quests.quest_id WHERE character_quests.status = 'Completed';
