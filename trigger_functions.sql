
-- THIS GENERATES A FRIDGE AND A PANTRY FOR THE NEWLY CREATED USER
CREATE OR REPLACE FUNCTION generate_inventory()
  RETURNS TRIGGER 
  LANGUAGE PLPGSQL
  AS
$$
BEGIN
	INSERT INTO fridge (name, username) VALUES ('my kitchen', NEW.username);
	INSERT INTO pantry (name, username) VALUES ('k p', NEW.username);

	RETURN NEW;
END;
$$


CREATE TRIGGER new_user
  AFTER INSERT
  ON users
  FOR EACH ROW
  EXECUTE PROCEDURE generate_inventory();
