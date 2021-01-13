# 350project

Complexity:
Number of tables: Users, Pantry, Fridge, Meats, FruitsAndVegetables, GrainsAndOthers (6)

Users: 
  Name: String
  Username: String
  Password: String
  
Fridge:
  FridgeID: Int
  Username: String
  
Pantry:
  PantryID: Int
  Username: String
  
Meats:
  Name: String
  Type: String
  Date: Date
  Weight: Float
  FridgeID: Int
  
FruitsAndVegetables:
  Name: String
  Type: String
  Date: Date
  Weight: Int
  FridgeID: Int
  
GrainsAndOthers:
  Name: String
  Type: String
  Date: Date
  Weight: Int
  PantryID: Int
  
Data types: String, Data, Int, Float

Relationships: A user has one pantry and one fridge. A fridge can have fruits, vegetables, and meats. A pantry can have grains, pasta, canned foods, etc. 
There are three tables that contain food information. Each table tuple or row is linked to a fridge or a pantry if it applies.
