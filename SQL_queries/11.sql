-- How can users delete comments of their publication?
DELETE FROM comment WHERE id=:id AND author_id=:author_id;
