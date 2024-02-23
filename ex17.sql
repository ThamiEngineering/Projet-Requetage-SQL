DELETE FROM character WHERE last_login < CURRENT_TIMESTAMP - INTERVAL '1 year';
