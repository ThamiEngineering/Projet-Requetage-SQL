SELECT q.title, ct.name FROM quest q JOIN creature_template ct ON q.start_creature_id = ct.id;
