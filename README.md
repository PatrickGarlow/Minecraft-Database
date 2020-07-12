# Minecraft SQL Database
# Description
For a course project I created a database for minecraft. This included various blocks, items, tools, and enchantments that all have relations with eachother. This is just a sampling of the games content as a proof of concept. Not everything from the game is included and some of the values for enchanting are not exact.
# Usage
Download all the files and place them into the same folder.
Log into a DBMS and input "source s+pgarlow.sql".
Copy and paste the Queries provided and hit enter.
# Queries
**What is the name of the efficient tool for stone:**<br />
SELECT p.Tool_Name FROM Tool p WHERE p.Tool_ID IN(SELECT tp.Effective_Tool FROM Block tp WHERE p.Tool_ID = tp.Effective_Tool AND tp.Name='Stone');

**List the Names of Blocks that when broken drop an item with the same name:**<br />
SELECT b.Name FROM Block b WHERE b.Name IN(SELECT i.Name FROM Item i WHERE b.Name = i.Name AND b.Dropped_When_Broken = i.Item_ID);

**Name all the blocks that can be mined by a tool that can have the looting enchantment on it:**<br />
Select b.Name From Block b Where b.Effective_Tool In(Select t.Tool_ID From Tool t Where b.Effective_Tool = t.Tool_ID And t.Base_Tool_Type IN(Select te.Base_Tool_Type From Tool_Enchantment te Where t.Base_Tool_Type = te.Base_Tool_Type And te.Enchantment_ID In(Select e.Enchantment_ID From Enchantment e Where te.Enchantment_ID = e.Enchantment_ID And e.Enchantment_Name='Looting' And te.Enchantment_Cost >= 0)));

**List the names of all tools that have a speed above 1 and a durability greater than 150:**<br />
Select t.Tool_Name From Tool t Where t.Speed>1 And t.Durability>150;

**List the names of all items that are not Tools and have a stack size of 64:**<br />
Select i.Name From Item i Where i.Item_ID Not In(Select t.Item_ID From Tool t) and i.Stack_Size = 64;
# Database Design
![Image of Design](https://github.com/PatrickGarlow/Minecraft-Database/blob/master/Minecraft_Database_Diagram.PNG)
# Project Status
This project has been completed.
# References
Data was taken from the following sites:<br />
https://minecraft.gamepedia.com/Enchanting<br />
https://minecraft.gamepedia.com/Item<br />
https://minecraft.gamepedia.com/Tool<br />
https://minecraft.gamepedia.com/Block<br />
