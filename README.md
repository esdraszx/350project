# 350project

Complexity:
Number of tables: Users, Pantry, Fridge, Meats, Fruits_Vegetables, Grains_Others (6)

Users: 
  Name: String
  Username: String
  Password: String
  
Fridge:
  FridgeID: Int
  Username: String
  Name: String
  
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
  
FruitsAndVegetables:
  Name: String
  Type: String
  Date: Date
  Weight: Int
  FridgeID: Int
  ID: Int
  
GrainsAndOthers:
  Name: String
  Type: String
  Date: Date
  Weight: Int
  PantryID: Int
  ID: Int
  
Data types: String, Date, Int, Float

Relationships: A user has one pantry and one fridge. A fridge can have fruits, vegetables, and meats. A pantry can have grains, pasta, canned foods, etc. 
There are three tables that contain food information. Each table tuple or row is linked to a fridge or a pantry if it applies.
