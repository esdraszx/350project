CREATE OR REPLACE FUNCTION
login(username TEXT, password TEXT) RETURNS jwt_token
  LANGUAGE plpgsql SECURITY DEFINER
  AS $$
DECLARE
  _role NAME;
  result jwt_token;
BEGIN
  SELECT users.username FROM users WHERE users.username=login.username AND password=login.upassword INTO _role;
  IF _role IS NULL THEN
    RAISE invalid_password USING message = 'invalid user or password';
  END IF;

  SELECT sign(
      row_to_json(r), current_setting('app.settings.jwt_secret')
    ) AS token
    from (
      SELECT 'kitchen_role' AS role, _role AS username,
         extract(epoch from now())::integer + 3600*60*60 as exp
    ) r
    INTO result;

  RETURN result;
END;
$$


-- ADMIN LOGIN

CREATE OR REPLACE FUNCTION
login_admin(username TEXT, upassword TEXT) RETURNS jwt_token
  LANGUAGE plpgsql SECURITY DEFINER
  AS $$
DECLARE
  _role NAME;
  result jwt_token;
BEGIN
  SELECT users.username FROM users WHERE users.username=login_admin.username AND password=login_admin.upassword INTO _role;
  IF _role IS NULL THEN
    RAISE invalid_password USING message = 'invalid user or password';
  END IF;

  SELECT sign(
      row_to_json(r), current_setting('app.settings.jwt_secret')
    ) AS token
    from (
      SELECT 'admins' AS role, _role AS username,
         extract(epoch from now())::integer + 3600*60*60 as exp
    ) r
    INTO result;

  RETURN result;
END;
$$
