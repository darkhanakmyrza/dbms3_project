-- How can users update their publication?
UPDATE item SET title=:title, description=:description, date=:date, status=:status WHERE id=:id;
