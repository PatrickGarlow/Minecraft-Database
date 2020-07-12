-- ****************** SqlDBM: MySQL ******************;
-- ***************************************************;


-- ************************************** `Tool_Information`

CREATE TABLE `Tool_Information`
(
 `Base_Tool_Type` int(5) NOT NULL ,
 `Base_Tool_Name` varchar(20) NOT NULL ,

PRIMARY KEY (`Base_Tool_Type`)
);






-- ************************************** `Item`

CREATE TABLE `Item`
(
 `Item_ID`     int NOT NULL ,
 `Name`        varchar(30) NOT NULL ,
 `Enchantable` varchar(5) NULL ,
 `Stack_Size`  int NOT NULL ,

PRIMARY KEY (`Item_ID`)
);






-- ************************************** `Enchantment`

CREATE TABLE `Enchantment`
(
 `Enchantment_ID`   int NOT NULL ,
 `Enchantment_Name` varchar(21) NOT NULL ,
 `Max_Level`        int NOT NULL ,
 `Experience_Level` int NOT NULL ,

PRIMARY KEY (`Enchantment_ID`)
);






-- ************************************** `Tool_Enchantment`

CREATE TABLE `Tool_Enchantment`
(
 `Base_Tool_Type`   int(5) NOT NULL ,
 `Enchantment_Cost` int(3) NOT NULL ,
 `Enchantment_ID`   int NOT NULL ,

PRIMARY KEY (`Base_Tool_Type`, `Enchantment_ID`),
KEY `IDX_FK_Base_TOOL` (`Base_Tool_Type`),
CONSTRAINT `FK_BASE_TOOL` FOREIGN KEY `IDX_FK_Base_TOOL` (`Base_Tool_Type`) REFERENCES `Tool_Information` (`Base_Tool_Type`),
KEY `IDX_FK_ENCHANTMENT` (`Enchantment_ID`),
CONSTRAINT `FK_ENCHANTMENT` FOREIGN KEY `IDX_FK_ENCHANTMENT` (`Enchantment_ID`) REFERENCES `Enchantment` (`Enchantment_ID`)
);






-- ************************************** `Tool`

CREATE TABLE `Tool`
(
 `Tool_ID`        int NOT NULL ,
 `Tool_Name`      varchar(25) NOT NULL ,
 `Level`          int NOT NULL ,
 `Damage`         decimal(3,1) NOT NULL ,
 `Speed`          decimal(3,1) NOT NULL ,
 `Enchantable`    bit NULL ,
 `Durability`     int NOT NULL ,
 `Item_ID`        int NOT NULL ,
 `Base_Tool_Type` int(5) NOT NULL ,

PRIMARY KEY (`Tool_ID`),
KEY `IDX_FK_TOOL_ITEM` (`Item_ID`),
CONSTRAINT `FK_TOOL_ITEM` FOREIGN KEY `IDX_FK_TOOL_ITEM` (`Item_ID`) REFERENCES `Item` (`Item_ID`),
KEY `IDX_FK_TOOL_BASE` (`Base_Tool_Type`),
CONSTRAINT `FK_TOOL_BASE` FOREIGN KEY `IDX_FK_TOOL_BASE` (`Base_Tool_Type`) REFERENCES `Tool_Information` (`Base_Tool_Type`)
);






-- ************************************** `Block`

CREATE TABLE `Block`
(
 `Block_ID`            int NOT NULL ,
 `Name`                varchar(30) NOT NULL ,
 `Burnable`            varchar(5) NOT NULL ,
 `Hardness`            decimal(4,1) NOT NULL ,
 `Opacity`             varchar(45) NOT NULL ,
 `Brightness`          int NOT NULL ,
 `Dimension`           varchar(9) NOT NULL ,
 `Effective_Tool`      int NULL ,
 `Dropped_When_Broken` int NULL ,
 `Moveable`            varchar(5) NOT NULL ,

PRIMARY KEY (`Block_ID`),
KEY `IDX_FK_EFFECTIVE_TOOL` (`Effective_Tool`),
CONSTRAINT `FK_46` FOREIGN KEY `IDX_FK_EFFECTIVE_TOOL` (`Effective_Tool`) REFERENCES `Tool` (`Tool_ID`),
KEY `IDX_FX_DROPPED` (`Dropped_When_Broken`),
CONSTRAINT `FK_DROPPED` FOREIGN KEY `IDX_FK_DROPPED` (`Dropped_When_Broken`) REFERENCES `Item` (`Item_ID`)
);





