DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `addOrUpdatePharmacyMedicine`(ud_pharmacyID int(11),  ud_medicine char(45),  ud_arabic_medicine char(45),  ud_quantity int(11))
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

	END$$
DELIMITER ;

DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `deleteMedicneByID`(IN id int(11))
BEGIN
DELETE FROM `pharminder`.`medicine`
WHERE medicineid = id;
END$$
DELIMITER ;

DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `deleteOwnerByID`(IN id int(11))
BEGIN
DELETE FROM `pharminder`.`pharmacy_owner`
WHERE pharmacy_ownerID = id;
END$$
DELIMITER ;

DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `getNearestPharmaciesContainingMedicine`(IN ud_medicine char(45), IN ud_latitude float, IN ud_longitude float)
BEGIN
		SELECT pharmacy.id, pharmacy.name, address, latitude, longitude, phone_number, get_distance_from_pharmacy(ud_latitude, ud_longitude, latitude,longitude) 'distance_from_source' from pharmacy_medicine inner join pharmacy on pharmacy_id = pharmacy.ID inner join medicine on medicine.medicineid = medicine_id where pharmacy_medicine.quantity > '0' and medicine.Name = ud_medicine ORDER BY distance_from_source LIMIT 8;
	END$$
DELIMITER ;

DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `deletePharmacyWithID`( ud_id int(11))
BEGIN
		DELETE FROM pharmacy_medicine WHERE pharmacy_id = ud_id;
		DELETE FROM pharmacy WHERE id = ud_id;
	END$$
DELIMITER ;

DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `getOwnerByID`(IN id int(11))
BEGIN
SELECT *
FROM `pharminder`.`pharmacy_owner` WHERE pharmacy_owner.pharmacy_ownerID = id;
END$$
DELIMITER ;

DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `getOwnerByUsernameAndPassword`(IN ud_username char(50), IN ud_password char(64))
BEGIN
SELECT *
FROM `pharminder`.`pharmacy_owner` WHERE pharmacy_owner.username = ud_username and password = ud_password;
END$$
DELIMITER ;

DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `getPharmacyByID`(IN pharmacy_id int(11))
BEGIN
		SELECT name,address,longitude,latitude,phone_number from pharmacy WHERE id = pharmacy_id;
	END$$
DELIMITER ;

DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `getSimilarMedicines`(IN ud_medicine char(45))
BEGIN
		SELECT name from medicine where name like CONCAT('%',ud_medicine,'%') or arabic_name like CONCAT('%',ud_medicine,'%');
	END$$
DELIMITER ;

DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_pharmacy_id_by_username_and_password`( ud_username char(45),  ud_password char(45),  id int(11))
BEGIN
		SELECT pharmacyID INTO id from pharmacy_owner where username = ud_username and password = ud_password;
	END$$
DELIMITER ;

DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `newPharmacy`(IN `ud_name` CHAR(50), IN `ud_address` CHAR(100), IN `ud_latitude` FLOAT, IN `ud_longitude` FLOAT, IN `ud_phone` CHAR(50), IN `ud_note` CHAR(250))
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
	END$$
DELIMITER ;

DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `newPharmacyOwner`(IN `ud_username` CHAR(50), IN `ud_password` CHAR(64), IN `ud_email` CHAR(50), IN `ud_mobil_number` CHAR(50), IN `ud_notes` CHAR(250), IN `ud_pharmacyID` INT(11))
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
 END$$
DELIMITER ;

DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `updatePharmacy`(IN `ud_id` INT(11), IN `ud_name` CHAR(50), IN `ud_address` CHAR(100), IN `ud_latitude` FLOAT, IN `ud_longitude` FLOAT, IN `ud_phone` CHAR(50), IN `ud_note` CHAR(250))
BEGIN
		UPDATE pharmacy
		SET name = ud_name,
		address = ud_address,
		latitude = ud_latitude,
		longitude = ud_longitude,
		phone_number = ud_phone,
		notes = ud_note
		WHERE id = ud_id ;
	END$$
DELIMITER ;

DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `updatePharmacyOwner`(IN `ud_pharmacy_ownerID` INT(11), IN `ud_username` CHAR(50), IN `ud_password` CHAR(64), IN `ud_email` CHAR(50), IN `ud_mobil_number` CHAR(50), IN `ud_notes` CHAR(250), IN `ud_pharmacyID` INT(11))
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
END$$
DELIMITER ;

DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `verifyAdmin`(IN `ud_username` CHAR(45), IN `ud_password` CHAR(45), OUT `id` INT(11))
BEGIN
		SELECT adminid INTO id from admin where username = ud_username and password = ud_password;
       SELECT id;
	END$$
DELIMITER ;

DELIMITER $$
CREATE DEFINER=`root`@`localhost` FUNCTION `get_distance_from_pharmacy`( source_latitude float,  source_longitude float, target_latitude float,  target_longitude float) RETURNS float
    DETERMINISTIC
RETURN SQRT(
			(POWER
				( ABS(target_latitude) - ABS(source_latitude) 
                ,2)+
                POWER(ABS(target_longitude)-ABS(source_longitude),2)
            )
        )$$
DELIMITER ;