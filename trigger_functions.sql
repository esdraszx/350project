
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
  
  
  
  --THIS HELPS DELETE A USER
  CREATE OR REPLACE FUNCTION delete_user()
  RETURNS TRIGGER
  AS
$$
BEGIN
	UPDATE fridge 
	SET username = '' WHERE username = OLD.username;
	UPDATE pantry 
	SET username = '' WHERE username = OLD.username;

	RETURN OLD;
END;
$$ LANGUAGE PLPGSQL;


CREATE TRIGGER del_user
  BEFORE DELETE
  ON users
  FOR EACH ROW
  EXECUTE PROCEDURE delete_user();
