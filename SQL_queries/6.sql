-- How can users comment on other posts?
INSERT INTO comment(item_id, text, author_id, date) VALUES(:item_id, :text, :author_id, :date);
