# 350project

### Contributors (Team): Esdras Catala Grant Palacio

Complexity:
Number of tables: Users, Pantry, Fridge, Meats, Fruits_Vegetables, Grains_Others (6)

Users: <br/>
  Name: String<br/>
  Username: String<br/>
  Password: Stringv
  
Fridge:<br/>
  FridgeID: Int<br/>
  Username: String<br/>
  Name: String<br/>
  
Pantry:  
  PantryID: Int  
  Username: String  
  Name: String  
  
Meats:  
  Name: String  
  Type: String  
  Date: Date  
  Weight: Float  
  FridgeID: Int  
  ID: Int  
  
Fruits_Vegetables:  
  Name: String  
  Type: String  
  Date: Date  
  Weight: Int  
  FridgeID: Int  
  ID: Int  
  
Grains_Others:  
  Name: String  
  Type: String  
  Date: Date  
  Weight: Int  
  PantryID: Int  
  ID: Int  
  
Data types: String, Date, Int, Float

Relationships: A user has one pantry and one fridge. A fridge can have fruits, vegetables, and meats. A pantry can have grains, pasta, canned foods, etc. 
There are three tables that contain food information. Each table tuple or row is linked to a fridge or a pantry if it applies.

## SQL Files
There are three SQL files.

**clear.sql** is to clear all the data in all the tables. If needed, you can run part of the script and clear data from some tables and not all of them.

**dummydata.sql** is to create new users, a fridge and pantry for each user, and an item for each fridge and pantry. **WARNING:** this script will not work unless you clear all the data before running this script.

**createtables.sql** is the initial script from the Schema Diagram. This script is to initialize the tables in a new database if needed.

**createtviews.sql** this script is to create the views for the database. The views a a way to visualize data and make it easier to run queries based on the views. Ex. We do not need to run a query to get the fridge and pantry of every user because that information is already part of the view user_kitchen_list.
