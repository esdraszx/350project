-- Insert 3 users
-- Insert users will have the name for the 3 group members 
-- Example: ('Esdras Catala', 'esdras', aPassword, 0);
-- Just to avoid giving away passwords do the insert for users manualy. This user information can be found in the shared drive for the team.

-- Create fridge and pantry for users
INSERT INTO fridge (id, name, username) VALUES (1, 'kitchen', 'esdras');
INSERT INTO fridge (id, name, username) VALUES (2, 'garage', 'oyuki');
INSERT INTO fridge (id, name, username) VALUES (3, 'basement', 'grant');

INSERT INTO pantry (id, name, username) VALUES (1, 'closet', 'esdras');
INSERT INTO pantry (id, name, username) VALUES (2, 'kitchen pantry', 'oyuki');
INSERT INTO pantry (id, name, username) VALUES (3, 'garage storage', 'grant');

-- Insert one item into fridge and pantry for each user
INSERT INTO fruits_vegetables (name, type, weight, date, fridgeid) 
VALUES ('tomato', 'fruit', '1', '2021-01-29', 1);
INSERT INTO fruits_vegetables (name, type, weight, date, fridgeid) 
VALUES ('tomato', 'fruit', '1', '2021-01-29', 2);
INSERT INTO fruits_vegetables (name, type, weight, date, fridgeid) 
VALUES ('tomato', 'fruit', '1', '2021-01-29', 3);

INSERT INTO meats (name, type, weight, date, fridgeid) 
VALUES ('ribs', 'pork', '1', '2021-01-29', 1);
INSERT INTO meats (name, type, weight, date, fridgeid) 
VALUES ('ribs', 'pork', '1', '2021-01-29', 2);
INSERT INTO meats (name, type, weight, date, fridgeid) 
VALUES ('ribs', 'pork', '1', '2021-01-29', 3);

INSERT INTO grains_other (name, type, weight, date, pantryid) 
VALUES ('beans', 'black', '2', '2021-01-29', 1);
INSERT INTO grains_other (name, type, weight, date, pantryid) 
VALUES ('beans', 'black', '2', '2021-01-29', 2);
INSERT INTO grains_other (name, type, weight, date, pantryid) 
VALUES ('beans', 'black', '2', '2021-01-29', 3);
