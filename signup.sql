CREATE OR REPLACE FUNCTION
signup(username text, password text, name text) RETURNS VOID
AS $$
  INSERT INTO users (username, password, name) VALUES
    (signup.username, signup.password, signup.name);
$$ LANGUAGE sql SECURITY DEFINER;
