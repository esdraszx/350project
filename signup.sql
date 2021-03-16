CREATE OR REPLACE FUNCTION
signup(username text, password text, name text) RETURNS VOID
AS $$
  INSERT INTO users (username, password, name) VALUES
    (signup.username, signup.password, signup.name);
$$ LANGUAGE sql SECURITY DEFINER;


-- HELPER TO DELETE A SINGLE USER
CREATE OR REPLACE FUNCTION
delete_single_user(username TEXT) RETURNS VOID
AS $$
  UPDATE fridge SET username = '' WHERE fridge.username=delete_single_user.username;
  UPDATE pantry SET username = '' WHERE pantry.username=delete_single_user.username;
  DELETE FROM users WHERE username = delete_single_user.username;
$$ LANGUAGE sql SECURITY DEFINER;
