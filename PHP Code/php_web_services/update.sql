ALTER TABLE `tbl_users` 
	CHANGE `user_type` `user_type` VARCHAR(60) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL, 
	CHANGE `user_profile` `user_profile` VARCHAR(150) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL, 
	CHANGE `name` `name` VARCHAR(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL, 
	CHANGE `email` `email` VARCHAR(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL, 
	CHANGE `password` `password` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL, 
	CHANGE `phone` `phone` VARCHAR(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL, 
	CHANGE `confirm_code` `confirm_code` VARCHAR(150) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL, 
	CHANGE `auth_id` `auth_id` VARCHAR(150) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL, 
	CHANGE `device_id` `device_id` VARCHAR(150) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL, 
	CHANGE `registration_on` `registration_on` VARCHAR(150) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL, 
	CHANGE `status` `status` VARCHAR(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '1'; 

ALTER TABLE `tbl_user_continue` 
	CHANGE `con_id` `con_id` INT(11) NOT NULL AUTO_INCREMENT, 
	CHANGE `user_id` `user_id` INT(5) NOT NULL, 
	CHANGE `book_id` `book_id` INT(5) NOT NULL, 
	CHANGE `user_con_date` `user_con_date` VARCHAR(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL; 

ALTER TABLE `tbl_rating` 
	CHANGE `ip` `ip` VARCHAR(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL; 

ALTER TABLE `tbl_reports` 
	CHANGE `book_id` `book_id` INT(5) NOT NULL, 
	CHANGE `user_id` `user_id` INT(5) NOT NULL, 
	CHANGE `email` `email` VARCHAR(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL, 
	CHANGE `report_on` `report_on` VARCHAR(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL;

ALTER TABLE `tbl_books` CHANGE `sub_cat_id` `sub_cat_id` INT(5) NULL DEFAULT '0';

ALTER TABLE `tbl_books` CHANGE `rate_avg` `rate_avg` DOUBLE NOT NULL DEFAULT '0';

ALTER TABLE `tbl_settings` 
	ADD `app_terms_conditions` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL AFTER `app_faq`;  