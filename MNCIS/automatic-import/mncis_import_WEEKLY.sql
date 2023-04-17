#run this for monthly IMPORTS of MNCIS data files
#created by MaryJo Webster, Dec 2016
#updated 4/19/2019 to reflect additional field in eviction data (date of birth)
#UPDATED Aug 2022 to incdlue eviction filings data file


CREATE TABLE new_evictions LIKE MNCIS_evictions_filed;

RENAME TABLE MNCIS_evictions_filed TO old_MNCIS_evictions_filed;

RENAME TABLE new_evictions TO MNCIS_evictions_filed;

DROP TABLE old_MNCIS_evictions_filed;

insert into MNCIS_log (`timestamp`, tblname, operationtype) values(NOW(), 'IR_EvicitionsFiled', 'delete rows');


LOAD DATA LOCAL INFILE 'downloads/IR_EvictionsFiled.txt' into table MNCIS_evictions_filed fields terminated by '|' ignore 1 lines
(@var_Current_Case_Number,
@var_Case_Filed_Date,
@var_District_Code,
@var_District_Desc,
@var_County_Code,
@var_County_Desc,
@var_Type_Code,
@var_Type_Desc,
@var_Case_Status_Code,
@var_Case_Status_Desc,
@var_Base_Type_Code,
@var_Base_Type_Desc,
@var_Case_Name,
@var_Case_Party_Involvement_Code,
@var_Case_Party_Involvement_Desc,
@var_Party_Full_Name,
@var_Party_Address_Line1,
@var_Party_Address_Line2,
@var_Party_Address_Line3,
@var_Party_Address_Line4,
@var_Party_City,
@var_Party_State,
@var_Party_Zip,
@var_Party_DOB,
@var_Judgment_Date,
@var_Judgment_Type_Code,
@var_Judgment_Type_Desc,
@var_Judgment_Award_Entered_Date,
@var_Judgment_Award_Docketed_Date,
@var_Judgment_Award_Expiration_Date,
@var_Judgment_Award_Satisfy_Date,
@var_Original_Principal_Amt,
@var_Judgment_Award_Property_Type_Code,
@var_Judgment_Award_Property_Type_Desc,
@var_Judgment_Award_Property_VIN,
@var_Award_Party_Role,
@var_Award_Party_Name,
@var_Satisfaction_Type_Code,
@var_Satisfaction_Type_Desc)
SET 
Current_Case_Number=@var_Current_Case_Number,
Case_Filed_Date=STR_TO_DATE(@var_Case_Filed_Date, '%m/%d/%Y'),
District_Code=@var_District_Code,
District_Desc=@var_District_Desc,
County_Code=@var_County_Code,
County_Desc=@var_County_Desc,
Type_Code=@var_Type_Code,
Type_Desc=@var_Type_Desc,
Case_Status_Code=@var_Case_Status_Code,
Case_Status_Desc=@var_Case_Status_Desc,
Base_Type_Code=@var_Base_Type_Code,
Base_Type_Desc=@var_Base_Type_Desc,
Case_Name=@var_Case_Name,
Case_Party_Involvement_Code=@var_Case_Party_Involvement_Code,
Case_Party_Involvement_Desc=@var_Case_Party_Involvement_Desc,
Party_Full_Name=@var_Party_Full_Name,
Party_Address_Line1=@var_Party_Address_Line1,
Party_Address_Line2=@var_Party_Address_Line2,
Party_Address_Line3=@var_Party_Address_Line3,
Party_Address_Line4=@var_Party_Address_Line4,
Party_City=@var_Party_City,
Party_State=@var_Party_State,
Party_Zip=@var_Party_Zip,
Party_DOB=STR_TO_DATE(@var_Party_DOB, '%Y-%m-%d'),
Judgment_Date=STR_TO_DATE(@var_Judgment_Date, '%Y-%m-%d'),
Judgment_Type_Code=@var_Judgment_Type_Code,
Judgment_Type_Desc=@var_Judgment_Type_Desc,
Judgment_Award_Entered_Date=STR_TO_DATE(@var_Judgment_Award_Entered_Date, '%Y-%m-%d'),
Judgment_Award_Docketed_Date=STR_TO_DATE(@var_Judgment_Award_Docketed_Date, '%Y-%m-%d'),
Judgment_Award_Expiration_Date=STR_TO_DATE(@var_Judgment_Award_Expiration_Date, '%Y-%m-%d'),
Judgment_Award_Satisfy_Date=STR_TO_DATE(@var_Judgment_Award_Satisfy_Date, '%Y-%m-%d'),
Original_Principal_Amt=@var_Original_Principal_Amt,
Judgment_Award_Property_Type_Code=@var_Judgment_Award_Property_Type_Code,
Judgment_Award_Property_Type_Desc=@var_Judgment_Award_Property_Type_Desc,
Judgment_Award_Property_VIN=@var_Judgment_Award_Property_VIN,
Award_Party_Role=@var_Award_Party_Role,
Award_Party_Name=@var_Award_Party_Name,
Satisfaction_Type_Code=@var_Satisfaction_Type_Code,
Satisfaction_Type_Desc=@var_Satisfaction_Type_Desc,
stribimportdate=NOW();

insert into MNCIS_log (`timestamp`, tblname, operationtype) values(NOW(), 'IR_EvictionsFiled', 'import');

#updates newsroom inventory to note a new date for the last update field
update newsroomdata.inventory set lastupdate=NOW() where idnumber=333;

drop table eviction_filings_unique_cases;

create TABLE eviction_filings_unique_cases
select distinct current_case_number, case_filed_date, county_code, county_desc, case_name, year(case_filed_date) as yr, month(case_filed_date) as mnth
from MNCIS_evictions_filed;

##############################

#deletes existing records from MNCIS_crim_traff table
CREATE TABLE new_crimtraff LIKE MNCIS_Crim_Traff;

RENAME TABLE MNCIS_Crim_Traff TO old_crimtraff, new_crimtraff TO MNCIS_Crim_Traff;

DROP TABLE old_crimtraff;

#logs the delete action
insert into MNCIS_log (`timestamp`, tblname, operationtype) values(NOW(), 'IR_Base_Criminal_Traffic', 'delete rows');

#loads the text file 
#converts date FIELDS
#adds a timestamp 

LOAD DATA LOCAL INFILE 'downloads/IR_Base_Criminal_Traffic.txt' into table MNCIS_Crim_Traff fields terminated by '|' ignore 1 lines
(@var_Current_Case_Number,
@var_Case_Filed_Date,
@var_Case_WCL_Type_Desc,
@var_Case_Status_Code,
@var_Case_Status_Desc,
@var_County_Code,
@var_County_Desc,
@var_Base_Type_Code,
@var_Base_Type_Desc,
@var_Case_Type_Code,
@var_Case_Type_Desc,
@var_Category_Code,
@var_Case_Party_Involvement_Code,
@var_Case_Party_Involvement_Desc,
@var_Party_Name_First,
@var_Party_Name_Middle,
@var_Party_Name_Last,
@var_Party_City,
@var_Party_State,
@var_Party_Zip,
@var_Current_DOB_of_Party,
@var_Charge_Count_Number,
@var_Enforcement_Agency_Code,
@var_Enforcement_Agency_Desc,
@var_Charge_Statute,
@var_Charge_Desc,
@var_Degree_Type_Code,
@var_Degree_Type_Desc,
@var_Criminal_Disposition_Type_Code,
@var_Criminal_Disposition_Type_Desc,
@var_Criminal_Disposition_Date,
@var_Sentence_Date,
@var_Sentence_Type_Code,
@var_Sentence_Type_Desc,
@var_Level_of_Sentence,
@var_Sentence_Confinement_Code,
@var_Sentence_Confinement_Desc,
@var_Confinement_Agency_Code,
@var_Confinement_Agency_Desc,
@var_Sentence_Confinement_Stated_Cond_Conf_Days,
@var_Sentence_Confinement_Stated_Cond_Conf_Months,
@var_Sentence_Confinement_Stated_Cond_Conf_Years,
@var_Sentence_Confinement_Stated_Cond_Conf_Time,
@var_Sentence_Confinement_Stated_Confinement_Days,
@var_Sentence_Confinement_Stated_Confinement_Months,
@var_Sentence_Confinement_Stated_Confinement_Years,
@var_Sentence_Confinement_Stated_Confinement_Time,
@var_Sentence_Confinement_Stated_Stayed_Days,
@var_Sentence_Confinement_Stated_Stayed_Months,
@var_Sentence_Confinement_Stated_Stayed_Years,
@var_Sentence_Confinement_Stated_Stayed_Time,
@var_Sentence_Confinement_Stayed_For_Days,
@var_Sentence_Confinement_Stayed_For_Months,
@var_Sentence_Confinement_Stayed_For_Years)
SET
	Current_Case_Number=@var_Current_Case_Number,
	Case_Filed_Date=STR_TO_DATE(@var_Case_Filed_Date, '%m/%d/%Y'),
	Case_WCL_Type_Desc=@var_Case_WCL_Type_Desc,
	Case_Status_Code=@var_Case_Status_Code,
	Case_Status_Desc=@var_Case_Status_Desc,
	County_Code=@var_County_Code,
	County_Desc=@var_County_Desc,
	Base_Type_Code=@var_Base_Type_Code,
	Base_Type_Desc=@var_Base_Type_Desc,
	Case_Type_Code=@var_Case_Type_Code,
	Case_Type_Desc=@var_Case_Type_Desc,
	Category_Code=@var_Category_Code,
	Case_Party_Involvement_Code=@var_Case_Party_Involvement_Code,
	Case_Party_Involvement_Desc=@var_Case_Party_Involvement_Desc,
	Party_Name_First=@var_Party_Name_First,
	Party_Name_Middle=@var_Party_Name_Middle,
	Party_Name_Last=@var_Party_Name_Last,
	Party_City=@var_Party_City,
	Party_State=@var_Party_State,
	Party_Zip=@var_Party_Zip,
	Current_DOB_of_Party=STR_TO_DATE(@var_Current_DOB_of_Party, '%Y-%m-%d'),
	Charge_Count_Number=@var_Charge_Count_Number,
	Enforcement_Agency_Code=@var_Enforcement_Agency_Code,
	Enforcement_Agency_Desc=@var_Enforcement_Agency_Desc,
	Charge_Statute=@var_Charge_Statute,
	Charge_Desc=@var_Charge_Desc,
	Degree_Type_Code=@var_Degree_Type_Code,
	Degree_Type_Desc=@var_Degree_Type_Desc,
	Criminal_Disposition_Type_Code=@var_Criminal_Disposition_Type_Code,
	Criminal_Disposition_Type_Desc=@var_Criminal_Disposition_Type_Desc,
	Criminal_Disposition_Date=STR_TO_DATE(@var_Criminal_Disposition_Date, '%Y-%m-%d'),
	Sentence_Date=STR_TO_DATE(@var_Sentence_Date, '%Y-%m-%d'),
	Sentence_Type_Code=@var_Sentence_Type_Code,
	Sentence_Type_Desc=@var_Sentence_Type_Desc,
Level_of_Sentence = @var_Level_of_Sentence,
	Sentence_Confinement_Code=@var_Sentence_Confinement_Code,
	Sentence_Confinement_Desc=@var_Sentence_Confinement_Desc,
	Confinement_Agency_Code=@var_Confinement_Agency_Code,
	Confinement_Agency_Desc=@var_Confinement_Agency_Desc,
	Sentence_Confinement_Stated_Cond_Conf_Days=@var_Sentence_Confinement_Stated_Cond_Conf_Days,
	Sentence_Confinement_Stated_Cond_Conf_Months=@var_Sentence_Confinement_Stated_Cond_Conf_Months,
	Sentence_Confinement_Stated_Cond_Conf_Years=@var_Sentence_Confinement_Stated_Cond_Conf_Years,
	Sentence_Confinement_Stated_Cond_Conf_Time=@var_Sentence_Confinement_Stated_Cond_Conf_Time,
	Sentence_Confinement_Stated_Confinement_Days=@var_Sentence_Confinement_Stated_Confinement_Days,
	Sentence_Confinement_Stated_Confinement_Months=@var_Sentence_Confinement_Stated_Confinement_Months,
	Sentence_Confinement_Stated_Confinement_Years=@var_Sentence_Confinement_Stated_Confinement_Years,
	Sentence_Confinement_Stated_Confinement_Time=@var_Sentence_Confinement_Stated_Confinement_Time,
	Sentence_Confinement_Stated_Stayed_Days=@var_Sentence_Confinement_Stated_Stayed_Days,
	Sentence_Confinement_Stated_Stayed_Months=@var_Sentence_Confinement_Stated_Stayed_Months,
	Sentence_Confinement_Stated_Stayed_Years=@var_Sentence_Confinement_Stated_Stayed_Years,
	Sentence_Confinement_Stated_Stayed_Time=@var_Sentence_Confinement_Stated_Stayed_Time,
	Sentence_Confinement_Stayed_For_Days=@var_Sentence_Confinement_Stayed_For_Days,
	Sentence_Confinement_Stayed_For_Months=@var_Sentence_Confinement_Stayed_For_Months,
	Sentence_Confinement_Stayed_For_Years=@var_Sentence_Confinement_Stayed_For_Years,
stribimportdate=NOW();

#updates newsroom inventory to note a new date for the last update field
update newsroomdata.inventory set lastupdate=NOW() where idnumber=2;

#logs the import
insert into MNCIS_log (`timestamp`, tblname, operationtype) values(NOW(), 'IR_Base_Criminal_Traffic', 'import');

##############################

#deletes rows from judgments table
CREATE TABLE new_civil LIKE MNCIS_judgments;

RENAME TABLE MNCIS_judgments TO old_civil, new_civil TO MNCIS_judgments;

DROP TABLE old_civil;

#logs the deletion
insert into MNCIS_log (`timestamp`, tblname, operationtype) values(NOW(), 'IR_Judgments', 'delete rows');

#loads new text file for judgments
#converts date fields
#adds a timestamp

LOAD DATA LOCAL INFILE 'downloads/IR_Judgments.txt' into table MNCIS_judgments fields terminated by '|' ignore 1 lines 
(@var_Current_Case_Number,
@var_Case_Filed_Date,
@var_District_Code,
@var_District_Desc,
@var_County_Code,
@var_County_Desc,
@var_Type_Code,
@var_Type_Desc,
@var_Case_Status_Code,
@var_Case_Status_Desc,
@var_Base_Type_Code,
@var_Base_Type_Desc,
@var_Case_Name,
@var_Case_Party_Involvement_Code,
@var_Case_Party_Involvement_Desc,
@var_Party_Full_Name,
@var_Party_Address_Line1,
@var_Party_Address_Line2,
@var_Party_Address_Line3,
@var_Party_Address_Line4,
@var_Party_City,
@var_Party_State,
@var_Party_Zip,
@var_Judgment_Date,
@var_Judgment_Type_Code,
@var_Judgment_Type_Desc,
@var_Judgment_Award_Entered_Date,
@var_Judgment_Award_Docketed_Date,
@var_Judgment_Award_Expiration_Date,
@var_Judgment_Award_Satisfy_Date,
@var_Judgment_Award_Inactive_Date,
@var_Judgment_Award_Inactive_Code,
@var_Judgment_Award_Inactive_Desc,
@var_Original_Principal_Amt,
@var_Judgment_Award_Property_Type_Code,
@var_Judgment_Award_Property_Type_Desc,
@var_Judgment_Award_Property_VIN,
@var_Award_Party_Role,
@var_Award_Party_Name,
@var_Satisfaction_Type_Code,
@var_Satisfaction_Type_Desc)
SET Current_Case_Number=@var_Current_Case_Number,
Case_Filed_Date=STR_TO_DATE(@var_Case_Filed_Date, '%m/%d/%Y'),
 District_Code=@var_District_Code,
 District_Desc=@var_District_Desc,
 County_Code=@var_County_Code,
 County_Desc=@var_County_Desc,
 Type_Code=@var_Type_Code,
 Type_Desc=@var_Type_Desc,
 Case_Status_Code=@var_Case_Status_Code,
 Case_Status_Desc=@var_Case_Status_Desc,
 Base_Type_Code=@var_Base_Type_Code,
 Base_Type_Desc=@var_Base_Type_Desc,
 Case_Name=@var_Case_Name,
 Case_Party_Involvement_Code=@var_Case_Party_Involvement_Code,
 Case_Party_Involvement_Desc=@var_Case_Party_Involvement_Desc,
 Party_Full_Name=@var_Party_Full_Name,
 Party_Address_Line1=@var_Party_Address_Line1,
 Party_Address_Line2=@var_Party_Address_Line2,
 Party_Address_Line3=@var_Party_Address_Line3,
 Party_Address_Line4=@var_Party_Address_Line4,
 Party_City=@var_Party_City,
 Party_State=@var_Party_State,
 Party_Zip=@var_Party_Zip,
 Judgment_Date=STR_TO_DATE(@var_Judgment_Date, '%Y-%m-%d'),
 Judgment_Type_Code=@var_Judgment_Type_Code,
 Judgment_Type_Desc=@var_Judgment_Type_Desc,
 Judgment_Award_Entered_Date=STR_TO_DATE(@var_Judgment_Award_Entered_Date, '%Y-%m-%d'),
 Judgment_Award_Docketed_Date=STR_TO_DATE(@var_Judgment_Award_Docketed_Date, '%Y-%m-%d'),
 Judgment_Award_Expiration_Date=STR_TO_DATE(@var_Judgment_Award_Expiration_Date, '%Y-%m-%d'),
 Judgment_Award_Satisfy_Date=STR_TO_DATE(@var_Judgment_Award_Satisfy_Date, '%Y-%m-%d'),
 Judgment_Award_Inactive_Date=STR_TO_DATE(@var_Judgment_Award_Inactive_Date, '%Y-%m-%d'),
 Judgment_Award_Inactive_Code=@var_Judgment_Award_Inactive_Code,
 Judgment_Award_Inactive_Desc=@var_Judgment_Award_Inactive_Desc,
 Original_Principal_Amt=@var_Original_Principal_Amt,
 Judgment_Award_Property_Type_Code=@var_Judgment_Award_Property_Type_Code,
 Judgment_Award_Property_Type_Desc=@var_Judgment_Award_Property_Type_Desc,
 Judgment_Award_Property_VIN=@var_Judgment_Award_Property_VIN,
 Award_Party_Role=@var_Award_Party_Role,
 Award_Party_Name=@var_Award_Party_Name,
 Satisfaction_Type_Code=@var_Satisfaction_Type_Code,
 Satisfaction_Type_Desc=@var_Satisfaction_Type_Desc,
 stribimportdate=NOW();

#logs the judgments import
insert into MNCIS_log (`timestamp`, tblname, operationtype) values(NOW(), 'IR_Judgments', 'import');

#updates newsroom inventory with a new date for last update
update newsroomdata.inventory set lastupdate=NOW() where idnumber=146;

##################################################


CREATE TABLE new_evictions_done LIKE MNCIS_evictions;

RENAME TABLE MNCIS_evictions TO old_evictions, new_evictions_done TO MNCIS_evictions;

DROP TABLE old_evictions;

#logs the deletions
insert into MNCIS_log (`timestamp`, tblname, operationtype) values(NOW(), 'IR_Evictions', 'delete rows');

#loads the new evictions text file
#converts date fields
#adds a timestamp

LOAD DATA LOCAL INFILE 'downloads/IR_Evictions.txt' into table MNCIS_evictions fields terminated by '|' ignore 1 lines
(@var_Current_Case_Number,
@var_Case_Filed_Date,
@var_District_Code,
@var_District_Desc,
@var_County_Code,
@var_County_Desc,
@var_Type_Code,
@var_Type_Desc,
@var_Case_Status_Code,
@var_Case_Status_Desc,
@var_Base_Type_Code,
@var_Base_Type_Desc,
@var_Case_Name,
@var_Case_Party_Involvement_Code,
@var_Case_Party_Involvement_Desc,
@var_Party_Full_Name,
@var_Party_Address_Line1,
@var_Party_Address_Line2,
@var_Party_Address_Line3,
@var_Party_Address_Line4,
@var_Party_City,
@var_Party_State,
@var_Party_Zip,
@var_Party_Birth_Date,
@var_Judgment_Date,
@var_Judgment_Type_Code,
@var_Judgment_Type_Desc,
@var_Judgment_Award_Entered_Date,
@var_Judgment_Award_Docketed_Date,
@var_Judgment_Award_Expiration_Date,
@var_Judgment_Award_Satisfy_Date,
@var_Original_Principal_Amt,
@var_Judgment_Award_Property_Type_Code,
@var_Judgment_Award_Property_Type_Desc,
@var_Judgment_Award_Property_VIN,
@var_Award_Party_Role,
@var_Award_Party_Name,
@var_Satisfaction_Type_Code,
@var_Satisfaction_Type_Desc)
SET 
Current_Case_Number=@var_Current_Case_Number,
Case_Filed_Date=STR_TO_DATE(@var_Case_Filed_Date, '%m/%d/%Y'),
District_Code=@var_District_Code,
District_Desc=@var_District_Desc,
County_Code=@var_County_Code,
County_Desc=@var_County_Desc,
Type_Code=@var_Type_Code,
Type_Desc=@var_Type_Desc,
Case_Status_Code=@var_Case_Status_Code,
Case_Status_Desc=@var_Case_Status_Desc,
Base_Type_Code=@var_Base_Type_Code,
Base_Type_Desc=@var_Base_Type_Desc,
Case_Name=@var_Case_Name,
Case_Party_Involvement_Code=@var_Case_Party_Involvement_Code,
Case_Party_Involvement_Desc=@var_Case_Party_Involvement_Desc,
Party_Full_Name=@var_Party_Full_Name,
Party_Address_Line1=@var_Party_Address_Line1,
Party_Address_Line2=@var_Party_Address_Line2,
Party_Address_Line3=@var_Party_Address_Line3,
Party_Address_Line4=@var_Party_Address_Line4,
Party_City=@var_Party_City,
Party_State=@var_Party_State,
Party_Zip=@var_Party_Zip,
Party_Birth_Date=STR_TO_DATE(@var_Party_Birth_Date, '%Y-%m-%d'),
Judgment_Date=STR_TO_DATE(@var_Judgment_Date, '%Y-%m-%d'),
Judgment_Type_Code=@var_Judgment_Type_Code,
Judgment_Type_Desc=@var_Judgment_Type_Desc,
Judgment_Award_Entered_Date=STR_TO_DATE(@var_Judgment_Award_Entered_Date, '%Y-%m-%d'),
Judgment_Award_Docketed_Date=STR_TO_DATE(@var_Judgment_Award_Docketed_Date, '%Y-%m-%d'),
Judgment_Award_Expiration_Date=STR_TO_DATE(@var_Judgment_Award_Expiration_Date, '%Y-%m-%d'),
Judgment_Award_Satisfy_Date=STR_TO_DATE(@var_Judgment_Award_Satisfy_Date, '%Y-%m-%d'),
Original_Principal_Amt=@var_Original_Principal_Amt,
Judgment_Award_Property_Type_Code=@var_Judgment_Award_Property_Type_Code,
Judgment_Award_Property_Type_Desc=@var_Judgment_Award_Property_Type_Desc,
Judgment_Award_Property_VIN=@var_Judgment_Award_Property_VIN,
Award_Party_Role=@var_Award_Party_Role,
Award_Party_Name=@var_Award_Party_Name,
Satisfaction_Type_Code=@var_Satisfaction_Type_Code,
Satisfaction_Type_Desc=@var_Satisfaction_Type_Desc,
stribimportdate=NOW();

#logs the evictions import
insert into MNCIS_log (`timestamp`, tblname, operationtype) values(NOW(), 'IR_Evictions', 'import');
#updates newsroom inventory with a new date for last update
update newsroomdata.inventory set lastupdate=NOW() where idnumber=3;

###########################

### update indexes on crimtraff table

OPTIMIZE TABLE MNCIS_Crim_Traff;

OPTIMIZE TABLE MNCIS_judgments;

OPTIMIZE TABLE MNCIS_evictions_filed

