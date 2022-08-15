#Data Cleaning SQL Code:

#Dropping Columns 
ALTER TABLE `hate_crimes_data_sandiego` 
DROP case_number,DROP year, DROP month,
DROP time,DROP date_time, DROP crime_code,
DROP block,DROP street, DROP type,
DROP beat,DROP command, DROP number_of_suspects,
DROP suspect,DROP victim_count, DROP victim_other,
DROP injury,DROP suspect_race_0, DROP suspect_race_1,
DROP suspect_race_2,DROP suspect_sex_0, DROP suspect_sex_1,
DROP suspect_sex_2,DROP victim_race_0, DROP victim_race_1,
DROP victim_race_2,DROP victim_race_3, DROP victim_sex_1,
DROP victim_sex_2,DROP victim_sex_3;


#Renaming victim_sex_0 column Name to Victim Gender Column
ALTER TABLE `hate_crimes_data_sandiego` CHANGE `Victim Gender` `Victim_Gender` VARCHAR(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL;


#Replacing Null/Empty Entires in Victim Gender Column with 'Unknown' 
UPDATE hate_crimes_data_sandiego
SET Victim_Gender ='U'
WHERE Victim_Gender IS NULL;



#There were 39 missing entires in Victim's Gender. So I placed U (For Unknown) for missing values
UPDATE `hate_crimes_data_sandiego` SET Victim_Gender ='U' WHERE Victim_Gender='';
UPDATE `hate_crimes_data_sandiego` SET Victim_Gender ='U' WHERE Victim_Gender='-';