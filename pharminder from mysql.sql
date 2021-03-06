CREATE DATABASE `pharminder`;
USE `pharminder`;
DROP TABLE IF EXISTS `pharminder`.`admin`;
DROP TABLE IF EXISTS `pharminder`.`medicine`;
DROP TABLE IF EXISTS `pharminder`.`pharmacy`;
DROP TABLE IF EXISTS `pharminder`.`pharmacy_medicine`;
DROP TABLE IF EXISTS `pharminder`.`pharmacy_owner`;
DROP PROCEDURE IF EXISTS `pharminder`.`addOrUpdatePharmacyMedicine`;
DROP PROCEDURE IF EXISTS `pharminder`.`deleteOwnerByID`;
DROP PROCEDURE IF EXISTS `pharminder`.`deletePharmacyWithID`;
DROP PROCEDURE IF EXISTS `pharminder`.`get_pharmacy_id_by_username_and_password`;
DROP PROCEDURE IF EXISTS `pharminder`.`getNearestPharmaciesContainingMedicine`;
DROP PROCEDURE IF EXISTS `pharminder`.`getOwnerByID`;
DROP PROCEDURE IF EXISTS `pharminder`.`getOwnerByUsernameAndPassword`;
DROP PROCEDURE IF EXISTS `pharminder`.`getPharmacyByID`;
DROP PROCEDURE IF EXISTS `pharminder`.`getSimilarMedicines`;
DROP PROCEDURE IF EXISTS `pharminder`.`newPharmacy`;
DROP PROCEDURE IF EXISTS `pharminder`.`newPharmacyOwner`;
DROP PROCEDURE IF EXISTS `pharminder`.`updatePharmacy`;
DROP PROCEDURE IF EXISTS `pharminder`.`updatePharmacyOwner`;
DROP PROCEDURE IF EXISTS `pharminder`.`verifyAdmin`;
DROP FUNCTION IF EXISTS `pharminder`.`get_distance_from_pharmacy`;
CREATE USER 'mysql.infoschema'@'localhost';
GRANT SELECT ON *.* TO 'mysql.infoschema'@'localhost';
CREATE USER 'mysql.session'@'localhost';
GRANT SUPER ON *.* TO 'mysql.session'@'localhost';
CREATE USER 'mysql.sys'@'localhost';
CREATE USER 'root'@'localhost';
GRANT SELECT ON *.* TO 'root'@'localhost' WITH GRANT OPTION;
GRANT INSERT ON *.* TO 'root'@'localhost' WITH GRANT OPTION;
GRANT UPDATE ON *.* TO 'root'@'localhost' WITH GRANT OPTION;
GRANT DELETE ON *.* TO 'root'@'localhost' WITH GRANT OPTION;
GRANT CREATE ON *.* TO 'root'@'localhost' WITH GRANT OPTION;
GRANT DROP ON *.* TO 'root'@'localhost' WITH GRANT OPTION;
GRANT RELOAD ON *.* TO 'root'@'localhost' WITH GRANT OPTION;
GRANT SHUTDOWN ON *.* TO 'root'@'localhost' WITH GRANT OPTION;
GRANT PROCESS ON *.* TO 'root'@'localhost' WITH GRANT OPTION;
GRANT FILE ON *.* TO 'root'@'localhost' WITH GRANT OPTION;
GRANT REFERENCES ON *.* TO 'root'@'localhost' WITH GRANT OPTION;
GRANT INDEX ON *.* TO 'root'@'localhost' WITH GRANT OPTION;
GRANT ALTER ON *.* TO 'root'@'localhost' WITH GRANT OPTION;
GRANT SHOW DATABASES ON *.* TO 'root'@'localhost' WITH GRANT OPTION;
GRANT SUPER ON *.* TO 'root'@'localhost' WITH GRANT OPTION;
GRANT CREATE TEMPORARY TABLES ON *.* TO 'root'@'localhost' WITH GRANT OPTION;
GRANT LOCK TABLES ON *.* TO 'root'@'localhost' WITH GRANT OPTION;
GRANT EXECUTE ON *.* TO 'root'@'localhost' WITH GRANT OPTION;
GRANT REPLICATION SLAVE ON *.* TO 'root'@'localhost' WITH GRANT OPTION;
GRANT REPLICATION CLIENT ON *.* TO 'root'@'localhost' WITH GRANT OPTION;
GRANT CREATE VIEW ON *.* TO 'root'@'localhost' WITH GRANT OPTION;
GRANT SHOW VIEW ON *.* TO 'root'@'localhost' WITH GRANT OPTION;
GRANT CREATE ROUTINE ON *.* TO 'root'@'localhost' WITH GRANT OPTION;
GRANT ALTER ROUTINE ON *.* TO 'root'@'localhost' WITH GRANT OPTION;
GRANT CREATE USER ON *.* TO 'root'@'localhost' WITH GRANT OPTION;
GRANT EVENT ON *.* TO 'root'@'localhost' WITH GRANT OPTION;
GRANT TRIGGER ON *.* TO 'root'@'localhost' WITH GRANT OPTION;
GRANT CREATE TABLESPACE ON *.* TO 'root'@'localhost' WITH GRANT OPTION;
CREATE USER 'Shazly'@'%';
GRANT SELECT ON *.* TO 'Shazly'@'%' WITH GRANT OPTION;
GRANT INSERT ON *.* TO 'Shazly'@'%' WITH GRANT OPTION;
GRANT UPDATE ON *.* TO 'Shazly'@'%' WITH GRANT OPTION;
GRANT DELETE ON *.* TO 'Shazly'@'%' WITH GRANT OPTION;
GRANT CREATE ON *.* TO 'Shazly'@'%' WITH GRANT OPTION;
GRANT DROP ON *.* TO 'Shazly'@'%' WITH GRANT OPTION;
GRANT RELOAD ON *.* TO 'Shazly'@'%' WITH GRANT OPTION;
GRANT SHUTDOWN ON *.* TO 'Shazly'@'%' WITH GRANT OPTION;
GRANT PROCESS ON *.* TO 'Shazly'@'%' WITH GRANT OPTION;
GRANT FILE ON *.* TO 'Shazly'@'%' WITH GRANT OPTION;
GRANT REFERENCES ON *.* TO 'Shazly'@'%' WITH GRANT OPTION;
GRANT INDEX ON *.* TO 'Shazly'@'%' WITH GRANT OPTION;
GRANT ALTER ON *.* TO 'Shazly'@'%' WITH GRANT OPTION;
GRANT SHOW DATABASES ON *.* TO 'Shazly'@'%' WITH GRANT OPTION;
GRANT SUPER ON *.* TO 'Shazly'@'%' WITH GRANT OPTION;
GRANT CREATE TEMPORARY TABLES ON *.* TO 'Shazly'@'%' WITH GRANT OPTION;
GRANT LOCK TABLES ON *.* TO 'Shazly'@'%' WITH GRANT OPTION;
GRANT EXECUTE ON *.* TO 'Shazly'@'%' WITH GRANT OPTION;
GRANT REPLICATION SLAVE ON *.* TO 'Shazly'@'%' WITH GRANT OPTION;
GRANT REPLICATION CLIENT ON *.* TO 'Shazly'@'%' WITH GRANT OPTION;
GRANT CREATE VIEW ON *.* TO 'Shazly'@'%' WITH GRANT OPTION;
GRANT SHOW VIEW ON *.* TO 'Shazly'@'%' WITH GRANT OPTION;
GRANT CREATE ROUTINE ON *.* TO 'Shazly'@'%' WITH GRANT OPTION;
GRANT ALTER ROUTINE ON *.* TO 'Shazly'@'%' WITH GRANT OPTION;
GRANT CREATE USER ON *.* TO 'Shazly'@'%' WITH GRANT OPTION;
GRANT EVENT ON *.* TO 'Shazly'@'%' WITH GRANT OPTION;
GRANT TRIGGER ON *.* TO 'Shazly'@'%' WITH GRANT OPTION;
GRANT CREATE TABLESPACE ON *.* TO 'Shazly'@'%' WITH GRANT OPTION;
CREATE TABLE `pharminder`.`admin` (
	`adminid`		int(11)		 AUTO_INCREMENT NOT NULL,
	`username`		varchar(45)	 NOT NULL,
	`password`		varchar(45)	 NOT NULL,
	`email`			varchar(45)	 NOT NULL,
	PRIMARY KEY  (`adminid`)
)
ENGINE InnoDB
CHARACTER SET utf8mb4
COLLATE utf8mb4_0900_ai_ci;
ALTER TABLE `pharminder`.`admin` ADD PRIMARY KEY  (`adminid`);
CREATE TABLE `pharminder`.`medicine` (
	`medicineid`		int(11)		 AUTO_INCREMENT NOT NULL,
	`name`				varchar(45)	 NOT NULL,
	`arabic_name`		varchar(45)	 NULL,
	PRIMARY KEY  (`medicineid`)
)
ENGINE InnoDB
CHARACTER SET utf8mb4
COLLATE utf8mb4_0900_ai_ci;
ALTER TABLE `pharminder`.`medicine` ADD PRIMARY KEY  (`medicineid`);
CREATE TABLE `pharminder`.`pharmacy` (
	`id`				int(11)		 AUTO_INCREMENT NOT NULL,
	`name`				varchar(45)	 NOT NULL,
	`address`			varchar(100) NOT NULL,
	`latitude`			float(12, 0) NOT NULL,
	`longitude`			float(12, 0) NOT NULL,
	`phone_number`		varchar(45)	 NULL,
	`notes`				varchar(250) NULL,
	`join_date`			timestamp	 NULL DEFAULT CURRENT_TIMESTAMP,
	PRIMARY KEY  (`id`)
)
ENGINE InnoDB
CHARACTER SET utf8mb4
COLLATE utf8mb4_0900_ai_ci;
ALTER TABLE `pharminder`.`pharmacy` ADD PRIMARY KEY  (`id`);
CREATE TABLE `pharminder`.`pharmacy_medicine` (
	`pharmacy_id`		int(11)	 NOT NULL,
	`medicine_id`		int(11)	 NOT NULL,
	`quantity`			int(11)	 NULL,
	`table_id`			int(11)	 AUTO_INCREMENT NOT NULL,
	PRIMARY KEY  (`pharmacy_id`, `medicine_id`)
)
ENGINE InnoDB
CHARACTER SET utf8mb4
COLLATE utf8mb4_0900_ai_ci;
ALTER TABLE `pharminder`.`pharmacy_medicine` ADD INDEX `fk_pharmacymedicine_medicine_idx`(`medicine_id`);
ALTER TABLE `pharminder`.`pharmacy_medicine` ADD PRIMARY KEY  (`pharmacy_id`, `medicine_id`);
ALTER TABLE `pharminder`.`pharmacy_medicine` ADD UNIQUE INDEX `table_id_UNIQUE`(`table_id`);
ALTER TABLE `pharminder`.`pharmacy_medicine` ADD CONSTRAINT `fk_pharmacymedicine_medicine` FOREIGN KEY (`medicine_id`) REFERENCES `pharminder`.`medicine` (`medicineid`);
ALTER TABLE `pharminder`.`pharmacy_medicine` ADD CONSTRAINT `fk_pharmacymedicine_pharmace` FOREIGN KEY (`pharmacy_id`) REFERENCES `pharminder`.`pharmacy` (`id`);
CREATE TABLE `pharminder`.`pharmacy_owner` (
	`pharmacy_ownerID`		int(11)		 AUTO_INCREMENT NOT NULL,
	`username`				varchar(45)	 NOT NULL,
	`password`				varchar(45)	 NOT NULL,
	`email`					varchar(45)	 NOT NULL,
	`mobil_number`			varchar(45)	 NULL,
	`notes`					varchar(250) NULL,
	`join_date`				timestamp	 NULL DEFAULT CURRENT_TIMESTAMP,
	`pharmacyID`			int(11)		 NOT NULL,
	PRIMARY KEY  (`pharmacy_ownerID`)
)
ENGINE InnoDB
CHARACTER SET utf8mb4
COLLATE utf8mb4_0900_ai_ci;
ALTER TABLE `pharminder`.`pharmacy_owner` ADD UNIQUE INDEX `email_UNIQUE`(`email`);
ALTER TABLE `pharminder`.`pharmacy_owner` ADD INDEX `FK_ownedPharmacy_idx`(`pharmacyID`);
ALTER TABLE `pharminder`.`pharmacy_owner` ADD PRIMARY KEY  (`pharmacy_ownerID`);
ALTER TABLE `pharminder`.`pharmacy_owner` ADD UNIQUE INDEX `username_UNIQUE`(`username`);
ALTER TABLE `pharminder`.`pharmacy_owner` ADD CONSTRAINT `FK_ownedPharmacy` FOREIGN KEY (`pharmacyID`) REFERENCES `pharminder`.`pharmacy` (`id`);
CREATE DEFINER=root@localhost FUNCTION `pharminder`.`get_distance_from_pharmacy` (IN source_latitude float, IN source_longitude float, IN target_latitude float, IN target_longitude float)
RETURNS float
DETERMINISTIC
CONTAINS SQL
SQL SECURITY DEFINER
COMMENT ''
RETURN SQRT(
			(POWER
				( ABS(target_latitude) - ABS(source_latitude) 
                ,2)+
                POWER(ABS(target_longitude)-ABS(source_longitude),2)
            )
        );
CREATE DEFINER=root@localhost PROCEDURE `pharminder`.`addOrUpdatePharmacyMedicine` (IN ud_pharmacyID int(11), IN ud_medicine char(45), IN ud_arabic_medicine char(45), IN ud_quantity int(11))
NOT DETERMINISTIC
CONTAINS SQL
SQL SECURITY DEFINER
COMMENT ''
BEGIN
		DECLARE id int;
		DECLARE pharmacyMedicineID int;
		Select medicineid INTO id from medicine where name = ud_medicine or arabic_name = ud_arabic_medicine;
		IF id is NULL
		THEN
			INSERT INTO `pharminder`.`medicine` (`name`,`arabic_name`) VALUES (ud_medicine, ud_arabic_medicine);
			set id = LAST_INSERT_ID();
			END IF;
		Select table_id INTO pharmacyMedicineID FROM pharmacy_medicine 
        WHERE pharmacy_id = ud_pharmacyID AND medicine_id = id;
		IF pharmacyMedicineID IS NOT NULL
		THEN
			UPDATE pharmacy_medicine
			SET quantity = ud_quantity
			WHERE pharmacy_id= ud_pharmacyID AND medicine_id= id; 
		ELSE
			INSERT INTO pharmacy_medicine (pharmacy_id,medicine_id,quantity) VALUES (ud_pharmacyID,id,ud_quantity);
		END IF;

	END;
CREATE DEFINER=root@localhost PROCEDURE `pharminder`.`deleteOwnerByID` (IN id int(11))
NOT DETERMINISTIC
CONTAINS SQL
SQL SECURITY DEFINER
COMMENT ''
BEGIN
DELETE FROM `pharminder`.`pharmacy_owner`
WHERE pharmacy_ownerID = id;
END;
CREATE DEFINER=root@localhost PROCEDURE `pharminder`.`deletePharmacyWithID` (IN ud_id int(11))
NOT DETERMINISTIC
CONTAINS SQL
SQL SECURITY DEFINER
COMMENT ''
BEGIN
		DELETE FROM pharmacy_medicine WHERE pharmacy_id = ud_id;
		DELETE FROM pharmacy WHERE id = ud_id;
	END;
CREATE DEFINER=root@localhost PROCEDURE `pharminder`.`get_pharmacy_id_by_username_and_password` (IN ud_username char(45), IN ud_password char(45), OUT id int(11))
NOT DETERMINISTIC
CONTAINS SQL
SQL SECURITY DEFINER
COMMENT ''
BEGIN
		SELECT pharmacyID INTO id from pharmacy_owner where username = ud_username and password = ud_password;
	END;
CREATE DEFINER=root@localhost PROCEDURE `pharminder`.`getNearestPharmaciesContainingMedicine` (IN ud_medicine char(45), IN ud_latitude float, IN ud_longitude float)
NOT DETERMINISTIC
CONTAINS SQL
SQL SECURITY DEFINER
COMMENT ''
BEGIN
		SELECT pharmacy.id, pharmacy.name, address, latitude, longitude, phone_number, get_distance_from_pharmacy(ud_latitude, ud_longitude, latitude,longitude) 'distance_from_source' from pharmacy_medicine inner join pharmacy on pharmacy_id = pharmacy.ID inner join medicine on medicine.medicineid = medicine_id where pharmacy_medicine.quantity > '0' and medicine.Name = ud_medicine ORDER BY distance_from_source LIMIT 8;
	END;
CREATE DEFINER=root@localhost PROCEDURE `pharminder`.`getOwnerByID` (IN id int(11))
NOT DETERMINISTIC
CONTAINS SQL
SQL SECURITY DEFINER
COMMENT ''
BEGIN
SELECT *
FROM `pharminder`.`pharmacy_owner` WHERE pharmacy_owner.pharmacy_ownerID = id;
END;
CREATE DEFINER=root@localhost PROCEDURE `pharminder`.`getOwnerByUsernameAndPassword` (IN ud_username char(50), IN ud_password char(64))
NOT DETERMINISTIC
CONTAINS SQL
SQL SECURITY DEFINER
COMMENT ''
BEGIN
SELECT *
FROM `pharminder`.`pharmacy_owner` WHERE pharmacy_owner.username = ud_username and password = ud_password;
END;
CREATE DEFINER=root@localhost PROCEDURE `pharminder`.`getPharmacyByID` (IN pharmacy_id int(11))
NOT DETERMINISTIC
CONTAINS SQL
SQL SECURITY DEFINER
COMMENT ''
BEGIN
		SELECT name,address,longitude,latitude,phone_number from pharmacy WHERE id = pharmacy_id;
	END;
CREATE DEFINER=root@localhost PROCEDURE `pharminder`.`getSimilarMedicines` (IN ud_medicine char(45))
NOT DETERMINISTIC
CONTAINS SQL
SQL SECURITY DEFINER
COMMENT ''
BEGIN
		SELECT name from medicine where name like CONCAT('%',ud_medicine,'%') or arabic_name like CONCAT('%',ud_medicine,'%');
	END;
CREATE DEFINER=root@localhost PROCEDURE `pharminder`.`newPharmacy` (IN ud_name char(50), IN ud_address char(100), IN ud_latitude float, IN ud_longitude float, IN ud_phone char(50), IN ud_note char(250))
NOT DETERMINISTIC
CONTAINS SQL
SQL SECURITY DEFINER
COMMENT ''
BEGIN
		INSERT INTO `pharminder`.`pharmacy`
(
`name`,
`address`,
`latitude`,
`longitude`,
`phone_number`,
`notes`)
VALUES
( ud_name,ud_address,ud_latitude,ud_longitude,ud_phone,ud_note);
	END;
CREATE DEFINER=root@localhost PROCEDURE `pharminder`.`newPharmacyOwner` (IN ud_username char(50), IN ud_password char(64), IN ud_email char(50), IN ud_mobil_number char(50), IN ud_notes char(250), IN ud_pharmacyID int(11))
NOT DETERMINISTIC
CONTAINS SQL
SQL SECURITY DEFINER
COMMENT ''
BEGIN
INSERT INTO `pharminder`.`pharmacy_owner`
(`username`,
`password`,
`email`,
`mobil_number`,
`notes`,
`pharmacyID`)
VALUES
(ud_username,
ud_password,
ud_email,
ud_mobil_number,
 ud_notes,
 ud_pharmacyID );
 END;
CREATE DEFINER=root@localhost PROCEDURE `pharminder`.`updatePharmacy` (IN ud_id int(11), IN ud_name char(50), IN ud_address char(100), IN ud_latitude float, IN ud_longitude float, IN ud_phone char(50), IN ud_note char(250))
NOT DETERMINISTIC
CONTAINS SQL
SQL SECURITY DEFINER
COMMENT ''
BEGIN
		UPDATE pharmacy
		SET name = ud_name,
		address = ud_address,
		latitude = ud_latitude,
		longitude = ud_longitude,
		phone_number = ud_phone,
		notes = ud_note
		WHERE id = ud_id ;
	END;
CREATE DEFINER=root@localhost PROCEDURE `pharminder`.`updatePharmacyOwner` (IN ud_pharmacy_ownerID int(11), IN ud_username char(50), IN ud_password char(64), IN ud_email char(50), IN ud_mobil_number char(50), IN ud_notes char(250), IN ud_pharmacyID int(11))
NOT DETERMINISTIC
CONTAINS SQL
SQL SECURITY DEFINER
COMMENT ''
BEGIN
UPDATE `pharminder`.`pharmacy_owner`
SET
`username` = ud_username,
`password` = ud_password,
`email` = ud_email,
`mobil_number` = ud_mobil_number,
`notes` = ud_notes,
`pharmacyID` = ud_pharmacyID
WHERE `pharmacy_ownerID` = ud_pharmacy_ownerID;
END;
CREATE DEFINER=root@localhost PROCEDURE `pharminder`.`verifyAdmin` (IN ud_username char(45), IN ud_password char(45), OUT id int(11))
NOT DETERMINISTIC
CONTAINS SQL
SQL SECURITY DEFINER
COMMENT ''
BEGIN
		SELECT adminid INTO id from admin where username = ud_username and password = ud_password;
	END;
