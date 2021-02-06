CREATE VIEW user_kitchen_list AS
	SELECT fridge.username, fridge.id AS fridge_id, pantry.id AS pantry_id 
	FROM fridge 
	INNER JOIN pantry ON fridge.username = pantry.username; 

CREATE VIEW fv_in_fridge AS
SELECT * FROM fruits_vegetables WHERE pantryid IS NULL;

CREATE VIEW fv_in_pantry AS
SELECT * FROM fruits_vegetables WHERE fridgeid IS NULL;

-- The other queries needed for the application are based on conditions, 
-- so there is no point on making views
