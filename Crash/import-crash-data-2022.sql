# This is the code that was used to import the 2022 crash data

#create tables

CREATE TABLE crash_acc_2022
(
ACCN VARCHAR(9),
INCIDENTID VARCHAR(7),
AGENCY VARCHAR(4),
LOCCASE VARCHAR(50),
HITRUN VARCHAR(1),
PROPDAM VARCHAR(1),
NUMMV INT(2),
NUMFAT INT(1),
NUMINJ INT(2),
DOLMIN VARCHAR(2),
ACCDATE DATE,
COUNTY VARCHAR(2),
CITYTWP VARCHAR(1),
CITYNAME VARCHAR(46),
ACCTYPE VARCHAR(2),
SBUS VARCHAR(1),
LOCFHE VARCHAR(2),
BRIDGE VARCHAR(2),
WKZNTYPE VARCHAR(2),
LOCWKZN VARCHAR(2),
WORKERS VARCHAR(2),
RDSURF VARCHAR(2),
INTREL VARCHAR(2),
WEATHER1 VARCHAR(2),
WEATHER2 VARCHAR(2),
LIGHT VARCHAR(2),
DIAGRAM VARCHAR(2),
OFFTYPE VARCHAR(1),
UTMX VARCHAR(12),
UTMY VARCHAR(12),
INTERSECT VARCHAR(2),
ACCSEV VARCHAR(1),
CFR1 VARCHAR(2),
CFR2 VARCHAR(2),
FATAL VARCHAR(1),
FATWKZN VARCHAR(2),
INJURY VARCHAR(1),
INTYPE VARCHAR(2),
LANDOWN VARCHAR(1),
LEPRES VARCHAR(2),
NUMNM INT(1),
ONROAD VARCHAR(1),
RTSYS VARCHAR(2),
WKZNREL VARCHAR(2),
CITY VARCHAR(4),
XCOORD DECIMAL(10,6),
YCOORD DECIMAL(10,6),
TOWNSHIP VARCHAR(4),
ACCTIME VARCHAR(4),
URBRURT VARCHAR(1),
ACCDAY VARCHAR(1),
ACCYEAR INT(4),
strib_datayr varchar(4),
strib_importdate DATE
);


CREATE TABLE crash_per_2022
(
ACCN VARCHAR(9),
RVN VARCHAR(2),
NMACTION VARCHAR(2),
UNITPER VARCHAR(1),
RPN VARCHAR(2),
POSITN VARCHAR(2),
DLSTATE VARCHAR(2),
DLCLASS VARCHAR(2),
DLSTAT VARCHAR(2),
VIOLS VARCHAR(1),
DLREST1 VARCHAR(2),
PHYSCND1 VARCHAR(2),
RECOMND VARCHAR(1),
SEX VARCHAR(2),
SAFEQP1 VARCHAR(2),
AIRBAG VARCHAR(2),
EJECT VARCHAR(2),
INJSEV VARCHAR(1),
ALCTEST VARCHAR(2),
ALCTYPE VARCHAR(2),
DRUGTEST VARCHAR(2),
DRUGTYPE VARCHAR(2),
METHHOSP VARCHAR(2),
DLZIP VARCHAR(10),
PTYPE VARCHAR(1),
DISTRACT VARCHAR(2),
ALCSUSP VARCHAR(2),
NEWBAC VARCHAR(2),
SPEEDING VARCHAR(2),
CFP1 VARCHAR(2),
CFP2 VARCHAR(2),
CFP3 VARCHAR(2),
CFP4 VARCHAR(2),
CHARGED VARCHAR(2),
DLENDOR1 VARCHAR(1),
DLENDOR2 VARCHAR(1),
DLENDOR3 VARCHAR(1),
DLJURIS VARCHAR(2),
DLREST2 VARCHAR(2),
DLREST3 VARCHAR(2),
DRUGRES VARCHAR(2),
DRUGSUSP VARCHAR(2),
NMLOCTN VARCHAR(2),
PHYSCND2 VARCHAR(2),
SAFEQP2 VARCHAR(2),
AGE INT(3),
strib_datayr varchar(4),
strib_importdate DATE
)
;
CREATE TABLE crash_veh_2022
(
ACCN VARCHAR(9),
RVN VARCHAR(2),
FIRE VARCHAR(2),
TOWAWAY VARCHAR(1),
TRAILER VARCHAR(1),
DIRECTN VARCHAR(2),
VEHMAKE VARCHAR(19),
VEHMODEL VARCHAR(40),
VEHYEAR VARCHAR(4),
VEHCOLOR VARCHAR(3),
REGSTATE VARCHAR(2),
REGYEAR VARCHAR(4),
EVENT1 VARCHAR(2),
EVENT2 VARCHAR(2),
EVENT3 VARCHAR(2),
EVENT4 VARCHAR(2),
MOSTHE VARCHAR(2),
CFV1 VARCHAR(2),
CFV2 VARCHAR(2),
ACTION VARCHAR(2),
TOTOCC INT(2),
VEHTYPE VARCHAR(2),
VEHUSE VARCHAR(2),
DAMAREA VARCHAR(2),
DAMSEV VARCHAR(2),
CARGOTP VARCHAR(2),
HAZPLAC VARCHAR(2),
WAIVED VARCHAR(1),
RDDES VARCHAR(2),
RDALIGN VARCHAR(2),
RDGRADE VARCHAR(2),
TRFCNTL VARCHAR(2),
WORKING VARCHAR(1),
SPEED VARCHAR(2),
UNITVEH VARCHAR(1),
BUSTYPE VARCHAR(1),
CMV VARCHAR(1),
CMVCONFIG VARCHAR(2),
CMVCNTRY VARCHAR(2),
CMVSTATE VARCHAR(2),
CMVTYPE VARCHAR(1),
DRCONTRL VARCHAR(2),
EMGUSE VARCHAR(2),
GVWR VARCHAR(2),
HAZREL VARCHAR(2),
HITRUNV VARCHAR(1),
INS VARCHAR(2),
LANES INT(2),
PARKED VARCHAR(1),
UNITFAT INT(2),
UNITINJ INT(2),
VIN VARCHAR(17),
strib_datayr varchar(4),
strib_importdate DATE
);

LOAD DATA LOCAL INFILE  'Y:\\AnnualData\\Crash\\2022\\mn-2022-acc.txt' INTO TABLE crash_acc_2022 ignore 1 lines
(@ACCN,
@INCIDENTID,
@AGENCY,
@LOCCASE,
@HITRUN,
@PROPDAM,
@NUMMV,
@NUMFAT,
@NUMINJ,
@DOLMIN,
@ACCDATE,
@COUNTY,
@CITYTWP,
@CITYNAME,
@ACCTYPE,
@SBUS,
@LOCFHE,
@BRIDGE,
@WKZNTYPE,
@LOCWKZN,
@WORKERS,
@RDSURF,
@INTREL,
@WEATHER1,
@WEATHER2,
@LIGHT,
@DIAGRAM,
@OFFTYPE,
@UTMX,
@UTMY,
@INTERSECT,
@ACCSEV,
@CFR1,
@CFR2,
@FATAL,
@FATWKZN,
@INJURY,
@INTYPE,
@LANDOWN,
@LEPRES,
@NUMNM,
@ONROAD,
@RTSYS,
@WKZNREL,
@CITY,
@XCOORD,
@YCOORD,
@TOWNSHIP,
@ACCTIME,
@URBRURT,
@ACCDAY,
@ACCYEAR,
@strib_datayr,
@strib_importdate)

SET
ACCN=@ACCN,
INCIDENTID=@INCIDENTID,
AGENCY=@AGENCY,
LOCCASE=@LOCCASE,
HITRUN=@HITRUN,
PROPDAM=@PROPDAM,
NUMMV=@NUMMV,
NUMFAT=@NUMFAT,
NUMINJ=@NUMINJ,
DOLMIN=@DOLMIN,
ACCDATE=STR_TO_DATE(@ACCDATE,'%m/%d/%y'),
COUNTY=@COUNTY,
CITYTWP=@CITYTWP,
CITYNAME=@CITYNAME,
ACCTYPE=@ACCTYPE,
SBUS=@SBUS,
LOCFHE=@LOCFHE,
BRIDGE=@BRIDGE,
WKZNTYPE=@WKZNTYPE,
LOCWKZN=@LOCWKZN,
WORKERS=@WORKERS,
RDSURF=@RDSURF,
INTREL=@INTREL,
WEATHER1=@WEATHER1,
WEATHER2=@WEATHER2,
LIGHT=@LIGHT,
DIAGRAM=@DIAGRAM,
OFFTYPE=@OFFTYPE,
UTMX=@UTMX,
UTMY=@UTMY,
INTERSECT=@INTERSECT,
ACCSEV=@ACCSEV,
CFR1=@CFR1,
CFR2=@CFR2,
FATAL=@FATAL,
FATWKZN=@FATWKZN,
INJURY=@INJURY,
INTYPE=@INTYPE,
LANDOWN=@LANDOWN,
LEPRES=@LEPRES,
NUMNM=@NUMNM,
ONROAD=@ONROAD,
RTSYS=@RTSYS,
WKZNREL=@WKZNREL,
CITY=@CITY,
XCOORD=@XCOORD,
YCOORD=@YCOORD,
TOWNSHIP=@TOWNSHIP,
ACCTIME=@ACCTIME,
URBRURT=@URBRURT,
ACCDAY=@ACCDAY,
ACCYEAR=@ACCYEAR,
strib_datayr= '2022',
strib_importdate=NOW()
;



LOAD DATA LOCAL INFILE  'Y:\\AnnualData\\Crash\\2022\\mn-2022-per.txt' INTO TABLE crash_per_2022 ignore 1 lines
(
@ACCN,
@RVN,
@NMACTION,
@UNITPER,
@RPN,
@POSITN,
@DLSTATE,
@DLCLASS,
@DLSTAT,
@VIOLS,
@DLREST1,
@PHYSCND1,
@RECOMND,
@SEX,
@SAFEQP1,
@AIRBAG,
@EJECT,
@INJSEV,
@ALCTEST,
@ALCTYPE,
@DRUGTEST,
@DRUGTYPE,
@METHHOSP,
@DLZIP,
@PTYPE,
@DISTRACT,
@ALCSUSP,
@NEWBAC,
@SPEEDING,
@CFP1,
@CFP2,
@CFP3,
@CFP4,
@CHARGED,
@DLENDOR1,
@DLENDOR2,
@DLENDOR3,
@DLJURIS,
@DLREST2,
@DLREST3,
@DRUGRES,
@DRUGSUSP,
@NMLOCTN,
@PHYSCND2,
@SAFEQP2,
@AGE,
@strib_datayr,
@strib_importdate
)
SET
ACCN=@ACCN,
RVN=@RVN,
NMACTION=@NMACTION,
UNITPER=@UNITPER,
RPN=@RPN,
POSITN=@POSITN,
DLSTATE=@DLSTATE,
DLCLASS=@DLCLASS,
DLSTAT=@DLSTAT,
VIOLS=@VIOLS,
DLREST1=@DLREST1,
PHYSCND1=@PHYSCND1,
RECOMND=@RECOMND,
SEX=@SEX,
SAFEQP1=@SAFEQP1,
AIRBAG=@AIRBAG,
EJECT=@EJECT,
INJSEV=@INJSEV,
ALCTEST=@ALCTEST,
ALCTYPE=@ALCTYPE,
DRUGTEST=@DRUGTEST,
DRUGTYPE=@DRUGTYPE,
METHHOSP=@METHHOSP,
DLZIP=@DLZIP,
PTYPE=@PTYPE,
DISTRACT=@DISTRACT,
ALCSUSP=@ALCSUSP,
NEWBAC=@NEWBAC,
SPEEDING=@SPEEDING,
CFP1=@CFP1,
CFP2=@CFP2,
CFP3=@CFP3,
CFP4=@CFP4,
CHARGED=@CHARGED,
DLENDOR1=@DLENDOR1,
DLENDOR2=@DLENDOR2,
DLENDOR3=@DLENDOR3,
DLJURIS=@DLJURIS,
DLREST2=@DLREST2,
DLREST3=@DLREST3,
DRUGRES=@DRUGRES,
DRUGSUSP=@DRUGSUSP,
NMLOCTN=@NMLOCTN,
PHYSCND2=@PHYSCND2,
SAFEQP2=@SAFEQP2,
AGE=@AGE,
strib_datayr= '2022',
strib_importdate=NOW()
;



LOAD DATA LOCAL INFILE  'Y:\\AnnualData\\Crash\\2022\\mn-2022-veh.txt' INTO TABLE crash_veh_2022 ignore 1 lines
(
@ACCN,
@RVN,
@FIRE,
@TOWAWAY,
@TRAILER,
@DIRECTN,
@VEHMAKE,
@VEHMODEL,
@VEHYEAR,
@VEHCOLOR,
@REGSTATE,
@REGYEAR,
@EVENT1,
@EVENT2,
@EVENT3,
@EVENT4,
@MOSTHE,
@CFV1,
@CFV2,
@ACTION,
@TOTOCC,
@VEHTYPE,
@VEHUSE,
@DAMAREA,
@DAMSEV,
@CARGOTP,
@HAZPLAC,
@WAIVED,
@RDDES,
@RDALIGN,
@RDGRADE,
@TRFCNTL,
@WORKING,
@SPEED,
@UNITVEH,
@BUSTYPE,
@CMV,
@CMVCONFIG,
@CMVCNTRY,
@CMVSTATE,
@CMVTYPE,
@DRCONTRL,
@EMGUSE,
@GVWR,
@HAZREL,
@HITRUNV,
@INS,
@LANES,
@PARKED,
@UNITFAT,
@UNITINJ,
@VIN,
@strib_datayr,
@strib_importdate
)
SET
ACCN=@ACCN,
RVN=@RVN,
FIRE=@FIRE,
TOWAWAY=@TOWAWAY,
TRAILER=@TRAILER,
DIRECTN=@DIRECTN,
VEHMAKE=@VEHMAKE,
VEHMODEL=@VEHMODEL,
VEHYEAR=@VEHYEAR,
VEHCOLOR=@VEHCOLOR,
REGSTATE=@REGSTATE,
REGYEAR=@REGYEAR,
EVENT1=@EVENT1,
EVENT2=@EVENT2,
EVENT3=@EVENT3,
EVENT4=@EVENT4,
MOSTHE=@MOSTHE,
CFV1=@CFV1,
CFV2=@CFV2,
ACTION=@ACTION,
TOTOCC=@TOTOCC,
VEHTYPE=@VEHTYPE,
VEHUSE=@VEHUSE,
DAMAREA=@DAMAREA,
DAMSEV=@DAMSEV,
CARGOTP=@CARGOTP,
HAZPLAC=@HAZPLAC,
WAIVED=@WAIVED,
RDDES=@RDDES,
RDALIGN=@RDALIGN,
RDGRADE=@RDGRADE,
TRFCNTL=@TRFCNTL,
WORKING=@WORKING,
SPEED=@SPEED,
UNITVEH=@UNITVEH,
BUSTYPE=@BUSTYPE,
CMV=@CMV,
CMVCONFIG=@CMVCONFIG,
CMVCNTRY=@CMVCNTRY,
CMVSTATE=@CMVSTATE,
CMVTYPE=@CMVTYPE,
DRCONTRL=@DRCONTRL,
EMGUSE=@EMGUSE,
GVWR=@GVWR,
HAZREL=@HAZREL,
HITRUNV=@HITRUNV,
INS=@INS,
LANES=@LANES,
PARKED=@PARKED,
UNITFAT=@UNITFAT,
UNITINJ=@UNITINJ,
VIN=@VIN,
strib_datayr= '2022',
strib_importdate=NOW()
;



ALTER TABLE crash_acc_2022
ADD COLUMN AGENCY_txt VARCHAR(70) NOT NULL,
ADD COLUMN HITRUN_txt VARCHAR(4) NOT NULL,
ADD COLUMN PROPDAM_txt VARCHAR(24) NOT NULL,
ADD COLUMN DOLMIN_txt VARCHAR(8) NOT NULL,
ADD COLUMN COUNTY_txt VARCHAR(18) NOT NULL,
ADD COLUMN CITYTWP_txt VARCHAR(9) NOT NULL,
ADD COLUMN ACCTYPE_txt VARCHAR(76) NOT NULL,
ADD COLUMN SBUS_txt VARCHAR(25) NOT NULL,
ADD COLUMN LOCFHE_txt VARCHAR(35) NOT NULL,
ADD COLUMN BRIDGE_txt VARCHAR(8) NOT NULL,
ADD COLUMN WKZNTYPE_txt VARCHAR(32) NOT NULL,
ADD COLUMN LOCWKZN_txt VARCHAR(40) NOT NULL,
ADD COLUMN WORKERS_txt VARCHAR(8) NOT NULL,
ADD COLUMN RDSURF_txt VARCHAR(27) NOT NULL,
ADD COLUMN INTREL_txt VARCHAR(46) NOT NULL,
ADD COLUMN WEATHER1_txt VARCHAR(48) NOT NULL,
ADD COLUMN WEATHER2_txt VARCHAR(48) NOT NULL,
ADD COLUMN LIGHT_txt VARCHAR(25) NOT NULL,
ADD COLUMN DIAGRAM_txt VARCHAR(31) NOT NULL,
ADD COLUMN OFFTYPE_txt VARCHAR(32) NOT NULL,
ADD COLUMN INTERSECT_txt VARCHAR(19) NOT NULL,
ADD COLUMN ACCSEV_txt VARCHAR(25) NOT NULL,
ADD COLUMN CFR1_txt VARCHAR(56) NOT NULL,
ADD COLUMN CFR2_txt VARCHAR(56) NOT NULL,
ADD COLUMN FATAL_txt VARCHAR(4) NOT NULL,
ADD COLUMN FATWKZN_txt VARCHAR(33) NOT NULL,
ADD COLUMN INJURY_txt VARCHAR(4) NOT NULL,
ADD COLUMN INTYPE_txt VARCHAR(45) NOT NULL,
ADD COLUMN LANDOWN_txt VARCHAR(17) NOT NULL,
ADD COLUMN LEPRES_txt VARCHAR(8) NOT NULL,
ADD COLUMN ONROAD_txt VARCHAR(24) NOT NULL,
ADD COLUMN RTSYS_txt VARCHAR(45) NOT NULL,
ADD COLUMN WKZNREL_txt VARCHAR(8) NOT NULL,
ADD COLUMN CITY_txt VARCHAR(26) NOT NULL,
ADD COLUMN URBRURT_txt VARCHAR(21) NOT NULL,
ADD COLUMN ACCDAY_txt VARCHAR(10) NOT NULL

;
ALTER TABLE crash_per_2022
ADD COLUMN NMACTION_txt VARCHAR(50) NOT NULL,
ADD COLUMN UNITPER_txt VARCHAR(87) NOT NULL,
ADD COLUMN POSITN_txt VARCHAR(47) NOT NULL,
ADD COLUMN DLSTATE_txt VARCHAR(21) NOT NULL,
ADD COLUMN DLCLASS_txt VARCHAR(43) NOT NULL,
ADD COLUMN DLSTAT_txt VARCHAR(42) NOT NULL,
ADD COLUMN VIOLS_txt VARCHAR(4) NOT NULL,
ADD COLUMN DLREST1_txt VARCHAR(40) NOT NULL,
ADD COLUMN PHYSCND1_txt VARCHAR(47) NOT NULL,
ADD COLUMN RECOMND_txt VARCHAR(14) NOT NULL,
ADD COLUMN SEX_txt VARCHAR(8) NOT NULL,
ADD COLUMN SAFEQP1_txt VARCHAR(45) NOT NULL,
ADD COLUMN AIRBAG_txt VARCHAR(38) NOT NULL,
ADD COLUMN EJECT_txt VARCHAR(41) NOT NULL,
ADD COLUMN INJSEV_txt VARCHAR(25) NOT NULL,
ADD COLUMN ALCTEST_txt VARCHAR(15) NOT NULL,
ADD COLUMN ALCTYPE_txt VARCHAR(25) NOT NULL,
ADD COLUMN DRUGTEST_txt VARCHAR(19) NOT NULL,
ADD COLUMN DRUGTYPE_txt VARCHAR(15) NOT NULL,
ADD COLUMN METHHOSP_txt VARCHAR(16) NOT NULL,
ADD COLUMN PTYPE_txt VARCHAR(15) NOT NULL,
ADD COLUMN DISTRACT_txt VARCHAR(81) NOT NULL,
ADD COLUMN ALCSUSP_txt VARCHAR(8) NOT NULL,
ADD COLUMN NEWBAC_txt VARCHAR(15) NOT NULL,
ADD COLUMN SPEEDING_txt VARCHAR(24) NOT NULL,
ADD COLUMN CFP1_txt VARCHAR(100) NOT NULL,
ADD COLUMN CFP2_txt VARCHAR(100) NOT NULL,
ADD COLUMN CFP3_txt VARCHAR(100) NOT NULL,
ADD COLUMN CFP4_txt VARCHAR(100) NOT NULL,
ADD COLUMN CHARGED_txt VARCHAR(32) NOT NULL,
ADD COLUMN DLENDOR1_txt VARCHAR(36) NOT NULL,
ADD COLUMN DLENDOR2_txt VARCHAR(36) NOT NULL,
ADD COLUMN DLENDOR3_txt VARCHAR(36) NOT NULL,
ADD COLUMN DLJURIS_txt VARCHAR(42) NOT NULL,
ADD COLUMN DLREST2_txt VARCHAR(40) NOT NULL,
ADD COLUMN DLREST3_txt VARCHAR(40) NOT NULL,
ADD COLUMN DRUGRES_txt VARCHAR(16) NOT NULL,
ADD COLUMN DRUGSUSP_txt VARCHAR(8) NOT NULL,
ADD COLUMN NMLOCTN_txt VARCHAR(34) NOT NULL,
ADD COLUMN PHYSCND2_txt VARCHAR(47) NOT NULL,
ADD COLUMN SAFEQP2_txt VARCHAR(45) NOT NULL
;

ALTER TABLE crash_veh_2022
ADD COLUMN FIRE_txt VARCHAR(15) NOT NULL,
ADD COLUMN TOWAWAY_txt VARCHAR(39) NOT NULL,
ADD COLUMN TRAILER_txt VARCHAR(4) NOT NULL,
ADD COLUMN DIRECTN_txt VARCHAR(15) NOT NULL,
ADD COLUMN EVENT1_txt VARCHAR(77) NOT NULL,
ADD COLUMN EVENT2_txt VARCHAR(77) NOT NULL,
ADD COLUMN EVENT3_txt VARCHAR(77) NOT NULL,
ADD COLUMN EVENT4_txt VARCHAR(77) NOT NULL,
ADD COLUMN MOSTHE_txt VARCHAR(77) NOT NULL,
ADD COLUMN CFV1_txt VARCHAR(43) NOT NULL,
ADD COLUMN CFV2_txt VARCHAR(43) NOT NULL,
ADD COLUMN ACTION_txt VARCHAR(97) NOT NULL,
ADD COLUMN VEHTYPE_txt VARCHAR(63) NOT NULL,
ADD COLUMN VEHUSE_txt VARCHAR(45) NOT NULL,
ADD COLUMN DAMAREA_txt VARCHAR(29) NOT NULL,
ADD COLUMN DAMSEV_txt VARCHAR(22) NOT NULL,
ADD COLUMN CARGOTP_txt VARCHAR(90) NOT NULL,
ADD COLUMN HAZPLAC_txt VARCHAR(8) NOT NULL,
ADD COLUMN WAIVED_txt VARCHAR(24) NOT NULL,
ADD COLUMN RDDES_txt VARCHAR(53) NOT NULL,
ADD COLUMN RDALIGN_txt VARCHAR(12) NOT NULL,
ADD COLUMN RDGRADE_txt VARCHAR(13) NOT NULL,
ADD COLUMN TRFCNTL_txt VARCHAR(48) NOT NULL,
ADD COLUMN WORKING_txt VARCHAR(41) NOT NULL,
ADD COLUMN UNITVEH_txt VARCHAR(87) NOT NULL,
ADD COLUMN BUSTYPE_txt VARCHAR(17) NOT NULL,
ADD COLUMN CMV_txt VARCHAR(4) NOT NULL,
ADD COLUMN CMVCONFIG_txt VARCHAR(60) NOT NULL,
ADD COLUMN CMVCNTRY_txt VARCHAR(14) NOT NULL,
ADD COLUMN CMVSTATE_txt VARCHAR(21) NOT NULL,
ADD COLUMN CMVTYPE_txt VARCHAR(40) NOT NULL,
ADD COLUMN DRCONTRL_txt VARCHAR(8) NOT NULL,
ADD COLUMN EMGUSE_txt VARCHAR(60) NOT NULL,
ADD COLUMN GVWR_txt VARCHAR(21) NOT NULL,
ADD COLUMN HAZREL_txt VARCHAR(15) NOT NULL,
ADD COLUMN HITRUNV_txt VARCHAR(4) NOT NULL,
ADD COLUMN INS_txt VARCHAR(8) NOT NULL,
ADD COLUMN PARKED_txt VARCHAR(52) NOT NULL

;

UPDATE crash_acc_2022 SET ACCDAY_txt = 'SUNDAY' where TRIM(ACCDAY)='1';
UPDATE crash_acc_2022 SET ACCDAY_txt = 'MONDAY' where TRIM(ACCDAY)='2';
UPDATE crash_acc_2022 SET ACCDAY_txt = 'TUESDAY' where TRIM(ACCDAY)='3';
UPDATE crash_acc_2022 SET ACCDAY_txt = 'WEDNESDAY' where TRIM(ACCDAY)='4';
UPDATE crash_acc_2022 SET ACCDAY_txt = 'THURSDAY' where TRIM(ACCDAY)='5';
UPDATE crash_acc_2022 SET ACCDAY_txt = 'FRIDAY' where TRIM(ACCDAY)='6';
UPDATE crash_acc_2022 SET ACCDAY_txt = 'SATURDAY' where TRIM(ACCDAY)='7';
UPDATE crash_acc_2022 SET ACCSEV_txt = 'Fatal' where TRIM(ACCSEV)='1';
UPDATE crash_acc_2022 SET ACCSEV_txt = 'Suspected serious injury' where TRIM(ACCSEV)='2';
UPDATE crash_acc_2022 SET ACCSEV_txt = 'Suspected minor injury' where TRIM(ACCSEV)='3';
UPDATE crash_acc_2022 SET ACCSEV_txt = 'Possible Injury' where TRIM(ACCSEV)='4';
UPDATE crash_acc_2022 SET ACCSEV_txt = 'Property Damage only' where TRIM(ACCSEV)='5';
UPDATE crash_acc_2022 SET ACCTYPE_txt = 'Pedestrian' where TRIM(ACCTYPE)='8';
UPDATE crash_acc_2022 SET ACCTYPE_txt = 'Pedalcycle (Bike)' where TRIM(ACCTYPE)='9';
UPDATE crash_acc_2022 SET ACCTYPE_txt = 'Motor Vehicle in Transport' where TRIM(ACCTYPE)='10';
UPDATE crash_acc_2022 SET ACCTYPE_txt = 'Parked Motor Vehicle' where TRIM(ACCTYPE)='11';
UPDATE crash_acc_2022 SET ACCTYPE_txt = 'Struck by Falling/Shifting Cargo or Anything Set in Motion by Motor Vehicle' where TRIM(ACCTYPE)='12';
UPDATE crash_acc_2022 SET ACCTYPE_txt = 'Train-LRT' where TRIM(ACCTYPE)='13';
UPDATE crash_acc_2022 SET ACCTYPE_txt = 'Train-Passenger' where TRIM(ACCTYPE)='14';
UPDATE crash_acc_2022 SET ACCTYPE_txt = 'Train-Cargo' where TRIM(ACCTYPE)='15';
UPDATE crash_acc_2022 SET ACCTYPE_txt = 'Deer' where TRIM(ACCTYPE)='16';
UPDATE crash_acc_2022 SET ACCTYPE_txt = 'Animal Alive Before Crash' where TRIM(ACCTYPE)='17';
UPDATE crash_acc_2022 SET ACCTYPE_txt = 'Animal Dead Before Crash' where TRIM(ACCTYPE)='18';
UPDATE crash_acc_2022 SET ACCTYPE_txt = 'Light Pole/Utility Pole' where TRIM(ACCTYPE)='28';
UPDATE crash_acc_2022 SET ACCTYPE_txt = 'Traffic Signal or Signal Structure' where TRIM(ACCTYPE)='30';
UPDATE crash_acc_2022 SET ACCTYPE_txt = 'RR / LRT Crossing Device' where TRIM(ACCTYPE)='31';
UPDATE crash_acc_2022 SET ACCTYPE_txt = 'Roadway Sign or Signal Structure' where TRIM(ACCTYPE)='32';
UPDATE crash_acc_2022 SET ACCTYPE_txt = 'Other Post, Pole or Support' where TRIM(ACCTYPE)='35';
UPDATE crash_acc_2022 SET ACCTYPE_txt = 'Construction or Maintenance Equipment' where TRIM(ACCTYPE)='36';
UPDATE crash_acc_2022 SET ACCTYPE_txt = 'Bridge Pier or Support' where TRIM(ACCTYPE)='41';
UPDATE crash_acc_2022 SET ACCTYPE_txt = 'Bridge Overhead Structure' where TRIM(ACCTYPE)='42';
UPDATE crash_acc_2022 SET ACCTYPE_txt = 'Bridge Rail' where TRIM(ACCTYPE)='43';
UPDATE crash_acc_2022 SET ACCTYPE_txt = 'Culvert' where TRIM(ACCTYPE)='46';
UPDATE crash_acc_2022 SET ACCTYPE_txt = 'Curb' where TRIM(ACCTYPE)='47';
UPDATE crash_acc_2022 SET ACCTYPE_txt = 'Ditch' where TRIM(ACCTYPE)='48';
UPDATE crash_acc_2022 SET ACCTYPE_txt = 'Embankment' where TRIM(ACCTYPE)='49';
UPDATE crash_acc_2022 SET ACCTYPE_txt = 'Snowbank' where TRIM(ACCTYPE)='50';
UPDATE crash_acc_2022 SET ACCTYPE_txt = 'Cable Median Barrier' where TRIM(ACCTYPE)='55';
UPDATE crash_acc_2022 SET ACCTYPE_txt = 'Concrete Traffic Barrier' where TRIM(ACCTYPE)='56';
UPDATE crash_acc_2022 SET ACCTYPE_txt = 'Other Traffic Barrier' where TRIM(ACCTYPE)='57';
UPDATE crash_acc_2022 SET ACCTYPE_txt = 'Impact Attenuator / Crash Cushion' where TRIM(ACCTYPE)='60';
UPDATE crash_acc_2022 SET ACCTYPE_txt = 'Guardrail Face' where TRIM(ACCTYPE)='61';
UPDATE crash_acc_2022 SET ACCTYPE_txt = 'Guardrail End' where TRIM(ACCTYPE)='62';
UPDATE crash_acc_2022 SET ACCTYPE_txt = 'Mailboxes/Posts' where TRIM(ACCTYPE)='67';
UPDATE crash_acc_2022 SET ACCTYPE_txt = 'Hydrant' where TRIM(ACCTYPE)='68';
UPDATE crash_acc_2022 SET ACCTYPE_txt = 'Standing Tree/Shrubbery' where TRIM(ACCTYPE)='69';
UPDATE crash_acc_2022 SET ACCTYPE_txt = 'Fence, Not Barrier' where TRIM(ACCTYPE)='70';
UPDATE crash_acc_2022 SET ACCTYPE_txt = 'Parking Meter' where TRIM(ACCTYPE)='71';
UPDATE crash_acc_2022 SET ACCTYPE_txt = 'Other - Fixed Object' where TRIM(ACCTYPE)='75';
UPDATE crash_acc_2022 SET ACCTYPE_txt = 'Unknown' where TRIM(ACCTYPE)='99';
UPDATE crash_acc_2022 SET ACCTYPE_txt = 'Fell/Jumped From Motor Vehicle' where TRIM(ACCTYPE)='34';
UPDATE crash_acc_2022 SET ACCTYPE_txt = 'Thrown or Falling Object' where TRIM(ACCTYPE)='38';
UPDATE crash_acc_2022 SET ACCTYPE_txt = 'Cargo/Equipment Loss or Shift' where TRIM(ACCTYPE)='39';
UPDATE crash_acc_2022 SET ACCTYPE_txt = 'Overturn/Rollover' where TRIM(ACCTYPE)='83';
UPDATE crash_acc_2022 SET ACCTYPE_txt = 'Immersion (Partial or Full)' where TRIM(ACCTYPE)='84';
UPDATE crash_acc_2022 SET ACCTYPE_txt = 'Fire/Explosion' where TRIM(ACCTYPE)='85';
UPDATE crash_acc_2022 SET ACCTYPE_txt = 'Jack Knife' where TRIM(ACCTYPE)='86';
UPDATE crash_acc_2022 SET ACCTYPE_txt = 'Other-Non-Collision' where TRIM(ACCTYPE)='89';
UPDATE crash_acc_2022 SET ACCTYPE_txt = 'Other - Non Fixed Object' where TRIM(ACCTYPE)='25';
UPDATE crash_acc_2022 SET ACCTYPE_txt = 'Other � Non-Motorist' where TRIM(ACCTYPE)='51';
UPDATE crash_veh_2022 SET ACTION_txt = 'Parked/Entering or Leaving a Parked Position' where TRIM(ACTION)='20';
UPDATE crash_veh_2022 SET ACTION_txt = 'Moving Forward' where TRIM(ACTION)='21';
UPDATE crash_veh_2022 SET ACTION_txt = 'Wrong Way into Opposing Traffic' where TRIM(ACTION)='22';
UPDATE crash_veh_2022 SET ACTION_txt = 'Turning Right' where TRIM(ACTION)='23';
UPDATE crash_veh_2022 SET ACTION_txt = 'Turning Left' where TRIM(ACTION)='24';
UPDATE crash_veh_2022 SET ACTION_txt = 'Making a U Turn' where TRIM(ACTION)='25';
UPDATE crash_veh_2022 SET ACTION_txt = 'Slowing' where TRIM(ACTION)='26';
UPDATE crash_veh_2022 SET ACTION_txt = 'Swerved or Attempt to Avoid Object in Roadway (Wind, Slippery Surface, Motor Vehicle, Object, or' where TRIM(ACTION)='27';
UPDATE crash_veh_2022 SET ACTION_txt = 'Changing Lanes' where TRIM(ACTION)='28';
UPDATE crash_veh_2022 SET ACTION_txt = 'Overtaking/Passing' where TRIM(ACTION)='29';
UPDATE crash_veh_2022 SET ACTION_txt = 'Leaving Traffic Lane' where TRIM(ACTION)='30';
UPDATE crash_veh_2022 SET ACTION_txt = 'Entering Traffic Lane' where TRIM(ACTION)='31';
UPDATE crash_veh_2022 SET ACTION_txt = 'Negotiating a Curve' where TRIM(ACTION)='32';
UPDATE crash_veh_2022 SET ACTION_txt = 'Backing' where TRIM(ACTION)='33';
UPDATE crash_veh_2022 SET ACTION_txt = 'Vehicle Stopped or Stalled in Roadway' where TRIM(ACTION)='34';
UPDATE crash_veh_2022 SET ACTION_txt = 'Other' where TRIM(ACTION)='90';
UPDATE crash_veh_2022 SET ACTION_txt = 'Unknown' where TRIM(ACTION)='99';
UPDATE crash_per_2022 SET AIRBAG_txt = 'Deployed-Front' where TRIM(AIRBAG)='5';
UPDATE crash_per_2022 SET AIRBAG_txt = 'Deployed-Side' where TRIM(AIRBAG)='6';
UPDATE crash_per_2022 SET AIRBAG_txt = 'Deployed-Curtain' where TRIM(AIRBAG)='7';
UPDATE crash_per_2022 SET AIRBAG_txt = 'Deployed-Other (Knee, Air Belt, etc.)' where TRIM(AIRBAG)='8';
UPDATE crash_per_2022 SET AIRBAG_txt = 'Deployed Combination' where TRIM(AIRBAG)='9';
UPDATE crash_per_2022 SET AIRBAG_txt = 'Not Deployed' where TRIM(AIRBAG)='10';
UPDATE crash_per_2022 SET AIRBAG_txt = 'Not applicable' where TRIM(AIRBAG)='98';
UPDATE crash_per_2022 SET AIRBAG_txt = 'Unknown' where TRIM(AIRBAG)='99';
UPDATE crash_per_2022 SET ALCSUSP_txt = 'Yes' where TRIM(ALCSUSP)='1';
UPDATE crash_per_2022 SET ALCSUSP_txt = 'No' where TRIM(ALCSUSP)='2';
UPDATE crash_per_2022 SET ALCSUSP_txt = 'Unknown' where TRIM(ALCSUSP)='99';
UPDATE crash_per_2022 SET ALCTEST_txt = 'Test Given' where TRIM(ALCTEST)='1';
UPDATE crash_per_2022 SET ALCTEST_txt = 'Test Not Given' where TRIM(ALCTEST)='2';
UPDATE crash_per_2022 SET ALCTEST_txt = 'Test Refused' where TRIM(ALCTEST)='3';
UPDATE crash_per_2022 SET ALCTEST_txt = 'Unknown' where TRIM(ALCTEST)='99';
UPDATE crash_per_2022 SET ALCTYPE_txt = 'Blood' where TRIM(ALCTYPE)='1';
UPDATE crash_per_2022 SET ALCTYPE_txt = 'Breath PBT' where TRIM(ALCTYPE)='3';
UPDATE crash_per_2022 SET ALCTYPE_txt = 'Urine' where TRIM(ALCTYPE)='4';
UPDATE crash_per_2022 SET ALCTYPE_txt = 'Breath Data Master (DMT)' where TRIM(ALCTYPE)='5';
UPDATE crash_per_2022 SET ALCTYPE_txt = 'Other' where TRIM(ALCTYPE)='90';
UPDATE crash_per_2022 SET ALCTYPE_txt = 'Unknown' where TRIM(ALCTYPE)='99';
UPDATE crash_acc_2022 SET BRIDGE_txt = 'Yes' where TRIM(BRIDGE)='1';
UPDATE crash_acc_2022 SET BRIDGE_txt = 'No' where TRIM(BRIDGE)='2';
UPDATE crash_acc_2022 SET BRIDGE_txt = 'Unknown' where TRIM(BRIDGE)='99';
UPDATE crash_veh_2022 SET BUSTYPE_txt = 'School' where TRIM(BUSTYPE)='2';
UPDATE crash_veh_2022 SET BUSTYPE_txt = 'Transit/Commuter' where TRIM(BUSTYPE)='3';
UPDATE crash_veh_2022 SET BUSTYPE_txt = 'Intercity' where TRIM(BUSTYPE)='4';
UPDATE crash_veh_2022 SET BUSTYPE_txt = 'Charter/Tour' where TRIM(BUSTYPE)='5';
UPDATE crash_veh_2022 SET BUSTYPE_txt = 'Shuttle' where TRIM(BUSTYPE)='6';
UPDATE crash_veh_2022 SET CARGOTP_txt = 'Van/Enclosed Box' where TRIM(CARGOTP)='6';
UPDATE crash_veh_2022 SET CARGOTP_txt = 'Dump' where TRIM(CARGOTP)='8';
UPDATE crash_veh_2022 SET CARGOTP_txt = 'Concrete Mixer' where TRIM(CARGOTP)='9';
UPDATE crash_veh_2022 SET CARGOTP_txt = 'Auto Transporter' where TRIM(CARGOTP)='10';
UPDATE crash_veh_2022 SET CARGOTP_txt = 'Garbage/Refuge' where TRIM(CARGOTP)='11';
UPDATE crash_veh_2022 SET CARGOTP_txt = 'Hopper (Grain/Chips/Gravel)' where TRIM(CARGOTP)='12';
UPDATE crash_veh_2022 SET CARGOTP_txt = 'Pole trailer' where TRIM(CARGOTP)='13';
UPDATE crash_veh_2022 SET CARGOTP_txt = 'Log' where TRIM(CARGOTP)='14';
UPDATE crash_veh_2022 SET CARGOTP_txt = 'Bus (9 to 15 seats including driver)' where TRIM(CARGOTP)='15';
UPDATE crash_veh_2022 SET CARGOTP_txt = 'Intermodal Container Chassis' where TRIM(CARGOTP)='16';
UPDATE crash_veh_2022 SET CARGOTP_txt = 'Vehicle Towing Another Vehicle' where TRIM(CARGOTP)='17';
UPDATE crash_veh_2022 SET CARGOTP_txt = 'No Cargo Body - (Bobtail, Light Motor Vehicle with Hazardous Material (HM) Placard, etc.)' where TRIM(CARGOTP)='18';
UPDATE crash_veh_2022 SET CARGOTP_txt = 'Flatbed' where TRIM(CARGOTP)='19';
UPDATE crash_veh_2022 SET CARGOTP_txt = 'Cargo tank' where TRIM(CARGOTP)='20';
UPDATE crash_veh_2022 SET CARGOTP_txt = 'Bus (more than 15 seats including driver)' where TRIM(CARGOTP)='21';
UPDATE crash_veh_2022 SET CARGOTP_txt = 'Other' where TRIM(CARGOTP)='90';
UPDATE crash_veh_2022 SET CARGOTP_txt = 'Unknown' where TRIM(CARGOTP)='99';
UPDATE crash_per_2022 SET CFP1_txt = 'No Clear Contributing Action' where TRIM(CFP1)='1';
UPDATE crash_per_2022 SET CFP1_txt = 'Following Too Closely' where TRIM(CFP1)='4';
UPDATE crash_per_2022 SET CFP1_txt = 'Improper Backing' where TRIM(CFP1)='11';
UPDATE crash_per_2022 SET CFP1_txt = 'Ran Off Road' where TRIM(CFP1)='62';
UPDATE crash_per_2022 SET CFP1_txt = 'Ran Red Light' where TRIM(CFP1)='63';
UPDATE crash_per_2022 SET CFP1_txt = 'Ran Stop Sign' where TRIM(CFP1)='64';
UPDATE crash_per_2022 SET CFP1_txt = 'Disregard Other Traffic Signs' where TRIM(CFP1)='65';
UPDATE crash_per_2022 SET CFP1_txt = 'Disregard Other Road Markings' where TRIM(CFP1)='66';
UPDATE crash_per_2022 SET CFP1_txt = 'Wrong Side or Wrong Way' where TRIM(CFP1)='67';
UPDATE crash_per_2022 SET CFP1_txt = 'Failed to Keep in Proper Lane' where TRIM(CFP1)='68';
UPDATE crash_per_2022 SET CFP1_txt = 'Operated Motor Vehicle in Reckless or Aggressive Manner' where TRIM(CFP1)='69';
UPDATE crash_per_2022 SET CFP1_txt = 'Operated Motor Vehicle in Careless, Negligent, or Erratic Manner' where TRIM(CFP1)='70';
UPDATE crash_per_2022 SET CFP1_txt = 'Swerved or Avoided Due to Wind, Slippery Surface, Motor Vehicle, Object, Non-Motorist in Roadway, e' where TRIM(CFP1)='71';
UPDATE crash_per_2022 SET CFP1_txt = 'Over-correcting / Over Steering' where TRIM(CFP1)='72';
UPDATE crash_per_2022 SET CFP1_txt = 'Passing on Shoulder' where TRIM(CFP1)='73';
UPDATE crash_per_2022 SET CFP1_txt = 'Driver Distracted' where TRIM(CFP1)='74';
UPDATE crash_per_2022 SET CFP1_txt = 'Driver Speeding' where TRIM(CFP1)='75';
UPDATE crash_per_2022 SET CFP1_txt = 'Failure to Obey Traffic Signs, Signals, or Officer' where TRIM(CFP1)='5';
UPDATE crash_per_2022 SET CFP1_txt = 'Inattentive/Distraction (Talking, Eating, etc.)' where TRIM(CFP1)='15';
UPDATE crash_per_2022 SET CFP1_txt = 'No Improper Action' where TRIM(CFP1)='22';
UPDATE crash_per_2022 SET CFP1_txt = 'Dart/Dash' where TRIM(CFP1)='23';
UPDATE crash_per_2022 SET CFP1_txt = 'In Roadway Improperly (Standing, Lying, Working, Playing)' where TRIM(CFP1)='24';
UPDATE crash_per_2022 SET CFP1_txt = 'Disabled Vehicle Related (Working on, Pushing, Leaving/Approaching' where TRIM(CFP1)='25';
UPDATE crash_per_2022 SET CFP1_txt = 'Not Visible (Dark Clothing, No Lighting, etc.)' where TRIM(CFP1)='26';
UPDATE crash_per_2022 SET CFP1_txt = 'Wrong Way Riding or Walking' where TRIM(CFP1)='27';
UPDATE crash_per_2022 SET CFP1_txt = 'Entering/Exiting Parked/Standing Vehicle' where TRIM(CFP1)='29';
UPDATE crash_per_2022 SET CFP1_txt = 'Failure to Yield Right-of-Way' where TRIM(CFP1)='2';
UPDATE crash_per_2022 SET CFP1_txt = 'Improper Passing' where TRIM(CFP1)='7';
UPDATE crash_per_2022 SET CFP1_txt = 'Improper Turn/Merge' where TRIM(CFP1)='10';
UPDATE crash_per_2022 SET CFP1_txt = 'Other Contributing Action' where TRIM(CFP1)='90';
UPDATE crash_per_2022 SET CFP1_txt = 'Unknown' where TRIM(CFP1)='99';
UPDATE crash_per_2022 SET CFP2_txt = 'No Clear Contributing Action' where TRIM(CFP2)='1';
UPDATE crash_per_2022 SET CFP2_txt = 'Following Too Closely' where TRIM(CFP2)='4';
UPDATE crash_per_2022 SET CFP2_txt = 'Improper Backing' where TRIM(CFP2)='11';
UPDATE crash_per_2022 SET CFP2_txt = 'Ran Off Road' where TRIM(CFP2)='62';
UPDATE crash_per_2022 SET CFP2_txt = 'Ran Red Light' where TRIM(CFP2)='63';
UPDATE crash_per_2022 SET CFP2_txt = 'Ran Stop Sign' where TRIM(CFP2)='64';
UPDATE crash_per_2022 SET CFP2_txt = 'Disregard Other Traffic Signs' where TRIM(CFP2)='65';
UPDATE crash_per_2022 SET CFP2_txt = 'Disregard Other Road Markings' where TRIM(CFP2)='66';
UPDATE crash_per_2022 SET CFP2_txt = 'Wrong Side or Wrong Way' where TRIM(CFP2)='67';
UPDATE crash_per_2022 SET CFP2_txt = 'Failed to Keep in Proper Lane' where TRIM(CFP2)='68';
UPDATE crash_per_2022 SET CFP2_txt = 'Operated Motor Vehicle in Reckless or Aggressive Manner' where TRIM(CFP2)='69';
UPDATE crash_per_2022 SET CFP2_txt = 'Operated Motor Vehicle in Careless, Negligent, or Erratic Manner' where TRIM(CFP2)='70';
UPDATE crash_per_2022 SET CFP2_txt = 'Swerved or Avoided Due to Wind, Slippery Surface, Motor Vehicle, Object, Non-Motorist in Roadway, e' where TRIM(CFP2)='71';
UPDATE crash_per_2022 SET CFP2_txt = 'Over-correcting / Over Steering' where TRIM(CFP2)='72';
UPDATE crash_per_2022 SET CFP2_txt = 'Passing on Shoulder' where TRIM(CFP2)='73';
UPDATE crash_per_2022 SET CFP2_txt = 'Driver Distracted' where TRIM(CFP2)='74';
UPDATE crash_per_2022 SET CFP2_txt = 'Driver Speeding' where TRIM(CFP2)='75';
UPDATE crash_per_2022 SET CFP2_txt = 'Failure to Obey Traffic Signs, Signals, or Officer' where TRIM(CFP2)='5';
UPDATE crash_per_2022 SET CFP2_txt = 'Inattentive/Distraction (Talking, Eating, etc.)' where TRIM(CFP2)='15';
UPDATE crash_per_2022 SET CFP2_txt = 'No Improper Action' where TRIM(CFP2)='22';
UPDATE crash_per_2022 SET CFP2_txt = 'Dart/Dash' where TRIM(CFP2)='23';
UPDATE crash_per_2022 SET CFP2_txt = 'In Roadway Improperly (Standing, Lying, Working, Playing)' where TRIM(CFP2)='24';
UPDATE crash_per_2022 SET CFP2_txt = 'Disabled Vehicle Related (Working on, Pushing, Leaving/Approaching' where TRIM(CFP2)='25';
UPDATE crash_per_2022 SET CFP2_txt = 'Not Visible (Dark Clothing, No Lighting, etc.)' where TRIM(CFP2)='26';
UPDATE crash_per_2022 SET CFP2_txt = 'Wrong Way Riding or Walking' where TRIM(CFP2)='27';
UPDATE crash_per_2022 SET CFP2_txt = 'Entering/Exiting Parked/Standing Vehicle' where TRIM(CFP2)='29';
UPDATE crash_per_2022 SET CFP2_txt = 'Failure to Yield Right-of-Way' where TRIM(CFP2)='2';
UPDATE crash_per_2022 SET CFP2_txt = 'Improper Passing' where TRIM(CFP2)='7';
UPDATE crash_per_2022 SET CFP2_txt = 'Improper Turn/Merge' where TRIM(CFP2)='10';
UPDATE crash_per_2022 SET CFP2_txt = 'Other Contributing Action' where TRIM(CFP2)='90';
UPDATE crash_per_2022 SET CFP2_txt = 'Unknown' where TRIM(CFP2)='99';
UPDATE crash_per_2022 SET CFP3_txt = 'No Clear Contributing Action' where TRIM(CFP3)='1';
UPDATE crash_per_2022 SET CFP3_txt = 'Following Too Closely' where TRIM(CFP3)='4';
UPDATE crash_per_2022 SET CFP3_txt = 'Improper Backing' where TRIM(CFP3)='11';
UPDATE crash_per_2022 SET CFP3_txt = 'Ran Off Road' where TRIM(CFP3)='62';
UPDATE crash_per_2022 SET CFP3_txt = 'Ran Red Light' where TRIM(CFP3)='63';
UPDATE crash_per_2022 SET CFP3_txt = 'Ran Stop Sign' where TRIM(CFP3)='64';
UPDATE crash_per_2022 SET CFP3_txt = 'Disregard Other Traffic Signs' where TRIM(CFP3)='65';
UPDATE crash_per_2022 SET CFP3_txt = 'Disregard Other Road Markings' where TRIM(CFP3)='66';
UPDATE crash_per_2022 SET CFP3_txt = 'Wrong Side or Wrong Way' where TRIM(CFP3)='67';
UPDATE crash_per_2022 SET CFP3_txt = 'Failed to Keep in Proper Lane' where TRIM(CFP3)='68';
UPDATE crash_per_2022 SET CFP3_txt = 'Operated Motor Vehicle in Reckless or Aggressive Manner' where TRIM(CFP3)='69';
UPDATE crash_per_2022 SET CFP3_txt = 'Operated Motor Vehicle in Careless, Negligent, or Erratic Manner' where TRIM(CFP3)='70';
UPDATE crash_per_2022 SET CFP3_txt = 'Swerved or Avoided Due to Wind, Slippery Surface, Motor Vehicle, Object, Non-Motorist in Roadway, e' where TRIM(CFP3)='71';
UPDATE crash_per_2022 SET CFP3_txt = 'Over-correcting / Over Steering' where TRIM(CFP3)='72';
UPDATE crash_per_2022 SET CFP3_txt = 'Passing on Shoulder' where TRIM(CFP3)='73';
UPDATE crash_per_2022 SET CFP3_txt = 'Driver Distracted' where TRIM(CFP3)='74';
UPDATE crash_per_2022 SET CFP3_txt = 'Driver Speeding' where TRIM(CFP3)='75';
UPDATE crash_per_2022 SET CFP3_txt = 'Failure to Obey Traffic Signs, Signals, or Officer' where TRIM(CFP3)='5';
UPDATE crash_per_2022 SET CFP3_txt = 'Inattentive/Distraction (Talking, Eating, etc.)' where TRIM(CFP3)='15';
UPDATE crash_per_2022 SET CFP3_txt = 'No Improper Action' where TRIM(CFP3)='22';
UPDATE crash_per_2022 SET CFP3_txt = 'Dart/Dash' where TRIM(CFP3)='23';
UPDATE crash_per_2022 SET CFP3_txt = 'In Roadway Improperly (Standing, Lying, Working, Playing)' where TRIM(CFP3)='24';
UPDATE crash_per_2022 SET CFP3_txt = 'Disabled Vehicle Related (Working on, Pushing, Leaving/Approaching' where TRIM(CFP3)='25';
UPDATE crash_per_2022 SET CFP3_txt = 'Not Visible (Dark Clothing, No Lighting, etc.)' where TRIM(CFP3)='26';
UPDATE crash_per_2022 SET CFP3_txt = 'Wrong Way Riding or Walking' where TRIM(CFP3)='27';
UPDATE crash_per_2022 SET CFP3_txt = 'Entering/Exiting Parked/Standing Vehicle' where TRIM(CFP3)='29';
UPDATE crash_per_2022 SET CFP3_txt = 'Failure to Yield Right-of-Way' where TRIM(CFP3)='2';
UPDATE crash_per_2022 SET CFP3_txt = 'Improper Passing' where TRIM(CFP3)='7';
UPDATE crash_per_2022 SET CFP3_txt = 'Improper Turn/Merge' where TRIM(CFP3)='10';
UPDATE crash_per_2022 SET CFP3_txt = 'Other Contributing Action' where TRIM(CFP3)='90';
UPDATE crash_per_2022 SET CFP3_txt = 'Unknown' where TRIM(CFP3)='99';
UPDATE crash_per_2022 SET CFP4_txt = 'No Clear Contributing Action' where TRIM(CFP4)='1';
UPDATE crash_per_2022 SET CFP4_txt = 'Following Too Closely' where TRIM(CFP4)='4';
UPDATE crash_per_2022 SET CFP4_txt = 'Improper Backing' where TRIM(CFP4)='11';
UPDATE crash_per_2022 SET CFP4_txt = 'Ran Off Road' where TRIM(CFP4)='62';
UPDATE crash_per_2022 SET CFP4_txt = 'Ran Red Light' where TRIM(CFP4)='63';
UPDATE crash_per_2022 SET CFP4_txt = 'Ran Stop Sign' where TRIM(CFP4)='64';
UPDATE crash_per_2022 SET CFP4_txt = 'Disregard Other Traffic Signs' where TRIM(CFP4)='65';
UPDATE crash_per_2022 SET CFP4_txt = 'Disregard Other Road Markings' where TRIM(CFP4)='66';
UPDATE crash_per_2022 SET CFP4_txt = 'Wrong Side or Wrong Way' where TRIM(CFP4)='67';
UPDATE crash_per_2022 SET CFP4_txt = 'Failed to Keep in Proper Lane' where TRIM(CFP4)='68';
UPDATE crash_per_2022 SET CFP4_txt = 'Operated Motor Vehicle in Reckless or Aggressive Manner' where TRIM(CFP4)='69';
UPDATE crash_per_2022 SET CFP4_txt = 'Operated Motor Vehicle in Careless, Negligent, or Erratic Manner' where TRIM(CFP4)='70';
UPDATE crash_per_2022 SET CFP4_txt = 'Swerved or Avoided Due to Wind, Slippery Surface, Motor Vehicle, Object, Non-Motorist in Roadway, e' where TRIM(CFP4)='71';
UPDATE crash_per_2022 SET CFP4_txt = 'Over-correcting / Over Steering' where TRIM(CFP4)='72';
UPDATE crash_per_2022 SET CFP4_txt = 'Passing on Shoulder' where TRIM(CFP4)='73';
UPDATE crash_per_2022 SET CFP4_txt = 'Driver Distracted' where TRIM(CFP4)='74';
UPDATE crash_per_2022 SET CFP4_txt = 'Driver Speeding' where TRIM(CFP4)='75';
UPDATE crash_per_2022 SET CFP4_txt = 'Failure to Obey Traffic Signs, Signals, or Officer' where TRIM(CFP4)='5';
UPDATE crash_per_2022 SET CFP4_txt = 'Inattentive/Distraction (Talking, Eating, etc.)' where TRIM(CFP4)='15';
UPDATE crash_per_2022 SET CFP4_txt = 'No Improper Action' where TRIM(CFP4)='22';
UPDATE crash_per_2022 SET CFP4_txt = 'Dart/Dash' where TRIM(CFP4)='23';
UPDATE crash_per_2022 SET CFP4_txt = 'In Roadway Improperly (Standing, Lying, Working, Playing)' where TRIM(CFP4)='24';
UPDATE crash_per_2022 SET CFP4_txt = 'Disabled Vehicle Related (Working on, Pushing, Leaving/Approaching' where TRIM(CFP4)='25';
UPDATE crash_per_2022 SET CFP4_txt = 'Not Visible (Dark Clothing, No Lighting, etc.)' where TRIM(CFP4)='26';
UPDATE crash_per_2022 SET CFP4_txt = 'Wrong Way Riding or Walking' where TRIM(CFP4)='27';
UPDATE crash_per_2022 SET CFP4_txt = 'Entering/Exiting Parked/Standing Vehicle' where TRIM(CFP4)='29';
UPDATE crash_per_2022 SET CFP4_txt = 'Failure to Yield Right-of-Way' where TRIM(CFP4)='2';
UPDATE crash_per_2022 SET CFP4_txt = 'Improper Passing' where TRIM(CFP4)='7';
UPDATE crash_per_2022 SET CFP4_txt = 'Improper Turn/Merge' where TRIM(CFP4)='10';
UPDATE crash_per_2022 SET CFP4_txt = 'Other Contributing Action' where TRIM(CFP4)='90';
UPDATE crash_per_2022 SET CFP4_txt = 'Unknown' where TRIM(CFP4)='99';
UPDATE crash_acc_2022 SET CFR1_txt = 'None' where TRIM(CFR1)='1';
UPDATE crash_acc_2022 SET CFR1_txt = 'Road Surface Condition (wet, icy, snow, etc.)' where TRIM(CFR1)='2';
UPDATE crash_acc_2022 SET CFR1_txt = 'Debris' where TRIM(CFR1)='3';
UPDATE crash_acc_2022 SET CFR1_txt = 'Ruts, holes, bumps' where TRIM(CFR1)='4';
UPDATE crash_acc_2022 SET CFR1_txt = 'Work Zone (construction/maintenance/utility' where TRIM(CFR1)='5';
UPDATE crash_acc_2022 SET CFR1_txt = 'Worn, Travel-Polished Surface' where TRIM(CFR1)='6';
UPDATE crash_acc_2022 SET CFR1_txt = 'Obstruction in Roadway' where TRIM(CFR1)='7';
UPDATE crash_acc_2022 SET CFR1_txt = 'Traffic Control Device Inoperative, Missing or Obscured' where TRIM(CFR1)='8';
UPDATE crash_acc_2022 SET CFR1_txt = 'Shoulders (non, low, soft, high)' where TRIM(CFR1)='9';
UPDATE crash_acc_2022 SET CFR1_txt = 'Non-Highway Work' where TRIM(CFR1)='10';
UPDATE crash_acc_2022 SET CFR1_txt = 'Congestion Backup Due to Prior Crash' where TRIM(CFR1)='11';
UPDATE crash_acc_2022 SET CFR1_txt = 'Congestion Backup Due to Non-recurring Incident' where TRIM(CFR1)='12';
UPDATE crash_acc_2022 SET CFR1_txt = 'Congestion Backup Other' where TRIM(CFR1)='13';
UPDATE crash_acc_2022 SET CFR1_txt = 'HOV/HOT/MnPASS/Carpool/Toll Lane' where TRIM(CFR1)='14';
UPDATE crash_acc_2022 SET CFR1_txt = 'Other' where TRIM(CFR1)='90';
UPDATE crash_acc_2022 SET CFR1_txt = 'Unknown' where TRIM(CFR1)='99';
UPDATE crash_acc_2022 SET CFR2_txt = 'None' where TRIM(CFR2)='1';
UPDATE crash_acc_2022 SET CFR2_txt = 'Road Surface Condition (wet, icy, snow, etc.)' where TRIM(CFR2)='2';
UPDATE crash_acc_2022 SET CFR2_txt = 'Debris' where TRIM(CFR2)='3';
UPDATE crash_acc_2022 SET CFR2_txt = 'Ruts, holes, bumps' where TRIM(CFR2)='4';
UPDATE crash_acc_2022 SET CFR2_txt = 'Work Zone (construction/maintenance/utility' where TRIM(CFR2)='5';
UPDATE crash_acc_2022 SET CFR2_txt = 'Worn, Travel-Polished Surface' where TRIM(CFR2)='6';
UPDATE crash_acc_2022 SET CFR2_txt = 'Obstruction in Roadway' where TRIM(CFR2)='7';
UPDATE crash_acc_2022 SET CFR2_txt = 'Traffic Control Device Inoperative, Missing or Obscured' where TRIM(CFR2)='8';
UPDATE crash_acc_2022 SET CFR2_txt = 'Shoulders (non, low, soft, high)' where TRIM(CFR2)='9';
UPDATE crash_acc_2022 SET CFR2_txt = 'Non-Highway Work' where TRIM(CFR2)='10';
UPDATE crash_acc_2022 SET CFR2_txt = 'Congestion Backup Due to Prior Crash' where TRIM(CFR2)='11';
UPDATE crash_acc_2022 SET CFR2_txt = 'Congestion Backup Due to Non-recurring Incident' where TRIM(CFR2)='12';
UPDATE crash_acc_2022 SET CFR2_txt = 'Congestion Backup Other' where TRIM(CFR2)='13';
UPDATE crash_acc_2022 SET CFR2_txt = 'HOV/HOT/MnPASS/Carpool/Toll Lane' where TRIM(CFR2)='14';
UPDATE crash_acc_2022 SET CFR2_txt = 'Other' where TRIM(CFR2)='90';
UPDATE crash_acc_2022 SET CFR2_txt = 'Unknown' where TRIM(CFR2)='99';
UPDATE crash_veh_2022 SET CFV1_txt = 'No Clear Contributing Factor' where TRIM(CFV1)='10';
UPDATE crash_veh_2022 SET CFV1_txt = 'Defective Brakes' where TRIM(CFV1)='11';
UPDATE crash_veh_2022 SET CFV1_txt = 'Defective Tire or Tire Failure' where TRIM(CFV1)='12';
UPDATE crash_veh_2022 SET CFV1_txt = 'Defective Lights (Head, Signal, Tail)' where TRIM(CFV1)='13';
UPDATE crash_veh_2022 SET CFV1_txt = 'Defective Windows/Windshield Glass' where TRIM(CFV1)='14';
UPDATE crash_veh_2022 SET CFV1_txt = 'Oversize/Overweight Trucks' where TRIM(CFV1)='15';
UPDATE crash_veh_2022 SET CFV1_txt = 'Vision Obscured' where TRIM(CFV1)='16';
UPDATE crash_veh_2022 SET CFV1_txt = 'Defective Exhaust System' where TRIM(CFV1)='17';
UPDATE crash_veh_2022 SET CFV1_txt = 'Defective Body, Doors' where TRIM(CFV1)='18';
UPDATE crash_veh_2022 SET CFV1_txt = 'Defective Power Train' where TRIM(CFV1)='19';
UPDATE crash_veh_2022 SET CFV1_txt = 'Defective Suspension' where TRIM(CFV1)='20';
UPDATE crash_veh_2022 SET CFV1_txt = 'Defective Wheels' where TRIM(CFV1)='21';
UPDATE crash_veh_2022 SET CFV1_txt = 'Defective Mirrors' where TRIM(CFV1)='22';
UPDATE crash_veh_2022 SET CFV1_txt = 'Defective Wipers' where TRIM(CFV1)='23';
UPDATE crash_veh_2022 SET CFV1_txt = 'Defective Steering' where TRIM(CFV1)='24';
UPDATE crash_veh_2022 SET CFV1_txt = 'Truck Coupling/Trailer Hitch/Safety Chains' where TRIM(CFV1)='25';
UPDATE crash_veh_2022 SET CFV1_txt = 'Other' where TRIM(CFV1)='90';
UPDATE crash_veh_2022 SET CFV1_txt = 'Unknown' where TRIM(CFV1)='99';
UPDATE crash_veh_2022 SET CFV2_txt = 'No Clear Contributing Factor' where TRIM(CFV2)='10';
UPDATE crash_veh_2022 SET CFV2_txt = 'Defective Brakes' where TRIM(CFV2)='11';
UPDATE crash_veh_2022 SET CFV2_txt = 'Defective Tire or Tire Failure' where TRIM(CFV2)='12';
UPDATE crash_veh_2022 SET CFV2_txt = 'Defective Lights (Head, Signal, Tail)' where TRIM(CFV2)='13';
UPDATE crash_veh_2022 SET CFV2_txt = 'Defective Windows/Windshield Glass' where TRIM(CFV2)='14';
UPDATE crash_veh_2022 SET CFV2_txt = 'Oversize/Overweight Trucks' where TRIM(CFV2)='15';
UPDATE crash_veh_2022 SET CFV2_txt = 'Vision Obscured' where TRIM(CFV2)='16';
UPDATE crash_veh_2022 SET CFV2_txt = 'Defective Exhaust System' where TRIM(CFV2)='17';
UPDATE crash_veh_2022 SET CFV2_txt = 'Defective Body, Doors' where TRIM(CFV2)='18';
UPDATE crash_veh_2022 SET CFV2_txt = 'Defective Power Train' where TRIM(CFV2)='19';
UPDATE crash_veh_2022 SET CFV2_txt = 'Defective Suspension' where TRIM(CFV2)='20';
UPDATE crash_veh_2022 SET CFV2_txt = 'Defective Wheels' where TRIM(CFV2)='21';
UPDATE crash_veh_2022 SET CFV2_txt = 'Defective Mirrors' where TRIM(CFV2)='22';
UPDATE crash_veh_2022 SET CFV2_txt = 'Defective Wipers' where TRIM(CFV2)='23';
UPDATE crash_veh_2022 SET CFV2_txt = 'Defective Steering' where TRIM(CFV2)='24';
UPDATE crash_veh_2022 SET CFV2_txt = 'Truck Coupling/Trailer Hitch/Safety Chains' where TRIM(CFV2)='25';
UPDATE crash_veh_2022 SET CFV2_txt = 'Other' where TRIM(CFV2)='90';
UPDATE crash_veh_2022 SET CFV2_txt = 'Unknown' where TRIM(CFV2)='99';


UPDATE crash_per_2022 SET CHARGED_txt = 'Reckless/Hit & Run' where TRIM(CHARGED)='1';
UPDATE crash_per_2022 SET CHARGED_txt = 'Impairment' where TRIM(CHARGED)='2';
UPDATE crash_per_2022 SET CHARGED_txt = 'Speed' where TRIM(CHARGED)='3';
UPDATE crash_per_2022 SET CHARGED_txt = 'Equipment' where TRIM(CHARGED)='4';
UPDATE crash_per_2022 SET CHARGED_txt = 'Turning/Yielding/Signaling' where TRIM(CHARGED)='5';
UPDATE crash_per_2022 SET CHARGED_txt = 'Lane Usage' where TRIM(CHARGED)='6';
UPDATE crash_per_2022 SET CHARGED_txt = 'Wrong Side/Passing/Following' where TRIM(CHARGED)='7';
UPDATE crash_per_2022 SET CHARGED_txt = 'Traffic Signs/Signals' where TRIM(CHARGED)='8';
UPDATE crash_per_2022 SET CHARGED_txt = 'Non-Moving-License & Regulation' where TRIM(CHARGED)='9';
UPDATE crash_per_2022 SET CHARGED_txt = 'Violation' where TRIM(CHARGED)='10';
UPDATE crash_per_2022 SET CHARGED_txt = 'Other' where TRIM(CHARGED)='90';
UPDATE crash_per_2022 SET CHARGED_txt = 'Unknown' where TRIM(CHARGED)='99';


UPDATE crash_acc_2022 SET CITYTWP_txt = 'City' where TRIM(CITYTWP)='C';
UPDATE crash_acc_2022 SET CITYTWP_txt = 'Township' where TRIM(CITYTWP)='T';
UPDATE crash_veh_2022 SET CMV_txt = 'Yes' where TRIM(CMV)='1';
UPDATE crash_veh_2022 SET CMV_txt = 'No' where TRIM(CMV)='2';
UPDATE crash_veh_2022 SET CMVCNTRY_txt = 'Canada' where TRIM(CMVCNTRY)='CA';
UPDATE crash_veh_2022 SET CMVCNTRY_txt = 'Mexico' where TRIM(CMVCNTRY)='MX';
UPDATE crash_veh_2022 SET CMVCNTRY_txt = 'United States' where TRIM(CMVCNTRY)='US';
UPDATE crash_veh_2022 SET CMVCONFIG_txt = 'Vehicle 10,000lbs or Less Placarded For Hazardous Materials' where TRIM(CMVCONFIG)='1';
UPDATE crash_veh_2022 SET CMVCONFIG_txt = 'Single-unit truck (2-axle & GVWR > 10,000lbs)' where TRIM(CMVCONFIG)='2';
UPDATE crash_veh_2022 SET CMVCONFIG_txt = 'Single-unit truck (3 or more axles)' where TRIM(CMVCONFIG)='3';
UPDATE crash_veh_2022 SET CMVCONFIG_txt = 'Truck pulling trailer(s)' where TRIM(CMVCONFIG)='4';
UPDATE crash_veh_2022 SET CMVCONFIG_txt = 'Truck tractor with no trailer (Bobtail)' where TRIM(CMVCONFIG)='5';
UPDATE crash_veh_2022 SET CMVCONFIG_txt = 'Truck tractor semi-trailer' where TRIM(CMVCONFIG)='6';
UPDATE crash_veh_2022 SET CMVCONFIG_txt = 'Truck tractor double trailer' where TRIM(CMVCONFIG)='7';
UPDATE crash_veh_2022 SET CMVCONFIG_txt = 'Truck tractor triple trailer' where TRIM(CMVCONFIG)='8';
UPDATE crash_veh_2022 SET CMVCONFIG_txt = 'Truck > 10,000lbs, cannot classify' where TRIM(CMVCONFIG)='9';
UPDATE crash_veh_2022 SET CMVCONFIG_txt = 'Bus or Large Van (9 -- 15 Occupants, Including Driver)' where TRIM(CMVCONFIG)='10';
UPDATE crash_veh_2022 SET CMVCONFIG_txt = 'Bus (16 + Occupants, Including Driver)' where TRIM(CMVCONFIG)='11';
UPDATE crash_veh_2022 SET CMVCONFIG_txt = 'Single Unit Truck/Pickup < 10,000 GVWR' where TRIM(CMVCONFIG)='20';
UPDATE crash_veh_2022 SET CMVCONFIG_txt = 'Single Unit Truck/Pickup > 10,000 GVWR NONBUSINESS use' where TRIM(CMVCONFIG)='21';
UPDATE crash_veh_2022 SET CMVCONFIG_txt = 'Single Unit Truck/Pickup > 10,000 GVWR BUSINESS use' where TRIM(CMVCONFIG)='22';
UPDATE crash_veh_2022 SET CMVCONFIG_txt = 'Truck Tractor, Overweight/Oversized' where TRIM(CMVCONFIG)='23';
UPDATE crash_veh_2022 SET CMVSTATE_txt = 'Alberta' where TRIM(CMVSTATE)='AB';
UPDATE crash_veh_2022 SET CMVSTATE_txt = 'Aguascalientes' where TRIM(CMVSTATE)='AG';
UPDATE crash_veh_2022 SET CMVSTATE_txt = 'British Columbia' where TRIM(CMVSTATE)='BC';
UPDATE crash_veh_2022 SET CMVSTATE_txt = 'Baja California' where TRIM(CMVSTATE)='BN';
UPDATE crash_veh_2022 SET CMVSTATE_txt = 'Baja California Sur' where TRIM(CMVSTATE)='BS';
UPDATE crash_veh_2022 SET CMVSTATE_txt = 'Chihuahua' where TRIM(CMVSTATE)='CH';
UPDATE crash_veh_2022 SET CMVSTATE_txt = 'Colima' where TRIM(CMVSTATE)='CL';
UPDATE crash_veh_2022 SET CMVSTATE_txt = 'Campeche' where TRIM(CMVSTATE)='CM';
UPDATE crash_veh_2022 SET CMVSTATE_txt = 'Chiapas' where TRIM(CMVSTATE)='CP';
UPDATE crash_veh_2022 SET CMVSTATE_txt = 'Coahuila' where TRIM(CMVSTATE)='CU';
UPDATE crash_veh_2022 SET CMVSTATE_txt = 'Federal District' where TRIM(CMVSTATE)='DF';
UPDATE crash_veh_2022 SET CMVSTATE_txt = 'Durango' where TRIM(CMVSTATE)='DU';
UPDATE crash_veh_2022 SET CMVSTATE_txt = 'Guerrero' where TRIM(CMVSTATE)='GR';
UPDATE crash_veh_2022 SET CMVSTATE_txt = 'Guanajuato' where TRIM(CMVSTATE)='GT';
UPDATE crash_veh_2022 SET CMVSTATE_txt = 'Hidalgo' where TRIM(CMVSTATE)='HD';
UPDATE crash_veh_2022 SET CMVSTATE_txt = 'Jalisco' where TRIM(CMVSTATE)='JA';
UPDATE crash_veh_2022 SET CMVSTATE_txt = 'Manitoba' where TRIM(CMVSTATE)='MB';
UPDATE crash_veh_2022 SET CMVSTATE_txt = 'Michoac�n' where TRIM(CMVSTATE)='MC';
UPDATE crash_veh_2022 SET CMVSTATE_txt = 'Morelos' where TRIM(CMVSTATE)='MR';
UPDATE crash_veh_2022 SET CMVSTATE_txt = 'M�xico City' where TRIM(CMVSTATE)='MX';
UPDATE crash_veh_2022 SET CMVSTATE_txt = 'Nayarit' where TRIM(CMVSTATE)='NA';
UPDATE crash_veh_2022 SET CMVSTATE_txt = 'Newfoundland' where TRIM(CMVSTATE)='NF';
UPDATE crash_veh_2022 SET CMVSTATE_txt = 'New Brunswick' where TRIM(CMVSTATE)='NK';
UPDATE crash_veh_2022 SET CMVSTATE_txt = 'Nuevo Le�n' where TRIM(CMVSTATE)='NL';
UPDATE crash_veh_2022 SET CMVSTATE_txt = 'Nova Scotia' where TRIM(CMVSTATE)='NS';
UPDATE crash_veh_2022 SET CMVSTATE_txt = 'Northwest Terr' where TRIM(CMVSTATE)='NT';
UPDATE crash_veh_2022 SET CMVSTATE_txt = 'Nunavut' where TRIM(CMVSTATE)='NU';
UPDATE crash_veh_2022 SET CMVSTATE_txt = 'Oaxaca' where TRIM(CMVSTATE)='OA';
UPDATE crash_veh_2022 SET CMVSTATE_txt = 'Ontario' where TRIM(CMVSTATE)='ON';
UPDATE crash_veh_2022 SET CMVSTATE_txt = 'Prince Edw Island' where TRIM(CMVSTATE)='PE';
UPDATE crash_veh_2022 SET CMVSTATE_txt = 'Puebla' where TRIM(CMVSTATE)='PU';
UPDATE crash_veh_2022 SET CMVSTATE_txt = 'Quebec' where TRIM(CMVSTATE)='QC';
UPDATE crash_veh_2022 SET CMVSTATE_txt = 'Quer�taro' where TRIM(CMVSTATE)='QE';
UPDATE crash_veh_2022 SET CMVSTATE_txt = 'Quintana Roo' where TRIM(CMVSTATE)='QR';
UPDATE crash_veh_2022 SET CMVSTATE_txt = 'Sinaloa' where TRIM(CMVSTATE)='SI';
UPDATE crash_veh_2022 SET CMVSTATE_txt = 'Saskatchewan' where TRIM(CMVSTATE)='SK';
UPDATE crash_veh_2022 SET CMVSTATE_txt = 'San Luis Potos�' where TRIM(CMVSTATE)='SL';
UPDATE crash_veh_2022 SET CMVSTATE_txt = 'Sonora' where TRIM(CMVSTATE)='SO';
UPDATE crash_veh_2022 SET CMVSTATE_txt = 'Tabasco' where TRIM(CMVSTATE)='TB';
UPDATE crash_veh_2022 SET CMVSTATE_txt = 'Tlaxcala' where TRIM(CMVSTATE)='TL';
UPDATE crash_veh_2022 SET CMVSTATE_txt = 'Tamaulipas' where TRIM(CMVSTATE)='TM';
UPDATE crash_veh_2022 SET CMVSTATE_txt = 'Veracruz' where TRIM(CMVSTATE)='VE';
UPDATE crash_veh_2022 SET CMVSTATE_txt = 'Vermont' where TRIM(CMVSTATE)='VT';
UPDATE crash_veh_2022 SET CMVSTATE_txt = 'Washington' where TRIM(CMVSTATE)='WA';
UPDATE crash_veh_2022 SET CMVSTATE_txt = 'Yukon' where TRIM(CMVSTATE)='YT';
UPDATE crash_veh_2022 SET CMVSTATE_txt = 'Yucat�n' where TRIM(CMVSTATE)='YU';
UPDATE crash_veh_2022 SET CMVSTATE_txt = 'Outside Us/Can' where TRIM(CMVSTATE)='YY';
UPDATE crash_veh_2022 SET CMVSTATE_txt = 'Zacatecas' where TRIM(CMVSTATE)='ZA';
UPDATE crash_veh_2022 SET CMVSTATE_txt = 'Alabama' where TRIM(CMVSTATE)='AL';
UPDATE crash_veh_2022 SET CMVSTATE_txt = 'Alaska' where TRIM(CMVSTATE)='AK';
UPDATE crash_veh_2022 SET CMVSTATE_txt = 'Arizona' where TRIM(CMVSTATE)='AZ';
UPDATE crash_veh_2022 SET CMVSTATE_txt = 'Arkansas' where TRIM(CMVSTATE)='AR';
UPDATE crash_veh_2022 SET CMVSTATE_txt = 'California' where TRIM(CMVSTATE)='CA';
UPDATE crash_veh_2022 SET CMVSTATE_txt = 'Colorado' where TRIM(CMVSTATE)='CO';
UPDATE crash_veh_2022 SET CMVSTATE_txt = 'Connecticut' where TRIM(CMVSTATE)='CT';
UPDATE crash_veh_2022 SET CMVSTATE_txt = 'Delaware' where TRIM(CMVSTATE)='DE';
UPDATE crash_veh_2022 SET CMVSTATE_txt = 'District of Columbia' where TRIM(CMVSTATE)='DC';
UPDATE crash_veh_2022 SET CMVSTATE_txt = 'Florida' where TRIM(CMVSTATE)='FL';
UPDATE crash_veh_2022 SET CMVSTATE_txt = 'Georgia' where TRIM(CMVSTATE)='GA';
UPDATE crash_veh_2022 SET CMVSTATE_txt = 'Hawaii' where TRIM(CMVSTATE)='HI';
UPDATE crash_veh_2022 SET CMVSTATE_txt = 'Idaho' where TRIM(CMVSTATE)='ID';
UPDATE crash_veh_2022 SET CMVSTATE_txt = 'Illinois' where TRIM(CMVSTATE)='IL';
UPDATE crash_veh_2022 SET CMVSTATE_txt = 'Indiana' where TRIM(CMVSTATE)='IN';
UPDATE crash_veh_2022 SET CMVSTATE_txt = 'Iowa' where TRIM(CMVSTATE)='IA';
UPDATE crash_veh_2022 SET CMVSTATE_txt = 'Kansas' where TRIM(CMVSTATE)='KS';
UPDATE crash_veh_2022 SET CMVSTATE_txt = 'Kentucky' where TRIM(CMVSTATE)='KY';
UPDATE crash_veh_2022 SET CMVSTATE_txt = 'Louisiana' where TRIM(CMVSTATE)='LA';
UPDATE crash_veh_2022 SET CMVSTATE_txt = 'Maine' where TRIM(CMVSTATE)='ME';
UPDATE crash_veh_2022 SET CMVSTATE_txt = 'Maryland' where TRIM(CMVSTATE)='MD';
UPDATE crash_veh_2022 SET CMVSTATE_txt = 'Massachusetts' where TRIM(CMVSTATE)='MA';
UPDATE crash_veh_2022 SET CMVSTATE_txt = 'Michigan' where TRIM(CMVSTATE)='MI';
UPDATE crash_veh_2022 SET CMVSTATE_txt = 'Minnesota' where TRIM(CMVSTATE)='MN';
UPDATE crash_veh_2022 SET CMVSTATE_txt = 'Mississippi' where TRIM(CMVSTATE)='MS';
UPDATE crash_veh_2022 SET CMVSTATE_txt = 'Missouri' where TRIM(CMVSTATE)='MO';
UPDATE crash_veh_2022 SET CMVSTATE_txt = 'Montana' where TRIM(CMVSTATE)='MT';
UPDATE crash_veh_2022 SET CMVSTATE_txt = 'Nebraska' where TRIM(CMVSTATE)='NE';
UPDATE crash_veh_2022 SET CMVSTATE_txt = 'Nevada' where TRIM(CMVSTATE)='NV';
UPDATE crash_veh_2022 SET CMVSTATE_txt = 'New Hampshire' where TRIM(CMVSTATE)='NH';
UPDATE crash_veh_2022 SET CMVSTATE_txt = 'New Jersey' where TRIM(CMVSTATE)='NJ';
UPDATE crash_veh_2022 SET CMVSTATE_txt = 'New Mexico' where TRIM(CMVSTATE)='NM';
UPDATE crash_veh_2022 SET CMVSTATE_txt = 'New York' where TRIM(CMVSTATE)='NY';
UPDATE crash_veh_2022 SET CMVSTATE_txt = 'North Carolina' where TRIM(CMVSTATE)='NC';
UPDATE crash_veh_2022 SET CMVSTATE_txt = 'North Dakota' where TRIM(CMVSTATE)='ND';
UPDATE crash_veh_2022 SET CMVSTATE_txt = 'Ohio' where TRIM(CMVSTATE)='OH';
UPDATE crash_veh_2022 SET CMVSTATE_txt = 'Oklahoma' where TRIM(CMVSTATE)='OK';
UPDATE crash_veh_2022 SET CMVSTATE_txt = 'Oregon' where TRIM(CMVSTATE)='OR';
UPDATE crash_veh_2022 SET CMVSTATE_txt = 'Pennsylvania' where TRIM(CMVSTATE)='PA';
UPDATE crash_veh_2022 SET CMVSTATE_txt = 'Rhode Island' where TRIM(CMVSTATE)='RI';
UPDATE crash_veh_2022 SET CMVSTATE_txt = 'South Carolina' where TRIM(CMVSTATE)='SC';
UPDATE crash_veh_2022 SET CMVSTATE_txt = 'South Dakota' where TRIM(CMVSTATE)='SD';
UPDATE crash_veh_2022 SET CMVSTATE_txt = 'Tennessee' where TRIM(CMVSTATE)='TN';
UPDATE crash_veh_2022 SET CMVSTATE_txt = 'Texas' where TRIM(CMVSTATE)='TX';
UPDATE crash_veh_2022 SET CMVSTATE_txt = 'Utah' where TRIM(CMVSTATE)='UT';
UPDATE crash_veh_2022 SET CMVSTATE_txt = 'Vermont' where TRIM(CMVSTATE)='VT';
UPDATE crash_veh_2022 SET CMVSTATE_txt = 'Virginia' where TRIM(CMVSTATE)='VA';
UPDATE crash_veh_2022 SET CMVSTATE_txt = 'Washington' where TRIM(CMVSTATE)='WA';
UPDATE crash_veh_2022 SET CMVSTATE_txt = 'West Virginia' where TRIM(CMVSTATE)='WV';
UPDATE crash_veh_2022 SET CMVSTATE_txt = 'Wisconsin' where TRIM(CMVSTATE)='WI';
UPDATE crash_veh_2022 SET CMVSTATE_txt = 'Wyoming' where TRIM(CMVSTATE)='WY';
UPDATE crash_veh_2022 SET CMVTYPE_txt = 'Interstate carrier' where TRIM(CMVTYPE)='1';
UPDATE crash_veh_2022 SET CMVTYPE_txt = 'Intrastate carrier' where TRIM(CMVTYPE)='2';
UPDATE crash_veh_2022 SET CMVTYPE_txt = 'Government vehicle (non-commercial use)' where TRIM(CMVTYPE)='3';
UPDATE crash_veh_2022 SET CMVTYPE_txt = 'Other vehicle (non-commercial use)' where TRIM(CMVTYPE)='4';
UPDATE crash_acc_2022 SET COUNTY_txt = 'Aitkin' where TRIM(COUNTY)='1';
UPDATE crash_acc_2022 SET COUNTY_txt = 'Anoka' where TRIM(COUNTY)='2';
UPDATE crash_acc_2022 SET COUNTY_txt = 'Becker' where TRIM(COUNTY)='3';
UPDATE crash_acc_2022 SET COUNTY_txt = 'Beltrami' where TRIM(COUNTY)='4';
UPDATE crash_acc_2022 SET COUNTY_txt = 'Benton' where TRIM(COUNTY)='5';
UPDATE crash_acc_2022 SET COUNTY_txt = 'Big Stone' where TRIM(COUNTY)='6';
UPDATE crash_acc_2022 SET COUNTY_txt = 'Blue Earth' where TRIM(COUNTY)='7';
UPDATE crash_acc_2022 SET COUNTY_txt = 'Brown' where TRIM(COUNTY)='8';
UPDATE crash_acc_2022 SET COUNTY_txt = 'Carlton' where TRIM(COUNTY)='9';
UPDATE crash_acc_2022 SET COUNTY_txt = 'Carver' where TRIM(COUNTY)='10';
UPDATE crash_acc_2022 SET COUNTY_txt = 'Cass' where TRIM(COUNTY)='11';
UPDATE crash_acc_2022 SET COUNTY_txt = 'Chippewa' where TRIM(COUNTY)='12';
UPDATE crash_acc_2022 SET COUNTY_txt = 'Chisago' where TRIM(COUNTY)='13';
UPDATE crash_acc_2022 SET COUNTY_txt = 'Clay' where TRIM(COUNTY)='14';
UPDATE crash_acc_2022 SET COUNTY_txt = 'Clearwater' where TRIM(COUNTY)='15';
UPDATE crash_acc_2022 SET COUNTY_txt = 'Cook' where TRIM(COUNTY)='16';
UPDATE crash_acc_2022 SET COUNTY_txt = 'Cottonwood' where TRIM(COUNTY)='17';
UPDATE crash_acc_2022 SET COUNTY_txt = 'Crow Wing' where TRIM(COUNTY)='18';
UPDATE crash_acc_2022 SET COUNTY_txt = 'Dakota' where TRIM(COUNTY)='19';
UPDATE crash_acc_2022 SET COUNTY_txt = 'Dodge' where TRIM(COUNTY)='20';
UPDATE crash_acc_2022 SET COUNTY_txt = 'Douglas' where TRIM(COUNTY)='21';
UPDATE crash_acc_2022 SET COUNTY_txt = 'Faribault' where TRIM(COUNTY)='22';
UPDATE crash_acc_2022 SET COUNTY_txt = 'Fillmore' where TRIM(COUNTY)='23';
UPDATE crash_acc_2022 SET COUNTY_txt = 'Freeborn' where TRIM(COUNTY)='24';
UPDATE crash_acc_2022 SET COUNTY_txt = 'Goodhue' where TRIM(COUNTY)='25';
UPDATE crash_acc_2022 SET COUNTY_txt = 'Grant' where TRIM(COUNTY)='26';
UPDATE crash_acc_2022 SET COUNTY_txt = 'Hennepin' where TRIM(COUNTY)='27';
UPDATE crash_acc_2022 SET COUNTY_txt = 'Houston' where TRIM(COUNTY)='28';
UPDATE crash_acc_2022 SET COUNTY_txt = 'Hubbard' where TRIM(COUNTY)='29';
UPDATE crash_acc_2022 SET COUNTY_txt = 'Isanti' where TRIM(COUNTY)='30';
UPDATE crash_acc_2022 SET COUNTY_txt = 'Itasca' where TRIM(COUNTY)='31';
UPDATE crash_acc_2022 SET COUNTY_txt = 'Jackson' where TRIM(COUNTY)='32';
UPDATE crash_acc_2022 SET COUNTY_txt = 'Kanabec' where TRIM(COUNTY)='33';
UPDATE crash_acc_2022 SET COUNTY_txt = 'Kandiyohi' where TRIM(COUNTY)='34';
UPDATE crash_acc_2022 SET COUNTY_txt = 'Kittson' where TRIM(COUNTY)='35';
UPDATE crash_acc_2022 SET COUNTY_txt = 'Koochiching' where TRIM(COUNTY)='36';
UPDATE crash_acc_2022 SET COUNTY_txt = 'Lac Qui Parle' where TRIM(COUNTY)='37';
UPDATE crash_acc_2022 SET COUNTY_txt = 'Lake' where TRIM(COUNTY)='38';
UPDATE crash_acc_2022 SET COUNTY_txt = 'Lake of the Woods' where TRIM(COUNTY)='39';
UPDATE crash_acc_2022 SET COUNTY_txt = 'Le Sueur' where TRIM(COUNTY)='40';
UPDATE crash_acc_2022 SET COUNTY_txt = 'Lincoln' where TRIM(COUNTY)='41';
UPDATE crash_acc_2022 SET COUNTY_txt = 'Lyon' where TRIM(COUNTY)='42';
UPDATE crash_acc_2022 SET COUNTY_txt = 'McLeod' where TRIM(COUNTY)='43';
UPDATE crash_acc_2022 SET COUNTY_txt = 'Mahnomen' where TRIM(COUNTY)='44';
UPDATE crash_acc_2022 SET COUNTY_txt = 'Marshall' where TRIM(COUNTY)='45';
UPDATE crash_acc_2022 SET COUNTY_txt = 'Martin' where TRIM(COUNTY)='46';
UPDATE crash_acc_2022 SET COUNTY_txt = 'Meeker' where TRIM(COUNTY)='47';
UPDATE crash_acc_2022 SET COUNTY_txt = 'Mille Lacs' where TRIM(COUNTY)='48';
UPDATE crash_acc_2022 SET COUNTY_txt = 'Morrison' where TRIM(COUNTY)='49';
UPDATE crash_acc_2022 SET COUNTY_txt = 'Mower' where TRIM(COUNTY)='50';
UPDATE crash_acc_2022 SET COUNTY_txt = 'Murray' where TRIM(COUNTY)='51';
UPDATE crash_acc_2022 SET COUNTY_txt = 'Nicollet' where TRIM(COUNTY)='52';
UPDATE crash_acc_2022 SET COUNTY_txt = 'Nobles' where TRIM(COUNTY)='53';
UPDATE crash_acc_2022 SET COUNTY_txt = 'Norman' where TRIM(COUNTY)='54';
UPDATE crash_acc_2022 SET COUNTY_txt = 'Olmsted' where TRIM(COUNTY)='55';
UPDATE crash_acc_2022 SET COUNTY_txt = 'Otter Tail' where TRIM(COUNTY)='56';
UPDATE crash_acc_2022 SET COUNTY_txt = 'Pennington' where TRIM(COUNTY)='57';
UPDATE crash_acc_2022 SET COUNTY_txt = 'Pine' where TRIM(COUNTY)='58';
UPDATE crash_acc_2022 SET COUNTY_txt = 'Pipestone' where TRIM(COUNTY)='59';
UPDATE crash_acc_2022 SET COUNTY_txt = 'Polk' where TRIM(COUNTY)='60';
UPDATE crash_acc_2022 SET COUNTY_txt = 'Pope' where TRIM(COUNTY)='61';
UPDATE crash_acc_2022 SET COUNTY_txt = 'Ramsey' where TRIM(COUNTY)='62';
UPDATE crash_acc_2022 SET COUNTY_txt = 'Red Lake' where TRIM(COUNTY)='63';
UPDATE crash_acc_2022 SET COUNTY_txt = 'Redwood' where TRIM(COUNTY)='64';
UPDATE crash_acc_2022 SET COUNTY_txt = 'Renville' where TRIM(COUNTY)='65';
UPDATE crash_acc_2022 SET COUNTY_txt = 'Rice' where TRIM(COUNTY)='66';
UPDATE crash_acc_2022 SET COUNTY_txt = 'Rock' where TRIM(COUNTY)='67';
UPDATE crash_acc_2022 SET COUNTY_txt = 'Roseau' where TRIM(COUNTY)='68';
UPDATE crash_acc_2022 SET COUNTY_txt = 'St. Louis' where TRIM(COUNTY)='69';
UPDATE crash_acc_2022 SET COUNTY_txt = 'Scott' where TRIM(COUNTY)='70';
UPDATE crash_acc_2022 SET COUNTY_txt = 'Sherburne' where TRIM(COUNTY)='71';
UPDATE crash_acc_2022 SET COUNTY_txt = 'Sibley' where TRIM(COUNTY)='72';
UPDATE crash_acc_2022 SET COUNTY_txt = 'Stearns' where TRIM(COUNTY)='73';
UPDATE crash_acc_2022 SET COUNTY_txt = 'Steele' where TRIM(COUNTY)='74';
UPDATE crash_acc_2022 SET COUNTY_txt = 'Stevens' where TRIM(COUNTY)='75';
UPDATE crash_acc_2022 SET COUNTY_txt = 'Swift' where TRIM(COUNTY)='76';
UPDATE crash_acc_2022 SET COUNTY_txt = 'Todd' where TRIM(COUNTY)='77';
UPDATE crash_acc_2022 SET COUNTY_txt = 'Traverse' where TRIM(COUNTY)='78';
UPDATE crash_acc_2022 SET COUNTY_txt = 'Wabasha' where TRIM(COUNTY)='79';
UPDATE crash_acc_2022 SET COUNTY_txt = 'Wadena' where TRIM(COUNTY)='80';
UPDATE crash_acc_2022 SET COUNTY_txt = 'Waseca' where TRIM(COUNTY)='81';
UPDATE crash_acc_2022 SET COUNTY_txt = 'Washington' where TRIM(COUNTY)='82';
UPDATE crash_acc_2022 SET COUNTY_txt = 'Watonwan' where TRIM(COUNTY)='83';
UPDATE crash_acc_2022 SET COUNTY_txt = 'Wilkin' where TRIM(COUNTY)='84';
UPDATE crash_acc_2022 SET COUNTY_txt = 'Winona' where TRIM(COUNTY)='85';
UPDATE crash_acc_2022 SET COUNTY_txt = 'Wright' where TRIM(COUNTY)='86';
UPDATE crash_acc_2022 SET COUNTY_txt = 'Yellow Medicine' where TRIM(COUNTY)='87';
UPDATE crash_veh_2022 SET DAMAREA_txt = 'Non-Collision' where TRIM(DAMAREA)='1';
UPDATE crash_veh_2022 SET DAMAREA_txt = 'Top' where TRIM(DAMAREA)='3';
UPDATE crash_veh_2022 SET DAMAREA_txt = 'Undercarriage' where TRIM(DAMAREA)='4';
UPDATE crash_veh_2022 SET DAMAREA_txt = 'Cargo Loss' where TRIM(DAMAREA)='5';
UPDATE crash_veh_2022 SET DAMAREA_txt = 'Front' where TRIM(DAMAREA)='10';
UPDATE crash_veh_2022 SET DAMAREA_txt = 'Front right quarter panel' where TRIM(DAMAREA)='11';
UPDATE crash_veh_2022 SET DAMAREA_txt = 'Front right passenger cabin' where TRIM(DAMAREA)='12';
UPDATE crash_veh_2022 SET DAMAREA_txt = 'Middle right passenger cabin' where TRIM(DAMAREA)='13';
UPDATE crash_veh_2022 SET DAMAREA_txt = 'Rear right passenger cabin' where TRIM(DAMAREA)='14';
UPDATE crash_veh_2022 SET DAMAREA_txt = 'Rear right quarter panel' where TRIM(DAMAREA)='15';
UPDATE crash_veh_2022 SET DAMAREA_txt = 'Rear' where TRIM(DAMAREA)='16';
UPDATE crash_veh_2022 SET DAMAREA_txt = 'Rear left quarter pane' where TRIM(DAMAREA)='17';
UPDATE crash_veh_2022 SET DAMAREA_txt = 'Rear Left Passenger cabin' where TRIM(DAMAREA)='18';
UPDATE crash_veh_2022 SET DAMAREA_txt = 'Middle left passenger cabin' where TRIM(DAMAREA)='19';
UPDATE crash_veh_2022 SET DAMAREA_txt = 'Front left passenger cabin' where TRIM(DAMAREA)='20';
UPDATE crash_veh_2022 SET DAMAREA_txt = 'Front left quarter panel' where TRIM(DAMAREA)='21';
UPDATE crash_veh_2022 SET DAMAREA_txt = 'All areas' where TRIM(DAMAREA)='97';
UPDATE crash_veh_2022 SET DAMAREA_txt = 'Unknown' where TRIM(DAMAREA)='99';
UPDATE crash_veh_2022 SET DAMSEV_txt = 'None' where TRIM(DAMSEV)='2';
UPDATE crash_veh_2022 SET DAMSEV_txt = 'Minor' where TRIM(DAMSEV)='3';
UPDATE crash_veh_2022 SET DAMSEV_txt = 'Moderate - Functional' where TRIM(DAMSEV)='4';
UPDATE crash_veh_2022 SET DAMSEV_txt = 'Severe - Disabling' where TRIM(DAMSEV)='5';
UPDATE crash_veh_2022 SET DAMSEV_txt = 'Moderate - Disabling' where TRIM(DAMSEV)='6';
UPDATE crash_veh_2022 SET DAMSEV_txt = 'Other' where TRIM(DAMSEV)='90';
UPDATE crash_veh_2022 SET DAMSEV_txt = 'Unknown' where TRIM(DAMSEV)='99';
UPDATE crash_acc_2022 SET DIAGRAM_txt = 'Angle' where TRIM(DIAGRAM)='5';
UPDATE crash_acc_2022 SET DIAGRAM_txt = 'Sideswipe - same direction' where TRIM(DIAGRAM)='10';
UPDATE crash_acc_2022 SET DIAGRAM_txt = 'Sideswipe - opposing direction' where TRIM(DIAGRAM)='11';
UPDATE crash_acc_2022 SET DIAGRAM_txt = 'Front to rear' where TRIM(DIAGRAM)='12';
UPDATE crash_acc_2022 SET DIAGRAM_txt = 'Front to front' where TRIM(DIAGRAM)='13';
UPDATE crash_acc_2022 SET DIAGRAM_txt = 'Rear to side' where TRIM(DIAGRAM)='14';
UPDATE crash_acc_2022 SET DIAGRAM_txt = 'Rear to rear' where TRIM(DIAGRAM)='15';
UPDATE crash_acc_2022 SET DIAGRAM_txt = 'Other' where TRIM(DIAGRAM)='90';
UPDATE crash_acc_2022 SET DIAGRAM_txt = 'Unknown' where TRIM(DIAGRAM)='99';
UPDATE crash_veh_2022 SET DIRECTN_txt = 'Northbound' where TRIM(DIRECTN)='1';
UPDATE crash_veh_2022 SET DIRECTN_txt = 'Southbound' where TRIM(DIRECTN)='2';
UPDATE crash_veh_2022 SET DIRECTN_txt = 'Eastbound' where TRIM(DIRECTN)='3';
UPDATE crash_veh_2022 SET DIRECTN_txt = 'Westbound' where TRIM(DIRECTN)='4';
UPDATE crash_veh_2022 SET DIRECTN_txt = 'Not on Roadway' where TRIM(DIRECTN)='10';
UPDATE crash_veh_2022 SET DIRECTN_txt = 'Unknown' where TRIM(DIRECTN)='99';
UPDATE crash_per_2022 SET DISTRACT_txt = 'Not Distracted' where TRIM(DISTRACT)='1';
UPDATE crash_per_2022 SET DISTRACT_txt = 'Manually Operating an Electronic Communication Device (texting, typing, dialing)' where TRIM(DISTRACT)='2';
UPDATE crash_per_2022 SET DISTRACT_txt = 'Talking on Hands-Free Electronic Device' where TRIM(DISTRACT)='3';
UPDATE crash_per_2022 SET DISTRACT_txt = 'Talking on Hand-Held Electronic Device' where TRIM(DISTRACT)='4';
UPDATE crash_per_2022 SET DISTRACT_txt = 'Other Activity, Electronic Device' where TRIM(DISTRACT)='5';
UPDATE crash_per_2022 SET DISTRACT_txt = 'Passenger' where TRIM(DISTRACT)='6';
UPDATE crash_per_2022 SET DISTRACT_txt = 'Other Inside the Vehicle (eating, personal hygiene, etc.)' where TRIM(DISTRACT)='7';
UPDATE crash_per_2022 SET DISTRACT_txt = 'Outside the Vehicle (includes unspecified external distractions)' where TRIM(DISTRACT)='8';
UPDATE crash_per_2022 SET DISTRACT_txt = 'Unknown' where TRIM(DISTRACT)='99';
UPDATE crash_per_2022 SET DLCLASS_txt = 'A Commercial' where TRIM(DLCLASS)='1';
UPDATE crash_per_2022 SET DLCLASS_txt = 'B Commercial' where TRIM(DLCLASS)='2';
UPDATE crash_per_2022 SET DLCLASS_txt = 'C Commercial' where TRIM(DLCLASS)='3';
UPDATE crash_per_2022 SET DLCLASS_txt = 'D Normal (Non-Commercial) Driver License' where TRIM(DLCLASS)='4';
UPDATE crash_per_2022 SET DLCLASS_txt = 'ID card only' where TRIM(DLCLASS)='5';
UPDATE crash_per_2022 SET DLCLASS_txt = 'Lifetime ID card only (65 years and older)' where TRIM(DLCLASS)='6';
UPDATE crash_per_2022 SET DLCLASS_txt = 'Moped License only' where TRIM(DLCLASS)='7';
UPDATE crash_per_2022 SET DLCLASS_txt = 'Instructional Permit' where TRIM(DLCLASS)='8';
UPDATE crash_per_2022 SET DLCLASS_txt = 'Not Licensed' where TRIM(DLCLASS)='10';
UPDATE crash_per_2022 SET DLENDOR1_txt = 'None' where TRIM(DLENDOR1)='1';
UPDATE crash_per_2022 SET DLENDOR1_txt = 'T - Double or Triple Trailers' where TRIM(DLENDOR1)='2';
UPDATE crash_per_2022 SET DLENDOR1_txt = 'P - 16 or More Passengers' where TRIM(DLENDOR1)='3';
UPDATE crash_per_2022 SET DLENDOR1_txt = 'N - Tanker' where TRIM(DLENDOR1)='4';
UPDATE crash_per_2022 SET DLENDOR1_txt = 'H - Hazardous Materials' where TRIM(DLENDOR1)='5';
UPDATE crash_per_2022 SET DLENDOR1_txt = 'X - Tanker with Hazardous Materials' where TRIM(DLENDOR1)='6';
UPDATE crash_per_2022 SET DLENDOR1_txt = 'S - School Bus' where TRIM(DLENDOR1)='7';
UPDATE crash_per_2022 SET DLENDOR1_txt = 'M - Motorcycle' where TRIM(DLENDOR1)='8';
UPDATE crash_per_2022 SET DLENDOR2_txt = 'None' where TRIM(DLENDOR2)='1';
UPDATE crash_per_2022 SET DLENDOR2_txt = 'T - Double or Triple Trailers' where TRIM(DLENDOR2)='2';
UPDATE crash_per_2022 SET DLENDOR2_txt = 'P - 16 or More Passengers' where TRIM(DLENDOR2)='3';
UPDATE crash_per_2022 SET DLENDOR2_txt = 'N - Tanker' where TRIM(DLENDOR2)='4';
UPDATE crash_per_2022 SET DLENDOR2_txt = 'H - Hazardous Materials' where TRIM(DLENDOR2)='5';
UPDATE crash_per_2022 SET DLENDOR2_txt = 'X - Tanker with Hazardous Materials' where TRIM(DLENDOR2)='6';
UPDATE crash_per_2022 SET DLENDOR2_txt = 'S - School Bus' where TRIM(DLENDOR2)='7';
UPDATE crash_per_2022 SET DLENDOR2_txt = 'M - Motorcycle' where TRIM(DLENDOR2)='8';
UPDATE crash_per_2022 SET DLENDOR3_txt = 'None' where TRIM(DLENDOR3)='1';
UPDATE crash_per_2022 SET DLENDOR3_txt = 'T - Double or Triple Trailers' where TRIM(DLENDOR3)='2';
UPDATE crash_per_2022 SET DLENDOR3_txt = 'P - 16 or More Passengers' where TRIM(DLENDOR3)='3';
UPDATE crash_per_2022 SET DLENDOR3_txt = 'N - Tanker' where TRIM(DLENDOR3)='4';
UPDATE crash_per_2022 SET DLENDOR3_txt = 'H - Hazardous Materials' where TRIM(DLENDOR3)='5';
UPDATE crash_per_2022 SET DLENDOR3_txt = 'X - Tanker with Hazardous Materials' where TRIM(DLENDOR3)='6';
UPDATE crash_per_2022 SET DLENDOR3_txt = 'S - School Bus' where TRIM(DLENDOR3)='7';
UPDATE crash_per_2022 SET DLENDOR3_txt = 'M - Motorcycle' where TRIM(DLENDOR3)='8';
UPDATE crash_per_2022 SET DLJURIS_txt = 'Not Licensed' where TRIM(DLJURIS)='1';
UPDATE crash_per_2022 SET DLJURIS_txt = 'State' where TRIM(DLJURIS)='2';
UPDATE crash_per_2022 SET DLJURIS_txt = 'Indian Nation' where TRIM(DLJURIS)='3';
UPDATE crash_per_2022 SET DLJURIS_txt = 'U.S. Government' where TRIM(DLJURIS)='4';
UPDATE crash_per_2022 SET DLJURIS_txt = 'Canadian Provence' where TRIM(DLJURIS)='5';
UPDATE crash_per_2022 SET DLJURIS_txt = 'Mexican State' where TRIM(DLJURIS)='6';
UPDATE crash_per_2022 SET DLJURIS_txt = 'International (other than Mexico, Canada)' where TRIM(DLJURIS)='7';
UPDATE crash_per_2022 SET DLJURIS_txt = 'Not applicable' where TRIM(DLJURIS)='98';
UPDATE crash_per_2022 SET DLREST1_txt = 'None' where TRIM(DLREST1)='1-';
UPDATE crash_per_2022 SET DLREST1_txt = 'Corrective Lenses' where TRIM(DLREST1)='2';
UPDATE crash_per_2022 SET DLREST1_txt = 'Mechanical Devices' where TRIM(DLREST1)='3';
UPDATE crash_per_2022 SET DLREST1_txt = 'Prosthetic Aid' where TRIM(DLREST1)='4';
UPDATE crash_per_2022 SET DLREST1_txt = 'Automatic Transmission' where TRIM(DLREST1)='5';
UPDATE crash_per_2022 SET DLREST1_txt = 'Outside Mirror' where TRIM(DLREST1)='6';
UPDATE crash_per_2022 SET DLREST1_txt = 'Limit to Daylight Hours' where TRIM(DLREST1)='7';
UPDATE crash_per_2022 SET DLREST1_txt = 'Limit to Employment Only' where TRIM(DLREST1)='8';
UPDATE crash_per_2022 SET DLREST1_txt = 'Limited - Other' where TRIM(DLREST1)='9';
UPDATE crash_per_2022 SET DLREST1_txt = 'Learners Permit' where TRIM(DLREST1)='10';
UPDATE crash_per_2022 SET DLREST1_txt = 'CDL - Intrastate' where TRIM(DLREST1)='11';
UPDATE crash_per_2022 SET DLREST1_txt = 'Vehicles w/out Air Brakes' where TRIM(DLREST1)='12';
UPDATE crash_per_2022 SET DLREST1_txt = 'Except Class A Bus' where TRIM(DLREST1)='13';
UPDATE crash_per_2022 SET DLREST1_txt = 'Except Class A/Class B Bus' where TRIM(DLREST1)='14';
UPDATE crash_per_2022 SET DLREST1_txt = 'Except Tractor/Trailer' where TRIM(DLREST1)='15';
UPDATE crash_per_2022 SET DLREST1_txt = 'Farm Waiver' where TRIM(DLREST1)='16';
UPDATE crash_per_2022 SET DLREST1_txt = 'No Passenger in CMV Bus' where TRIM(DLREST1)='18';
UPDATE crash_per_2022 SET DLREST1_txt = 'FMCSA Medical Waiver' where TRIM(DLREST1)='19';
UPDATE crash_per_2022 SET DLREST1_txt = 'Bus-24 Capacity' where TRIM(DLREST1)='20';
UPDATE crash_per_2022 SET DLREST1_txt = 'No Cargo in CMV Tank Vehicle' where TRIM(DLREST1)='21';
UPDATE crash_per_2022 SET DLREST1_txt = 'Air Over Hydraulic Brake System' where TRIM(DLREST1)='22';
UPDATE crash_per_2022 SET DLREST1_txt = 'Air Over Hydraulic Brake System' where TRIM(DLREST1)='22';
UPDATE crash_per_2022 SET DLREST1_txt = 'Automatic Transmission CMV' where TRIM(DLREST1)='23';
UPDATE crash_per_2022 SET DLREST1_txt = 'Any Alcohol/Drug Use Invalidates License' where TRIM(DLREST1)='24';
UPDATE crash_per_2022 SET DLREST1_txt = 'Hand Operated Brakes' where TRIM(DLREST1)='25';
UPDATE crash_per_2022 SET DLREST1_txt = 'Complete Hand Controls' where TRIM(DLREST1)='26';
UPDATE crash_per_2022 SET DLREST1_txt = 'Hand Operated Light Beam Control' where TRIM(DLREST1)='27';
UPDATE crash_per_2022 SET DLREST1_txt = 'Elevated Driver Seat' where TRIM(DLREST1)='28';
UPDATE crash_per_2022 SET DLREST1_txt = 'No Freeway Driving' where TRIM(DLREST1)='29';
UPDATE crash_per_2022 SET DLREST1_txt = 'Ignition Interlock Required' where TRIM(DLREST1)='30';
UPDATE crash_per_2022 SET DLREST1_txt = 'Also Valid for 3-Wheel Motorcycle' where TRIM(DLREST1)='31';
UPDATE crash_per_2022 SET DLREST1_txt = 'Other' where TRIM(DLREST1)='90';
UPDATE crash_per_2022 SET DLREST1_txt = 'Not Applicable' where TRIM(DLREST1)='98';
UPDATE crash_per_2022 SET DLREST1_txt = 'Unknown' where TRIM(DLREST1)='99';
UPDATE crash_per_2022 SET DLREST2_txt = 'none' where TRIM(DLREST2)='1-';
UPDATE crash_per_2022 SET DLREST2_txt = 'Corrective Lenses' where TRIM(DLREST2)='2';
UPDATE crash_per_2022 SET DLREST2_txt = 'Mechanical Devices' where TRIM(DLREST2)='3';
UPDATE crash_per_2022 SET DLREST2_txt = 'Prosthetic Aid' where TRIM(DLREST2)='4';
UPDATE crash_per_2022 SET DLREST2_txt = 'Automatic Transmission' where TRIM(DLREST2)='5';
UPDATE crash_per_2022 SET DLREST2_txt = 'Outside Mirror' where TRIM(DLREST2)='6';
UPDATE crash_per_2022 SET DLREST2_txt = 'Limit to Daylight Hours' where TRIM(DLREST2)='7';
UPDATE crash_per_2022 SET DLREST2_txt = 'Limit to Employment Only' where TRIM(DLREST2)='8';
UPDATE crash_per_2022 SET DLREST2_txt = 'Limited - Other' where TRIM(DLREST2)='9';
UPDATE crash_per_2022 SET DLREST2_txt = 'Learners Permit' where TRIM(DLREST2)='10';
UPDATE crash_per_2022 SET DLREST2_txt = 'CDL - Intrastate' where TRIM(DLREST2)='11';
UPDATE crash_per_2022 SET DLREST2_txt = 'Vehicles w/out Air Brakes' where TRIM(DLREST2)='12';
UPDATE crash_per_2022 SET DLREST2_txt = 'Except Class A Bus' where TRIM(DLREST2)='13';
UPDATE crash_per_2022 SET DLREST2_txt = 'Except Class A/Class B Bus' where TRIM(DLREST2)='14';
UPDATE crash_per_2022 SET DLREST2_txt = 'Except Tractor/Trailer' where TRIM(DLREST2)='15';
UPDATE crash_per_2022 SET DLREST2_txt = 'Farm Waiver' where TRIM(DLREST2)='16';
UPDATE crash_per_2022 SET DLREST2_txt = 'No Passenger in CMV Bus' where TRIM(DLREST2)='18';
UPDATE crash_per_2022 SET DLREST2_txt = 'FMCSA Medical Waiver' where TRIM(DLREST2)='19';
UPDATE crash_per_2022 SET DLREST2_txt = 'Bus-24 Capacity' where TRIM(DLREST2)='20';
UPDATE crash_per_2022 SET DLREST2_txt = 'No Cargo in CMV Tank Vehicle' where TRIM(DLREST2)='21';
UPDATE crash_per_2022 SET DLREST2_txt = 'Air Over Hydraulic Brake System' where TRIM(DLREST2)='22';
UPDATE crash_per_2022 SET DLREST2_txt = 'Air Over Hydraulic Brake System' where TRIM(DLREST2)='22';
UPDATE crash_per_2022 SET DLREST2_txt = 'Automatic Transmission CMV' where TRIM(DLREST2)='23';
UPDATE crash_per_2022 SET DLREST2_txt = 'Any Alcohol/Drug Use Invalidates License' where TRIM(DLREST2)='24';
UPDATE crash_per_2022 SET DLREST2_txt = 'Hand Operated Brakes' where TRIM(DLREST2)='25';
UPDATE crash_per_2022 SET DLREST2_txt = 'Complete Hand Controls' where TRIM(DLREST2)='26';
UPDATE crash_per_2022 SET DLREST2_txt = 'Hand Operated Light Beam Control' where TRIM(DLREST2)='27';
UPDATE crash_per_2022 SET DLREST2_txt = 'Elevated Driver Seat' where TRIM(DLREST2)='28';
UPDATE crash_per_2022 SET DLREST2_txt = 'No Freeway Driving' where TRIM(DLREST2)='29';
UPDATE crash_per_2022 SET DLREST2_txt = 'Ignition Interlock Required' where TRIM(DLREST2)='30';
UPDATE crash_per_2022 SET DLREST2_txt = 'Also Valid for 3-Wheel Motorcycle' where TRIM(DLREST2)='31';
UPDATE crash_per_2022 SET DLREST2_txt = 'Other' where TRIM(DLREST2)='90';
UPDATE crash_per_2022 SET DLREST2_txt = 'Not Applicable' where TRIM(DLREST2)='98';
UPDATE crash_per_2022 SET DLREST2_txt = 'Unknown' where TRIM(DLREST2)='99';
UPDATE crash_per_2022 SET DLREST3_txt = 'none' where TRIM(DLREST3)='1-';
UPDATE crash_per_2022 SET DLREST3_txt = 'Corrective Lenses' where TRIM(DLREST3)='2';
UPDATE crash_per_2022 SET DLREST3_txt = 'Mechanical Devices' where TRIM(DLREST3)='3';
UPDATE crash_per_2022 SET DLREST3_txt = 'Prosthetic Aid' where TRIM(DLREST3)='4';
UPDATE crash_per_2022 SET DLREST3_txt = 'Automatic Transmission' where TRIM(DLREST3)='5';
UPDATE crash_per_2022 SET DLREST3_txt = 'Outside Mirror' where TRIM(DLREST3)='6';
UPDATE crash_per_2022 SET DLREST3_txt = 'Limit to Daylight Hours' where TRIM(DLREST3)='7';
UPDATE crash_per_2022 SET DLREST3_txt = 'Limit to Employment Only' where TRIM(DLREST3)='8';
UPDATE crash_per_2022 SET DLREST3_txt = 'Limited - Other' where TRIM(DLREST3)='9';
UPDATE crash_per_2022 SET DLREST3_txt = 'Learners Permit' where TRIM(DLREST3)='10';
UPDATE crash_per_2022 SET DLREST3_txt = 'CDL - Intrastate' where TRIM(DLREST3)='11';
UPDATE crash_per_2022 SET DLREST3_txt = 'Vehicles w/out Air Brakes' where TRIM(DLREST3)='12';
UPDATE crash_per_2022 SET DLREST3_txt = 'Except Class A Bus' where TRIM(DLREST3)='13';
UPDATE crash_per_2022 SET DLREST3_txt = 'Except Class A/Class B Bus' where TRIM(DLREST3)='14';
UPDATE crash_per_2022 SET DLREST3_txt = 'Except Tractor/Trailer' where TRIM(DLREST3)='15';
UPDATE crash_per_2022 SET DLREST3_txt = 'Farm Waiver' where TRIM(DLREST3)='16';
UPDATE crash_per_2022 SET DLREST3_txt = 'No Passenger in CMV Bus' where TRIM(DLREST3)='18';
UPDATE crash_per_2022 SET DLREST3_txt = 'FMCSA Medical Waiver' where TRIM(DLREST3)='19';
UPDATE crash_per_2022 SET DLREST3_txt = 'Bus-24 Capacity' where TRIM(DLREST3)='20';
UPDATE crash_per_2022 SET DLREST3_txt = 'No Cargo in CMV Tank Vehicle' where TRIM(DLREST3)='21';
UPDATE crash_per_2022 SET DLREST3_txt = 'Air Over Hydraulic Brake System' where TRIM(DLREST3)='22';
UPDATE crash_per_2022 SET DLREST3_txt = 'Air Over Hydraulic Brake System' where TRIM(DLREST3)='22';
UPDATE crash_per_2022 SET DLREST3_txt = 'Automatic Transmission CMV' where TRIM(DLREST3)='23';
UPDATE crash_per_2022 SET DLREST3_txt = 'Any Alcohol/Drug Use Invalidates License' where TRIM(DLREST3)='24';
UPDATE crash_per_2022 SET DLREST3_txt = 'Hand Operated Brakes' where TRIM(DLREST3)='25';
UPDATE crash_per_2022 SET DLREST3_txt = 'Complete Hand Controls' where TRIM(DLREST3)='26';
UPDATE crash_per_2022 SET DLREST3_txt = 'Hand Operated Light Beam Control' where TRIM(DLREST3)='27';
UPDATE crash_per_2022 SET DLREST3_txt = 'Elevated Driver Seat' where TRIM(DLREST3)='28';
UPDATE crash_per_2022 SET DLREST3_txt = 'No Freeway Driving' where TRIM(DLREST3)='29';
UPDATE crash_per_2022 SET DLREST3_txt = 'Ignition Interlock Required' where TRIM(DLREST3)='30';
UPDATE crash_per_2022 SET DLREST3_txt = 'Also Valid for 3-Wheel Motorcycle' where TRIM(DLREST3)='31';
UPDATE crash_per_2022 SET DLREST3_txt = 'Other' where TRIM(DLREST3)='90';
UPDATE crash_per_2022 SET DLREST3_txt = 'Not Applicable' where TRIM(DLREST3)='98';
UPDATE crash_per_2022 SET DLREST3_txt = 'Unknown' where TRIM(DLREST3)='99';
UPDATE crash_per_2022 SET DLSTAT_txt = 'Valid' where TRIM(DLSTAT)='1';
UPDATE crash_per_2022 SET DLSTAT_txt = 'Valid But Beyond Restrictions' where TRIM(DLSTAT)='2';
UPDATE crash_per_2022 SET DLSTAT_txt = 'Not Endorsed For This Vehicle (Violation)' where TRIM(DLSTAT)='3';
UPDATE crash_per_2022 SET DLSTAT_txt = 'Suspended (Violation)' where TRIM(DLSTAT)='4';
UPDATE crash_per_2022 SET DLSTAT_txt = 'Revoked (Violation)' where TRIM(DLSTAT)='5';
UPDATE crash_per_2022 SET DLSTAT_txt = 'Cancelled or Denied (Violation)' where TRIM(DLSTAT)='6';
UPDATE crash_per_2022 SET DLSTAT_txt = 'Limited License Provisions (Violation)' where TRIM(DLSTAT)='7';
UPDATE crash_per_2022 SET DLSTAT_txt = 'Expired License (Violation)' where TRIM(DLSTAT)='8';
UPDATE crash_per_2022 SET DLSTAT_txt = 'No License (Violation)' where TRIM(DLSTAT)='9';
UPDATE crash_per_2022 SET DLSTAT_txt = 'Disqualified CDL' where TRIM(DLSTAT)='10';
UPDATE crash_per_2022 SET DLSTAT_txt = 'Pending' where TRIM(DLSTAT)='11';
UPDATE crash_per_2022 SET DLSTAT_txt = 'Cancel-IPS' where TRIM(DLSTAT)='12';
UPDATE crash_per_2022 SET DLSTAT_txt = 'Deceased' where TRIM(DLSTAT)='13';
UPDATE crash_per_2022 SET DLSTAT_txt = 'Conax' where TRIM(DLSTAT)='14';
UPDATE crash_per_2022 SET DLSTAT_txt = 'Tracer' where TRIM(DLSTAT)='15';
UPDATE crash_per_2022 SET DLSTAT_txt = 'Other' where TRIM(DLSTAT)='90';
UPDATE crash_per_2022 SET DLSTAT_txt = 'Not applicable' where TRIM(DLSTAT)='98';
UPDATE crash_per_2022 SET DLSTAT_txt = 'Unknown' where TRIM(DLSTAT)='99';
UPDATE crash_per_2022 SET DLSTATE_txt = 'Alberta' where TRIM(DLSTATE)='AB';
UPDATE crash_per_2022 SET DLSTATE_txt = 'Aguascalientes' where TRIM(DLSTATE)='AG';
UPDATE crash_per_2022 SET DLSTATE_txt = 'British Columbia' where TRIM(DLSTATE)='BC';
UPDATE crash_per_2022 SET DLSTATE_txt = 'Baja California' where TRIM(DLSTATE)='BN';
UPDATE crash_per_2022 SET DLSTATE_txt = 'Baja California Sur' where TRIM(DLSTATE)='BS';
UPDATE crash_per_2022 SET DLSTATE_txt = 'Chihuahua' where TRIM(DLSTATE)='CH';
UPDATE crash_per_2022 SET DLSTATE_txt = 'Colima' where TRIM(DLSTATE)='CL';
UPDATE crash_per_2022 SET DLSTATE_txt = 'Campeche' where TRIM(DLSTATE)='CM';
UPDATE crash_per_2022 SET DLSTATE_txt = 'Chiapas' where TRIM(DLSTATE)='CP';
UPDATE crash_per_2022 SET DLSTATE_txt = 'Coahuila' where TRIM(DLSTATE)='CU';
UPDATE crash_per_2022 SET DLSTATE_txt = 'Federal District' where TRIM(DLSTATE)='DF';
UPDATE crash_per_2022 SET DLSTATE_txt = 'Durango' where TRIM(DLSTATE)='DU';
UPDATE crash_per_2022 SET DLSTATE_txt = 'Guerrero' where TRIM(DLSTATE)='GR';
UPDATE crash_per_2022 SET DLSTATE_txt = 'Guanajuato' where TRIM(DLSTATE)='GT';
UPDATE crash_per_2022 SET DLSTATE_txt = 'Hidalgo' where TRIM(DLSTATE)='HD';
UPDATE crash_per_2022 SET DLSTATE_txt = 'Jalisco' where TRIM(DLSTATE)='JA';
UPDATE crash_per_2022 SET DLSTATE_txt = 'Manitoba' where TRIM(DLSTATE)='MB';
UPDATE crash_per_2022 SET DLSTATE_txt = 'Michoac�n' where TRIM(DLSTATE)='MC';
UPDATE crash_per_2022 SET DLSTATE_txt = 'Morelos' where TRIM(DLSTATE)='MR';
UPDATE crash_per_2022 SET DLSTATE_txt = 'M�xico City' where TRIM(DLSTATE)='MX';
UPDATE crash_per_2022 SET DLSTATE_txt = 'Nayarit' where TRIM(DLSTATE)='NA';
UPDATE crash_per_2022 SET DLSTATE_txt = 'Newfoundland' where TRIM(DLSTATE)='NF';
UPDATE crash_per_2022 SET DLSTATE_txt = 'New Brunswick' where TRIM(DLSTATE)='NK';
UPDATE crash_per_2022 SET DLSTATE_txt = 'Nuevo Le�n' where TRIM(DLSTATE)='NL';
UPDATE crash_per_2022 SET DLSTATE_txt = 'Nova Scotia' where TRIM(DLSTATE)='NS';
UPDATE crash_per_2022 SET DLSTATE_txt = 'Northwest Terr' where TRIM(DLSTATE)='NT';
UPDATE crash_per_2022 SET DLSTATE_txt = 'Nunavut' where TRIM(DLSTATE)='NU';
UPDATE crash_per_2022 SET DLSTATE_txt = 'Oaxaca' where TRIM(DLSTATE)='OA';
UPDATE crash_per_2022 SET DLSTATE_txt = 'Ontario' where TRIM(DLSTATE)='ON';
UPDATE crash_per_2022 SET DLSTATE_txt = 'Prince Edw Island' where TRIM(DLSTATE)='PE';
UPDATE crash_per_2022 SET DLSTATE_txt = 'Puebla' where TRIM(DLSTATE)='PU';
UPDATE crash_per_2022 SET DLSTATE_txt = 'Quebec' where TRIM(DLSTATE)='QC';
UPDATE crash_per_2022 SET DLSTATE_txt = 'Quer�taro' where TRIM(DLSTATE)='QE';
UPDATE crash_per_2022 SET DLSTATE_txt = 'Quintana Roo' where TRIM(DLSTATE)='QR';
UPDATE crash_per_2022 SET DLSTATE_txt = 'Sinaloa' where TRIM(DLSTATE)='SI';
UPDATE crash_per_2022 SET DLSTATE_txt = 'Saskatchewan' where TRIM(DLSTATE)='SK';
UPDATE crash_per_2022 SET DLSTATE_txt = 'San Luis Potos�' where TRIM(DLSTATE)='SL';
UPDATE crash_per_2022 SET DLSTATE_txt = 'Sonora' where TRIM(DLSTATE)='SO';
UPDATE crash_per_2022 SET DLSTATE_txt = 'Tabasco' where TRIM(DLSTATE)='TB';
UPDATE crash_per_2022 SET DLSTATE_txt = 'Tlaxcala' where TRIM(DLSTATE)='TL';
UPDATE crash_per_2022 SET DLSTATE_txt = 'Tamaulipas' where TRIM(DLSTATE)='TM';
UPDATE crash_per_2022 SET DLSTATE_txt = 'Veracruz' where TRIM(DLSTATE)='VE';
UPDATE crash_per_2022 SET DLSTATE_txt = 'Vermont' where TRIM(DLSTATE)='VT';
UPDATE crash_per_2022 SET DLSTATE_txt = 'Washington' where TRIM(DLSTATE)='WA';
UPDATE crash_per_2022 SET DLSTATE_txt = 'Yukon' where TRIM(DLSTATE)='YT';
UPDATE crash_per_2022 SET DLSTATE_txt = 'Yucat�n' where TRIM(DLSTATE)='YU';
UPDATE crash_per_2022 SET DLSTATE_txt = 'Outside Us/Can' where TRIM(DLSTATE)='YY';
UPDATE crash_per_2022 SET DLSTATE_txt = 'Zacatecas' where TRIM(DLSTATE)='ZA';
UPDATE crash_per_2022 SET DLSTATE_txt = 'Alabama' where TRIM(DLSTATE)='AL';
UPDATE crash_per_2022 SET DLSTATE_txt = 'Alaska' where TRIM(DLSTATE)='AK';
UPDATE crash_per_2022 SET DLSTATE_txt = 'Arizona' where TRIM(DLSTATE)='AZ';
UPDATE crash_per_2022 SET DLSTATE_txt = 'Arkansas' where TRIM(DLSTATE)='AR';
UPDATE crash_per_2022 SET DLSTATE_txt = 'California' where TRIM(DLSTATE)='CA';
UPDATE crash_per_2022 SET DLSTATE_txt = 'Colorado' where TRIM(DLSTATE)='CO';
UPDATE crash_per_2022 SET DLSTATE_txt = 'Connecticut' where TRIM(DLSTATE)='CT';
UPDATE crash_per_2022 SET DLSTATE_txt = 'Delaware' where TRIM(DLSTATE)='DE';
UPDATE crash_per_2022 SET DLSTATE_txt = 'District of Columbia' where TRIM(DLSTATE)='DC';
UPDATE crash_per_2022 SET DLSTATE_txt = 'Florida' where TRIM(DLSTATE)='FL';
UPDATE crash_per_2022 SET DLSTATE_txt = 'Georgia' where TRIM(DLSTATE)='GA';
UPDATE crash_per_2022 SET DLSTATE_txt = 'Hawaii' where TRIM(DLSTATE)='HI';
UPDATE crash_per_2022 SET DLSTATE_txt = 'Idaho' where TRIM(DLSTATE)='ID';
UPDATE crash_per_2022 SET DLSTATE_txt = 'Illinois' where TRIM(DLSTATE)='IL';
UPDATE crash_per_2022 SET DLSTATE_txt = 'Indiana' where TRIM(DLSTATE)='IN';
UPDATE crash_per_2022 SET DLSTATE_txt = 'Iowa' where TRIM(DLSTATE)='IA';
UPDATE crash_per_2022 SET DLSTATE_txt = 'Kansas' where TRIM(DLSTATE)='KS';
UPDATE crash_per_2022 SET DLSTATE_txt = 'Kentucky' where TRIM(DLSTATE)='KY';
UPDATE crash_per_2022 SET DLSTATE_txt = 'Louisiana' where TRIM(DLSTATE)='LA';
UPDATE crash_per_2022 SET DLSTATE_txt = 'Maine' where TRIM(DLSTATE)='ME';
UPDATE crash_per_2022 SET DLSTATE_txt = 'Maryland' where TRIM(DLSTATE)='MD';
UPDATE crash_per_2022 SET DLSTATE_txt = 'Massachusetts' where TRIM(DLSTATE)='MA';
UPDATE crash_per_2022 SET DLSTATE_txt = 'Michigan' where TRIM(DLSTATE)='MI';
UPDATE crash_per_2022 SET DLSTATE_txt = 'Minnesota' where TRIM(DLSTATE)='MN';
UPDATE crash_per_2022 SET DLSTATE_txt = 'Mississippi' where TRIM(DLSTATE)='MS';
UPDATE crash_per_2022 SET DLSTATE_txt = 'Missouri' where TRIM(DLSTATE)='MO';
UPDATE crash_per_2022 SET DLSTATE_txt = 'Montana' where TRIM(DLSTATE)='MT';
UPDATE crash_per_2022 SET DLSTATE_txt = 'Nebraska' where TRIM(DLSTATE)='NE';
UPDATE crash_per_2022 SET DLSTATE_txt = 'Nevada' where TRIM(DLSTATE)='NV';
UPDATE crash_per_2022 SET DLSTATE_txt = 'New Hampshire' where TRIM(DLSTATE)='NH';
UPDATE crash_per_2022 SET DLSTATE_txt = 'New Jersey' where TRIM(DLSTATE)='NJ';
UPDATE crash_per_2022 SET DLSTATE_txt = 'New Mexico' where TRIM(DLSTATE)='NM';
UPDATE crash_per_2022 SET DLSTATE_txt = 'New York' where TRIM(DLSTATE)='NY';
UPDATE crash_per_2022 SET DLSTATE_txt = 'North Carolina' where TRIM(DLSTATE)='NC';
UPDATE crash_per_2022 SET DLSTATE_txt = 'North Dakota' where TRIM(DLSTATE)='ND';
UPDATE crash_per_2022 SET DLSTATE_txt = 'Ohio' where TRIM(DLSTATE)='OH';
UPDATE crash_per_2022 SET DLSTATE_txt = 'Oklahoma' where TRIM(DLSTATE)='OK';
UPDATE crash_per_2022 SET DLSTATE_txt = 'Oregon' where TRIM(DLSTATE)='OR';
UPDATE crash_per_2022 SET DLSTATE_txt = 'Pennsylvania' where TRIM(DLSTATE)='PA';
UPDATE crash_per_2022 SET DLSTATE_txt = 'Rhode Island' where TRIM(DLSTATE)='RI';
UPDATE crash_per_2022 SET DLSTATE_txt = 'South Carolina' where TRIM(DLSTATE)='SC';
UPDATE crash_per_2022 SET DLSTATE_txt = 'South Dakota' where TRIM(DLSTATE)='SD';
UPDATE crash_per_2022 SET DLSTATE_txt = 'Tennessee' where TRIM(DLSTATE)='TN';
UPDATE crash_per_2022 SET DLSTATE_txt = 'Texas' where TRIM(DLSTATE)='TX';
UPDATE crash_per_2022 SET DLSTATE_txt = 'Utah' where TRIM(DLSTATE)='UT';
UPDATE crash_per_2022 SET DLSTATE_txt = 'Vermont' where TRIM(DLSTATE)='VT';
UPDATE crash_per_2022 SET DLSTATE_txt = 'Virginia' where TRIM(DLSTATE)='VA';
UPDATE crash_per_2022 SET DLSTATE_txt = 'Washington' where TRIM(DLSTATE)='WA';
UPDATE crash_per_2022 SET DLSTATE_txt = 'West Virginia' where TRIM(DLSTATE)='WV';
UPDATE crash_per_2022 SET DLSTATE_txt = 'Wisconsin' where TRIM(DLSTATE)='WI';
UPDATE crash_per_2022 SET DLSTATE_txt = 'Wyoming' where TRIM(DLSTATE)='WY';
UPDATE crash_acc_2022 SET DOLMIN_txt = 'Yes' where TRIM(DOLMIN)='1';
UPDATE crash_acc_2022 SET DOLMIN_txt = 'No' where TRIM(DOLMIN)='2';
UPDATE crash_acc_2022 SET DOLMIN_txt = 'Unknown' where TRIM(DOLMIN)='99';
UPDATE crash_veh_2022 SET DRCONTRL_txt = 'Yes' where TRIM(DRCONTRL)='1';
UPDATE crash_veh_2022 SET DRCONTRL_txt = 'No' where TRIM(DRCONTRL)='2';
UPDATE crash_veh_2022 SET DRCONTRL_txt = 'Unknown' where TRIM(DRCONTRL)='99';
UPDATE crash_per_2022 SET DRUGRES_txt = 'Negative' where TRIM(DRUGRES)='2';
UPDATE crash_per_2022 SET DRUGRES_txt = 'Results Unknown' where TRIM(DRUGRES)='3';
UPDATE crash_per_2022 SET DRUGRES_txt = 'No Drugs' where TRIM(DRUGRES)='4';
UPDATE crash_per_2022 SET DRUGRES_txt = 'Narcotic' where TRIM(DRUGRES)='5';
UPDATE crash_per_2022 SET DRUGRES_txt = 'Depressants' where TRIM(DRUGRES)='6';
UPDATE crash_per_2022 SET DRUGRES_txt = 'Stimulant' where TRIM(DRUGRES)='7';
UPDATE crash_per_2022 SET DRUGRES_txt = 'Hallucinogen' where TRIM(DRUGRES)='8';
UPDATE crash_per_2022 SET DRUGRES_txt = 'Cannabinoid' where TRIM(DRUGRES)='9';
UPDATE crash_per_2022 SET DRUGRES_txt = 'PCP' where TRIM(DRUGRES)='10';
UPDATE crash_per_2022 SET DRUGRES_txt = 'Pending' where TRIM(DRUGRES)='61';
UPDATE crash_per_2022 SET DRUGRES_txt = 'Other' where TRIM(DRUGRES)='90';
UPDATE crash_per_2022 SET DRUGSUSP_txt = 'Yes' where TRIM(DRUGSUSP)='1';
UPDATE crash_per_2022 SET DRUGSUSP_txt = 'No' where TRIM(DRUGSUSP)='2';
UPDATE crash_per_2022 SET DRUGSUSP_txt = 'Unknown' where TRIM(DRUGSUSP)='99';
UPDATE crash_per_2022 SET DRUGTEST_txt = 'Yes, Test Given' where TRIM(DRUGTEST)='1';
UPDATE crash_per_2022 SET DRUGTEST_txt = 'No, Test Not Given' where TRIM(DRUGTEST)='2';
UPDATE crash_per_2022 SET DRUGTEST_txt = 'Test Refused' where TRIM(DRUGTEST)='3';
UPDATE crash_per_2022 SET DRUGTEST_txt = 'Unknown' where TRIM(DRUGTEST)='99';
UPDATE crash_per_2022 SET DRUGTYPE_txt = 'Blood' where TRIM(DRUGTYPE)='1';
UPDATE crash_per_2022 SET DRUGTYPE_txt = 'Urine' where TRIM(DRUGTYPE)='4';
UPDATE crash_per_2022 SET DRUGTYPE_txt = 'Other' where TRIM(DRUGTYPE)='90';
UPDATE crash_per_2022 SET DRUGTYPE_txt = 'Not applicable' where TRIM(DRUGTYPE)='98';
UPDATE crash_per_2022 SET DRUGTYPE_txt = 'Unknown' where TRIM(DRUGTYPE)='99';
UPDATE crash_per_2022 SET EJECT_txt = 'Trapped-Extricated (by Mechanical Means)' where TRIM(EJECT)='1';
UPDATE crash_per_2022 SET EJECT_txt = 'Trapped-Freed by Non = Mechanical Means' where TRIM(EJECT)='2';
UPDATE crash_per_2022 SET EJECT_txt = 'Partially Ejected' where TRIM(EJECT)='3';
UPDATE crash_per_2022 SET EJECT_txt = 'Totally Ejected' where TRIM(EJECT)='4';
UPDATE crash_per_2022 SET EJECT_txt = 'Not Ejected or Trapped' where TRIM(EJECT)='5';
UPDATE crash_per_2022 SET EJECT_txt = 'Not applicable' where TRIM(EJECT)='98';
UPDATE crash_per_2022 SET EJECT_txt = 'Unknown' where TRIM(EJECT)='99';
UPDATE crash_veh_2022 SET EMGUSE_txt = 'Non-emergency, non-transport' where TRIM(EMGUSE)='1';
UPDATE crash_veh_2022 SET EMGUSE_txt = 'Non-emergency transport' where TRIM(EMGUSE)='2';
UPDATE crash_veh_2022 SET EMGUSE_txt = 'Emergency operation, emergency warning equipment not in use' where TRIM(EMGUSE)='3';
UPDATE crash_veh_2022 SET EMGUSE_txt = 'Emergency operation, emergency warning equipment in use' where TRIM(EMGUSE)='4';
UPDATE crash_veh_2022 SET EMGUSE_txt = 'Not applicable' where TRIM(EMGUSE)='98';
UPDATE crash_veh_2022 SET EMGUSE_txt = 'Unknown' where TRIM(EMGUSE)='99';
UPDATE crash_veh_2022 SET EVENT1_txt = 'Equipment Failure' where TRIM(EVENT1)='19';
UPDATE crash_veh_2022 SET EVENT1_txt = 'Separation of Units' where TRIM(EVENT1)='20';
UPDATE crash_veh_2022 SET EVENT1_txt = 'Ran Off Roadway Right' where TRIM(EVENT1)='21';
UPDATE crash_veh_2022 SET EVENT1_txt = 'Ran Off Roadway Left' where TRIM(EVENT1)='22';
UPDATE crash_veh_2022 SET EVENT1_txt = 'Cross Median' where TRIM(EVENT1)='23';
UPDATE crash_veh_2022 SET EVENT1_txt = 'Cross Centerline' where TRIM(EVENT1)='24';
UPDATE crash_veh_2022 SET EVENT1_txt = 'Downhill Runaway' where TRIM(EVENT1)='33';
UPDATE crash_veh_2022 SET EVENT1_txt = 'Fell/Jumped from Motor Vehicle' where TRIM(EVENT1)='34';
UPDATE crash_veh_2022 SET EVENT1_txt = 'Reentering Roadway' where TRIM(EVENT1)='37';
UPDATE crash_veh_2022 SET EVENT1_txt = 'Thrown or Falling Object' where TRIM(EVENT1)='38';
UPDATE crash_veh_2022 SET EVENT1_txt = 'Cargo/Equipment Loss or Shift' where TRIM(EVENT1)='39';
UPDATE crash_veh_2022 SET EVENT1_txt = 'Overturn/Rollover' where TRIM(EVENT1)='83';
UPDATE crash_veh_2022 SET EVENT1_txt = 'Immersion (Full or Partial)' where TRIM(EVENT1)='84';
UPDATE crash_veh_2022 SET EVENT1_txt = 'Fire/Explosion' where TRIM(EVENT1)='85';
UPDATE crash_veh_2022 SET EVENT1_txt = 'Jackknife' where TRIM(EVENT1)='86';
UPDATE crash_veh_2022 SET EVENT1_txt = 'Other Non-Collision' where TRIM(EVENT1)='89';
UPDATE crash_veh_2022 SET EVENT1_txt = 'Pedestrian' where TRIM(EVENT1)='8';
UPDATE crash_veh_2022 SET EVENT1_txt = 'Pedalcyclist (Bicyclist)' where TRIM(EVENT1)='9';
UPDATE crash_veh_2022 SET EVENT1_txt = 'Motor Vehicle In Transport' where TRIM(EVENT1)='10';
UPDATE crash_veh_2022 SET EVENT1_txt = 'Parked Motor Vehicle' where TRIM(EVENT1)='11';
UPDATE crash_veh_2022 SET EVENT1_txt = 'Struck by Falling, Shifting Cargo or Anything Set in Motion by Motor Vehicle' where TRIM(EVENT1)='12';
UPDATE crash_veh_2022 SET EVENT1_txt = 'Train-LRT' where TRIM(EVENT1)='13';
UPDATE crash_veh_2022 SET EVENT1_txt = 'Train-Passenger' where TRIM(EVENT1)='14';
UPDATE crash_veh_2022 SET EVENT1_txt = 'Train-Cargo' where TRIM(EVENT1)='15';
UPDATE crash_veh_2022 SET EVENT1_txt = 'Deer' where TRIM(EVENT1)='16';
UPDATE crash_veh_2022 SET EVENT1_txt = 'Animal Alive Before Crash' where TRIM(EVENT1)='17';
UPDATE crash_veh_2022 SET EVENT1_txt = 'Animal Dead Before Crash' where TRIM(EVENT1)='18';
UPDATE crash_veh_2022 SET EVENT1_txt = 'Other-Non Fixed Object' where TRIM(EVENT1)='25';
UPDATE crash_veh_2022 SET EVENT1_txt = 'Other-Non-Motorist' where TRIM(EVENT1)='51';
UPDATE crash_veh_2022 SET EVENT1_txt = 'Utility Pole/Light Pole' where TRIM(EVENT1)='28';
UPDATE crash_veh_2022 SET EVENT1_txt = 'Traffic Signal or Signal Structure' where TRIM(EVENT1)='30';
UPDATE crash_veh_2022 SET EVENT1_txt = 'RR / LRT Crossing Device' where TRIM(EVENT1)='31';
UPDATE crash_veh_2022 SET EVENT1_txt = 'Roadway Sign or Signal Structure' where TRIM(EVENT1)='32';
UPDATE crash_veh_2022 SET EVENT1_txt = 'Other Post, Pole or Support' where TRIM(EVENT1)='35';
UPDATE crash_veh_2022 SET EVENT1_txt = 'Construction or Maintenance Equipment' where TRIM(EVENT1)='36';
UPDATE crash_veh_2022 SET EVENT1_txt = 'Bridge Pier or Support' where TRIM(EVENT1)='41';
UPDATE crash_veh_2022 SET EVENT1_txt = 'Bridge Overhead Structure' where TRIM(EVENT1)='42';
UPDATE crash_veh_2022 SET EVENT1_txt = 'Bridge Rail' where TRIM(EVENT1)='43';
UPDATE crash_veh_2022 SET EVENT1_txt = 'Culvert' where TRIM(EVENT1)='46';
UPDATE crash_veh_2022 SET EVENT1_txt = 'Curb' where TRIM(EVENT1)='47';
UPDATE crash_veh_2022 SET EVENT1_txt = 'Ditch' where TRIM(EVENT1)='48';
UPDATE crash_veh_2022 SET EVENT1_txt = 'Embankment' where TRIM(EVENT1)='49';
UPDATE crash_veh_2022 SET EVENT1_txt = 'Snowbank' where TRIM(EVENT1)='50';
UPDATE crash_veh_2022 SET EVENT1_txt = 'Cable Median Barrier' where TRIM(EVENT1)='55';
UPDATE crash_veh_2022 SET EVENT1_txt = 'Concrete Traffic Barrier' where TRIM(EVENT1)='56';
UPDATE crash_veh_2022 SET EVENT1_txt = 'Other Traffic Barrier' where TRIM(EVENT1)='57';
UPDATE crash_veh_2022 SET EVENT1_txt = 'Impact attenuator/ Crash Cushion' where TRIM(EVENT1)='60';
UPDATE crash_veh_2022 SET EVENT1_txt = 'Guardrail (Face)' where TRIM(EVENT1)='61';
UPDATE crash_veh_2022 SET EVENT1_txt = 'Guardrail (End)' where TRIM(EVENT1)='62';
UPDATE crash_veh_2022 SET EVENT1_txt = 'Mailboxes/Posts' where TRIM(EVENT1)='67';
UPDATE crash_veh_2022 SET EVENT1_txt = 'Hydrant' where TRIM(EVENT1)='68';
UPDATE crash_veh_2022 SET EVENT1_txt = 'Tree/Shrubbery' where TRIM(EVENT1)='69';
UPDATE crash_veh_2022 SET EVENT1_txt = 'Fence (Non-Median Barrier)' where TRIM(EVENT1)='70';
UPDATE crash_veh_2022 SET EVENT1_txt = 'Parking Meter' where TRIM(EVENT1)='71';
UPDATE crash_veh_2022 SET EVENT1_txt = 'Other-Fixed Object' where TRIM(EVENT1)='75';
UPDATE crash_veh_2022 SET EVENT1_txt = 'Unknown' where TRIM(EVENT1)='99';
UPDATE crash_veh_2022 SET EVENT2_txt = 'Equipment Failure' where TRIM(EVENT2)='19';
UPDATE crash_veh_2022 SET EVENT2_txt = 'Separation of Units' where TRIM(EVENT2)='20';
UPDATE crash_veh_2022 SET EVENT2_txt = 'Ran Off Roadway Right' where TRIM(EVENT2)='21';
UPDATE crash_veh_2022 SET EVENT2_txt = 'Ran Off Roadway Left' where TRIM(EVENT2)='22';
UPDATE crash_veh_2022 SET EVENT2_txt = 'Cross Median' where TRIM(EVENT2)='23';
UPDATE crash_veh_2022 SET EVENT2_txt = 'Cross Centerline' where TRIM(EVENT2)='24';
UPDATE crash_veh_2022 SET EVENT2_txt = 'Downhill Runaway' where TRIM(EVENT2)='33';
UPDATE crash_veh_2022 SET EVENT2_txt = 'Fell/Jumped from Motor Vehicle' where TRIM(EVENT2)='34';
UPDATE crash_veh_2022 SET EVENT2_txt = 'Reentering Roadway' where TRIM(EVENT2)='37';
UPDATE crash_veh_2022 SET EVENT2_txt = 'Thrown or Falling Object' where TRIM(EVENT2)='38';
UPDATE crash_veh_2022 SET EVENT2_txt = 'Cargo/Equipment Loss or Shift' where TRIM(EVENT2)='39';
UPDATE crash_veh_2022 SET EVENT2_txt = 'Overturn/Rollover' where TRIM(EVENT2)='83';
UPDATE crash_veh_2022 SET EVENT2_txt = 'Immersion (Full or Partial)' where TRIM(EVENT2)='84';
UPDATE crash_veh_2022 SET EVENT2_txt = 'Fire/Explosion' where TRIM(EVENT2)='85';
UPDATE crash_veh_2022 SET EVENT2_txt = 'Jackknife' where TRIM(EVENT2)='86';
UPDATE crash_veh_2022 SET EVENT2_txt = 'Other Non-Collision' where TRIM(EVENT2)='89';
UPDATE crash_veh_2022 SET EVENT2_txt = 'Pedestrian' where TRIM(EVENT2)='8';
UPDATE crash_veh_2022 SET EVENT2_txt = 'Pedalcyclist (Bicyclist)' where TRIM(EVENT2)='9';
UPDATE crash_veh_2022 SET EVENT2_txt = 'Motor Vehicle In Transport' where TRIM(EVENT2)='10';
UPDATE crash_veh_2022 SET EVENT2_txt = 'Parked Motor Vehicle' where TRIM(EVENT2)='11';
UPDATE crash_veh_2022 SET EVENT2_txt = 'Struck by Falling, Shifting Cargo or Anything Set in Motion by Motor Vehicle' where TRIM(EVENT2)='12';
UPDATE crash_veh_2022 SET EVENT2_txt = 'Train-LRT' where TRIM(EVENT2)='13';
UPDATE crash_veh_2022 SET EVENT2_txt = 'Train-Passenger' where TRIM(EVENT2)='14';
UPDATE crash_veh_2022 SET EVENT2_txt = 'Train-Cargo' where TRIM(EVENT2)='15';
UPDATE crash_veh_2022 SET EVENT2_txt = 'Deer' where TRIM(EVENT2)='16';
UPDATE crash_veh_2022 SET EVENT2_txt = 'Animal Alive Before Crash' where TRIM(EVENT2)='17';
UPDATE crash_veh_2022 SET EVENT2_txt = 'Animal Dead Before Crash' where TRIM(EVENT2)='18';
UPDATE crash_veh_2022 SET EVENT2_txt = 'Other-Non Fixed Object' where TRIM(EVENT2)='25';
UPDATE crash_veh_2022 SET EVENT2_txt = 'Other-Non-Motorist' where TRIM(EVENT2)='51';
UPDATE crash_veh_2022 SET EVENT2_txt = 'Utility Pole/Light Pole' where TRIM(EVENT2)='28';
UPDATE crash_veh_2022 SET EVENT2_txt = 'Traffic Signal or Signal Structure' where TRIM(EVENT2)='30';
UPDATE crash_veh_2022 SET EVENT2_txt = 'RR / LRT Crossing Device' where TRIM(EVENT2)='31';
UPDATE crash_veh_2022 SET EVENT2_txt = 'Roadway Sign or Signal Structure' where TRIM(EVENT2)='32';
UPDATE crash_veh_2022 SET EVENT2_txt = 'Other Post, Pole or Support' where TRIM(EVENT2)='35';
UPDATE crash_veh_2022 SET EVENT2_txt = 'Construction or Maintenance Equipment' where TRIM(EVENT2)='36';
UPDATE crash_veh_2022 SET EVENT2_txt = 'Bridge Pier or Support' where TRIM(EVENT2)='41';
UPDATE crash_veh_2022 SET EVENT2_txt = 'Bridge Overhead Structure' where TRIM(EVENT2)='42';
UPDATE crash_veh_2022 SET EVENT2_txt = 'Bridge Rail' where TRIM(EVENT2)='43';
UPDATE crash_veh_2022 SET EVENT2_txt = 'Culvert' where TRIM(EVENT2)='46';
UPDATE crash_veh_2022 SET EVENT2_txt = 'Curb' where TRIM(EVENT2)='47';
UPDATE crash_veh_2022 SET EVENT2_txt = 'Ditch' where TRIM(EVENT2)='48';
UPDATE crash_veh_2022 SET EVENT2_txt = 'Embankment' where TRIM(EVENT2)='49';
UPDATE crash_veh_2022 SET EVENT2_txt = 'Snowbank' where TRIM(EVENT2)='50';
UPDATE crash_veh_2022 SET EVENT2_txt = 'Cable Median Barrier' where TRIM(EVENT2)='55';
UPDATE crash_veh_2022 SET EVENT2_txt = 'Concrete Traffic Barrier' where TRIM(EVENT2)='56';
UPDATE crash_veh_2022 SET EVENT2_txt = 'Other Traffic Barrier' where TRIM(EVENT2)='57';
UPDATE crash_veh_2022 SET EVENT2_txt = 'Impact attenuator/ Crash Cushion' where TRIM(EVENT2)='60';
UPDATE crash_veh_2022 SET EVENT2_txt = 'Guardrail (Face)' where TRIM(EVENT2)='61';
UPDATE crash_veh_2022 SET EVENT2_txt = 'Guardrail (End)' where TRIM(EVENT2)='62';
UPDATE crash_veh_2022 SET EVENT2_txt = 'Mailboxes/Posts' where TRIM(EVENT2)='67';
UPDATE crash_veh_2022 SET EVENT2_txt = 'Hydrant' where TRIM(EVENT2)='68';
UPDATE crash_veh_2022 SET EVENT2_txt = 'Tree/Shrubbery' where TRIM(EVENT2)='69';
UPDATE crash_veh_2022 SET EVENT2_txt = 'Fence (Non-Median Barrier)' where TRIM(EVENT2)='70';
UPDATE crash_veh_2022 SET EVENT2_txt = 'Parking Meter' where TRIM(EVENT2)='71';
UPDATE crash_veh_2022 SET EVENT2_txt = 'Other-Fixed Object' where TRIM(EVENT2)='75';
UPDATE crash_veh_2022 SET EVENT2_txt = 'Unknown' where TRIM(EVENT2)='99';
UPDATE crash_veh_2022 SET EVENT3_txt = 'Equipment Failure' where TRIM(EVENT3)='19';
UPDATE crash_veh_2022 SET EVENT3_txt = 'Separation of Units' where TRIM(EVENT3)='20';
UPDATE crash_veh_2022 SET EVENT3_txt = 'Ran Off Roadway Right' where TRIM(EVENT3)='21';
UPDATE crash_veh_2022 SET EVENT3_txt = 'Ran Off Roadway Left' where TRIM(EVENT3)='22';
UPDATE crash_veh_2022 SET EVENT3_txt = 'Cross Median' where TRIM(EVENT3)='23';
UPDATE crash_veh_2022 SET EVENT3_txt = 'Cross Centerline' where TRIM(EVENT3)='24';
UPDATE crash_veh_2022 SET EVENT3_txt = 'Downhill Runaway' where TRIM(EVENT3)='33';
UPDATE crash_veh_2022 SET EVENT3_txt = 'Fell/Jumped from Motor Vehicle' where TRIM(EVENT3)='34';
UPDATE crash_veh_2022 SET EVENT3_txt = 'Reentering Roadway' where TRIM(EVENT3)='37';
UPDATE crash_veh_2022 SET EVENT3_txt = 'Thrown or Falling Object' where TRIM(EVENT3)='38';
UPDATE crash_veh_2022 SET EVENT3_txt = 'Cargo/Equipment Loss or Shift' where TRIM(EVENT3)='39';
UPDATE crash_veh_2022 SET EVENT3_txt = 'Overturn/Rollover' where TRIM(EVENT3)='83';
UPDATE crash_veh_2022 SET EVENT3_txt = 'Immersion (Full or Partial)' where TRIM(EVENT3)='84';
UPDATE crash_veh_2022 SET EVENT3_txt = 'Fire/Explosion' where TRIM(EVENT3)='85';
UPDATE crash_veh_2022 SET EVENT3_txt = 'Jackknife' where TRIM(EVENT3)='86';
UPDATE crash_veh_2022 SET EVENT3_txt = 'Other Non-Collision' where TRIM(EVENT3)='89';
UPDATE crash_veh_2022 SET EVENT3_txt = 'Pedestrian' where TRIM(EVENT3)='8';
UPDATE crash_veh_2022 SET EVENT3_txt = 'Pedalcyclist (Bicyclist)' where TRIM(EVENT3)='9';
UPDATE crash_veh_2022 SET EVENT3_txt = 'Motor Vehicle In Transport' where TRIM(EVENT3)='10';
UPDATE crash_veh_2022 SET EVENT3_txt = 'Parked Motor Vehicle' where TRIM(EVENT3)='11';
UPDATE crash_veh_2022 SET EVENT3_txt = 'Struck by Falling, Shifting Cargo or Anything Set in Motion by Motor Vehicle' where TRIM(EVENT3)='12';
UPDATE crash_veh_2022 SET EVENT3_txt = 'Train-LRT' where TRIM(EVENT3)='13';
UPDATE crash_veh_2022 SET EVENT3_txt = 'Train-Passenger' where TRIM(EVENT3)='14';
UPDATE crash_veh_2022 SET EVENT3_txt = 'Train-Cargo' where TRIM(EVENT3)='15';
UPDATE crash_veh_2022 SET EVENT3_txt = 'Deer' where TRIM(EVENT3)='16';
UPDATE crash_veh_2022 SET EVENT3_txt = 'Animal Alive Before Crash' where TRIM(EVENT3)='17';
UPDATE crash_veh_2022 SET EVENT3_txt = 'Animal Dead Before Crash' where TRIM(EVENT3)='18';
UPDATE crash_veh_2022 SET EVENT3_txt = 'Other-Non Fixed Object' where TRIM(EVENT3)='25';
UPDATE crash_veh_2022 SET EVENT3_txt = 'Other-Non-Motorist' where TRIM(EVENT3)='51';
UPDATE crash_veh_2022 SET EVENT3_txt = 'Utility Pole/Light Pole' where TRIM(EVENT3)='28';
UPDATE crash_veh_2022 SET EVENT3_txt = 'Traffic Signal or Signal Structure' where TRIM(EVENT3)='30';
UPDATE crash_veh_2022 SET EVENT3_txt = 'RR / LRT Crossing Device' where TRIM(EVENT3)='31';
UPDATE crash_veh_2022 SET EVENT3_txt = 'Roadway Sign or Signal Structure' where TRIM(EVENT3)='32';
UPDATE crash_veh_2022 SET EVENT3_txt = 'Other Post, Pole or Support' where TRIM(EVENT3)='35';
UPDATE crash_veh_2022 SET EVENT3_txt = 'Construction or Maintenance Equipment' where TRIM(EVENT3)='36';
UPDATE crash_veh_2022 SET EVENT3_txt = 'Bridge Pier or Support' where TRIM(EVENT3)='41';
UPDATE crash_veh_2022 SET EVENT3_txt = 'Bridge Overhead Structure' where TRIM(EVENT3)='42';
UPDATE crash_veh_2022 SET EVENT3_txt = 'Bridge Rail' where TRIM(EVENT3)='43';
UPDATE crash_veh_2022 SET EVENT3_txt = 'Culvert' where TRIM(EVENT3)='46';
UPDATE crash_veh_2022 SET EVENT3_txt = 'Curb' where TRIM(EVENT3)='47';
UPDATE crash_veh_2022 SET EVENT3_txt = 'Ditch' where TRIM(EVENT3)='48';
UPDATE crash_veh_2022 SET EVENT3_txt = 'Embankment' where TRIM(EVENT3)='49';
UPDATE crash_veh_2022 SET EVENT3_txt = 'Snowbank' where TRIM(EVENT3)='50';
UPDATE crash_veh_2022 SET EVENT3_txt = 'Cable Median Barrier' where TRIM(EVENT3)='55';
UPDATE crash_veh_2022 SET EVENT3_txt = 'Concrete Traffic Barrier' where TRIM(EVENT3)='56';
UPDATE crash_veh_2022 SET EVENT3_txt = 'Other Traffic Barrier' where TRIM(EVENT3)='57';
UPDATE crash_veh_2022 SET EVENT3_txt = 'Impact attenuator/ Crash Cushion' where TRIM(EVENT3)='60';
UPDATE crash_veh_2022 SET EVENT3_txt = 'Guardrail (Face)' where TRIM(EVENT3)='61';
UPDATE crash_veh_2022 SET EVENT3_txt = 'Guardrail (End)' where TRIM(EVENT3)='62';
UPDATE crash_veh_2022 SET EVENT3_txt = 'Mailboxes/Posts' where TRIM(EVENT3)='67';
UPDATE crash_veh_2022 SET EVENT3_txt = 'Hydrant' where TRIM(EVENT3)='68';
UPDATE crash_veh_2022 SET EVENT3_txt = 'Tree/Shrubbery' where TRIM(EVENT3)='69';
UPDATE crash_veh_2022 SET EVENT3_txt = 'Fence (Non-Median Barrier)' where TRIM(EVENT3)='70';
UPDATE crash_veh_2022 SET EVENT3_txt = 'Parking Meter' where TRIM(EVENT3)='71';
UPDATE crash_veh_2022 SET EVENT3_txt = 'Other-Fixed Object' where TRIM(EVENT3)='75';
UPDATE crash_veh_2022 SET EVENT3_txt = 'Unknown' where TRIM(EVENT3)='99';
UPDATE crash_veh_2022 SET EVENT4_txt = 'Equipment Failure' where TRIM(EVENT4)='19';
UPDATE crash_veh_2022 SET EVENT4_txt = 'Separation of Units' where TRIM(EVENT4)='20';
UPDATE crash_veh_2022 SET EVENT4_txt = 'Ran Off Roadway Right' where TRIM(EVENT4)='21';
UPDATE crash_veh_2022 SET EVENT4_txt = 'Ran Off Roadway Left' where TRIM(EVENT4)='22';
UPDATE crash_veh_2022 SET EVENT4_txt = 'Cross Median' where TRIM(EVENT4)='23';
UPDATE crash_veh_2022 SET EVENT4_txt = 'Cross Centerline' where TRIM(EVENT4)='24';
UPDATE crash_veh_2022 SET EVENT4_txt = 'Downhill Runaway' where TRIM(EVENT4)='33';
UPDATE crash_veh_2022 SET EVENT4_txt = 'Fell/Jumped from Motor Vehicle' where TRIM(EVENT4)='34';
UPDATE crash_veh_2022 SET EVENT4_txt = 'Reentering Roadway' where TRIM(EVENT4)='37';
UPDATE crash_veh_2022 SET EVENT4_txt = 'Thrown or Falling Object' where TRIM(EVENT4)='38';
UPDATE crash_veh_2022 SET EVENT4_txt = 'Cargo/Equipment Loss or Shift' where TRIM(EVENT4)='39';
UPDATE crash_veh_2022 SET EVENT4_txt = 'Overturn/Rollover' where TRIM(EVENT4)='83';
UPDATE crash_veh_2022 SET EVENT4_txt = 'Immersion (Full or Partial)' where TRIM(EVENT4)='84';
UPDATE crash_veh_2022 SET EVENT4_txt = 'Fire/Explosion' where TRIM(EVENT4)='85';
UPDATE crash_veh_2022 SET EVENT4_txt = 'Jackknife' where TRIM(EVENT4)='86';
UPDATE crash_veh_2022 SET EVENT4_txt = 'Other Non-Collision' where TRIM(EVENT4)='89';
UPDATE crash_veh_2022 SET EVENT4_txt = 'Pedestrian' where TRIM(EVENT4)='8';
UPDATE crash_veh_2022 SET EVENT4_txt = 'Pedalcyclist (Bicyclist)' where TRIM(EVENT4)='9';
UPDATE crash_veh_2022 SET EVENT4_txt = 'Motor Vehicle In Transport' where TRIM(EVENT4)='10';
UPDATE crash_veh_2022 SET EVENT4_txt = 'Parked Motor Vehicle' where TRIM(EVENT4)='11';
UPDATE crash_veh_2022 SET EVENT4_txt = 'Struck by Falling, Shifting Cargo or Anything Set in Motion by Motor Vehicle' where TRIM(EVENT4)='12';
UPDATE crash_veh_2022 SET EVENT4_txt = 'Train-LRT' where TRIM(EVENT4)='13';
UPDATE crash_veh_2022 SET EVENT4_txt = 'Train-Passenger' where TRIM(EVENT4)='14';
UPDATE crash_veh_2022 SET EVENT4_txt = 'Train-Cargo' where TRIM(EVENT4)='15';
UPDATE crash_veh_2022 SET EVENT4_txt = 'Deer' where TRIM(EVENT4)='16';
UPDATE crash_veh_2022 SET EVENT4_txt = 'Animal Alive Before Crash' where TRIM(EVENT4)='17';
UPDATE crash_veh_2022 SET EVENT4_txt = 'Animal Dead Before Crash' where TRIM(EVENT4)='18';
UPDATE crash_veh_2022 SET EVENT4_txt = 'Other-Non Fixed Object' where TRIM(EVENT4)='25';
UPDATE crash_veh_2022 SET EVENT4_txt = 'Other-Non-Motorist' where TRIM(EVENT4)='51';
UPDATE crash_veh_2022 SET EVENT4_txt = 'Utility Pole/Light Pole' where TRIM(EVENT4)='28';
UPDATE crash_veh_2022 SET EVENT4_txt = 'Traffic Signal or Signal Structure' where TRIM(EVENT4)='30';
UPDATE crash_veh_2022 SET EVENT4_txt = 'RR / LRT Crossing Device' where TRIM(EVENT4)='31';
UPDATE crash_veh_2022 SET EVENT4_txt = 'Roadway Sign or Signal Structure' where TRIM(EVENT4)='32';
UPDATE crash_veh_2022 SET EVENT4_txt = 'Other Post, Pole or Support' where TRIM(EVENT4)='35';
UPDATE crash_veh_2022 SET EVENT4_txt = 'Construction or Maintenance Equipment' where TRIM(EVENT4)='36';
UPDATE crash_veh_2022 SET EVENT4_txt = 'Bridge Pier or Support' where TRIM(EVENT4)='41';
UPDATE crash_veh_2022 SET EVENT4_txt = 'Bridge Overhead Structure' where TRIM(EVENT4)='42';
UPDATE crash_veh_2022 SET EVENT4_txt = 'Bridge Rail' where TRIM(EVENT4)='43';
UPDATE crash_veh_2022 SET EVENT4_txt = 'Culvert' where TRIM(EVENT4)='46';
UPDATE crash_veh_2022 SET EVENT4_txt = 'Curb' where TRIM(EVENT4)='47';
UPDATE crash_veh_2022 SET EVENT4_txt = 'Ditch' where TRIM(EVENT4)='48';
UPDATE crash_veh_2022 SET EVENT4_txt = 'Embankment' where TRIM(EVENT4)='49';
UPDATE crash_veh_2022 SET EVENT4_txt = 'Snowbank' where TRIM(EVENT4)='50';
UPDATE crash_veh_2022 SET EVENT4_txt = 'Cable Median Barrier' where TRIM(EVENT4)='55';
UPDATE crash_veh_2022 SET EVENT4_txt = 'Concrete Traffic Barrier' where TRIM(EVENT4)='56';
UPDATE crash_veh_2022 SET EVENT4_txt = 'Other Traffic Barrier' where TRIM(EVENT4)='57';
UPDATE crash_veh_2022 SET EVENT4_txt = 'Impact attenuator/ Crash Cushion' where TRIM(EVENT4)='60';
UPDATE crash_veh_2022 SET EVENT4_txt = 'Guardrail (Face)' where TRIM(EVENT4)='61';
UPDATE crash_veh_2022 SET EVENT4_txt = 'Guardrail (End)' where TRIM(EVENT4)='62';
UPDATE crash_veh_2022 SET EVENT4_txt = 'Mailboxes/Posts' where TRIM(EVENT4)='67';
UPDATE crash_veh_2022 SET EVENT4_txt = 'Hydrant' where TRIM(EVENT4)='68';
UPDATE crash_veh_2022 SET EVENT4_txt = 'Tree/Shrubbery' where TRIM(EVENT4)='69';
UPDATE crash_veh_2022 SET EVENT4_txt = 'Fence (Non-Median Barrier)' where TRIM(EVENT4)='70';
UPDATE crash_veh_2022 SET EVENT4_txt = 'Parking Meter' where TRIM(EVENT4)='71';
UPDATE crash_veh_2022 SET EVENT4_txt = 'Other-Fixed Object' where TRIM(EVENT4)='75';
UPDATE crash_veh_2022 SET EVENT4_txt = 'Unknown' where TRIM(EVENT4)='99';
UPDATE crash_acc_2022 SET FATAL_txt = 'Yes' where TRIM(FATAL)='1';
UPDATE crash_acc_2022 SET FATAL_txt = 'No' where TRIM(FATAL)='2';
UPDATE crash_acc_2022 SET FATWKZN_txt = 'Lane Closure' where TRIM(FATWKZN)='1';
UPDATE crash_acc_2022 SET FATWKZN_txt = 'Lane Shift/Crossover' where TRIM(FATWKZN)='2';
UPDATE crash_acc_2022 SET FATWKZN_txt = 'Work on Shoulder/Median' where TRIM(FATWKZN)='3';
UPDATE crash_acc_2022 SET FATWKZN_txt = 'Intermittent or Moving Work Zone' where TRIM(FATWKZN)='6';
UPDATE crash_acc_2022 SET FATWKZN_txt = 'Other' where TRIM(FATWKZN)='90';
UPDATE crash_acc_2022 SET FATWKZN_txt = 'Not applicable' where TRIM(FATWKZN)='98';
UPDATE crash_acc_2022 SET FATWKZN_txt = 'Unknown' where TRIM(FATWKZN)='99';
UPDATE crash_veh_2022 SET FIRE_txt = 'Yes' where TRIM(FIRE)='1';
UPDATE crash_veh_2022 SET FIRE_txt = 'No' where TRIM(FIRE)='2';
UPDATE crash_veh_2022 SET FIRE_txt = 'Not applicable' where TRIM(FIRE)='98';
UPDATE crash_veh_2022 SET FIRE_txt = 'Unknown' where TRIM(FIRE)='99';
UPDATE crash_veh_2022 SET GVWR_txt = '10,000 lbs or less' where TRIM(GVWR)='1';
UPDATE crash_veh_2022 SET GVWR_txt = '10,001-26,000 lbs' where TRIM(GVWR)='2';
UPDATE crash_veh_2022 SET GVWR_txt = 'More than 26,000 lbs' where TRIM(GVWR)='3';
UPDATE crash_veh_2022 SET GVWR_txt = 'Not applicable' where TRIM(GVWR)='98';
UPDATE crash_veh_2022 SET HAZPLAC_txt = 'Yes' where TRIM(HAZPLAC)='1';
UPDATE crash_veh_2022 SET HAZPLAC_txt = 'No' where TRIM(HAZPLAC)='2';
UPDATE crash_veh_2022 SET HAZPLAC_txt = 'Unknown' where TRIM(HAZPLAC)='98';
UPDATE crash_veh_2022 SET HAZREL_txt = 'Yes' where TRIM(HAZREL)='1';
UPDATE crash_veh_2022 SET HAZREL_txt = 'No' where TRIM(HAZREL)='2';
UPDATE crash_veh_2022 SET HAZREL_txt = 'Not applicable' where TRIM(HAZREL)='98';
UPDATE crash_acc_2022 SET HITRUN_txt = 'Yes' where TRIM(HITRUN)='1';
UPDATE crash_acc_2022 SET HITRUN_txt = 'No' where TRIM(HITRUN)='2';
UPDATE crash_veh_2022 SET HITRUNV_txt = 'Yes' where TRIM(HITRUNV)='1';
UPDATE crash_veh_2022 SET HITRUNV_txt = 'No' where TRIM(HITRUNV)='2';
UPDATE crash_veh_2022 SET HITRUNV_txt = '???' where TRIM(HITRUNV)='99';
UPDATE crash_per_2022 SET INJSEV_txt = 'Killed' where TRIM(INJSEV)='1';
UPDATE crash_per_2022 SET INJSEV_txt = 'Suspected Serious Injury' where TRIM(INJSEV)='2';
UPDATE crash_per_2022 SET INJSEV_txt = 'Suspected Minor Injury' where TRIM(INJSEV)='3';
UPDATE crash_per_2022 SET INJSEV_txt = 'Possible Injury' where TRIM(INJSEV)='4';
UPDATE crash_per_2022 SET INJSEV_txt = 'No Apparent Injury' where TRIM(INJSEV)='5';
UPDATE crash_acc_2022 SET INJURY_txt = 'Yes' where TRIM(INJURY)='1';
UPDATE crash_acc_2022 SET INJURY_txt = 'No' where TRIM(INJURY)='2';
UPDATE crash_veh_2022 SET INS_txt = 'Yes' where TRIM(INS)='1';
UPDATE crash_veh_2022 SET INS_txt = 'No' where TRIM(INS)='2';
UPDATE crash_veh_2022 SET INS_txt = 'Unknown' where TRIM(INS)='99';
UPDATE crash_acc_2022 SET INTERSECT_txt = 'Yes' where TRIM(INTERSECT)='1';
UPDATE crash_acc_2022 SET INTERSECT_txt = 'No' where TRIM(INTERSECT)='2';
UPDATE crash_acc_2022 SET INTERSECT_txt = 'all pre-2016 data]' where TRIM(INTERSECT)='[9';
UPDATE crash_acc_2022 SET INTERSECT_txt = 'Unknown' where TRIM(INTERSECT)='99';
UPDATE crash_acc_2022 SET INTREL_txt = 'Not at intersection, interchange, or junction' where TRIM(INTREL)='2';
UPDATE crash_acc_2022 SET INTREL_txt = 'Four-Way Intersection' where TRIM(INTREL)='3';
UPDATE crash_acc_2022 SET INTREL_txt = 'T-Intersection' where TRIM(INTREL)='4';
UPDATE crash_acc_2022 SET INTREL_txt = 'Y-Intersection' where TRIM(INTREL)='5';
UPDATE crash_acc_2022 SET INTREL_txt = 'Five-Way Intersection or More' where TRIM(INTREL)='6';
UPDATE crash_acc_2022 SET INTREL_txt = 'Roundabout' where TRIM(INTREL)='7';
UPDATE crash_acc_2022 SET INTREL_txt = 'Other traffic circle' where TRIM(INTREL)='8';
UPDATE crash_acc_2022 SET INTREL_txt = 'Intersection Related' where TRIM(INTREL)='10';
UPDATE crash_acc_2022 SET INTREL_txt = 'Driveway Access Related' where TRIM(INTREL)='16';
UPDATE crash_acc_2022 SET INTREL_txt = 'Alley Access Related' where TRIM(INTREL)='17';
UPDATE crash_acc_2022 SET INTREL_txt = 'At School Crossing' where TRIM(INTREL)='18';
UPDATE crash_acc_2022 SET INTREL_txt = 'Railway Grade Crossing' where TRIM(INTREL)='19';
UPDATE crash_acc_2022 SET INTREL_txt = 'Shared-Use Path or Trail' where TRIM(INTREL)='20';
UPDATE crash_acc_2022 SET INTREL_txt = 'Interchange on Ramp' where TRIM(INTREL)='25';
UPDATE crash_acc_2022 SET INTREL_txt = 'Interchange off Ramp' where TRIM(INTREL)='26';
UPDATE crash_acc_2022 SET INTREL_txt = 'Entrance/Exit Ramp' where TRIM(INTREL)='27';
UPDATE crash_acc_2022 SET INTREL_txt = 'Crossover' where TRIM(INTREL)='28';
UPDATE crash_acc_2022 SET INTREL_txt = 'Interchange Other Area' where TRIM(INTREL)='29';
UPDATE crash_acc_2022 SET INTREL_txt = 'Acceleration/Deceleration Lane' where TRIM(INTREL)='30';
UPDATE crash_acc_2022 SET INTREL_txt = 'Other' where TRIM(INTREL)='90';
UPDATE crash_acc_2022 SET INTREL_txt = 'Unknown' where TRIM(INTREL)='99';
UPDATE crash_acc_2022 SET INTYPE_txt = 'Interstate Trunk Highway - ISTH' where TRIM(INTYPE)='1';
UPDATE crash_acc_2022 SET INTYPE_txt = 'U.S. Trunk Highway - USTH' where TRIM(INTYPE)='2';
UPDATE crash_acc_2022 SET INTYPE_txt = 'State Trunk Highway - MNTH' where TRIM(INTYPE)='3';
UPDATE crash_acc_2022 SET INTYPE_txt = 'County State Aid Highway - CSAH' where TRIM(INTYPE)='4';
UPDATE crash_acc_2022 SET INTYPE_txt = 'Municipal State Aid Street - MSAS' where TRIM(INTYPE)='5';
UPDATE crash_acc_2022 SET INTYPE_txt = 'County Road - CNTY' where TRIM(INTYPE)='7';
UPDATE crash_acc_2022 SET INTYPE_txt = 'Township Road' where TRIM(INTYPE)='8';
UPDATE crash_acc_2022 SET INTYPE_txt = 'Unorganized Township Road' where TRIM(INTYPE)='9';
UPDATE crash_acc_2022 SET INTYPE_txt = 'Local or City = Street - MUN' where TRIM(INTYPE)='10';
UPDATE crash_acc_2022 SET INTYPE_txt = 'National Park Road - NATP' where TRIM(INTYPE)='11';
UPDATE crash_acc_2022 SET INTYPE_txt = 'National Forest Road - NATF' where TRIM(INTYPE)='12';
UPDATE crash_acc_2022 SET INTYPE_txt = 'Indian Service Road - IND' where TRIM(INTYPE)='13';
UPDATE crash_acc_2022 SET INTYPE_txt = 'State Forest Road - SFR' where TRIM(INTYPE)='14';
UPDATE crash_acc_2022 SET INTYPE_txt = 'State Park Road - SPRK' where TRIM(INTYPE)='15';
UPDATE crash_acc_2022 SET INTYPE_txt = 'Military Road - MIL' where TRIM(INTYPE)='16';
UPDATE crash_acc_2022 SET INTYPE_txt = 'National Monument Road - NATM' where TRIM(INTYPE)='17';
UPDATE crash_acc_2022 SET INTYPE_txt = 'National Wildlife Refuge Road' where TRIM(INTYPE)='18';
UPDATE crash_acc_2022 SET INTYPE_txt = 'Frontage Road - FRNT' where TRIM(INTYPE)='19';
UPDATE crash_acc_2022 SET INTYPE_txt = 'State Game Preserve Road' where TRIM(INTYPE)='20';
UPDATE crash_acc_2022 SET INTYPE_txt = 'Private Road Open to Public' where TRIM(INTYPE)='21';
UPDATE crash_acc_2022 SET INTYPE_txt = 'Ramp or Connector' where TRIM(INTYPE)='22';
UPDATE crash_acc_2022 SET INTYPE_txt = 'Airport Roads' where TRIM(INTYPE)='23';
UPDATE crash_acc_2022 SET INTYPE_txt = 'Bureau of Indian Affairs Road - BIA' where TRIM(INTYPE)='24';
UPDATE crash_acc_2022 SET INTYPE_txt = 'Non-Trafficway' where TRIM(INTYPE)='25';
UPDATE crash_acc_2022 SET INTYPE_txt = 'Other Local Road - OLR' where TRIM(INTYPE)='26';
UPDATE crash_acc_2022 SET INTYPE_txt = 'Railroad Service Road - RSR' where TRIM(INTYPE)='27';
UPDATE crash_acc_2022 SET INTYPE_txt = 'State Toll Road - STL' where TRIM(INTYPE)='28';
UPDATE crash_acc_2022 SET INTYPE_txt = 'Local Toll Road - LTL' where TRIM(INTYPE)='29';
UPDATE crash_acc_2022 SET INTYPE_txt = 'Alleyways' where TRIM(INTYPE)='30';
UPDATE crash_acc_2022 SET INTYPE_txt = 'USBR Road - BRR' where TRIM(INTYPE)='31';
UPDATE crash_acc_2022 SET INTYPE_txt = 'Other Road' where TRIM(INTYPE)='32';
UPDATE crash_acc_2022 SET INTYPE_txt = 'BLM Road' where TRIM(INTYPE)='33';
UPDATE crash_acc_2022 SET INTYPE_txt = 'Non Trafficway' where TRIM(INTYPE)='34';
UPDATE crash_acc_2022 SET INTYPE_txt = 'HOV/HOT/Reversible Lanes on Interstate - IHO' where TRIM(INTYPE)='41';
UPDATE crash_acc_2022 SET INTYPE_txt = 'UHO HOV/HOT/Reversible Lanes on US Hwy - UHO' where TRIM(INTYPE)='42';
UPDATE crash_acc_2022 SET INTYPE_txt = 'MHO HOV/HOT/Reversible Lanes on MN Hwy - MHO' where TRIM(INTYPE)='43';
UPDATE crash_acc_2022 SET INTYPE_txt = 'Non-numbered Interstates - UNI' where TRIM(INTYPE)='51';
UPDATE crash_acc_2022 SET INTYPE_txt = 'Non-numbered US Hwy - UNU' where TRIM(INTYPE)='52';
UPDATE crash_acc_2022 SET INTYPE_txt = 'Non-numbered MN Hwy - UNM' where TRIM(INTYPE)='53';
UPDATE crash_acc_2022 SET INTYPE_txt = 'Not Located' where TRIM(INTYPE)='98';
UPDATE crash_acc_2022 SET LANDOWN_txt = 'Public Property' where TRIM(LANDOWN)='1';
UPDATE crash_acc_2022 SET LANDOWN_txt = 'Private Property' where TRIM(LANDOWN)='2';
UPDATE crash_acc_2022 SET LEPRES_txt = 'Yes' where TRIM(LEPRES)='1';
UPDATE crash_acc_2022 SET LEPRES_txt = 'No' where TRIM(LEPRES)='2';
UPDATE crash_acc_2022 SET LEPRES_txt = 'Unknown' where TRIM(LEPRES)='99';
UPDATE crash_acc_2022 SET LIGHT_txt = 'Daylight' where TRIM(LIGHT)='1';
UPDATE crash_acc_2022 SET LIGHT_txt = 'Sunrise' where TRIM(LIGHT)='2';
UPDATE crash_acc_2022 SET LIGHT_txt = 'Sunset' where TRIM(LIGHT)='3';
UPDATE crash_acc_2022 SET LIGHT_txt = 'Dark (Street Lights On)' where TRIM(LIGHT)='4';
UPDATE crash_acc_2022 SET LIGHT_txt = 'Dark (Street Lights Off)' where TRIM(LIGHT)='5';
UPDATE crash_acc_2022 SET LIGHT_txt = 'Dark (No Street Lights)' where TRIM(LIGHT)='6';
UPDATE crash_acc_2022 SET LIGHT_txt = 'Dark (Unknown Lighting)' where TRIM(LIGHT)='7';
UPDATE crash_acc_2022 SET LIGHT_txt = 'Other' where TRIM(LIGHT)='90';
UPDATE crash_acc_2022 SET LIGHT_txt = 'Unknown' where TRIM(LIGHT)='99';
UPDATE crash_acc_2022 SET LOCFHE_txt = 'On Roadway (alley, driveway, etc.)' where TRIM(LOCFHE)='1';
UPDATE crash_acc_2022 SET LOCFHE_txt = 'On Shoulder' where TRIM(LOCFHE)='2';
UPDATE crash_acc_2022 SET LOCFHE_txt = 'On Median' where TRIM(LOCFHE)='3';
UPDATE crash_acc_2022 SET LOCFHE_txt = 'On Separator' where TRIM(LOCFHE)='4';
UPDATE crash_acc_2022 SET LOCFHE_txt = 'Gore' where TRIM(LOCFHE)='5';
UPDATE crash_acc_2022 SET LOCFHE_txt = 'On Roadside' where TRIM(LOCFHE)='6';
UPDATE crash_acc_2022 SET LOCFHE_txt = 'In Parking Lane or Zone' where TRIM(LOCFHE)='7';
UPDATE crash_acc_2022 SET LOCFHE_txt = 'Parking Lot' where TRIM(LOCFHE)='10';
UPDATE crash_acc_2022 SET LOCFHE_txt = 'Outside of Trafficway' where TRIM(LOCFHE)='11';
UPDATE crash_acc_2022 SET LOCFHE_txt = 'Off Roadway, location unknown' where TRIM(LOCFHE)='89';
UPDATE crash_acc_2022 SET LOCFHE_txt = 'Other' where TRIM(LOCFHE)='90';
UPDATE crash_acc_2022 SET LOCFHE_txt = 'Unknown' where TRIM(LOCFHE)='99';
UPDATE crash_acc_2022 SET LOCWKZN_txt = 'Before the First Work Zone Warning Sign' where TRIM(LOCWKZN)='1';
UPDATE crash_acc_2022 SET LOCWKZN_txt = 'Advance Warning Area' where TRIM(LOCWKZN)='2';
UPDATE crash_acc_2022 SET LOCWKZN_txt = 'Transition Area' where TRIM(LOCWKZN)='3';
UPDATE crash_acc_2022 SET LOCWKZN_txt = 'Activity Area' where TRIM(LOCWKZN)='4';
UPDATE crash_acc_2022 SET LOCWKZN_txt = 'Termination Area' where TRIM(LOCWKZN)='5';
UPDATE crash_acc_2022 SET LOCWKZN_txt = 'After the End of Work Zone Sign' where TRIM(LOCWKZN)='6';
UPDATE crash_acc_2022 SET LOCWKZN_txt = 'Other' where TRIM(LOCWKZN)='90';
UPDATE crash_per_2022 SET METHHOSP_txt = 'Not Transported' where TRIM(METHHOSP)='1';
UPDATE crash_per_2022 SET METHHOSP_txt = 'EMS Ground' where TRIM(METHHOSP)='2';
UPDATE crash_per_2022 SET METHHOSP_txt = 'EMS Air' where TRIM(METHHOSP)='3';
UPDATE crash_per_2022 SET METHHOSP_txt = 'Other' where TRIM(METHHOSP)='90';
UPDATE crash_per_2022 SET METHHOSP_txt = 'Unknown' where TRIM(METHHOSP)='99';
UPDATE crash_veh_2022 SET MOSTHE_txt = 'Equipment Failure' where TRIM(MOSTHE)='19';
UPDATE crash_veh_2022 SET MOSTHE_txt = 'Separation of Units' where TRIM(MOSTHE)='20';
UPDATE crash_veh_2022 SET MOSTHE_txt = 'Ran Off Roadway Right' where TRIM(MOSTHE)='21';
UPDATE crash_veh_2022 SET MOSTHE_txt = 'Ran Off Roadway Left' where TRIM(MOSTHE)='22';
UPDATE crash_veh_2022 SET MOSTHE_txt = 'Cross Median' where TRIM(MOSTHE)='23';
UPDATE crash_veh_2022 SET MOSTHE_txt = 'Cross Centerline' where TRIM(MOSTHE)='24';
UPDATE crash_veh_2022 SET MOSTHE_txt = 'Downhill Runaway' where TRIM(MOSTHE)='33';
UPDATE crash_veh_2022 SET MOSTHE_txt = 'Fell/Jumped from Motor Vehicle' where TRIM(MOSTHE)='34';
UPDATE crash_veh_2022 SET MOSTHE_txt = 'Reentering Roadway' where TRIM(MOSTHE)='37';
UPDATE crash_veh_2022 SET MOSTHE_txt = 'Thrown or Falling Object' where TRIM(MOSTHE)='38';
UPDATE crash_veh_2022 SET MOSTHE_txt = 'Cargo/Equipment Loss or Shift' where TRIM(MOSTHE)='39';
UPDATE crash_veh_2022 SET MOSTHE_txt = 'Overturn/Rollover' where TRIM(MOSTHE)='83';
UPDATE crash_veh_2022 SET MOSTHE_txt = 'Immersion (Full or Partial)' where TRIM(MOSTHE)='84';
UPDATE crash_veh_2022 SET MOSTHE_txt = 'Fire/Explosion' where TRIM(MOSTHE)='85';
UPDATE crash_veh_2022 SET MOSTHE_txt = 'Jackknife' where TRIM(MOSTHE)='86';
UPDATE crash_veh_2022 SET MOSTHE_txt = 'Other Non-Collision' where TRIM(MOSTHE)='89';
UPDATE crash_veh_2022 SET MOSTHE_txt = 'Pedestrian' where TRIM(MOSTHE)='8';
UPDATE crash_veh_2022 SET MOSTHE_txt = 'Pedalcyclist (Bicyclist)' where TRIM(MOSTHE)='9';
UPDATE crash_veh_2022 SET MOSTHE_txt = 'Motor Vehicle In Transport' where TRIM(MOSTHE)='10';
UPDATE crash_veh_2022 SET MOSTHE_txt = 'Parked Motor Vehicle' where TRIM(MOSTHE)='11';
UPDATE crash_veh_2022 SET MOSTHE_txt = 'Struck by Falling, Shifting Cargo or Anything Set in Motion by Motor Vehicle' where TRIM(MOSTHE)='12';
UPDATE crash_veh_2022 SET MOSTHE_txt = 'Train-LRT' where TRIM(MOSTHE)='13';
UPDATE crash_veh_2022 SET MOSTHE_txt = 'Train-Passenger' where TRIM(MOSTHE)='14';
UPDATE crash_veh_2022 SET MOSTHE_txt = 'Train-Cargo' where TRIM(MOSTHE)='15';
UPDATE crash_veh_2022 SET MOSTHE_txt = 'Deer' where TRIM(MOSTHE)='16';
UPDATE crash_veh_2022 SET MOSTHE_txt = 'Animal Alive Before Crash' where TRIM(MOSTHE)='17';
UPDATE crash_veh_2022 SET MOSTHE_txt = 'Animal Dead Before Crash' where TRIM(MOSTHE)='18';
UPDATE crash_veh_2022 SET MOSTHE_txt = 'Other-Non Fixed Object' where TRIM(MOSTHE)='25';
UPDATE crash_veh_2022 SET MOSTHE_txt = 'Other-Non-Motorist' where TRIM(MOSTHE)='51';
UPDATE crash_veh_2022 SET MOSTHE_txt = 'Utility Pole/Light Pole' where TRIM(MOSTHE)='28';
UPDATE crash_veh_2022 SET MOSTHE_txt = 'Traffic Signal or Signal Structure' where TRIM(MOSTHE)='30';
UPDATE crash_veh_2022 SET MOSTHE_txt = 'RR / LRT Crossing Device' where TRIM(MOSTHE)='31';
UPDATE crash_veh_2022 SET MOSTHE_txt = 'Roadway Sign or Signal Structure' where TRIM(MOSTHE)='32';
UPDATE crash_veh_2022 SET MOSTHE_txt = 'Other Post, Pole or Support' where TRIM(MOSTHE)='35';
UPDATE crash_veh_2022 SET MOSTHE_txt = 'Construction or Maintenance Equipment' where TRIM(MOSTHE)='36';
UPDATE crash_veh_2022 SET MOSTHE_txt = 'Bridge Pier or Support' where TRIM(MOSTHE)='41';
UPDATE crash_veh_2022 SET MOSTHE_txt = 'Bridge Overhead Structure' where TRIM(MOSTHE)='42';
UPDATE crash_veh_2022 SET MOSTHE_txt = 'Bridge Rail' where TRIM(MOSTHE)='43';
UPDATE crash_veh_2022 SET MOSTHE_txt = 'Culvert' where TRIM(MOSTHE)='46';
UPDATE crash_veh_2022 SET MOSTHE_txt = 'Curb' where TRIM(MOSTHE)='47';
UPDATE crash_veh_2022 SET MOSTHE_txt = 'Ditch' where TRIM(MOSTHE)='48';
UPDATE crash_veh_2022 SET MOSTHE_txt = 'Embankment' where TRIM(MOSTHE)='49';
UPDATE crash_veh_2022 SET MOSTHE_txt = 'Snowbank' where TRIM(MOSTHE)='50';
UPDATE crash_veh_2022 SET MOSTHE_txt = 'Cable Median Barrier' where TRIM(MOSTHE)='55';
UPDATE crash_veh_2022 SET MOSTHE_txt = 'Concrete Traffic Barrier' where TRIM(MOSTHE)='56';
UPDATE crash_veh_2022 SET MOSTHE_txt = 'Other Traffic Barrier' where TRIM(MOSTHE)='57';
UPDATE crash_veh_2022 SET MOSTHE_txt = 'Impact attenuator/ Crash Cushion' where TRIM(MOSTHE)='60';
UPDATE crash_veh_2022 SET MOSTHE_txt = 'Guardrail (Face)' where TRIM(MOSTHE)='61';
UPDATE crash_veh_2022 SET MOSTHE_txt = 'Guardrail (End)' where TRIM(MOSTHE)='62';
UPDATE crash_veh_2022 SET MOSTHE_txt = 'Mailboxes/Posts' where TRIM(MOSTHE)='67';
UPDATE crash_veh_2022 SET MOSTHE_txt = 'Hydrant' where TRIM(MOSTHE)='68';
UPDATE crash_veh_2022 SET MOSTHE_txt = 'Tree/Shrubbery' where TRIM(MOSTHE)='69';
UPDATE crash_veh_2022 SET MOSTHE_txt = 'Fence (Non-Median Barrier)' where TRIM(MOSTHE)='70';
UPDATE crash_veh_2022 SET MOSTHE_txt = 'Parking Meter' where TRIM(MOSTHE)='71';
UPDATE crash_veh_2022 SET MOSTHE_txt = 'Other-Fixed Object' where TRIM(MOSTHE)='75';
UPDATE crash_veh_2022 SET MOSTHE_txt = 'Unknown' where TRIM(MOSTHE)='99';
UPDATE crash_per_2022 SET NEWBAC_txt = 'NEGATIVE' where TRIM(NEWBAC)='0';
UPDATE crash_per_2022 SET NEWBAC_txt = '.01 BAC' where TRIM(NEWBAC)='1';
UPDATE crash_per_2022 SET NEWBAC_txt = '.02 BAC' where TRIM(NEWBAC)='2';
UPDATE crash_per_2022 SET NEWBAC_txt = '.03 BAC' where TRIM(NEWBAC)='3';
UPDATE crash_per_2022 SET NEWBAC_txt = '.04 BAC' where TRIM(NEWBAC)='4';
UPDATE crash_per_2022 SET NEWBAC_txt = '.05 BAC' where TRIM(NEWBAC)='5';
UPDATE crash_per_2022 SET NEWBAC_txt = '.06 BAC' where TRIM(NEWBAC)='6';
UPDATE crash_per_2022 SET NEWBAC_txt = '.07 BAC' where TRIM(NEWBAC)='7';
UPDATE crash_per_2022 SET NEWBAC_txt = '.08 BAC' where TRIM(NEWBAC)='8';
UPDATE crash_per_2022 SET NEWBAC_txt = '.09 BAC' where TRIM(NEWBAC)='9';
UPDATE crash_per_2022 SET NEWBAC_txt = '.10 BAC' where TRIM(NEWBAC)='10';
UPDATE crash_per_2022 SET NEWBAC_txt = '.11 BAC' where TRIM(NEWBAC)='11';
UPDATE crash_per_2022 SET NEWBAC_txt = '.12 BAC' where TRIM(NEWBAC)='12';
UPDATE crash_per_2022 SET NEWBAC_txt = '.13 BAC' where TRIM(NEWBAC)='13';
UPDATE crash_per_2022 SET NEWBAC_txt = '.14 BAC' where TRIM(NEWBAC)='14';
UPDATE crash_per_2022 SET NEWBAC_txt = '.15 BAC' where TRIM(NEWBAC)='15';
UPDATE crash_per_2022 SET NEWBAC_txt = '.16 BAC' where TRIM(NEWBAC)='16';
UPDATE crash_per_2022 SET NEWBAC_txt = '.17 BAC' where TRIM(NEWBAC)='17';
UPDATE crash_per_2022 SET NEWBAC_txt = '.18 BAC' where TRIM(NEWBAC)='18';
UPDATE crash_per_2022 SET NEWBAC_txt = '.19 BAC' where TRIM(NEWBAC)='19';
UPDATE crash_per_2022 SET NEWBAC_txt = '.20 BAC' where TRIM(NEWBAC)='20';
UPDATE crash_per_2022 SET NEWBAC_txt = '.21 BAC' where TRIM(NEWBAC)='21';
UPDATE crash_per_2022 SET NEWBAC_txt = '.22 BAC' where TRIM(NEWBAC)='22';
UPDATE crash_per_2022 SET NEWBAC_txt = '.23 BAC' where TRIM(NEWBAC)='23';
UPDATE crash_per_2022 SET NEWBAC_txt = '.24 BAC' where TRIM(NEWBAC)='24';
UPDATE crash_per_2022 SET NEWBAC_txt = '.25 BAC' where TRIM(NEWBAC)='25';
UPDATE crash_per_2022 SET NEWBAC_txt = '.26 BAC' where TRIM(NEWBAC)='26';
UPDATE crash_per_2022 SET NEWBAC_txt = '.27 BAC' where TRIM(NEWBAC)='27';
UPDATE crash_per_2022 SET NEWBAC_txt = '.28 BAC' where TRIM(NEWBAC)='28';
UPDATE crash_per_2022 SET NEWBAC_txt = '.29 BAC' where TRIM(NEWBAC)='29';
UPDATE crash_per_2022 SET NEWBAC_txt = '.30 BAC' where TRIM(NEWBAC)='30';
UPDATE crash_per_2022 SET NEWBAC_txt = '.31 BAC' where TRIM(NEWBAC)='31';
UPDATE crash_per_2022 SET NEWBAC_txt = '.32 BAC' where TRIM(NEWBAC)='32';
UPDATE crash_per_2022 SET NEWBAC_txt = '.33 BAC' where TRIM(NEWBAC)='33';
UPDATE crash_per_2022 SET NEWBAC_txt = '.34 BAC' where TRIM(NEWBAC)='34';
UPDATE crash_per_2022 SET NEWBAC_txt = '.35 BAC' where TRIM(NEWBAC)='35';
UPDATE crash_per_2022 SET NEWBAC_txt = '.36 BAC' where TRIM(NEWBAC)='36';
UPDATE crash_per_2022 SET NEWBAC_txt = '.37 BAC' where TRIM(NEWBAC)='37';
UPDATE crash_per_2022 SET NEWBAC_txt = '.38 BAC' where TRIM(NEWBAC)='38';
UPDATE crash_per_2022 SET NEWBAC_txt = '.39 BAC' where TRIM(NEWBAC)='39';
UPDATE crash_per_2022 SET NEWBAC_txt = '.40 BAC' where TRIM(NEWBAC)='40';
UPDATE crash_per_2022 SET NEWBAC_txt = '.41 BAC' where TRIM(NEWBAC)='41';
UPDATE crash_per_2022 SET NEWBAC_txt = '.42 BAC' where TRIM(NEWBAC)='42';
UPDATE crash_per_2022 SET NEWBAC_txt = '.43 BAC' where TRIM(NEWBAC)='43';
UPDATE crash_per_2022 SET NEWBAC_txt = '.44 BAC' where TRIM(NEWBAC)='44';
UPDATE crash_per_2022 SET NEWBAC_txt = '.45 BAC' where TRIM(NEWBAC)='45';
UPDATE crash_per_2022 SET NEWBAC_txt = '.46 BAC' where TRIM(NEWBAC)='46';
UPDATE crash_per_2022 SET NEWBAC_txt = '.47 BAC' where TRIM(NEWBAC)='47';
UPDATE crash_per_2022 SET NEWBAC_txt = '.48 BAC' where TRIM(NEWBAC)='48';
UPDATE crash_per_2022 SET NEWBAC_txt = '.49 BAC' where TRIM(NEWBAC)='49';
UPDATE crash_per_2022 SET NEWBAC_txt = '.50 BAC' where TRIM(NEWBAC)='50';
UPDATE crash_per_2022 SET NEWBAC_txt = '.51 BAC' where TRIM(NEWBAC)='51';
UPDATE crash_per_2022 SET NEWBAC_txt = '.52 BAC' where TRIM(NEWBAC)='52';
UPDATE crash_per_2022 SET NEWBAC_txt = '.53 BAC' where TRIM(NEWBAC)='53';
UPDATE crash_per_2022 SET NEWBAC_txt = '.54 BAC' where TRIM(NEWBAC)='54';
UPDATE crash_per_2022 SET NEWBAC_txt = '.55 BAC' where TRIM(NEWBAC)='55';
UPDATE crash_per_2022 SET NEWBAC_txt = '.56 BAC' where TRIM(NEWBAC)='56';
UPDATE crash_per_2022 SET NEWBAC_txt = '.57 BAC' where TRIM(NEWBAC)='57';
UPDATE crash_per_2022 SET NEWBAC_txt = '.58 BAC' where TRIM(NEWBAC)='58';
UPDATE crash_per_2022 SET NEWBAC_txt = '.59 BAC' where TRIM(NEWBAC)='59';
UPDATE crash_per_2022 SET NEWBAC_txt = '.60 BAC' where TRIM(NEWBAC)='60';
UPDATE crash_per_2022 SET NEWBAC_txt = '.61 BAC' where TRIM(NEWBAC)='61';
UPDATE crash_per_2022 SET NEWBAC_txt = '.62 BAC' where TRIM(NEWBAC)='62';
UPDATE crash_per_2022 SET NEWBAC_txt = '.63 BAC' where TRIM(NEWBAC)='63';
UPDATE crash_per_2022 SET NEWBAC_txt = '.64 BAC' where TRIM(NEWBAC)='64';
UPDATE crash_per_2022 SET NEWBAC_txt = '.65 BAC' where TRIM(NEWBAC)='65';
UPDATE crash_per_2022 SET NEWBAC_txt = '.66 BAC' where TRIM(NEWBAC)='66';
UPDATE crash_per_2022 SET NEWBAC_txt = '.67 BAC' where TRIM(NEWBAC)='67';
UPDATE crash_per_2022 SET NEWBAC_txt = '.68 BAC' where TRIM(NEWBAC)='68';
UPDATE crash_per_2022 SET NEWBAC_txt = '.69 BAC' where TRIM(NEWBAC)='69';
UPDATE crash_per_2022 SET NEWBAC_txt = '.70 BAC' where TRIM(NEWBAC)='70';
UPDATE crash_per_2022 SET NEWBAC_txt = 'Pending' where TRIM(NEWBAC)='72';
UPDATE crash_per_2022 SET NEWBAC_txt = 'Not applicable' where TRIM(NEWBAC)='98';
UPDATE crash_per_2022 SET NEWBAC_txt = 'Unknown' where TRIM(NEWBAC)='99';
UPDATE crash_per_2022 SET NMACTION_txt = 'Walk/Cycle Across Traffic/Roadway' where TRIM(NMACTION)='30';
UPDATE crash_per_2022 SET NMACTION_txt = 'Standing/Stopped' where TRIM(NMACTION)='31';
UPDATE crash_per_2022 SET NMACTION_txt = 'Walk/Cycle With Traffic' where TRIM(NMACTION)='32';
UPDATE crash_per_2022 SET NMACTION_txt = 'Walk/Cycle Against Traffic' where TRIM(NMACTION)='33';
UPDATE crash_per_2022 SET NMACTION_txt = 'Walk/Cycle on Sidewalk' where TRIM(NMACTION)='34';
UPDATE crash_per_2022 SET NMACTION_txt = 'In Roadway - Other (working, playing, etc.)' where TRIM(NMACTION)='35';
UPDATE crash_per_2022 SET NMACTION_txt = 'Adjacent to Roadway (shoulder, median, etc.)' where TRIM(NMACTION)='36';
UPDATE crash_per_2022 SET NMACTION_txt = 'Going to or From School (K-12)' where TRIM(NMACTION)='37';
UPDATE crash_per_2022 SET NMACTION_txt = 'Going to School Bus' where TRIM(NMACTION)='38';
UPDATE crash_per_2022 SET NMACTION_txt = 'Coming From School Bus' where TRIM(NMACTION)='39';
UPDATE crash_per_2022 SET NMACTION_txt = 'Working in Trafficway (Maintenance, Construction)' where TRIM(NMACTION)='40';
UPDATE crash_per_2022 SET NMACTION_txt = 'Working in Trafficway (Utility)' where TRIM(NMACTION)='41';
UPDATE crash_per_2022 SET NMACTION_txt = 'Working in Trafficway (EMS, Enforcement)' where TRIM(NMACTION)='42';
UPDATE crash_per_2022 SET NMACTION_txt = 'Going to or From Public Transit' where TRIM(NMACTION)='43';
UPDATE crash_per_2022 SET NMACTION_txt = 'Other' where TRIM(NMACTION)='90';
UPDATE crash_per_2022 SET NMACTION_txt = 'Unknown' where TRIM(NMACTION)='99';
UPDATE crash_per_2022 SET NMLOCTN_txt = 'Intersection � Marked Crosswalk' where TRIM(NMLOCTN)='1';
UPDATE crash_per_2022 SET NMLOCTN_txt = 'Intersection � Unmarked Crosswalk' where TRIM(NMLOCTN)='2';
UPDATE crash_per_2022 SET NMLOCTN_txt = 'Intersection � Other' where TRIM(NMLOCTN)='3';
UPDATE crash_per_2022 SET NMLOCTN_txt = 'Midblock � Marked Crosswalk' where TRIM(NMLOCTN)='4';
UPDATE crash_per_2022 SET NMLOCTN_txt = 'Travel Lane � Other Location' where TRIM(NMLOCTN)='5';
UPDATE crash_per_2022 SET NMLOCTN_txt = 'Bicycle Lane' where TRIM(NMLOCTN)='6';
UPDATE crash_per_2022 SET NMLOCTN_txt = 'Shoulder/Roadside' where TRIM(NMLOCTN)='7';
UPDATE crash_per_2022 SET NMLOCTN_txt = 'Sidewalk' where TRIM(NMLOCTN)='8';
UPDATE crash_per_2022 SET NMLOCTN_txt = 'Median/Crossing Island' where TRIM(NMLOCTN)='9';
UPDATE crash_per_2022 SET NMLOCTN_txt = 'Driveway Access' where TRIM(NMLOCTN)='10';
UPDATE crash_per_2022 SET NMLOCTN_txt = 'Shared-Use Path or Trail' where TRIM(NMLOCTN)='11';
UPDATE crash_per_2022 SET NMLOCTN_txt = 'Non-Trafficway Area' where TRIM(NMLOCTN)='12';
UPDATE crash_per_2022 SET NMLOCTN_txt = 'Other' where TRIM(NMLOCTN)='90';
UPDATE crash_per_2022 SET NMLOCTN_txt = 'Unknown' where TRIM(NMLOCTN)='99';
UPDATE crash_acc_2022 SET OFFTYPE_txt = 'State Trooper' where TRIM(OFFTYPE)='1';
UPDATE crash_acc_2022 SET OFFTYPE_txt = 'Sheriff Deputy' where TRIM(OFFTYPE)='2';
UPDATE crash_acc_2022 SET OFFTYPE_txt = 'Local Police Officer' where TRIM(OFFTYPE)='3';
UPDATE crash_acc_2022 SET OFFTYPE_txt = 'Tribal Police Officer' where TRIM(OFFTYPE)='4';
UPDATE crash_acc_2022 SET OFFTYPE_txt = 'Other Officer Type' where TRIM(OFFTYPE)='90';
UPDATE crash_acc_2022 SET OFFTYPE_txt = 'Not applicable (Citizen Report)' where TRIM(OFFTYPE)='98';
UPDATE crash_acc_2022 SET OFFTYPE_txt = 'Unknown' where TRIM(OFFTYPE)='99';
UPDATE crash_acc_2022 SET ONROAD_txt = 'Trafficway, On Road' where TRIM(ONROAD)='1';
UPDATE crash_acc_2022 SET ONROAD_txt = 'Trafficway, Not on Road' where TRIM(ONROAD)='2';
UPDATE crash_acc_2022 SET ONROAD_txt = 'Non-Trafficway' where TRIM(ONROAD)='3';
UPDATE crash_veh_2022 SET PARKED_txt = 'Parked Legally' where TRIM(PARKED)='1';
UPDATE crash_veh_2022 SET PARKED_txt = 'Parked Illegally During Prohibited Hours' where TRIM(PARKED)='2';
UPDATE crash_veh_2022 SET PARKED_txt = 'Parked Illegally in a Prohibited Loc (hydrant, etc)' where TRIM(PARKED)='3';
UPDATE crash_veh_2022 SET PARKED_txt = 'Parked/Stalled In Lane of Travel' where TRIM(PARKED)='4';
UPDATE crash_per_2022 SET PHYSCND1_txt = 'Apparently Normal (No Drugs/Alcohol)' where TRIM(PHYSCND1)='5';
UPDATE crash_per_2022 SET PHYSCND1_txt = 'Physical Disability (Short Term or Long Term)' where TRIM(PHYSCND1)='6';
UPDATE crash_per_2022 SET PHYSCND1_txt = 'Medical issue (Ill, sick, fainted)' where TRIM(PHYSCND1)='7';
UPDATE crash_per_2022 SET PHYSCND1_txt = 'Emotional (depression, angry, disturbed, etc.)' where TRIM(PHYSCND1)='8';
UPDATE crash_per_2022 SET PHYSCND1_txt = 'Asleep or Fatigued' where TRIM(PHYSCND1)='9';
UPDATE crash_per_2022 SET PHYSCND1_txt = 'Had Been Drinking Alcohol' where TRIM(PHYSCND1)='10';
UPDATE crash_per_2022 SET PHYSCND1_txt = 'Had Been Taking Illicit Drugs' where TRIM(PHYSCND1)='11';
UPDATE crash_per_2022 SET PHYSCND1_txt = 'Had Been Taking Medications' where TRIM(PHYSCND1)='12';
UPDATE crash_per_2022 SET PHYSCND1_txt = 'Other' where TRIM(PHYSCND1)='90';
UPDATE crash_per_2022 SET PHYSCND1_txt = 'Unknown' where TRIM(PHYSCND1)='99';
UPDATE crash_per_2022 SET PHYSCND2_txt = 'Apparently Normal (No Drugs/Alcohol)' where TRIM(PHYSCND2)='5';
UPDATE crash_per_2022 SET PHYSCND2_txt = 'Physical Disability (Short Term or Long Term)' where TRIM(PHYSCND2)='6';
UPDATE crash_per_2022 SET PHYSCND2_txt = 'Medical issue (Ill, sick, fainted)' where TRIM(PHYSCND2)='7';
UPDATE crash_per_2022 SET PHYSCND2_txt = 'Emotional (depression, angry, disturbed, etc.)' where TRIM(PHYSCND2)='8';
UPDATE crash_per_2022 SET PHYSCND2_txt = 'Asleep or Fatigued' where TRIM(PHYSCND2)='9';
UPDATE crash_per_2022 SET PHYSCND2_txt = 'Had Been Drinking Alcohol' where TRIM(PHYSCND2)='10';
UPDATE crash_per_2022 SET PHYSCND2_txt = 'Had Been Taking Illicit Drugs' where TRIM(PHYSCND2)='11';
UPDATE crash_per_2022 SET PHYSCND2_txt = 'Had Been Taking Medications' where TRIM(PHYSCND2)='12';
UPDATE crash_per_2022 SET PHYSCND2_txt = 'Other' where TRIM(PHYSCND2)='90';
UPDATE crash_per_2022 SET PHYSCND2_txt = 'Unknown' where TRIM(PHYSCND2)='99';
UPDATE crash_per_2022 SET POSITN_txt = 'Driver (Include Motorcycle Driver)' where TRIM(POSITN)='1';
UPDATE crash_per_2022 SET POSITN_txt = 'Front Center' where TRIM(POSITN)='2';
UPDATE crash_per_2022 SET POSITN_txt = 'Front Right (Include MC Sidecar)' where TRIM(POSITN)='3';
UPDATE crash_per_2022 SET POSITN_txt = 'Second Seat Left (Include MC Passenger)' where TRIM(POSITN)='4';
UPDATE crash_per_2022 SET POSITN_txt = 'Second Seat Center' where TRIM(POSITN)='5';
UPDATE crash_per_2022 SET POSITN_txt = 'Second Seat Right' where TRIM(POSITN)='6';
UPDATE crash_per_2022 SET POSITN_txt = 'Third Seat Left' where TRIM(POSITN)='7';
UPDATE crash_per_2022 SET POSITN_txt = 'Third Seat Center' where TRIM(POSITN)='8';
UPDATE crash_per_2022 SET POSITN_txt = 'Third Seat Right' where TRIM(POSITN)='9';
UPDATE crash_per_2022 SET POSITN_txt = 'Outside of Vehicle' where TRIM(POSITN)='10';
UPDATE crash_per_2022 SET POSITN_txt = 'Fourth Row Left' where TRIM(POSITN)='11';
UPDATE crash_per_2022 SET POSITN_txt = 'Fourth Row Middle' where TRIM(POSITN)='12';
UPDATE crash_per_2022 SET POSITN_txt = 'Fourth Row Right' where TRIM(POSITN)='13';
UPDATE crash_per_2022 SET POSITN_txt = 'Fifth or Other Row (Bus, 15 Pass Van, etc.)' where TRIM(POSITN)='14';
UPDATE crash_per_2022 SET POSITN_txt = 'Sleeper Section of Cab (truck)' where TRIM(POSITN)='15';
UPDATE crash_per_2022 SET POSITN_txt = 'Trailing Unit' where TRIM(POSITN)='16';
UPDATE crash_per_2022 SET POSITN_txt = 'Other Enclosed Cargo Area' where TRIM(POSITN)='17';
UPDATE crash_per_2022 SET POSITN_txt = 'Other Unenclosed Cargo Area (pickup bed, etc.)' where TRIM(POSITN)='18';
UPDATE crash_per_2022 SET POSITN_txt = 'Riding on MV Exterior (Non-Trailing Unit)' where TRIM(POSITN)='19';
UPDATE crash_per_2022 SET POSITN_txt = 'Unknown' where TRIM(POSITN)='99';
UPDATE crash_acc_2022 SET PROPDAM_txt = 'No' where TRIM(PROPDAM)='2';
UPDATE crash_acc_2022 SET PROPDAM_txt = 'Yes, Public' where TRIM(PROPDAM)='3';
UPDATE crash_acc_2022 SET PROPDAM_txt = 'Yes, Private' where TRIM(PROPDAM)='4';
UPDATE crash_acc_2022 SET PROPDAM_txt = 'Both Public and Private' where TRIM(PROPDAM)='5';
UPDATE crash_per_2022 SET PTYPE_txt = 'Driver' where TRIM(PTYPE)='1';
UPDATE crash_per_2022 SET PTYPE_txt = 'Passenger' where TRIM(PTYPE)='2';
UPDATE crash_per_2022 SET PTYPE_txt = 'Owner' where TRIM(PTYPE)='3';
UPDATE crash_per_2022 SET PTYPE_txt = 'Non-Motorist' where TRIM(PTYPE)='5';
UPDATE crash_per_2022 SET PTYPE_txt = 'Witness' where TRIM(PTYPE)='6';
UPDATE crash_per_2022 SET PTYPE_txt = 'Property Owner' where TRIM(PTYPE)='7';
UPDATE crash_per_2022 SET PTYPE_txt = 'Unknown' where TRIM(PTYPE)='99';
UPDATE crash_veh_2022 SET RDALIGN_txt = 'Straight' where TRIM(RDALIGN)='11';
UPDATE crash_veh_2022 SET RDALIGN_txt = 'Curve Left' where TRIM(RDALIGN)='12';
UPDATE crash_veh_2022 SET RDALIGN_txt = 'Curve Right' where TRIM(RDALIGN)='13';
UPDATE crash_veh_2022 SET RDDES_txt = 'One Way Trafficway' where TRIM(RDDES)='11';
UPDATE crash_veh_2022 SET RDDES_txt = 'Two-Way, Not Divided' where TRIM(RDDES)='12';
UPDATE crash_veh_2022 SET RDDES_txt = 'Two-Way, Not Divided, With Continuous Left Turn Lane' where TRIM(RDDES)='13';
UPDATE crash_veh_2022 SET RDDES_txt = 'Two-Way, Divided, Unprotected Median' where TRIM(RDDES)='14';
UPDATE crash_veh_2022 SET RDDES_txt = 'Two-Way, Divided, Median Barrier' where TRIM(RDDES)='15';
UPDATE crash_veh_2022 SET RDDES_txt = 'Other' where TRIM(RDDES)='90';
UPDATE crash_veh_2022 SET RDDES_txt = 'Unknown' where TRIM(RDDES)='99';
UPDATE crash_veh_2022 SET RDGRADE_txt = 'Level' where TRIM(RDGRADE)='21';
UPDATE crash_veh_2022 SET RDGRADE_txt = 'Hillcrest' where TRIM(RDGRADE)='22';
UPDATE crash_veh_2022 SET RDGRADE_txt = 'Uphill' where TRIM(RDGRADE)='23';
UPDATE crash_veh_2022 SET RDGRADE_txt = 'Downhill' where TRIM(RDGRADE)='24';
UPDATE crash_veh_2022 SET RDGRADE_txt = 'Sag (Bottom)' where TRIM(RDGRADE)='25';
UPDATE crash_acc_2022 SET RDSURF_txt = 'Dry' where TRIM(RDSURF)='1';
UPDATE crash_acc_2022 SET RDSURF_txt = 'Wet' where TRIM(RDSURF)='2';
UPDATE crash_acc_2022 SET RDSURF_txt = 'Snow' where TRIM(RDSURF)='3';
UPDATE crash_acc_2022 SET RDSURF_txt = 'Slush' where TRIM(RDSURF)='4';
UPDATE crash_acc_2022 SET RDSURF_txt = 'Ice/Frost' where TRIM(RDSURF)='5';
UPDATE crash_acc_2022 SET RDSURF_txt = 'Water (Standing or Moving)' where TRIM(RDSURF)='6';
UPDATE crash_acc_2022 SET RDSURF_txt = 'Mud, dirt, gravel' where TRIM(RDSURF)='7';
UPDATE crash_acc_2022 SET RDSURF_txt = 'Debris' where TRIM(RDSURF)='8';
UPDATE crash_acc_2022 SET RDSURF_txt = 'Oily' where TRIM(RDSURF)='9';
UPDATE crash_acc_2022 SET RDSURF_txt = 'Sand' where TRIM(RDSURF)='10';
UPDATE crash_acc_2022 SET RDSURF_txt = 'Ruts, holes, bumps' where TRIM(RDSURF)='11';
UPDATE crash_acc_2022 SET RDSURF_txt = 'Other' where TRIM(RDSURF)='90';
UPDATE crash_acc_2022 SET RDSURF_txt = 'Unknown' where TRIM(RDSURF)='99';
UPDATE crash_per_2022 SET RECOMND_txt = 'None' where TRIM(RECOMND)='1';
UPDATE crash_per_2022 SET RECOMND_txt = 'Physical Exam' where TRIM(RECOMND)='2';
UPDATE crash_per_2022 SET RECOMND_txt = 'Driver Exam' where TRIM(RECOMND)='3';
UPDATE crash_per_2022 SET RECOMND_txt = 'Both' where TRIM(RECOMND)='4';
UPDATE crash_acc_2022 SET RTSYS_txt = 'Interstate Trunk Highway - ISTH' where TRIM(RTSYS)='1';
UPDATE crash_acc_2022 SET RTSYS_txt = 'U.S. Trunk Highway - USTH' where TRIM(RTSYS)='2';
UPDATE crash_acc_2022 SET RTSYS_txt = 'State Trunk Highway - MNTH' where TRIM(RTSYS)='3';
UPDATE crash_acc_2022 SET RTSYS_txt = 'County State Aid Highway - CSAH' where TRIM(RTSYS)='4';
UPDATE crash_acc_2022 SET RTSYS_txt = 'Municipal State Aid Street - MSAS' where TRIM(RTSYS)='5';
UPDATE crash_acc_2022 SET RTSYS_txt = 'County Road - CNTY' where TRIM(RTSYS)='7';
UPDATE crash_acc_2022 SET RTSYS_txt = 'Township Road' where TRIM(RTSYS)='8';
UPDATE crash_acc_2022 SET RTSYS_txt = 'Unorganized Township Road' where TRIM(RTSYS)='9';
UPDATE crash_acc_2022 SET RTSYS_txt = 'Local or City = Street - MUN' where TRIM(RTSYS)='10';
UPDATE crash_acc_2022 SET RTSYS_txt = 'National Park Road - NATP' where TRIM(RTSYS)='11';
UPDATE crash_acc_2022 SET RTSYS_txt = 'National Forest Road - NATF' where TRIM(RTSYS)='12';
UPDATE crash_acc_2022 SET RTSYS_txt = 'Indian Service Road - IND' where TRIM(RTSYS)='13';
UPDATE crash_acc_2022 SET RTSYS_txt = 'State Forest Road - SFR' where TRIM(RTSYS)='14';
UPDATE crash_acc_2022 SET RTSYS_txt = 'State Park Road - SPRK' where TRIM(RTSYS)='15';
UPDATE crash_acc_2022 SET RTSYS_txt = 'Military Road - MIL' where TRIM(RTSYS)='16';
UPDATE crash_acc_2022 SET RTSYS_txt = 'National Monument Road - NATM' where TRIM(RTSYS)='17';
UPDATE crash_acc_2022 SET RTSYS_txt = 'National Wildlife Refuge Road' where TRIM(RTSYS)='18';
UPDATE crash_acc_2022 SET RTSYS_txt = 'Frontage Road - FRNT' where TRIM(RTSYS)='19';
UPDATE crash_acc_2022 SET RTSYS_txt = 'State Game Preserve Road' where TRIM(RTSYS)='20';
UPDATE crash_acc_2022 SET RTSYS_txt = 'Private Road Open to Public' where TRIM(RTSYS)='21';
UPDATE crash_acc_2022 SET RTSYS_txt = 'Ramp or Connector' where TRIM(RTSYS)='22';
UPDATE crash_acc_2022 SET RTSYS_txt = 'Airport Roads' where TRIM(RTSYS)='23';
UPDATE crash_acc_2022 SET RTSYS_txt = 'Bureau of Indian Affairs Road - BIA' where TRIM(RTSYS)='24';
UPDATE crash_acc_2022 SET RTSYS_txt = 'Non-Trafficway' where TRIM(RTSYS)='25';
UPDATE crash_acc_2022 SET RTSYS_txt = 'Other Local Road - OLR' where TRIM(RTSYS)='26';
UPDATE crash_acc_2022 SET RTSYS_txt = 'Railroad Service Road - RSR' where TRIM(RTSYS)='27';
UPDATE crash_acc_2022 SET RTSYS_txt = 'State Toll Road - STL' where TRIM(RTSYS)='28';
UPDATE crash_acc_2022 SET RTSYS_txt = 'Local Toll Road - LTL' where TRIM(RTSYS)='29';
UPDATE crash_acc_2022 SET RTSYS_txt = 'Alleyways' where TRIM(RTSYS)='30';
UPDATE crash_acc_2022 SET RTSYS_txt = 'USBR Road - BRR' where TRIM(RTSYS)='31';
UPDATE crash_acc_2022 SET RTSYS_txt = 'Other Road' where TRIM(RTSYS)='32';
UPDATE crash_acc_2022 SET RTSYS_txt = 'BLM Road' where TRIM(RTSYS)='33';
UPDATE crash_acc_2022 SET RTSYS_txt = 'Non Trafficway' where TRIM(RTSYS)='34';
UPDATE crash_acc_2022 SET RTSYS_txt = 'HOV/HOT/Reversible Lanes on Interstate - IHO' where TRIM(RTSYS)='41';
UPDATE crash_acc_2022 SET RTSYS_txt = 'UHO HOV/HOT/Reversible Lanes on US Hwy - UHO' where TRIM(RTSYS)='42';
UPDATE crash_acc_2022 SET RTSYS_txt = 'MHO HOV/HOT/Reversible Lanes on MN Hwy - MHO' where TRIM(RTSYS)='43';
UPDATE crash_acc_2022 SET RTSYS_txt = 'Non-numbered Interstates - UNI' where TRIM(RTSYS)='51';
UPDATE crash_acc_2022 SET RTSYS_txt = 'Non-numbered US Hwy - UNU' where TRIM(RTSYS)='52';
UPDATE crash_acc_2022 SET RTSYS_txt = 'Non-numbered MN Hwy - UNM' where TRIM(RTSYS)='53';
UPDATE crash_acc_2022 SET RTSYS_txt = 'Not Located' where TRIM(RTSYS)='98';
UPDATE crash_per_2022 SET SAFEQP1_txt = 'None Used, Motor Vehicle Occupant' where TRIM(SAFEQP1)='5';
UPDATE crash_per_2022 SET SAFEQP1_txt = 'Lap and Shoulder Belt Used' where TRIM(SAFEQP1)='6';
UPDATE crash_per_2022 SET SAFEQP1_txt = 'Lap Belt Only Used' where TRIM(SAFEQP1)='7';
UPDATE crash_per_2022 SET SAFEQP1_txt = 'Shoulder Belt Only Used' where TRIM(SAFEQP1)='8';
UPDATE crash_per_2022 SET SAFEQP1_txt = 'Restraint Used�Type Unknown' where TRIM(SAFEQP1)='9';
UPDATE crash_per_2022 SET SAFEQP1_txt = 'Child restraint system Not Used' where TRIM(SAFEQP1)='10';
UPDATE crash_per_2022 SET SAFEQP1_txt = 'Child Restraint System Seat Used Improperly' where TRIM(SAFEQP1)='11';
UPDATE crash_per_2022 SET SAFEQP1_txt = 'Child Restraint System - Rear Facing' where TRIM(SAFEQP1)='12';
UPDATE crash_per_2022 SET SAFEQP1_txt = 'Child Restraint System - Forward Facing' where TRIM(SAFEQP1)='13';
UPDATE crash_per_2022 SET SAFEQP1_txt = 'Booster Seat Properly' where TRIM(SAFEQP1)='14';
UPDATE crash_per_2022 SET SAFEQP1_txt = 'Child Restraint Type Unknown' where TRIM(SAFEQP1)='15';
UPDATE crash_per_2022 SET SAFEQP1_txt = 'Helmet Used, Unknown If DOT-Compliant' where TRIM(SAFEQP1)='16';
UPDATE crash_per_2022 SET SAFEQP1_txt = 'No Helmet' where TRIM(SAFEQP1)='17';
UPDATE crash_per_2022 SET SAFEQP1_txt = 'No Protective Pads' where TRIM(SAFEQP1)='19';
UPDATE crash_per_2022 SET SAFEQP1_txt = 'Protective Pads Used (Elbow, Knee, etc.)' where TRIM(SAFEQP1)='20';
UPDATE crash_per_2022 SET SAFEQP1_txt = 'Helmet Used, DOT-Compliant' where TRIM(SAFEQP1)='25';
UPDATE crash_per_2022 SET SAFEQP1_txt = 'Helmet Used, Other than DOT-Compliant' where TRIM(SAFEQP1)='26';
UPDATE crash_per_2022 SET SAFEQP1_txt = 'Unknown if Helmet Worn' where TRIM(SAFEQP1)='27';
UPDATE crash_per_2022 SET SAFEQP1_txt = 'Dark Clothing' where TRIM(SAFEQP1)='21';
UPDATE crash_per_2022 SET SAFEQP1_txt = 'Light Clothing' where TRIM(SAFEQP1)='22';
UPDATE crash_per_2022 SET SAFEQP1_txt = 'Reflective Clothing (Jacket, Backpack, etc.)' where TRIM(SAFEQP1)='23';
UPDATE crash_per_2022 SET SAFEQP1_txt = 'Lighting' where TRIM(SAFEQP1)='24';
UPDATE crash_per_2022 SET SAFEQP1_txt = 'None' where TRIM(SAFEQP1)='18';
UPDATE crash_per_2022 SET SAFEQP1_txt = 'Other' where TRIM(SAFEQP1)='90';
UPDATE crash_per_2022 SET SAFEQP1_txt = 'NA' where TRIM(SAFEQP1)='98';
UPDATE crash_per_2022 SET SAFEQP1_txt = 'Unknown' where TRIM(SAFEQP1)='99';
UPDATE crash_per_2022 SET SAFEQP2_txt = 'None Used, Motor Vehicle Occupant' where TRIM(SAFEQP2)='5';
UPDATE crash_per_2022 SET SAFEQP2_txt = 'Lap and Shoulder Belt Used' where TRIM(SAFEQP2)='6';
UPDATE crash_per_2022 SET SAFEQP2_txt = 'Lap Belt Only Used' where TRIM(SAFEQP2)='7';
UPDATE crash_per_2022 SET SAFEQP2_txt = 'Shoulder Belt Only Used' where TRIM(SAFEQP2)='8';
UPDATE crash_per_2022 SET SAFEQP2_txt = 'Restraint Used�Type Unknown' where TRIM(SAFEQP2)='9';
UPDATE crash_per_2022 SET SAFEQP2_txt = 'Child restraint system Not Used' where TRIM(SAFEQP2)='10';
UPDATE crash_per_2022 SET SAFEQP2_txt = 'Child Restraint System Seat Used Improperly' where TRIM(SAFEQP2)='11';
UPDATE crash_per_2022 SET SAFEQP2_txt = 'Child Restraint System - Rear Facing' where TRIM(SAFEQP2)='12';
UPDATE crash_per_2022 SET SAFEQP2_txt = 'Child Restraint System - Forward Facing' where TRIM(SAFEQP2)='13';
UPDATE crash_per_2022 SET SAFEQP2_txt = 'Booster Seat Properly' where TRIM(SAFEQP2)='14';
UPDATE crash_per_2022 SET SAFEQP2_txt = 'Child Restraint Type Unknown' where TRIM(SAFEQP2)='15';
UPDATE crash_per_2022 SET SAFEQP2_txt = 'Helmet Used, Unknown If DOT-Compliant' where TRIM(SAFEQP2)='16';
UPDATE crash_per_2022 SET SAFEQP2_txt = 'No Helmet' where TRIM(SAFEQP2)='17';
UPDATE crash_per_2022 SET SAFEQP2_txt = 'No Protective Pads' where TRIM(SAFEQP2)='19';
UPDATE crash_per_2022 SET SAFEQP2_txt = 'Protective Pads Used (Elbow, Knee, etc.)' where TRIM(SAFEQP2)='20';
UPDATE crash_per_2022 SET SAFEQP2_txt = 'Helmet Used, DOT-Compliant' where TRIM(SAFEQP2)='25';
UPDATE crash_per_2022 SET SAFEQP2_txt = 'Helmet Used, Other than DOT-Compliant' where TRIM(SAFEQP2)='26';
UPDATE crash_per_2022 SET SAFEQP2_txt = 'Unknown if Helmet Worn' where TRIM(SAFEQP2)='27';
UPDATE crash_per_2022 SET SAFEQP2_txt = 'Dark Clothing' where TRIM(SAFEQP2)='21';
UPDATE crash_per_2022 SET SAFEQP2_txt = 'Light Clothing' where TRIM(SAFEQP2)='22';
UPDATE crash_per_2022 SET SAFEQP2_txt = 'Reflective Clothing (Jacket, Backpack, etc.)' where TRIM(SAFEQP2)='23';
UPDATE crash_per_2022 SET SAFEQP2_txt = 'Lighting' where TRIM(SAFEQP2)='24';
UPDATE crash_per_2022 SET SAFEQP2_txt = 'None' where TRIM(SAFEQP2)='18';
UPDATE crash_per_2022 SET SAFEQP2_txt = 'Other' where TRIM(SAFEQP2)='90';
UPDATE crash_per_2022 SET SAFEQP2_txt = 'NA' where TRIM(SAFEQP2)='98';
UPDATE crash_per_2022 SET SAFEQP2_txt = 'Unknown' where TRIM(SAFEQP2)='99';
UPDATE crash_acc_2022 SET SBUS_txt = 'Yes, Involved Directly' where TRIM(SBUS)='1';
UPDATE crash_acc_2022 SET SBUS_txt = 'Yes, Involved Indirectly' where TRIM(SBUS)='2';
UPDATE crash_acc_2022 SET SBUS_txt = 'No' where TRIM(SBUS)='3';
UPDATE crash_per_2022 SET SEX_txt = 'Male' where TRIM(SEX)='M';
UPDATE crash_per_2022 SET SEX_txt = 'Female' where TRIM(SEX)='F';
UPDATE crash_per_2022 SET SEX_txt = 'Unknown' where TRIM(SEX)='99';
UPDATE crash_per_2022 SET SPEEDING_txt = 'Not Speeding' where TRIM(SPEEDING)='2';
UPDATE crash_per_2022 SET SPEEDING_txt = 'Racing' where TRIM(SPEEDING)='3';
UPDATE crash_per_2022 SET SPEEDING_txt = 'Exceeded Speed Limit' where TRIM(SPEEDING)='4';
UPDATE crash_per_2022 SET SPEEDING_txt = 'Too Fast for Conditions' where TRIM(SPEEDING)='5';
UPDATE crash_per_2022 SET SPEEDING_txt = 'Other' where TRIM(SPEEDING)='90';
UPDATE crash_per_2022 SET SPEEDING_txt = 'Unknown' where TRIM(SPEEDING)='99';
UPDATE crash_veh_2022 SET TOWAWAY_txt = 'Not Towed' where TRIM(TOWAWAY)='2';
UPDATE crash_veh_2022 SET TOWAWAY_txt = 'Towed Due to Disabling Damage' where TRIM(TOWAWAY)='3';
UPDATE crash_veh_2022 SET TOWAWAY_txt = 'Towed, But Not Due to Disabling Damage' where TRIM(TOWAWAY)='4';
UPDATE crash_veh_2022 SET TRAILER_txt = 'Yes' where TRIM(TRAILER)='1';
UPDATE crash_veh_2022 SET TRAILER_txt = 'No' where TRIM(TRAILER)='2';


UPDATE crash_veh_2022 SET TRFCNTL_txt = 'None' where TRIM(TRFCNTL)='9';
UPDATE crash_veh_2022 SET TRFCNTL_txt = 'RR Crossing Device (RR or LRT)' where TRIM(TRFCNTL)='10';
UPDATE crash_veh_2022 SET TRFCNTL_txt = 'Traffic Control Signal' where TRIM(TRFCNTL)='20';
UPDATE crash_veh_2022 SET TRFCNTL_txt = 'Flashing Overhead Traffic Control Signal' where TRIM(TRFCNTL)='21';
UPDATE crash_veh_2022 SET TRFCNTL_txt = 'Yield Sign' where TRIM(TRFCNTL)='22';
UPDATE crash_veh_2022 SET TRFCNTL_txt = 'Stop Sign' where TRIM(TRFCNTL)='23';
UPDATE crash_veh_2022 SET TRFCNTL_txt = 'Warning Sign' where TRIM(TRFCNTL)='24';
UPDATE crash_veh_2022 SET TRFCNTL_txt = 'Person (Flagger, Police, Crossing Guard, etc.)' where TRIM(TRFCNTL)='25';
UPDATE crash_veh_2022 SET TRFCNTL_txt = 'School Zone Sign, Device or School Bus Flashing' where TRIM(TRFCNTL)='30';
UPDATE crash_veh_2022 SET TRFCNTL_txt = 'Other' where TRIM(TRFCNTL)='90';
UPDATE crash_veh_2022 SET TRFCNTL_txt = 'Not applicable' where TRIM(TRFCNTL)='98';
UPDATE crash_veh_2022 SET TRFCNTL_txt = 'Unknown' where TRIM(TRFCNTL)='99';
UPDATE crash_veh_2022 SET UNITVEH_txt = 'Hit-and-Run Vehicle (Not Present)' where TRIM(UNITVEH)='1';
UPDATE crash_veh_2022 SET UNITVEH_txt = 'Motor Vehicle in Transport' where TRIM(UNITVEH)='2';
UPDATE crash_veh_2022 SET UNITVEH_txt = 'Parked/Stalled Motor Vehicle' where TRIM(UNITVEH)='3';
UPDATE crash_veh_2022 SET UNITVEH_txt = 'Working Vehicle/Equipment' where TRIM(UNITVEH)='4';
UPDATE crash_veh_2022 SET UNITVEH_txt = 'Pedestrian' where TRIM(UNITVEH)='5';
UPDATE crash_veh_2022 SET UNITVEH_txt = 'Bicycle' where TRIM(UNITVEH)='6';
UPDATE crash_veh_2022 SET UNITVEH_txt = 'Other Unit Type (other cycle types)' where TRIM(UNITVEH)='7';
UPDATE crash_veh_2022 SET UNITVEH_txt = 'Other Personal Conveyance (Wheelchair, Horse, Buggy, Skates, Skateboard, Segway, etc.)' where TRIM(UNITVEH)='8';
UPDATE crash_per_2022 SET UNITPER_txt = 'Hit-and-Run Vehicle (Not Present)' where TRIM(UNITPER)='1';
UPDATE crash_per_2022 SET UNITPER_txt = 'Motor Vehicle in Transport' where TRIM(UNITPER)='2';
UPDATE crash_per_2022 SET UNITPER_txt = 'Parked/Stalled Motor Vehicle' where TRIM(UNITPER)='3';
UPDATE crash_per_2022 SET UNITPER_txt = 'Working Vehicle/Equipment' where TRIM(UNITPER)='4';
UPDATE crash_per_2022 SET UNITPER_txt = 'Pedestrian' where TRIM(UNITPER)='5';
UPDATE crash_per_2022 SET UNITPER_txt = 'Bicycle' where TRIM(UNITPER)='6';
UPDATE crash_per_2022 SET UNITPER_txt = 'Other Unit Type (other cycle types)' where TRIM(UNITPER)='7';
UPDATE crash_per_2022 SET UNITPER_txt = 'Other Personal Conveyance (Wheelchair, Horse, Buggy, Skates, Skateboard, Segway, etc.)' where TRIM(UNITPER)='8';
UPDATE crash_acc_2022 SET URBRURT_txt = 'Unknown (Tho <1,000)' where TRIM(URBRURT)='0';
UPDATE crash_acc_2022 SET URBRURT_txt = '250,000 or more' where TRIM(URBRURT)='1';
UPDATE crash_acc_2022 SET URBRURT_txt = '100,000-249,999' where TRIM(URBRURT)='2';
UPDATE crash_acc_2022 SET URBRURT_txt = '50,000-99,999' where TRIM(URBRURT)='3';
UPDATE crash_acc_2022 SET URBRURT_txt = '25,000-49,999' where TRIM(URBRURT)='4';
UPDATE crash_acc_2022 SET URBRURT_txt = '10,000-24,999' where TRIM(URBRURT)='5';
UPDATE crash_acc_2022 SET URBRURT_txt = '5,000-9,999' where TRIM(URBRURT)='6';
UPDATE crash_acc_2022 SET URBRURT_txt = '2,500-4,999' where TRIM(URBRURT)='7';
UPDATE crash_acc_2022 SET URBRURT_txt = '1,000-2,499' where TRIM(URBRURT)='8';
UPDATE crash_acc_2022 SET URBRURT_txt = '0-999' where TRIM(URBRURT)='9';
UPDATE crash_acc_2022 SET URBRURT_txt = 'Unknown' where TRIM(URBRURT)='99';
UPDATE crash_veh_2022 SET VEHTYPE_txt = 'Passenger Car' where TRIM(VEHTYPE)='2';
UPDATE crash_veh_2022 SET VEHTYPE_txt = 'Pickup' where TRIM(VEHTYPE)='3';
UPDATE crash_veh_2022 SET VEHTYPE_txt = 'Sport Utility Vehicle' where TRIM(VEHTYPE)='4';
UPDATE crash_veh_2022 SET VEHTYPE_txt = 'Passenger Van (Seats Installed Behind Driver)' where TRIM(VEHTYPE)='5';
UPDATE crash_veh_2022 SET VEHTYPE_txt = 'Cargo Van 10,000lbs or Less (No Seats Installed Behind Driver)' where TRIM(VEHTYPE)='6';
UPDATE crash_veh_2022 SET VEHTYPE_txt = 'Limousine' where TRIM(VEHTYPE)='10';
UPDATE crash_veh_2022 SET VEHTYPE_txt = 'School Bus' where TRIM(VEHTYPE)='13';
UPDATE crash_veh_2022 SET VEHTYPE_txt = 'Transit Bus' where TRIM(VEHTYPE)='14';
UPDATE crash_veh_2022 SET VEHTYPE_txt = 'Motorcoach' where TRIM(VEHTYPE)='15';
UPDATE crash_veh_2022 SET VEHTYPE_txt = 'Motor Home/Camper/RV' where TRIM(VEHTYPE)='20';
UPDATE crash_veh_2022 SET VEHTYPE_txt = 'Snowmobile' where TRIM(VEHTYPE)='21';
UPDATE crash_veh_2022 SET VEHTYPE_txt = 'ATV' where TRIM(VEHTYPE)='22';
UPDATE crash_veh_2022 SET VEHTYPE_txt = 'Motorcycle' where TRIM(VEHTYPE)='31';
UPDATE crash_veh_2022 SET VEHTYPE_txt = 'Moped or Motor Scooter' where TRIM(VEHTYPE)='32';
UPDATE crash_veh_2022 SET VEHTYPE_txt = 'Low Speed Vehicle (LSV)' where TRIM(VEHTYPE)='33';
UPDATE crash_veh_2022 SET VEHTYPE_txt = 'Golf Cart' where TRIM(VEHTYPE)='34';
UPDATE crash_veh_2022 SET VEHTYPE_txt = 'Other Light Trucks (10,000lbs or Less)' where TRIM(VEHTYPE)='48';
UPDATE crash_veh_2022 SET VEHTYPE_txt = 'Medium / Heavy Trucks (More than 10,000lbs)' where TRIM(VEHTYPE)='49';
UPDATE crash_veh_2022 SET VEHTYPE_txt = 'Farm Vehicle (Tractor, Combine, etc.)' where TRIM(VEHTYPE)='50';
UPDATE crash_veh_2022 SET VEHTYPE_txt = 'Other Bus' where TRIM(VEHTYPE)='51';
UPDATE crash_veh_2022 SET VEHTYPE_txt = 'Hit and Run Unit' where TRIM(VEHTYPE)='52';
UPDATE crash_veh_2022 SET VEHTYPE_txt = 'Pedestrian' where TRIM(VEHTYPE)='53';
UPDATE crash_veh_2022 SET VEHTYPE_txt = 'Bicyclist' where TRIM(VEHTYPE)='54';
UPDATE crash_veh_2022 SET VEHTYPE_txt = 'Other' where TRIM(VEHTYPE)='90';
UPDATE crash_veh_2022 SET VEHUSE_txt = 'Normal' where TRIM(VEHUSE)='20';
UPDATE crash_veh_2022 SET VEHUSE_txt = 'Taxi' where TRIM(VEHUSE)='21';
UPDATE crash_veh_2022 SET VEHUSE_txt = 'Used as School Bus (Type A, B, C, D, III)' where TRIM(VEHUSE)='22';
UPDATE crash_veh_2022 SET VEHUSE_txt = 'Used as Other Bus (Public, Private, Charter)' where TRIM(VEHUSE)='23';
UPDATE crash_veh_2022 SET VEHUSE_txt = 'Military Vehicle' where TRIM(VEHUSE)='24';
UPDATE crash_veh_2022 SET VEHUSE_txt = 'Police' where TRIM(VEHUSE)='25';
UPDATE crash_veh_2022 SET VEHUSE_txt = 'Ambulance' where TRIM(VEHUSE)='26';
UPDATE crash_veh_2022 SET VEHUSE_txt = 'Fire Dept. Vehicle' where TRIM(VEHUSE)='27';
UPDATE crash_veh_2022 SET VEHUSE_txt = 'Non-Transport Emergency Services Vehicle' where TRIM(VEHUSE)='28';
UPDATE crash_veh_2022 SET VEHUSE_txt = 'Incident Response' where TRIM(VEHUSE)='29';
UPDATE crash_veh_2022 SET VEHUSE_txt = 'Farm Use' where TRIM(VEHUSE)='30';
UPDATE crash_veh_2022 SET VEHUSE_txt = 'Hit and Run' where TRIM(VEHUSE)='31';
UPDATE crash_veh_2022 SET VEHUSE_txt = 'Not Applicable (non-motorist)' where TRIM(VEHUSE)='98';
UPDATE crash_veh_2022 SET VEHUSE_txt = 'Unknown' where TRIM(VEHUSE)='99';
UPDATE crash_per_2022 SET VIOLS_txt = 'Yes' where TRIM(VIOLS)='1';
UPDATE crash_per_2022 SET VIOLS_txt = 'No' where TRIM(VIOLS)='2';
UPDATE crash_veh_2022 SET WAIVED_txt = 'Inspection waived' where TRIM(WAIVED)='1';
UPDATE crash_veh_2022 SET WAIVED_txt = 'Inspection completed' where TRIM(WAIVED)='2';
UPDATE crash_veh_2022 SET WAIVED_txt = 'Inspection not required' where TRIM(WAIVED)='3';
UPDATE crash_acc_2022 SET WEATHER1_txt = 'Clear' where TRIM(WEATHER1)='1';
UPDATE crash_acc_2022 SET WEATHER1_txt = 'Cloudy' where TRIM(WEATHER1)='2';
UPDATE crash_acc_2022 SET WEATHER1_txt = 'Rain' where TRIM(WEATHER1)='3';
UPDATE crash_acc_2022 SET WEATHER1_txt = 'Snow' where TRIM(WEATHER1)='4';
UPDATE crash_acc_2022 SET WEATHER1_txt = 'Sleet, Hail (freezing rain or freezing drizzle)' where TRIM(WEATHER1)='5';
UPDATE crash_acc_2022 SET WEATHER1_txt = 'Fog/Smog/Smoke' where TRIM(WEATHER1)='6';
UPDATE crash_acc_2022 SET WEATHER1_txt = 'Blowing sand, soil, dirt' where TRIM(WEATHER1)='7';
UPDATE crash_acc_2022 SET WEATHER1_txt = 'Sever Crosswinds' where TRIM(WEATHER1)='8';
UPDATE crash_acc_2022 SET WEATHER1_txt = 'Other' where TRIM(WEATHER1)='90';
UPDATE crash_acc_2022 SET WEATHER1_txt = 'Unknown' where TRIM(WEATHER1)='99';
UPDATE crash_acc_2022 SET WEATHER2_txt = 'Clear' where TRIM(WEATHER2)='1';
UPDATE crash_acc_2022 SET WEATHER2_txt = 'Cloudy' where TRIM(WEATHER2)='2';
UPDATE crash_acc_2022 SET WEATHER2_txt = 'Rain' where TRIM(WEATHER2)='3';
UPDATE crash_acc_2022 SET WEATHER2_txt = 'Snow' where TRIM(WEATHER2)='4';
UPDATE crash_acc_2022 SET WEATHER2_txt = 'Sleet, Hail (freezing rain or freezing drizzle)' where TRIM(WEATHER2)='5';
UPDATE crash_acc_2022 SET WEATHER2_txt = 'Fog/Smog/Smoke' where TRIM(WEATHER2)='6';
UPDATE crash_acc_2022 SET WEATHER2_txt = 'Blowing sand, soil, dirt' where TRIM(WEATHER2)='7';
UPDATE crash_acc_2022 SET WEATHER2_txt = 'Sever Crosswinds' where TRIM(WEATHER2)='8';
UPDATE crash_acc_2022 SET WEATHER2_txt = 'Other' where TRIM(WEATHER2)='90';
UPDATE crash_acc_2022 SET WEATHER2_txt = 'Unknown' where TRIM(WEATHER2)='99';
UPDATE crash_acc_2022 SET WKZNREL_txt = 'Yes' where TRIM(WKZNREL)='1';
UPDATE crash_acc_2022 SET WKZNREL_txt = 'No' where TRIM(WKZNREL)='2';
UPDATE crash_acc_2022 SET WKZNREL_txt = 'Unknown' where TRIM(WKZNREL)='99';
UPDATE crash_acc_2022 SET WKZNTYPE_txt = 'Lane Closure' where TRIM(WKZNTYPE)='1';
UPDATE crash_acc_2022 SET WKZNTYPE_txt = 'Lane Shift/Crossover' where TRIM(WKZNTYPE)='2';
UPDATE crash_acc_2022 SET WKZNTYPE_txt = 'Work on Shoulder / Median' where TRIM(WKZNTYPE)='3';
UPDATE crash_acc_2022 SET WKZNTYPE_txt = 'Intermittent or Moving Workzone' where TRIM(WKZNTYPE)='6';
UPDATE crash_acc_2022 SET WKZNTYPE_txt = 'Other' where TRIM(WKZNTYPE)='90';
UPDATE crash_acc_2022 SET WORKERS_txt = 'Yes' where TRIM(WORKERS)='1';
UPDATE crash_acc_2022 SET WORKERS_txt = 'No' where TRIM(WORKERS)='2';
UPDATE crash_acc_2022 SET WORKERS_txt = 'Unknown' where TRIM(WORKERS)='99';
UPDATE crash_veh_2022 SET WORKING_txt = 'Operational' where TRIM(WORKING)='1';
UPDATE crash_veh_2022 SET WORKING_txt = 'Not operational' where TRIM(WORKING)='2';
UPDATE crash_veh_2022 SET WORKING_txt = 'Enhanced-flashing, blinking, illuminated' where TRIM(WORKING)='3';
UPDATE crash_veh_2022 SET WORKING_txt = 'Traffic control missing' where TRIM(WORKING)='5';
UPDATE crash_acc_2022 SET CITY_txt = 'Airport/Fort Snelling' where TRIM(CITY)='0000';
UPDATE crash_acc_2022 SET CITY_txt = 'Ada' where TRIM(CITY)='0005';
UPDATE crash_acc_2022 SET CITY_txt = 'Adams' where TRIM(CITY)='0010';
UPDATE crash_acc_2022 SET CITY_txt = 'Adrian' where TRIM(CITY)='0015';
UPDATE crash_acc_2022 SET CITY_txt = 'Afton' where TRIM(CITY)='0020';
UPDATE crash_acc_2022 SET CITY_txt = 'Aitkin' where TRIM(CITY)='0025';
UPDATE crash_acc_2022 SET CITY_txt = 'Akeley' where TRIM(CITY)='0030';
UPDATE crash_acc_2022 SET CITY_txt = 'Albany' where TRIM(CITY)='0035';
UPDATE crash_acc_2022 SET CITY_txt = 'Alberta' where TRIM(CITY)='0040';
UPDATE crash_acc_2022 SET CITY_txt = 'Albert Lea' where TRIM(CITY)='0045';
UPDATE crash_acc_2022 SET CITY_txt = 'Albertville' where TRIM(CITY)='0050';
UPDATE crash_acc_2022 SET CITY_txt = 'Alden' where TRIM(CITY)='0055';
UPDATE crash_acc_2022 SET CITY_txt = 'Aldrich' where TRIM(CITY)='0060';
UPDATE crash_acc_2022 SET CITY_txt = 'Alexandria' where TRIM(CITY)='0065';
UPDATE crash_acc_2022 SET CITY_txt = 'Alpha' where TRIM(CITY)='0070';
UPDATE crash_acc_2022 SET CITY_txt = 'Altura' where TRIM(CITY)='0075';
UPDATE crash_acc_2022 SET CITY_txt = 'Alvarado' where TRIM(CITY)='0080';
UPDATE crash_acc_2022 SET CITY_txt = 'Amboy' where TRIM(CITY)='0085';
UPDATE crash_acc_2022 SET CITY_txt = 'Andover' where TRIM(CITY)='0088';
UPDATE crash_acc_2022 SET CITY_txt = 'Annandale' where TRIM(CITY)='0090';
UPDATE crash_acc_2022 SET CITY_txt = 'Anoka' where TRIM(CITY)='0095';
UPDATE crash_acc_2022 SET CITY_txt = 'Appleton' where TRIM(CITY)='0100';
UPDATE crash_acc_2022 SET CITY_txt = 'Apple Valley' where TRIM(CITY)='0102';
UPDATE crash_acc_2022 SET CITY_txt = 'Arco' where TRIM(CITY)='0105';
UPDATE crash_acc_2022 SET CITY_txt = 'Arden Hills' where TRIM(CITY)='0110';
UPDATE crash_acc_2022 SET CITY_txt = 'Argyle' where TRIM(CITY)='0115';
UPDATE crash_acc_2022 SET CITY_txt = 'Arlington' where TRIM(CITY)='0120';
UPDATE crash_acc_2022 SET CITY_txt = 'Ashby' where TRIM(CITY)='0125';
UPDATE crash_acc_2022 SET CITY_txt = 'Askov' where TRIM(CITY)='0130';
UPDATE crash_acc_2022 SET CITY_txt = 'Atwater' where TRIM(CITY)='0135';
UPDATE crash_acc_2022 SET CITY_txt = 'Audobon' where TRIM(CITY)='0140';
UPDATE crash_acc_2022 SET CITY_txt = 'Aurora' where TRIM(CITY)='0145';
UPDATE crash_acc_2022 SET CITY_txt = 'Austin' where TRIM(CITY)='0150';
UPDATE crash_acc_2022 SET CITY_txt = 'Avoka' where TRIM(CITY)='0155';
UPDATE crash_acc_2022 SET CITY_txt = 'Avon' where TRIM(CITY)='0160';
UPDATE crash_acc_2022 SET CITY_txt = 'Babbit' where TRIM(CITY)='0165';
UPDATE crash_acc_2022 SET CITY_txt = 'Backus' where TRIM(CITY)='0170';
UPDATE crash_acc_2022 SET CITY_txt = 'Badger' where TRIM(CITY)='0175';
UPDATE crash_acc_2022 SET CITY_txt = 'Bagley' where TRIM(CITY)='0180';
UPDATE crash_acc_2022 SET CITY_txt = 'Balaton' where TRIM(CITY)='0185';
UPDATE crash_acc_2022 SET CITY_txt = 'Barnesville' where TRIM(CITY)='0195';
UPDATE crash_acc_2022 SET CITY_txt = 'Barnum' where TRIM(CITY)='0200';
UPDATE crash_acc_2022 SET CITY_txt = 'Barrett' where TRIM(CITY)='0205';
UPDATE crash_acc_2022 SET CITY_txt = 'Barry' where TRIM(CITY)='0210';
UPDATE crash_acc_2022 SET CITY_txt = 'Battle Lake' where TRIM(CITY)='0215';
UPDATE crash_acc_2022 SET CITY_txt = 'Baudette' where TRIM(CITY)='0220';
UPDATE crash_acc_2022 SET CITY_txt = 'Baxter' where TRIM(CITY)='0225';
UPDATE crash_acc_2022 SET CITY_txt = 'Bayport' where TRIM(CITY)='0230';
UPDATE crash_acc_2022 SET CITY_txt = 'Beardsley' where TRIM(CITY)='0235';
UPDATE crash_acc_2022 SET CITY_txt = 'Beaver Bay' where TRIM(CITY)='0240';
UPDATE crash_acc_2022 SET CITY_txt = 'Beaver Creek' where TRIM(CITY)='0245';
UPDATE crash_acc_2022 SET CITY_txt = 'Becker' where TRIM(CITY)='0250';
UPDATE crash_acc_2022 SET CITY_txt = 'Bejou' where TRIM(CITY)='0255';
UPDATE crash_acc_2022 SET CITY_txt = 'Belgrade' where TRIM(CITY)='0260';
UPDATE crash_acc_2022 SET CITY_txt = 'Bellechester' where TRIM(CITY)='0265';
UPDATE crash_acc_2022 SET CITY_txt = 'Belle Plain' where TRIM(CITY)='0270';
UPDATE crash_acc_2022 SET CITY_txt = 'Bellingham' where TRIM(CITY)='0275';
UPDATE crash_acc_2022 SET CITY_txt = 'Beltrami' where TRIM(CITY)='0280';
UPDATE crash_acc_2022 SET CITY_txt = 'Belview' where TRIM(CITY)='0285';
UPDATE crash_acc_2022 SET CITY_txt = 'Bemidji' where TRIM(CITY)='0290';
UPDATE crash_acc_2022 SET CITY_txt = 'Bena' where TRIM(CITY)='0295';
UPDATE crash_acc_2022 SET CITY_txt = 'Benson' where TRIM(CITY)='0300';
UPDATE crash_acc_2022 SET CITY_txt = 'Bertha' where TRIM(CITY)='0310';
UPDATE crash_acc_2022 SET CITY_txt = 'Bethel' where TRIM(CITY)='0315';
UPDATE crash_acc_2022 SET CITY_txt = 'Bigelow' where TRIM(CITY)='0320';
UPDATE crash_acc_2022 SET CITY_txt = 'Big Falls' where TRIM(CITY)='0325';
UPDATE crash_acc_2022 SET CITY_txt = 'Bigfork' where TRIM(CITY)='0330';
UPDATE crash_acc_2022 SET CITY_txt = 'Big Lake' where TRIM(CITY)='0335';
UPDATE crash_acc_2022 SET CITY_txt = 'Bingham Lake' where TRIM(CITY)='0340';
UPDATE crash_acc_2022 SET CITY_txt = 'Birchwood' where TRIM(CITY)='0345';
UPDATE crash_acc_2022 SET CITY_txt = 'Bird Island' where TRIM(CITY)='0350';
UPDATE crash_acc_2022 SET CITY_txt = 'Biscay' where TRIM(CITY)='0355';
UPDATE crash_acc_2022 SET CITY_txt = 'Biwabik' where TRIM(CITY)='0360';
UPDATE crash_acc_2022 SET CITY_txt = 'Blackduck' where TRIM(CITY)='0365';
UPDATE crash_acc_2022 SET CITY_txt = 'Blaine' where TRIM(CITY)='0370';
UPDATE crash_acc_2022 SET CITY_txt = 'Blomkest' where TRIM(CITY)='0375';
UPDATE crash_acc_2022 SET CITY_txt = 'Blooming Prairie' where TRIM(CITY)='0380';
UPDATE crash_acc_2022 SET CITY_txt = 'Bloomington' where TRIM(CITY)='0385';
UPDATE crash_acc_2022 SET CITY_txt = 'Blue Earth' where TRIM(CITY)='0390';
UPDATE crash_acc_2022 SET CITY_txt = 'Blufton' where TRIM(CITY)='0395';
UPDATE crash_acc_2022 SET CITY_txt = 'Bock' where TRIM(CITY)='0400';
UPDATE crash_acc_2022 SET CITY_txt = 'Borup' where TRIM(CITY)='0405';
UPDATE crash_acc_2022 SET CITY_txt = 'Bovey' where TRIM(CITY)='0410';
UPDATE crash_acc_2022 SET CITY_txt = 'Bowlus' where TRIM(CITY)='0415';
UPDATE crash_acc_2022 SET CITY_txt = 'Boyd' where TRIM(CITY)='0420';
UPDATE crash_acc_2022 SET CITY_txt = 'Boy River' where TRIM(CITY)='0425';
UPDATE crash_acc_2022 SET CITY_txt = 'Braham' where TRIM(CITY)='0430';
UPDATE crash_acc_2022 SET CITY_txt = 'Brainerd' where TRIM(CITY)='0435';
UPDATE crash_acc_2022 SET CITY_txt = 'Branch' where TRIM(CITY)='0437';
UPDATE crash_acc_2022 SET CITY_txt = 'Brandon' where TRIM(CITY)='0440';
UPDATE crash_acc_2022 SET CITY_txt = 'Breckenridge' where TRIM(CITY)='0445';
UPDATE crash_acc_2022 SET CITY_txt = 'Breezy Point' where TRIM(CITY)='0447';
UPDATE crash_acc_2022 SET CITY_txt = 'Brewster' where TRIM(CITY)='0450';
UPDATE crash_acc_2022 SET CITY_txt = 'Bricelyn' where TRIM(CITY)='0455';
UPDATE crash_acc_2022 SET CITY_txt = 'Brooklyn Center' where TRIM(CITY)='0460';
UPDATE crash_acc_2022 SET CITY_txt = 'Brooklyn Park' where TRIM(CITY)='0465';
UPDATE crash_acc_2022 SET CITY_txt = 'Brook Park' where TRIM(CITY)='0470';
UPDATE crash_acc_2022 SET CITY_txt = 'Brooks' where TRIM(CITY)='0475';
UPDATE crash_acc_2022 SET CITY_txt = 'Brookston' where TRIM(CITY)='0480';
UPDATE crash_acc_2022 SET CITY_txt = 'Brooten' where TRIM(CITY)='0485';
UPDATE crash_acc_2022 SET CITY_txt = 'Browerville' where TRIM(CITY)='0490';
UPDATE crash_acc_2022 SET CITY_txt = 'Brownsdale' where TRIM(CITY)='0495';
UPDATE crash_acc_2022 SET CITY_txt = 'Browns Valley' where TRIM(CITY)='0500';
UPDATE crash_acc_2022 SET CITY_txt = 'Brownsville' where TRIM(CITY)='0505';
UPDATE crash_acc_2022 SET CITY_txt = 'Brownton' where TRIM(CITY)='0510';
UPDATE crash_acc_2022 SET CITY_txt = 'Bruno' where TRIM(CITY)='0515';
UPDATE crash_acc_2022 SET CITY_txt = 'Buckman' where TRIM(CITY)='0520';
UPDATE crash_acc_2022 SET CITY_txt = 'Buffalo' where TRIM(CITY)='0525';
UPDATE crash_acc_2022 SET CITY_txt = 'Buffalo Lake' where TRIM(CITY)='0530';
UPDATE crash_acc_2022 SET CITY_txt = 'Buhl' where TRIM(CITY)='0535';
UPDATE crash_acc_2022 SET CITY_txt = 'Burnsville' where TRIM(CITY)='0537';
UPDATE crash_acc_2022 SET CITY_txt = 'Burtrum' where TRIM(CITY)='0540';
UPDATE crash_acc_2022 SET CITY_txt = 'Butterfield' where TRIM(CITY)='0545';
UPDATE crash_acc_2022 SET CITY_txt = 'Byron' where TRIM(CITY)='0550';
UPDATE crash_acc_2022 SET CITY_txt = 'Caledonia' where TRIM(CITY)='0555';
UPDATE crash_acc_2022 SET CITY_txt = 'Callaway' where TRIM(CITY)='0560';
UPDATE crash_acc_2022 SET CITY_txt = 'Calumet' where TRIM(CITY)='0565';
UPDATE crash_acc_2022 SET CITY_txt = 'Cambridge' where TRIM(CITY)='0570';
UPDATE crash_acc_2022 SET CITY_txt = 'Campbell' where TRIM(CITY)='0575';
UPDATE crash_acc_2022 SET CITY_txt = 'Canby' where TRIM(CITY)='0580';
UPDATE crash_acc_2022 SET CITY_txt = 'Cannon Falls' where TRIM(CITY)='0585';
UPDATE crash_acc_2022 SET CITY_txt = 'Canton' where TRIM(CITY)='0590';
UPDATE crash_acc_2022 SET CITY_txt = 'Carlos' where TRIM(CITY)='0595';
UPDATE crash_acc_2022 SET CITY_txt = 'Carlton' where TRIM(CITY)='0600';
UPDATE crash_acc_2022 SET CITY_txt = 'Carver' where TRIM(CITY)='0601';
UPDATE crash_acc_2022 SET CITY_txt = 'Cass Lake' where TRIM(CITY)='0605';
UPDATE crash_acc_2022 SET CITY_txt = 'Cedar Mills' where TRIM(CITY)='0610';
UPDATE crash_acc_2022 SET CITY_txt = 'Center City' where TRIM(CITY)='0615';
UPDATE crash_acc_2022 SET CITY_txt = 'Centerville' where TRIM(CITY)='0620';
UPDATE crash_acc_2022 SET CITY_txt = 'Ceylon' where TRIM(CITY)='0625';
UPDATE crash_acc_2022 SET CITY_txt = 'Champlin' where TRIM(CITY)='0630';
UPDATE crash_acc_2022 SET CITY_txt = 'Chandler' where TRIM(CITY)='0635';
UPDATE crash_acc_2022 SET CITY_txt = 'Chanhassen' where TRIM(CITY)='0640';
UPDATE crash_acc_2022 SET CITY_txt = 'Chaska' where TRIM(CITY)='0645';
UPDATE crash_acc_2022 SET CITY_txt = 'Chatfield' where TRIM(CITY)='0650';
UPDATE crash_acc_2022 SET CITY_txt = 'Chickamaw Beach' where TRIM(CITY)='0655';
UPDATE crash_acc_2022 SET CITY_txt = 'Chisago City' where TRIM(CITY)='0660';
UPDATE crash_acc_2022 SET CITY_txt = 'Chisholm' where TRIM(CITY)='0665';
UPDATE crash_acc_2022 SET CITY_txt = 'Chokio' where TRIM(CITY)='0670';
UPDATE crash_acc_2022 SET CITY_txt = 'Circle Pines' where TRIM(CITY)='0675';
UPDATE crash_acc_2022 SET CITY_txt = 'Clara City' where TRIM(CITY)='0680';
UPDATE crash_acc_2022 SET CITY_txt = 'Claremont' where TRIM(CITY)='0685';
UPDATE crash_acc_2022 SET CITY_txt = 'Clarissa' where TRIM(CITY)='0690';
UPDATE crash_acc_2022 SET CITY_txt = 'Clarkfield' where TRIM(CITY)='0695';
UPDATE crash_acc_2022 SET CITY_txt = 'Clarks Grove' where TRIM(CITY)='0700';
UPDATE crash_acc_2022 SET CITY_txt = 'Clearbrook' where TRIM(CITY)='0705';
UPDATE crash_acc_2022 SET CITY_txt = 'Clear Lake' where TRIM(CITY)='0710';
UPDATE crash_acc_2022 SET CITY_txt = 'Clearwater' where TRIM(CITY)='0715';
UPDATE crash_acc_2022 SET CITY_txt = 'Clements' where TRIM(CITY)='0720';
UPDATE crash_acc_2022 SET CITY_txt = 'Cleveland' where TRIM(CITY)='0725';
UPDATE crash_acc_2022 SET CITY_txt = 'Climax' where TRIM(CITY)='0730';
UPDATE crash_acc_2022 SET CITY_txt = 'Clinton' where TRIM(CITY)='0735';
UPDATE crash_acc_2022 SET CITY_txt = 'Clitherall' where TRIM(CITY)='0740';
UPDATE crash_acc_2022 SET CITY_txt = 'Clontarf' where TRIM(CITY)='0745';
UPDATE crash_acc_2022 SET CITY_txt = 'Cloquet' where TRIM(CITY)='0750';
UPDATE crash_acc_2022 SET CITY_txt = 'Coates' where TRIM(CITY)='0755';
UPDATE crash_acc_2022 SET CITY_txt = 'Corden' where TRIM(CITY)='0760';
UPDATE crash_acc_2022 SET CITY_txt = 'Cohasset' where TRIM(CITY)='0765';
UPDATE crash_acc_2022 SET CITY_txt = 'Cokato' where TRIM(CITY)='0770';
UPDATE crash_acc_2022 SET CITY_txt = 'Cold Spring' where TRIM(CITY)='0775';
UPDATE crash_acc_2022 SET CITY_txt = 'Coleraine' where TRIM(CITY)='0780';
UPDATE crash_acc_2022 SET CITY_txt = 'Cologne' where TRIM(CITY)='0785';
UPDATE crash_acc_2022 SET CITY_txt = 'Columbia Heights' where TRIM(CITY)='0790';
UPDATE crash_acc_2022 SET CITY_txt = 'Comfrey' where TRIM(CITY)='0795';
UPDATE crash_acc_2022 SET CITY_txt = 'Comstock' where TRIM(CITY)='0800';
UPDATE crash_acc_2022 SET CITY_txt = 'Conger' where TRIM(CITY)='0805';
UPDATE crash_acc_2022 SET CITY_txt = 'Cook' where TRIM(CITY)='0810';
UPDATE crash_acc_2022 SET CITY_txt = 'Coon Rapids' where TRIM(CITY)='0820';
UPDATE crash_acc_2022 SET CITY_txt = 'Corcoran' where TRIM(CITY)='0825';
UPDATE crash_acc_2022 SET CITY_txt = 'Correll' where TRIM(CITY)='0830';
UPDATE crash_acc_2022 SET CITY_txt = 'Cosmos' where TRIM(CITY)='0835';
UPDATE crash_acc_2022 SET CITY_txt = 'Cottage Grove' where TRIM(CITY)='0837';
UPDATE crash_acc_2022 SET CITY_txt = 'Cottonwood' where TRIM(CITY)='0840';
UPDATE crash_acc_2022 SET CITY_txt = 'Courtland' where TRIM(CITY)='0845';
UPDATE crash_acc_2022 SET CITY_txt = 'Cromwell' where TRIM(CITY)='0850';
UPDATE crash_acc_2022 SET CITY_txt = 'Crookston' where TRIM(CITY)='0855';
UPDATE crash_acc_2022 SET CITY_txt = 'Crosby' where TRIM(CITY)='0860';
UPDATE crash_acc_2022 SET CITY_txt = 'Cross Lake' where TRIM(CITY)='0865';
UPDATE crash_acc_2022 SET CITY_txt = 'Crystal' where TRIM(CITY)='0870';
UPDATE crash_acc_2022 SET CITY_txt = 'Currie' where TRIM(CITY)='0875';
UPDATE crash_acc_2022 SET CITY_txt = 'Cuyuna' where TRIM(CITY)='0880';
UPDATE crash_acc_2022 SET CITY_txt = 'Cyrus' where TRIM(CITY)='0885';
UPDATE crash_acc_2022 SET CITY_txt = 'Dakota' where TRIM(CITY)='0890';
UPDATE crash_acc_2022 SET CITY_txt = 'Dalton' where TRIM(CITY)='0895';
UPDATE crash_acc_2022 SET CITY_txt = 'Danube' where TRIM(CITY)='0900';
UPDATE crash_acc_2022 SET CITY_txt = 'Danvers' where TRIM(CITY)='0905';
UPDATE crash_acc_2022 SET CITY_txt = 'Darfur' where TRIM(CITY)='0910';
UPDATE crash_acc_2022 SET CITY_txt = 'Darwin' where TRIM(CITY)='0915';
UPDATE crash_acc_2022 SET CITY_txt = 'Dassel' where TRIM(CITY)='0920';
UPDATE crash_acc_2022 SET CITY_txt = 'Dawson' where TRIM(CITY)='0925';
UPDATE crash_acc_2022 SET CITY_txt = 'Dayton' where TRIM(CITY)='0930';
UPDATE crash_acc_2022 SET CITY_txt = 'Deephaven' where TRIM(CITY)='0935';
UPDATE crash_acc_2022 SET CITY_txt = 'Deer Creek' where TRIM(CITY)='0940';
UPDATE crash_acc_2022 SET CITY_txt = 'Deer River' where TRIM(CITY)='0945';
UPDATE crash_acc_2022 SET CITY_txt = 'Deerwood' where TRIM(CITY)='0950';
UPDATE crash_acc_2022 SET CITY_txt = 'De Graff' where TRIM(CITY)='0955';
UPDATE crash_acc_2022 SET CITY_txt = 'Delano' where TRIM(CITY)='0960';
UPDATE crash_acc_2022 SET CITY_txt = 'Delavan' where TRIM(CITY)='0965';
UPDATE crash_acc_2022 SET CITY_txt = 'Delhi' where TRIM(CITY)='0970';
UPDATE crash_acc_2022 SET CITY_txt = 'Dellwood' where TRIM(CITY)='0975';
UPDATE crash_acc_2022 SET CITY_txt = 'Denham' where TRIM(CITY)='0980';
UPDATE crash_acc_2022 SET CITY_txt = 'Dennison' where TRIM(CITY)='0985';
UPDATE crash_acc_2022 SET CITY_txt = 'Dent' where TRIM(CITY)='0990';
UPDATE crash_acc_2022 SET CITY_txt = 'Detroit Lks' where TRIM(CITY)='0995';
UPDATE crash_acc_2022 SET CITY_txt = 'Dexter' where TRIM(CITY)='1000';
UPDATE crash_acc_2022 SET CITY_txt = 'Dilworth' where TRIM(CITY)='1005';
UPDATE crash_acc_2022 SET CITY_txt = 'Dodge Center' where TRIM(CITY)='1010';
UPDATE crash_acc_2022 SET CITY_txt = 'Donaldson' where TRIM(CITY)='1015';
UPDATE crash_acc_2022 SET CITY_txt = 'Donnelly' where TRIM(CITY)='1020';
UPDATE crash_acc_2022 SET CITY_txt = 'Doran' where TRIM(CITY)='1025';
UPDATE crash_acc_2022 SET CITY_txt = 'Dover' where TRIM(CITY)='1030';
UPDATE crash_acc_2022 SET CITY_txt = 'Dovray' where TRIM(CITY)='1035';
UPDATE crash_acc_2022 SET CITY_txt = 'Duluth' where TRIM(CITY)='1040';
UPDATE crash_acc_2022 SET CITY_txt = 'Dumont' where TRIM(CITY)='1045';
UPDATE crash_acc_2022 SET CITY_txt = 'Dundas' where TRIM(CITY)='1050';
UPDATE crash_acc_2022 SET CITY_txt = 'Dundee' where TRIM(CITY)='1055';
UPDATE crash_acc_2022 SET CITY_txt = 'Dunnell' where TRIM(CITY)='1060';
UPDATE crash_acc_2022 SET CITY_txt = 'Eagan' where TRIM(CITY)='1063';
UPDATE crash_acc_2022 SET CITY_txt = 'Eagle Bend' where TRIM(CITY)='1065';
UPDATE crash_acc_2022 SET CITY_txt = 'Eagle Lake' where TRIM(CITY)='1070';
UPDATE crash_acc_2022 SET CITY_txt = 'East Bethel' where TRIM(CITY)='1072';
UPDATE crash_acc_2022 SET CITY_txt = 'East Grand Forks' where TRIM(CITY)='1075';
UPDATE crash_acc_2022 SET CITY_txt = 'East Gull Lake' where TRIM(CITY)='1080';
UPDATE crash_acc_2022 SET CITY_txt = 'Easton' where TRIM(CITY)='1085';
UPDATE crash_acc_2022 SET CITY_txt = 'Echo' where TRIM(CITY)='1090';
UPDATE crash_acc_2022 SET CITY_txt = 'Eden Prairie' where TRIM(CITY)='1094';
UPDATE crash_acc_2022 SET CITY_txt = 'Eden Valley' where TRIM(CITY)='1095';
UPDATE crash_acc_2022 SET CITY_txt = 'Edgerton' where TRIM(CITY)='1100';
UPDATE crash_acc_2022 SET CITY_txt = 'Edina' where TRIM(CITY)='1105';
UPDATE crash_acc_2022 SET CITY_txt = 'Effie' where TRIM(CITY)='1110';
UPDATE crash_acc_2022 SET CITY_txt = 'Eitzen' where TRIM(CITY)='1115';
UPDATE crash_acc_2022 SET CITY_txt = 'Elba' where TRIM(CITY)='1120';
UPDATE crash_acc_2022 SET CITY_txt = 'Elbow Lake' where TRIM(CITY)='1125';
UPDATE crash_acc_2022 SET CITY_txt = 'Elgin' where TRIM(CITY)='1130';
UPDATE crash_acc_2022 SET CITY_txt = 'Elizebeth' where TRIM(CITY)='1135';
UPDATE crash_acc_2022 SET CITY_txt = 'Elko' where TRIM(CITY)='1140';
UPDATE crash_acc_2022 SET CITY_txt = 'Elk River' where TRIM(CITY)='1145';
UPDATE crash_acc_2022 SET CITY_txt = 'Elkton' where TRIM(CITY)='1150';
UPDATE crash_acc_2022 SET CITY_txt = 'Ellendale' where TRIM(CITY)='1155';
UPDATE crash_acc_2022 SET CITY_txt = 'Ellsworth' where TRIM(CITY)='1160';
UPDATE crash_acc_2022 SET CITY_txt = 'Elmdale' where TRIM(CITY)='1165';
UPDATE crash_acc_2022 SET CITY_txt = 'Elmore' where TRIM(CITY)='1170';
UPDATE crash_acc_2022 SET CITY_txt = 'Elrosa' where TRIM(CITY)='1175';
UPDATE crash_acc_2022 SET CITY_txt = 'Ely' where TRIM(CITY)='1180';
UPDATE crash_acc_2022 SET CITY_txt = 'Elysian' where TRIM(CITY)='1185';
UPDATE crash_acc_2022 SET CITY_txt = 'Emily' where TRIM(CITY)='1190';
UPDATE crash_acc_2022 SET CITY_txt = 'Emmons' where TRIM(CITY)='1195';
UPDATE crash_acc_2022 SET CITY_txt = 'Erhard' where TRIM(CITY)='1200';
UPDATE crash_acc_2022 SET CITY_txt = 'Erskine' where TRIM(CITY)='1205';
UPDATE crash_acc_2022 SET CITY_txt = 'Evansville' where TRIM(CITY)='1215';
UPDATE crash_acc_2022 SET CITY_txt = 'Evan' where TRIM(CITY)='1216';
UPDATE crash_acc_2022 SET CITY_txt = 'Eveleth' where TRIM(CITY)='1220';
UPDATE crash_acc_2022 SET CITY_txt = 'Excelsior' where TRIM(CITY)='1225';
UPDATE crash_acc_2022 SET CITY_txt = 'Eyota' where TRIM(CITY)='1230';
UPDATE crash_acc_2022 SET CITY_txt = 'Fairfax' where TRIM(CITY)='1235';
UPDATE crash_acc_2022 SET CITY_txt = 'Fairmont' where TRIM(CITY)='1240';
UPDATE crash_acc_2022 SET CITY_txt = 'Falcon Heights' where TRIM(CITY)='1245';
UPDATE crash_acc_2022 SET CITY_txt = 'Faribault' where TRIM(CITY)='1250';
UPDATE crash_acc_2022 SET CITY_txt = 'Farmington' where TRIM(CITY)='1255';
UPDATE crash_acc_2022 SET CITY_txt = 'Farwell' where TRIM(CITY)='1260';
UPDATE crash_acc_2022 SET CITY_txt = 'Federal Dam' where TRIM(CITY)='1265';
UPDATE crash_acc_2022 SET CITY_txt = 'Felton' where TRIM(CITY)='1270';
UPDATE crash_acc_2022 SET CITY_txt = 'Fergus Falls' where TRIM(CITY)='1275';
UPDATE crash_acc_2022 SET CITY_txt = 'Fertile' where TRIM(CITY)='1280';
UPDATE crash_acc_2022 SET CITY_txt = 'Fifty Lakes' where TRIM(CITY)='1285';
UPDATE crash_acc_2022 SET CITY_txt = 'Finlayson' where TRIM(CITY)='1290';
UPDATE crash_acc_2022 SET CITY_txt = 'Fisher' where TRIM(CITY)='1295';
UPDATE crash_acc_2022 SET CITY_txt = 'Flensburg' where TRIM(CITY)='1300';
UPDATE crash_acc_2022 SET CITY_txt = 'Floodwood' where TRIM(CITY)='1305';
UPDATE crash_acc_2022 SET CITY_txt = 'Florence' where TRIM(CITY)='1310';
UPDATE crash_acc_2022 SET CITY_txt = 'Foley' where TRIM(CITY)='1315';
UPDATE crash_acc_2022 SET CITY_txt = 'Forada' where TRIM(CITY)='1320';
UPDATE crash_acc_2022 SET CITY_txt = 'Forest Lake' where TRIM(CITY)='1325';
UPDATE crash_acc_2022 SET CITY_txt = 'Foreston' where TRIM(CITY)='1330';
UPDATE crash_acc_2022 SET CITY_txt = 'Fort Ripley' where TRIM(CITY)='1335';
UPDATE crash_acc_2022 SET CITY_txt = 'Fosston' where TRIM(CITY)='1340';
UPDATE crash_acc_2022 SET CITY_txt = 'Fountain' where TRIM(CITY)='1345';
UPDATE crash_acc_2022 SET CITY_txt = 'Foxhome' where TRIM(CITY)='1350';
UPDATE crash_acc_2022 SET CITY_txt = 'Franklin' where TRIM(CITY)='1355';
UPDATE crash_acc_2022 SET CITY_txt = 'Franklin' where TRIM(CITY)='1360';
UPDATE crash_acc_2022 SET CITY_txt = 'Frazee' where TRIM(CITY)='1370';
UPDATE crash_acc_2022 SET CITY_txt = 'Freeborn' where TRIM(CITY)='1375';
UPDATE crash_acc_2022 SET CITY_txt = 'Freeport' where TRIM(CITY)='1380';
UPDATE crash_acc_2022 SET CITY_txt = 'Fridley' where TRIM(CITY)='1385';
UPDATE crash_acc_2022 SET CITY_txt = 'Frost' where TRIM(CITY)='1390';
UPDATE crash_acc_2022 SET CITY_txt = 'Fulda' where TRIM(CITY)='1395';
UPDATE crash_acc_2022 SET CITY_txt = 'Funkley' where TRIM(CITY)='1400';
UPDATE crash_acc_2022 SET CITY_txt = 'Garfield' where TRIM(CITY)='1405';
UPDATE crash_acc_2022 SET CITY_txt = 'Garrison' where TRIM(CITY)='1410';
UPDATE crash_acc_2022 SET CITY_txt = 'Garvin' where TRIM(CITY)='1415';
UPDATE crash_acc_2022 SET CITY_txt = 'Gary' where TRIM(CITY)='1420';
UPDATE crash_acc_2022 SET CITY_txt = 'Gaylord' where TRIM(CITY)='1425';
UPDATE crash_acc_2022 SET CITY_txt = 'Gem Lake' where TRIM(CITY)='1430';
UPDATE crash_acc_2022 SET CITY_txt = 'Geneva' where TRIM(CITY)='1435';
UPDATE crash_acc_2022 SET CITY_txt = 'Genola' where TRIM(CITY)='1440';
UPDATE crash_acc_2022 SET CITY_txt = 'Georgetown' where TRIM(CITY)='1445';
UPDATE crash_acc_2022 SET CITY_txt = 'Ghent' where TRIM(CITY)='1450';
UPDATE crash_acc_2022 SET CITY_txt = 'Gibbon' where TRIM(CITY)='1455';
UPDATE crash_acc_2022 SET CITY_txt = 'Gilbert' where TRIM(CITY)='1460';
UPDATE crash_acc_2022 SET CITY_txt = 'Gilman' where TRIM(CITY)='1465';
UPDATE crash_acc_2022 SET CITY_txt = 'Glencoe' where TRIM(CITY)='1470';
UPDATE crash_acc_2022 SET CITY_txt = 'Glenville' where TRIM(CITY)='1475';
UPDATE crash_acc_2022 SET CITY_txt = 'Glenwood' where TRIM(CITY)='1480';
UPDATE crash_acc_2022 SET CITY_txt = 'Glyndon' where TRIM(CITY)='1485';
UPDATE crash_acc_2022 SET CITY_txt = 'Golden Valley' where TRIM(CITY)='1495';
UPDATE crash_acc_2022 SET CITY_txt = 'Gonvick' where TRIM(CITY)='1500';
UPDATE crash_acc_2022 SET CITY_txt = 'Goodhue' where TRIM(CITY)='1505';
UPDATE crash_acc_2022 SET CITY_txt = 'Goodridge' where TRIM(CITY)='1510';
UPDATE crash_acc_2022 SET CITY_txt = 'Good Thunder' where TRIM(CITY)='1515';
UPDATE crash_acc_2022 SET CITY_txt = 'Goodview' where TRIM(CITY)='1520';
UPDATE crash_acc_2022 SET CITY_txt = 'Graceville' where TRIM(CITY)='1525';
UPDATE crash_acc_2022 SET CITY_txt = 'Granada' where TRIM(CITY)='1530';
UPDATE crash_acc_2022 SET CITY_txt = 'Grand Marais' where TRIM(CITY)='1535';
UPDATE crash_acc_2022 SET CITY_txt = 'Grand Meadow' where TRIM(CITY)='1540';
UPDATE crash_acc_2022 SET CITY_txt = 'Grand Rapids' where TRIM(CITY)='1545';
UPDATE crash_acc_2022 SET CITY_txt = 'Granite Falls' where TRIM(CITY)='1550';
UPDATE crash_acc_2022 SET CITY_txt = 'Grant' where TRIM(CITY)='1553';
UPDATE crash_acc_2022 SET CITY_txt = 'Grasston' where TRIM(CITY)='1555';
UPDATE crash_acc_2022 SET CITY_txt = 'Greenbush' where TRIM(CITY)='1560';
UPDATE crash_acc_2022 SET CITY_txt = 'Greenfield' where TRIM(CITY)='1565';
UPDATE crash_acc_2022 SET CITY_txt = 'Green Isle' where TRIM(CITY)='1570';
UPDATE crash_acc_2022 SET CITY_txt = 'Greenwald' where TRIM(CITY)='1575';
UPDATE crash_acc_2022 SET CITY_txt = 'Greenwood' where TRIM(CITY)='1580';
UPDATE crash_acc_2022 SET CITY_txt = 'Grey Eagle' where TRIM(CITY)='1585';
UPDATE crash_acc_2022 SET CITY_txt = 'Grove City' where TRIM(CITY)='1590';
UPDATE crash_acc_2022 SET CITY_txt = 'Grygla' where TRIM(CITY)='1595';
UPDATE crash_acc_2022 SET CITY_txt = 'Gully' where TRIM(CITY)='1600';
UPDATE crash_acc_2022 SET CITY_txt = 'Hackensack' where TRIM(CITY)='1605';
UPDATE crash_acc_2022 SET CITY_txt = 'Hadley' where TRIM(CITY)='1610';
UPDATE crash_acc_2022 SET CITY_txt = 'Hallock' where TRIM(CITY)='1615';
UPDATE crash_acc_2022 SET CITY_txt = 'Halma' where TRIM(CITY)='1620';
UPDATE crash_acc_2022 SET CITY_txt = 'Halstad' where TRIM(CITY)='1625';
UPDATE crash_acc_2022 SET CITY_txt = 'Hamburg' where TRIM(CITY)='1630';
UPDATE crash_acc_2022 SET CITY_txt = 'Ham Lake' where TRIM(CITY)='1633';
UPDATE crash_acc_2022 SET CITY_txt = 'Hammond' where TRIM(CITY)='1635';
UPDATE crash_acc_2022 SET CITY_txt = 'Hampton' where TRIM(CITY)='1640';
UPDATE crash_acc_2022 SET CITY_txt = 'Hancock' where TRIM(CITY)='1645';
UPDATE crash_acc_2022 SET CITY_txt = 'Hanley Falls' where TRIM(CITY)='1650';
UPDATE crash_acc_2022 SET CITY_txt = 'Hanover' where TRIM(CITY)='1655';
UPDATE crash_acc_2022 SET CITY_txt = 'Hanska' where TRIM(CITY)='1660';
UPDATE crash_acc_2022 SET CITY_txt = 'Harding' where TRIM(CITY)='1665';
UPDATE crash_acc_2022 SET CITY_txt = 'Hardwick' where TRIM(CITY)='1670';
UPDATE crash_acc_2022 SET CITY_txt = 'Harmony' where TRIM(CITY)='1675';
UPDATE crash_acc_2022 SET CITY_txt = 'Harris' where TRIM(CITY)='1680';
UPDATE crash_acc_2022 SET CITY_txt = 'Hartland' where TRIM(CITY)='1685';
UPDATE crash_acc_2022 SET CITY_txt = 'Hastings' where TRIM(CITY)='1686';
UPDATE crash_acc_2022 SET CITY_txt = 'Hatfield' where TRIM(CITY)='1690';
UPDATE crash_acc_2022 SET CITY_txt = 'Hawley' where TRIM(CITY)='1695';
UPDATE crash_acc_2022 SET CITY_txt = 'Hayfield' where TRIM(CITY)='1700';
UPDATE crash_acc_2022 SET CITY_txt = 'Hayward' where TRIM(CITY)='1705';
UPDATE crash_acc_2022 SET CITY_txt = 'Hazel Run' where TRIM(CITY)='1710';
UPDATE crash_acc_2022 SET CITY_txt = 'Hector' where TRIM(CITY)='1715';
UPDATE crash_acc_2022 SET CITY_txt = 'Heidelberg' where TRIM(CITY)='1720';
UPDATE crash_acc_2022 SET CITY_txt = 'Henderson' where TRIM(CITY)='1725';
UPDATE crash_acc_2022 SET CITY_txt = 'Hendricks' where TRIM(CITY)='1730';
UPDATE crash_acc_2022 SET CITY_txt = 'Hendrum' where TRIM(CITY)='1735';
UPDATE crash_acc_2022 SET CITY_txt = 'Henning' where TRIM(CITY)='1740';
UPDATE crash_acc_2022 SET CITY_txt = 'Henriette' where TRIM(CITY)='1745';
UPDATE crash_acc_2022 SET CITY_txt = 'Herman' where TRIM(CITY)='1750';
UPDATE crash_acc_2022 SET CITY_txt = 'Hermantown' where TRIM(CITY)='1752';
UPDATE crash_acc_2022 SET CITY_txt = 'Heron Lake' where TRIM(CITY)='1755';
UPDATE crash_acc_2022 SET CITY_txt = 'Hewitt' where TRIM(CITY)='1760';
UPDATE crash_acc_2022 SET CITY_txt = 'Hibbing' where TRIM(CITY)='1765';
UPDATE crash_acc_2022 SET CITY_txt = 'Hill City' where TRIM(CITY)='1770';
UPDATE crash_acc_2022 SET CITY_txt = 'Hillman' where TRIM(CITY)='1775';
UPDATE crash_acc_2022 SET CITY_txt = 'Hills' where TRIM(CITY)='1780';
UPDATE crash_acc_2022 SET CITY_txt = 'Hilltop' where TRIM(CITY)='1785';
UPDATE crash_acc_2022 SET CITY_txt = 'Hinckley' where TRIM(CITY)='1790';
UPDATE crash_acc_2022 SET CITY_txt = 'Hitterdal' where TRIM(CITY)='1795';
UPDATE crash_acc_2022 SET CITY_txt = 'Hoffman' where TRIM(CITY)='1800';
UPDATE crash_acc_2022 SET CITY_txt = 'Hokah' where TRIM(CITY)='1805';
UPDATE crash_acc_2022 SET CITY_txt = 'Holdingford' where TRIM(CITY)='1810';
UPDATE crash_acc_2022 SET CITY_txt = 'Holland' where TRIM(CITY)='1818';
UPDATE crash_acc_2022 SET CITY_txt = 'Hollandale' where TRIM(CITY)='1820';
UPDATE crash_acc_2022 SET CITY_txt = 'Holloway' where TRIM(CITY)='1825';
UPDATE crash_acc_2022 SET CITY_txt = 'Holt' where TRIM(CITY)='1830';
UPDATE crash_acc_2022 SET CITY_txt = 'Hopkins' where TRIM(CITY)='1835';
UPDATE crash_acc_2022 SET CITY_txt = 'Houston' where TRIM(CITY)='1840';
UPDATE crash_acc_2022 SET CITY_txt = 'Howard Lake' where TRIM(CITY)='1845';
UPDATE crash_acc_2022 SET CITY_txt = 'Hoyt Lakes' where TRIM(CITY)='1850';
UPDATE crash_acc_2022 SET CITY_txt = 'Hugo' where TRIM(CITY)='1855';
UPDATE crash_acc_2022 SET CITY_txt = 'Humboldt' where TRIM(CITY)='1860';
UPDATE crash_acc_2022 SET CITY_txt = 'Hutchinson' where TRIM(CITY)='1865';
UPDATE crash_acc_2022 SET CITY_txt = 'Ihlen' where TRIM(CITY)='1870';
UPDATE crash_acc_2022 SET CITY_txt = 'Independence' where TRIM(CITY)='1875';
UPDATE crash_acc_2022 SET CITY_txt = 'International Falls' where TRIM(CITY)='1880';
UPDATE crash_acc_2022 SET CITY_txt = 'Inver Grove Heights' where TRIM(CITY)='1886';
UPDATE crash_acc_2022 SET CITY_txt = 'Iona' where TRIM(CITY)='1890';
UPDATE crash_acc_2022 SET CITY_txt = 'Iron Junction' where TRIM(CITY)='1895';
UPDATE crash_acc_2022 SET CITY_txt = 'Ironton' where TRIM(CITY)='1900';
UPDATE crash_acc_2022 SET CITY_txt = 'Isanti' where TRIM(CITY)='1905';
UPDATE crash_acc_2022 SET CITY_txt = 'Island View' where TRIM(CITY)='1915';
UPDATE crash_acc_2022 SET CITY_txt = 'Isle' where TRIM(CITY)='1920';
UPDATE crash_acc_2022 SET CITY_txt = 'Ivanhoe' where TRIM(CITY)='1925';
UPDATE crash_acc_2022 SET CITY_txt = 'Jackson' where TRIM(CITY)='1930';
UPDATE crash_acc_2022 SET CITY_txt = 'Janesville' where TRIM(CITY)='1935';
UPDATE crash_acc_2022 SET CITY_txt = 'Jasper' where TRIM(CITY)='1940';
UPDATE crash_acc_2022 SET CITY_txt = 'Jeffers' where TRIM(CITY)='1945';
UPDATE crash_acc_2022 SET CITY_txt = 'Jenkins' where TRIM(CITY)='1950';
UPDATE crash_acc_2022 SET CITY_txt = 'Johnson' where TRIM(CITY)='1955';
UPDATE crash_acc_2022 SET CITY_txt = 'Jordan' where TRIM(CITY)='1960';
UPDATE crash_acc_2022 SET CITY_txt = 'Kandiyohi' where TRIM(CITY)='1965';
UPDATE crash_acc_2022 SET CITY_txt = 'Karlstad' where TRIM(CITY)='1970';
UPDATE crash_acc_2022 SET CITY_txt = 'Kasota' where TRIM(CITY)='1975';
UPDATE crash_acc_2022 SET CITY_txt = 'Kasson' where TRIM(CITY)='1980';
UPDATE crash_acc_2022 SET CITY_txt = 'Keewatin' where TRIM(CITY)='1985';
UPDATE crash_acc_2022 SET CITY_txt = 'Kelliher' where TRIM(CITY)='1990';
UPDATE crash_acc_2022 SET CITY_txt = 'Kellogg' where TRIM(CITY)='1995';
UPDATE crash_acc_2022 SET CITY_txt = 'Kennedy' where TRIM(CITY)='2005';
UPDATE crash_acc_2022 SET CITY_txt = 'Kenneth' where TRIM(CITY)='2010';
UPDATE crash_acc_2022 SET CITY_txt = 'Kensington' where TRIM(CITY)='2015';
UPDATE crash_acc_2022 SET CITY_txt = 'Kent' where TRIM(CITY)='2020';
UPDATE crash_acc_2022 SET CITY_txt = 'Kenyon' where TRIM(CITY)='2025';
UPDATE crash_acc_2022 SET CITY_txt = 'Kerkhoven' where TRIM(CITY)='2030';
UPDATE crash_acc_2022 SET CITY_txt = 'Kerrick' where TRIM(CITY)='2035';
UPDATE crash_acc_2022 SET CITY_txt = 'Kettle River' where TRIM(CITY)='2040';
UPDATE crash_acc_2022 SET CITY_txt = 'Kiester' where TRIM(CITY)='2045';
UPDATE crash_acc_2022 SET CITY_txt = 'Kilkenny' where TRIM(CITY)='2050';
UPDATE crash_acc_2022 SET CITY_txt = 'Kimball Prairie' where TRIM(CITY)='2055';
UPDATE crash_acc_2022 SET CITY_txt = 'Kinbrae' where TRIM(CITY)='2060';
UPDATE crash_acc_2022 SET CITY_txt = 'Kingston' where TRIM(CITY)='2063';
UPDATE crash_acc_2022 SET CITY_txt = 'Kinney' where TRIM(CITY)='2065';
UPDATE crash_acc_2022 SET CITY_txt = 'La Crescent' where TRIM(CITY)='2070';
UPDATE crash_acc_2022 SET CITY_txt = 'Lafayette' where TRIM(CITY)='2075';
UPDATE crash_acc_2022 SET CITY_txt = 'Lake Benton' where TRIM(CITY)='2085';
UPDATE crash_acc_2022 SET CITY_txt = 'Lake Bronson' where TRIM(CITY)='2090';
UPDATE crash_acc_2022 SET CITY_txt = 'Lake City' where TRIM(CITY)='2091';
UPDATE crash_acc_2022 SET CITY_txt = 'Lake Crystal' where TRIM(CITY)='2095';
UPDATE crash_acc_2022 SET CITY_txt = 'Lake Elmo' where TRIM(CITY)='2100';
UPDATE crash_acc_2022 SET CITY_txt = 'Lakefield' where TRIM(CITY)='2105';
UPDATE crash_acc_2022 SET CITY_txt = 'Lake Henry' where TRIM(CITY)='2115';
UPDATE crash_acc_2022 SET CITY_txt = 'Lakeland' where TRIM(CITY)='2120';
UPDATE crash_acc_2022 SET CITY_txt = 'Lakeland Shores' where TRIM(CITY)='2125';
UPDATE crash_acc_2022 SET CITY_txt = 'Lake Lillian' where TRIM(CITY)='2130';
UPDATE crash_acc_2022 SET CITY_txt = 'Lake Park' where TRIM(CITY)='2135';
UPDATE crash_acc_2022 SET CITY_txt = 'Lake St Croix Beach' where TRIM(CITY)='2138';
UPDATE crash_acc_2022 SET CITY_txt = 'Lake Shore' where TRIM(CITY)='2140';
UPDATE crash_acc_2022 SET CITY_txt = 'Lakeville' where TRIM(CITY)='2150';
UPDATE crash_acc_2022 SET CITY_txt = 'Lake Wilson' where TRIM(CITY)='2155';
UPDATE crash_acc_2022 SET CITY_txt = 'Lamberton' where TRIM(CITY)='2160';
UPDATE crash_acc_2022 SET CITY_txt = 'Lancaster' where TRIM(CITY)='2165';
UPDATE crash_acc_2022 SET CITY_txt = 'Landfall' where TRIM(CITY)='2170';
UPDATE crash_acc_2022 SET CITY_txt = 'Lanesboro' where TRIM(CITY)='2175';
UPDATE crash_acc_2022 SET CITY_txt = 'Laporte' where TRIM(CITY)='2180';
UPDATE crash_acc_2022 SET CITY_txt = 'La Prairie' where TRIM(CITY)='2185';
UPDATE crash_acc_2022 SET CITY_txt = 'La Salle' where TRIM(CITY)='2190';
UPDATE crash_acc_2022 SET CITY_txt = 'Lastrup' where TRIM(CITY)='2195';
UPDATE crash_acc_2022 SET CITY_txt = 'Lauderdale' where TRIM(CITY)='2200';
UPDATE crash_acc_2022 SET CITY_txt = 'Le Center' where TRIM(CITY)='2205';
UPDATE crash_acc_2022 SET CITY_txt = 'Lengby' where TRIM(CITY)='2210';
UPDATE crash_acc_2022 SET CITY_txt = 'Leonard' where TRIM(CITY)='2215';
UPDATE crash_acc_2022 SET CITY_txt = 'Leonidas' where TRIM(CITY)='2220';
UPDATE crash_acc_2022 SET CITY_txt = 'Le Roy' where TRIM(CITY)='2225';
UPDATE crash_acc_2022 SET CITY_txt = 'Lester Prairie' where TRIM(CITY)='2230';
UPDATE crash_acc_2022 SET CITY_txt = 'Le Sueur' where TRIM(CITY)='2235';
UPDATE crash_acc_2022 SET CITY_txt = 'Lewiston' where TRIM(CITY)='2240';
UPDATE crash_acc_2022 SET CITY_txt = 'Lewisville' where TRIM(CITY)='2245';
UPDATE crash_acc_2022 SET CITY_txt = 'Lexington' where TRIM(CITY)='2250';
UPDATE crash_acc_2022 SET CITY_txt = 'Lillydale' where TRIM(CITY)='2255';
UPDATE crash_acc_2022 SET CITY_txt = 'Lindstrom' where TRIM(CITY)='2260';
UPDATE crash_acc_2022 SET CITY_txt = 'Lino Lakes' where TRIM(CITY)='2265';
UPDATE crash_acc_2022 SET CITY_txt = 'Lismore' where TRIM(CITY)='2270';
UPDATE crash_acc_2022 SET CITY_txt = 'Litchfield' where TRIM(CITY)='2275';
UPDATE crash_acc_2022 SET CITY_txt = 'Little Canada' where TRIM(CITY)='2280';
UPDATE crash_acc_2022 SET CITY_txt = 'Little Falls' where TRIM(CITY)='2285';
UPDATE crash_acc_2022 SET CITY_txt = 'Little Fork' where TRIM(CITY)='2290';
UPDATE crash_acc_2022 SET CITY_txt = 'Long Beach' where TRIM(CITY)='2295';
UPDATE crash_acc_2022 SET CITY_txt = 'Long Lake' where TRIM(CITY)='2300';
UPDATE crash_acc_2022 SET CITY_txt = 'Long Prairie' where TRIM(CITY)='2305';
UPDATE crash_acc_2022 SET CITY_txt = 'Longville' where TRIM(CITY)='2310';
UPDATE crash_acc_2022 SET CITY_txt = 'Lonsdale' where TRIM(CITY)='2315';
UPDATE crash_acc_2022 SET CITY_txt = 'Loretto' where TRIM(CITY)='2320';
UPDATE crash_acc_2022 SET CITY_txt = 'Louisburg' where TRIM(CITY)='2325';
UPDATE crash_acc_2022 SET CITY_txt = 'Lowry' where TRIM(CITY)='2330';
UPDATE crash_acc_2022 SET CITY_txt = 'Lucan' where TRIM(CITY)='2335';
UPDATE crash_acc_2022 SET CITY_txt = 'Luverne' where TRIM(CITY)='2340';
UPDATE crash_acc_2022 SET CITY_txt = 'Lyle' where TRIM(CITY)='2345';
UPDATE crash_acc_2022 SET CITY_txt = 'Lynd' where TRIM(CITY)='2350';
UPDATE crash_acc_2022 SET CITY_txt = 'Mabel' where TRIM(CITY)='2353';
UPDATE crash_acc_2022 SET CITY_txt = 'Mcgrath' where TRIM(CITY)='2355';
UPDATE crash_acc_2022 SET CITY_txt = 'Mcgregor' where TRIM(CITY)='2360';
UPDATE crash_acc_2022 SET CITY_txt = 'Mcintosh' where TRIM(CITY)='2365';
UPDATE crash_acc_2022 SET CITY_txt = 'Mckinley' where TRIM(CITY)='2370';
UPDATE crash_acc_2022 SET CITY_txt = 'Madelia' where TRIM(CITY)='2380';
UPDATE crash_acc_2022 SET CITY_txt = 'Madison' where TRIM(CITY)='2385';
UPDATE crash_acc_2022 SET CITY_txt = 'Madison Lake' where TRIM(CITY)='2390';
UPDATE crash_acc_2022 SET CITY_txt = 'Magnolia' where TRIM(CITY)='2395';
UPDATE crash_acc_2022 SET CITY_txt = 'Mahnomen' where TRIM(CITY)='2400';
UPDATE crash_acc_2022 SET CITY_txt = 'Mahtomedi' where TRIM(CITY)='2405';
UPDATE crash_acc_2022 SET CITY_txt = 'Manchester' where TRIM(CITY)='2410';
UPDATE crash_acc_2022 SET CITY_txt = 'Manhattan Beach' where TRIM(CITY)='2415';
UPDATE crash_acc_2022 SET CITY_txt = 'Mankato' where TRIM(CITY)='2420';
UPDATE crash_acc_2022 SET CITY_txt = 'Mantorville' where TRIM(CITY)='2425';
UPDATE crash_acc_2022 SET CITY_txt = 'Maple Grove' where TRIM(CITY)='2430';
UPDATE crash_acc_2022 SET CITY_txt = 'Maple Lake' where TRIM(CITY)='2435';
UPDATE crash_acc_2022 SET CITY_txt = 'Maple Plain' where TRIM(CITY)='2440';
UPDATE crash_acc_2022 SET CITY_txt = 'Mapleton' where TRIM(CITY)='2445';
UPDATE crash_acc_2022 SET CITY_txt = 'Mapleview' where TRIM(CITY)='2450';
UPDATE crash_acc_2022 SET CITY_txt = 'Maplewood' where TRIM(CITY)='2455';
UPDATE crash_acc_2022 SET CITY_txt = 'Marble' where TRIM(CITY)='2460';
UPDATE crash_acc_2022 SET CITY_txt = 'Marietta' where TRIM(CITY)='2465';
UPDATE crash_acc_2022 SET CITY_txt = 'Marine St Croix' where TRIM(CITY)='2470';
UPDATE crash_acc_2022 SET CITY_txt = 'Marshall' where TRIM(CITY)='2475';
UPDATE crash_acc_2022 SET CITY_txt = 'Mayer' where TRIM(CITY)='2480';
UPDATE crash_acc_2022 SET CITY_txt = 'Maynard' where TRIM(CITY)='2485';
UPDATE crash_acc_2022 SET CITY_txt = 'Mazeppa' where TRIM(CITY)='2490';
UPDATE crash_acc_2022 SET CITY_txt = 'Meadowlands' where TRIM(CITY)='2495';
UPDATE crash_acc_2022 SET CITY_txt = 'Medford' where TRIM(CITY)='2500';
UPDATE crash_acc_2022 SET CITY_txt = 'Medicine Lake' where TRIM(CITY)='2505';
UPDATE crash_acc_2022 SET CITY_txt = 'Medina' where TRIM(CITY)='2510';
UPDATE crash_acc_2022 SET CITY_txt = 'Meire Grove' where TRIM(CITY)='2515';
UPDATE crash_acc_2022 SET CITY_txt = 'Melrose' where TRIM(CITY)='2520';
UPDATE crash_acc_2022 SET CITY_txt = 'Menagha' where TRIM(CITY)='2525';
UPDATE crash_acc_2022 SET CITY_txt = 'Mendota' where TRIM(CITY)='2532';
UPDATE crash_acc_2022 SET CITY_txt = 'Mendota Heights' where TRIM(CITY)='2535';
UPDATE crash_acc_2022 SET CITY_txt = 'Mentor' where TRIM(CITY)='2540';
UPDATE crash_acc_2022 SET CITY_txt = 'Middle River' where TRIM(CITY)='2545';
UPDATE crash_acc_2022 SET CITY_txt = 'Miesville' where TRIM(CITY)='2550';
UPDATE crash_acc_2022 SET CITY_txt = 'Milaca' where TRIM(CITY)='2555';
UPDATE crash_acc_2022 SET CITY_txt = 'Milan' where TRIM(CITY)='2560';
UPDATE crash_acc_2022 SET CITY_txt = 'Millerville' where TRIM(CITY)='2565';
UPDATE crash_acc_2022 SET CITY_txt = 'Millville' where TRIM(CITY)='2570';
UPDATE crash_acc_2022 SET CITY_txt = 'Milroy' where TRIM(CITY)='2575';
UPDATE crash_acc_2022 SET CITY_txt = 'Miltona' where TRIM(CITY)='2580';
UPDATE crash_acc_2022 SET CITY_txt = 'Minneapolis' where TRIM(CITY)='2585';
UPDATE crash_acc_2022 SET CITY_txt = 'Minneiska' where TRIM(CITY)='2590';
UPDATE crash_acc_2022 SET CITY_txt = 'Minneota' where TRIM(CITY)='2595';
UPDATE crash_acc_2022 SET CITY_txt = 'Minnesot City' where TRIM(CITY)='2600';
UPDATE crash_acc_2022 SET CITY_txt = 'Minnesota Lake' where TRIM(CITY)='2605';
UPDATE crash_acc_2022 SET CITY_txt = 'Minnetonka' where TRIM(CITY)='2610';
UPDATE crash_acc_2022 SET CITY_txt = 'Minnetka Beach' where TRIM(CITY)='2612';
UPDATE crash_acc_2022 SET CITY_txt = 'Minnetrista' where TRIM(CITY)='2617';
UPDATE crash_acc_2022 SET CITY_txt = 'Mizpah' where TRIM(CITY)='2620';
UPDATE crash_acc_2022 SET CITY_txt = 'Montevideo' where TRIM(CITY)='2625';
UPDATE crash_acc_2022 SET CITY_txt = 'Montgomery' where TRIM(CITY)='2630';
UPDATE crash_acc_2022 SET CITY_txt = 'Monticello' where TRIM(CITY)='2635';
UPDATE crash_acc_2022 SET CITY_txt = 'Montrose' where TRIM(CITY)='2640';
UPDATE crash_acc_2022 SET CITY_txt = 'Moorhead' where TRIM(CITY)='2645';
UPDATE crash_acc_2022 SET CITY_txt = 'Moose Lake' where TRIM(CITY)='2650';
UPDATE crash_acc_2022 SET CITY_txt = 'Mora' where TRIM(CITY)='2655';
UPDATE crash_acc_2022 SET CITY_txt = 'Morgan' where TRIM(CITY)='2660';
UPDATE crash_acc_2022 SET CITY_txt = 'Morris' where TRIM(CITY)='2670';
UPDATE crash_acc_2022 SET CITY_txt = 'Morristown' where TRIM(CITY)='2675';
UPDATE crash_acc_2022 SET CITY_txt = 'Morton' where TRIM(CITY)='2680';
UPDATE crash_acc_2022 SET CITY_txt = 'Motley' where TRIM(CITY)='2685';
UPDATE crash_acc_2022 SET CITY_txt = 'Mound' where TRIM(CITY)='2690';
UPDATE crash_acc_2022 SET CITY_txt = 'Mounds View' where TRIM(CITY)='2695';
UPDATE crash_acc_2022 SET CITY_txt = 'Mountain Iron' where TRIM(CITY)='2700';
UPDATE crash_acc_2022 SET CITY_txt = 'Mountain Lake' where TRIM(CITY)='2705';
UPDATE crash_acc_2022 SET CITY_txt = 'Murdock' where TRIM(CITY)='2710';
UPDATE crash_acc_2022 SET CITY_txt = 'Myrtle' where TRIM(CITY)='2715';
UPDATE crash_acc_2022 SET CITY_txt = 'Nashua' where TRIM(CITY)='2720';
UPDATE crash_acc_2022 SET CITY_txt = 'Nashwauk' where TRIM(CITY)='2725';
UPDATE crash_acc_2022 SET CITY_txt = 'Nassau' where TRIM(CITY)='2730';
UPDATE crash_acc_2022 SET CITY_txt = 'Nelson' where TRIM(CITY)='2735';
UPDATE crash_acc_2022 SET CITY_txt = 'Nerstrand' where TRIM(CITY)='2740';
UPDATE crash_acc_2022 SET CITY_txt = 'Nevis' where TRIM(CITY)='2745';
UPDATE crash_acc_2022 SET CITY_txt = 'New Auburn' where TRIM(CITY)='2750';
UPDATE crash_acc_2022 SET CITY_txt = 'New Brighton' where TRIM(CITY)='2755';
UPDATE crash_acc_2022 SET CITY_txt = 'Newfolden' where TRIM(CITY)='2760';
UPDATE crash_acc_2022 SET CITY_txt = 'New Germany' where TRIM(CITY)='2765';
UPDATE crash_acc_2022 SET CITY_txt = 'New Hope' where TRIM(CITY)='2770';
UPDATE crash_acc_2022 SET CITY_txt = 'New London' where TRIM(CITY)='2775';
UPDATE crash_acc_2022 SET CITY_txt = 'New Market' where TRIM(CITY)='2780';
UPDATE crash_acc_2022 SET CITY_txt = 'New Munich' where TRIM(CITY)='2785';
UPDATE crash_acc_2022 SET CITY_txt = 'Newport' where TRIM(CITY)='2790';
UPDATE crash_acc_2022 SET CITY_txt = 'New Prague' where TRIM(CITY)='2795';
UPDATE crash_acc_2022 SET CITY_txt = 'New Richland' where TRIM(CITY)='2800';
UPDATE crash_acc_2022 SET CITY_txt = 'New Trier' where TRIM(CITY)='2805';
UPDATE crash_acc_2022 SET CITY_txt = 'New Ulm' where TRIM(CITY)='2810';
UPDATE crash_acc_2022 SET CITY_txt = 'New York Mills' where TRIM(CITY)='2815';
UPDATE crash_acc_2022 SET CITY_txt = 'Nicollet' where TRIM(CITY)='2820';
UPDATE crash_acc_2022 SET CITY_txt = 'Nielsville' where TRIM(CITY)='2825';
UPDATE crash_acc_2022 SET CITY_txt = 'Nimrod' where TRIM(CITY)='2830';
UPDATE crash_acc_2022 SET CITY_txt = 'Nisswa' where TRIM(CITY)='2835';
UPDATE crash_acc_2022 SET CITY_txt = 'Norcross' where TRIM(CITY)='2840';
UPDATE crash_acc_2022 SET CITY_txt = 'North Branch' where TRIM(CITY)='2845';
UPDATE crash_acc_2022 SET CITY_txt = 'Northfield' where TRIM(CITY)='2850';
UPDATE crash_acc_2022 SET CITY_txt = 'North Mankato' where TRIM(CITY)='2855';
UPDATE crash_acc_2022 SET CITY_txt = 'North Oaks' where TRIM(CITY)='2860';
UPDATE crash_acc_2022 SET CITY_txt = 'Northome' where TRIM(CITY)='2865';
UPDATE crash_acc_2022 SET CITY_txt = 'North Redwood' where TRIM(CITY)='2870';
UPDATE crash_acc_2022 SET CITY_txt = 'Northrop' where TRIM(CITY)='2875';
UPDATE crash_acc_2022 SET CITY_txt = 'North St Paul' where TRIM(CITY)='2880';
UPDATE crash_acc_2022 SET CITY_txt = 'Norwood' where TRIM(CITY)='2885';
UPDATE crash_acc_2022 SET CITY_txt = 'Oakdale' where TRIM(CITY)='2888';
UPDATE crash_acc_2022 SET CITY_txt = 'Oak Grove' where TRIM(CITY)='2889';
UPDATE crash_acc_2022 SET CITY_txt = 'Oak Park Heights' where TRIM(CITY)='2890';
UPDATE crash_acc_2022 SET CITY_txt = 'Odessa' where TRIM(CITY)='2895';
UPDATE crash_acc_2022 SET CITY_txt = 'Odin' where TRIM(CITY)='2900';
UPDATE crash_acc_2022 SET CITY_txt = 'Ogema' where TRIM(CITY)='2905';
UPDATE crash_acc_2022 SET CITY_txt = 'Ogilvie' where TRIM(CITY)='2910';
UPDATE crash_acc_2022 SET CITY_txt = 'Okabena' where TRIM(CITY)='2915';
UPDATE crash_acc_2022 SET CITY_txt = 'Oklee' where TRIM(CITY)='2920';
UPDATE crash_acc_2022 SET CITY_txt = 'Olivia' where TRIM(CITY)='2925';
UPDATE crash_acc_2022 SET CITY_txt = 'Onamia' where TRIM(CITY)='2930';
UPDATE crash_acc_2022 SET CITY_txt = 'Ormsby' where TRIM(CITY)='2935';
UPDATE crash_acc_2022 SET CITY_txt = 'Orono' where TRIM(CITY)='2940';
UPDATE crash_acc_2022 SET CITY_txt = 'Oronoco' where TRIM(CITY)='2942';
UPDATE crash_acc_2022 SET CITY_txt = 'Orr' where TRIM(CITY)='2945';
UPDATE crash_acc_2022 SET CITY_txt = 'Ortonville' where TRIM(CITY)='2950';
UPDATE crash_acc_2022 SET CITY_txt = 'Osakis' where TRIM(CITY)='2955';
UPDATE crash_acc_2022 SET CITY_txt = 'Oslo' where TRIM(CITY)='2960';
UPDATE crash_acc_2022 SET CITY_txt = 'Osseo' where TRIM(CITY)='2965';
UPDATE crash_acc_2022 SET CITY_txt = 'Ostrander' where TRIM(CITY)='2970';
UPDATE crash_acc_2022 SET CITY_txt = 'Ottertail' where TRIM(CITY)='2975';
UPDATE crash_acc_2022 SET CITY_txt = 'Owatonna' where TRIM(CITY)='2980';
UPDATE crash_acc_2022 SET CITY_txt = 'Palisade' where TRIM(CITY)='2985';
UPDATE crash_acc_2022 SET CITY_txt = 'Parkers Prairie' where TRIM(CITY)='2990';
UPDATE crash_acc_2022 SET CITY_txt = 'Otsego' where TRIM(CITY)='2972';
UPDATE crash_acc_2022 SET CITY_txt = 'Park Rapids' where TRIM(CITY)='2995';
UPDATE crash_acc_2022 SET CITY_txt = 'Paynesville' where TRIM(CITY)='3000';
UPDATE crash_acc_2022 SET CITY_txt = 'Pease' where TRIM(CITY)='3005';
UPDATE crash_acc_2022 SET CITY_txt = 'Pelican Rapids' where TRIM(CITY)='3015';
UPDATE crash_acc_2022 SET CITY_txt = 'Pemberton' where TRIM(CITY)='3020';
UPDATE crash_acc_2022 SET CITY_txt = 'Pennock' where TRIM(CITY)='3025';
UPDATE crash_acc_2022 SET CITY_txt = 'Pequot Lakes' where TRIM(CITY)='3030';
UPDATE crash_acc_2022 SET CITY_txt = 'Perham' where TRIM(CITY)='3035';
UPDATE crash_acc_2022 SET CITY_txt = 'Perley' where TRIM(CITY)='3040';
UPDATE crash_acc_2022 SET CITY_txt = 'Peterson' where TRIM(CITY)='3045';
UPDATE crash_acc_2022 SET CITY_txt = 'Pierz' where TRIM(CITY)='3050';
UPDATE crash_acc_2022 SET CITY_txt = 'Pillager' where TRIM(CITY)='3055';
UPDATE crash_acc_2022 SET CITY_txt = 'Pine City' where TRIM(CITY)='3060';
UPDATE crash_acc_2022 SET CITY_txt = 'Pine Island' where TRIM(CITY)='3065';
UPDATE crash_acc_2022 SET CITY_txt = 'Pine River' where TRIM(CITY)='3070';
UPDATE crash_acc_2022 SET CITY_txt = 'Pine Springs' where TRIM(CITY)='3075';
UPDATE crash_acc_2022 SET CITY_txt = 'Pipestone' where TRIM(CITY)='3080';
UPDATE crash_acc_2022 SET CITY_txt = 'Plainview' where TRIM(CITY)='3085';
UPDATE crash_acc_2022 SET CITY_txt = 'Plato' where TRIM(CITY)='3090';
UPDATE crash_acc_2022 SET CITY_txt = 'Pleasant Lake' where TRIM(CITY)='3095';
UPDATE crash_acc_2022 SET CITY_txt = 'Plummer' where TRIM(CITY)='3100';
UPDATE crash_acc_2022 SET CITY_txt = 'Plymouth' where TRIM(CITY)='3105';
UPDATE crash_acc_2022 SET CITY_txt = 'Porter' where TRIM(CITY)='3110';
UPDATE crash_acc_2022 SET CITY_txt = 'Preston' where TRIM(CITY)='3115';
UPDATE crash_acc_2022 SET CITY_txt = 'Princeton' where TRIM(CITY)='3120';
UPDATE crash_acc_2022 SET CITY_txt = 'Prinsburg' where TRIM(CITY)='3125';
UPDATE crash_acc_2022 SET CITY_txt = 'Prior Lake' where TRIM(CITY)='3130';
UPDATE crash_acc_2022 SET CITY_txt = 'Proctor' where TRIM(CITY)='3135';
UPDATE crash_acc_2022 SET CITY_txt = 'Quamba' where TRIM(CITY)='3140';
UPDATE crash_acc_2022 SET CITY_txt = 'Racine' where TRIM(CITY)='3145';
UPDATE crash_acc_2022 SET CITY_txt = 'Ramsey' where TRIM(CITY)='3148';
UPDATE crash_acc_2022 SET CITY_txt = 'Randall' where TRIM(CITY)='3150';
UPDATE crash_acc_2022 SET CITY_txt = 'Randolph' where TRIM(CITY)='3155';
UPDATE crash_acc_2022 SET CITY_txt = 'Rainer' where TRIM(CITY)='3160';
UPDATE crash_acc_2022 SET CITY_txt = 'Raymond' where TRIM(CITY)='3165';
UPDATE crash_acc_2022 SET CITY_txt = 'Red Lake Falls' where TRIM(CITY)='3170';
UPDATE crash_acc_2022 SET CITY_txt = 'Red Wing' where TRIM(CITY)='3175';
UPDATE crash_acc_2022 SET CITY_txt = 'Redwood Falls' where TRIM(CITY)='3180';
UPDATE crash_acc_2022 SET CITY_txt = 'Regal' where TRIM(CITY)='3185';
UPDATE crash_acc_2022 SET CITY_txt = 'Remer' where TRIM(CITY)='3190';
UPDATE crash_acc_2022 SET CITY_txt = 'Revnville' where TRIM(CITY)='3195';
UPDATE crash_acc_2022 SET CITY_txt = 'Revere' where TRIM(CITY)='3200';
UPDATE crash_acc_2022 SET CITY_txt = 'Rice' where TRIM(CITY)='3205';
UPDATE crash_acc_2022 SET CITY_txt = 'Richfield' where TRIM(CITY)='3210';
UPDATE crash_acc_2022 SET CITY_txt = 'Richmond' where TRIM(CITY)='3215';
UPDATE crash_acc_2022 SET CITY_txt = 'Richville' where TRIM(CITY)='3220';
UPDATE crash_acc_2022 SET CITY_txt = 'Riverton' where TRIM(CITY)='3225';
UPDATE crash_acc_2022 SET CITY_txt = 'Robbinsdale' where TRIM(CITY)='3230';
UPDATE crash_acc_2022 SET CITY_txt = 'Rochester' where TRIM(CITY)='3235';
UPDATE crash_acc_2022 SET CITY_txt = 'Rock Creek' where TRIM(CITY)='3237';
UPDATE crash_acc_2022 SET CITY_txt = 'Rockford' where TRIM(CITY)='3240';
UPDATE crash_acc_2022 SET CITY_txt = 'Rockville' where TRIM(CITY)='3245';
UPDATE crash_acc_2022 SET CITY_txt = 'Rogers' where TRIM(CITY)='3250';
UPDATE crash_acc_2022 SET CITY_txt = 'Rollingstone' where TRIM(CITY)='3255';
UPDATE crash_acc_2022 SET CITY_txt = 'Ronneby' where TRIM(CITY)='3260';
UPDATE crash_acc_2022 SET CITY_txt = 'Roosevelt' where TRIM(CITY)='3265';
UPDATE crash_acc_2022 SET CITY_txt = 'Roscoe' where TRIM(CITY)='3270';
UPDATE crash_acc_2022 SET CITY_txt = 'Roseau' where TRIM(CITY)='3275';
UPDATE crash_acc_2022 SET CITY_txt = 'Rose Creek' where TRIM(CITY)='3280';
UPDATE crash_acc_2022 SET CITY_txt = 'Rosemount' where TRIM(CITY)='3285';
UPDATE crash_acc_2022 SET CITY_txt = 'Roseville' where TRIM(CITY)='3290';
UPDATE crash_acc_2022 SET CITY_txt = 'Rothsay' where TRIM(CITY)='3295';
UPDATE crash_acc_2022 SET CITY_txt = 'Round Lake' where TRIM(CITY)='3300';
UPDATE crash_acc_2022 SET CITY_txt = 'Royalton' where TRIM(CITY)='3305';
UPDATE crash_acc_2022 SET CITY_txt = 'Rush City' where TRIM(CITY)='3310';
UPDATE crash_acc_2022 SET CITY_txt = 'Rushford City' where TRIM(CITY)='3315';
UPDATE crash_acc_2022 SET CITY_txt = 'Rushford Village' where TRIM(CITY)='3320';
UPDATE crash_acc_2022 SET CITY_txt = 'Rushmore' where TRIM(CITY)='3325';
UPDATE crash_acc_2022 SET CITY_txt = 'Russell' where TRIM(CITY)='3330';
UPDATE crash_acc_2022 SET CITY_txt = 'Ruthton' where TRIM(CITY)='3335';
UPDATE crash_acc_2022 SET CITY_txt = 'Rutledge' where TRIM(CITY)='3340';
UPDATE crash_acc_2022 SET CITY_txt = 'Sabin' where TRIM(CITY)='3345';
UPDATE crash_acc_2022 SET CITY_txt = 'Sacred Heart' where TRIM(CITY)='3350';
UPDATE crash_acc_2022 SET CITY_txt = 'St Anthony' where TRIM(CITY)='3360';
UPDATE crash_acc_2022 SET CITY_txt = 'St Anthony' where TRIM(CITY)='3362';
UPDATE crash_acc_2022 SET CITY_txt = 'St Bonifacius' where TRIM(CITY)='3365';
UPDATE crash_acc_2022 SET CITY_txt = 'St Charles' where TRIM(CITY)='3370';
UPDATE crash_acc_2022 SET CITY_txt = 'St Clair' where TRIM(CITY)='3375';
UPDATE crash_acc_2022 SET CITY_txt = 'St Cloud' where TRIM(CITY)='3380';
UPDATE crash_acc_2022 SET CITY_txt = 'St Francis' where TRIM(CITY)='3382';
UPDATE crash_acc_2022 SET CITY_txt = 'St Hilaire' where TRIM(CITY)='3385';
UPDATE crash_acc_2022 SET CITY_txt = 'St James' where TRIM(CITY)='3390';
UPDATE crash_acc_2022 SET CITY_txt = 'St Joseph' where TRIM(CITY)='3395';
UPDATE crash_acc_2022 SET CITY_txt = 'St Leo' where TRIM(CITY)='3400';
UPDATE crash_acc_2022 SET CITY_txt = 'St Louis Park' where TRIM(CITY)='3405';
UPDATE crash_acc_2022 SET CITY_txt = 'St Martin' where TRIM(CITY)='3410';
UPDATE crash_acc_2022 SET CITY_txt = 'St Marys Point' where TRIM(CITY)='3415';
UPDATE crash_acc_2022 SET CITY_txt = 'St Michael' where TRIM(CITY)='3420';
UPDATE crash_acc_2022 SET CITY_txt = 'St Paul' where TRIM(CITY)='3425';
UPDATE crash_acc_2022 SET CITY_txt = 'St Paul Park' where TRIM(CITY)='3430';
UPDATE crash_acc_2022 SET CITY_txt = 'St Peter' where TRIM(CITY)='3435';
UPDATE crash_acc_2022 SET CITY_txt = 'St Rosa' where TRIM(CITY)='3440';
UPDATE crash_acc_2022 SET CITY_txt = 'St Stephen' where TRIM(CITY)='3445';
UPDATE crash_acc_2022 SET CITY_txt = 'St Vincent' where TRIM(CITY)='3450';
UPDATE crash_acc_2022 SET CITY_txt = 'Sanborn' where TRIM(CITY)='3455';
UPDATE crash_acc_2022 SET CITY_txt = 'Sandstone' where TRIM(CITY)='3460';
UPDATE crash_acc_2022 SET CITY_txt = 'Sargeant' where TRIM(CITY)='3465';
UPDATE crash_acc_2022 SET CITY_txt = 'Sartell' where TRIM(CITY)='3470';
UPDATE crash_acc_2022 SET CITY_txt = 'Sauk Centre' where TRIM(CITY)='3475';
UPDATE crash_acc_2022 SET CITY_txt = 'Sauk Rapids' where TRIM(CITY)='3480';
UPDATE crash_acc_2022 SET CITY_txt = 'Savage' where TRIM(CITY)='3485';
UPDATE crash_acc_2022 SET CITY_txt = 'Scandia' where TRIM(CITY)='3487';
UPDATE crash_acc_2022 SET CITY_txt = 'Scanlon' where TRIM(CITY)='3490';
UPDATE crash_acc_2022 SET CITY_txt = 'Seaforth' where TRIM(CITY)='3495';
UPDATE crash_acc_2022 SET CITY_txt = 'Sebeka' where TRIM(CITY)='3500';
UPDATE crash_acc_2022 SET CITY_txt = 'Sedan' where TRIM(CITY)='3505';
UPDATE crash_acc_2022 SET CITY_txt = 'Shafer' where TRIM(CITY)='3510';
UPDATE crash_acc_2022 SET CITY_txt = 'Shakopee' where TRIM(CITY)='3515';
UPDATE crash_acc_2022 SET CITY_txt = 'Shelly' where TRIM(CITY)='3520';
UPDATE crash_acc_2022 SET CITY_txt = 'Sherburne' where TRIM(CITY)='3525';
UPDATE crash_acc_2022 SET CITY_txt = 'Shevlin' where TRIM(CITY)='3530';
UPDATE crash_acc_2022 SET CITY_txt = 'Shoreview' where TRIM(CITY)='3535';
UPDATE crash_acc_2022 SET CITY_txt = 'Shorewood' where TRIM(CITY)='3540';
UPDATE crash_acc_2022 SET CITY_txt = 'Silver Bay' where TRIM(CITY)='3545';
UPDATE crash_acc_2022 SET CITY_txt = 'Silver Lake' where TRIM(CITY)='3550';
UPDATE crash_acc_2022 SET CITY_txt = 'Skyline' where TRIM(CITY)='3555';
UPDATE crash_acc_2022 SET CITY_txt = 'Slayton' where TRIM(CITY)='3560';
UPDATE crash_acc_2022 SET CITY_txt = 'Sleepy Eye' where TRIM(CITY)='3565';
UPDATE crash_acc_2022 SET CITY_txt = 'Sobieska' where TRIM(CITY)='3570';
UPDATE crash_acc_2022 SET CITY_txt = 'Solway' where TRIM(CITY)='3575';
UPDATE crash_acc_2022 SET CITY_txt = 'South Haven' where TRIM(CITY)='3585';
UPDATE crash_acc_2022 SET CITY_txt = 'South International Falls' where TRIM(CITY)='3590';
UPDATE crash_acc_2022 SET CITY_txt = 'South St Paul' where TRIM(CITY)='3595';
UPDATE crash_acc_2022 SET CITY_txt = 'Spicer' where TRIM(CITY)='3600';
UPDATE crash_acc_2022 SET CITY_txt = 'Springfield' where TRIM(CITY)='3605';
UPDATE crash_acc_2022 SET CITY_txt = 'Spring Grove' where TRIM(CITY)='3610';
UPDATE crash_acc_2022 SET CITY_txt = 'Spring Hill' where TRIM(CITY)='3615';
UPDATE crash_acc_2022 SET CITY_txt = 'Spring Lake Park' where TRIM(CITY)='3620';
UPDATE crash_acc_2022 SET CITY_txt = 'Spring Park' where TRIM(CITY)='3625';
UPDATE crash_acc_2022 SET CITY_txt = 'Spring Valley' where TRIM(CITY)='3630';
UPDATE crash_acc_2022 SET CITY_txt = 'Squaw Lake' where TRIM(CITY)='3635';
UPDATE crash_acc_2022 SET CITY_txt = 'Stacy' where TRIM(CITY)='3640';
UPDATE crash_acc_2022 SET CITY_txt = 'Staples' where TRIM(CITY)='3645';
UPDATE crash_acc_2022 SET CITY_txt = 'Starbuck' where TRIM(CITY)='3650';
UPDATE crash_acc_2022 SET CITY_txt = 'Steen' where TRIM(CITY)='3655';
UPDATE crash_acc_2022 SET CITY_txt = 'Stephen' where TRIM(CITY)='3660';
UPDATE crash_acc_2022 SET CITY_txt = 'Stewart' where TRIM(CITY)='3665';
UPDATE crash_acc_2022 SET CITY_txt = 'Stewartville' where TRIM(CITY)='3670';
UPDATE crash_acc_2022 SET CITY_txt = 'Stillwater' where TRIM(CITY)='3675';
UPDATE crash_acc_2022 SET CITY_txt = 'Stockton' where TRIM(CITY)='3685';
UPDATE crash_acc_2022 SET CITY_txt = 'Storden' where TRIM(CITY)='3690';
UPDATE crash_acc_2022 SET CITY_txt = 'Strandquist' where TRIM(CITY)='3695';
UPDATE crash_acc_2022 SET CITY_txt = 'Strathcona' where TRIM(CITY)='3700';
UPDATE crash_acc_2022 SET CITY_txt = 'Sturgeon Lake' where TRIM(CITY)='3705';
UPDATE crash_acc_2022 SET CITY_txt = 'Sunberg' where TRIM(CITY)='3710';
UPDATE crash_acc_2022 SET CITY_txt = 'Sunfish Lake' where TRIM(CITY)='3715';
UPDATE crash_acc_2022 SET CITY_txt = 'Swanvile' where TRIM(CITY)='3720';
UPDATE crash_acc_2022 SET CITY_txt = 'Taconite' where TRIM(CITY)='3725';
UPDATE crash_acc_2022 SET CITY_txt = 'Tamarack' where TRIM(CITY)='3730';
UPDATE crash_acc_2022 SET CITY_txt = 'Taopi' where TRIM(CITY)='3735';
UPDATE crash_acc_2022 SET CITY_txt = 'Taunton' where TRIM(CITY)='3740';
UPDATE crash_acc_2022 SET CITY_txt = 'Taylors Falls' where TRIM(CITY)='3745';
UPDATE crash_acc_2022 SET CITY_txt = 'Tenney' where TRIM(CITY)='3750';
UPDATE crash_acc_2022 SET CITY_txt = 'Tenstrike' where TRIM(CITY)='3755';
UPDATE crash_acc_2022 SET CITY_txt = 'Thief River Falls' where TRIM(CITY)='3760';
UPDATE crash_acc_2022 SET CITY_txt = 'Thomson' where TRIM(CITY)='3765';
UPDATE crash_acc_2022 SET CITY_txt = 'Tintah' where TRIM(CITY)='3770';
UPDATE crash_acc_2022 SET CITY_txt = 'Tonka Bay' where TRIM(CITY)='3775';
UPDATE crash_acc_2022 SET CITY_txt = 'Tower' where TRIM(CITY)='3780';
UPDATE crash_acc_2022 SET CITY_txt = 'Tracy' where TRIM(CITY)='3785';
UPDATE crash_acc_2022 SET CITY_txt = 'Trail' where TRIM(CITY)='3790';
UPDATE crash_acc_2022 SET CITY_txt = 'Trimont' where TRIM(CITY)='3795';
UPDATE crash_acc_2022 SET CITY_txt = 'Trommalo' where TRIM(CITY)='3800';
UPDATE crash_acc_2022 SET CITY_txt = 'Trosky' where TRIM(CITY)='3805';
UPDATE crash_acc_2022 SET CITY_txt = 'Truman' where TRIM(CITY)='3810';
UPDATE crash_acc_2022 SET CITY_txt = 'Turtle River' where TRIM(CITY)='3815';
UPDATE crash_acc_2022 SET CITY_txt = 'Twin Lakes' where TRIM(CITY)='3820';
UPDATE crash_acc_2022 SET CITY_txt = 'Twin Valley' where TRIM(CITY)='3825';
UPDATE crash_acc_2022 SET CITY_txt = 'Two Harbors' where TRIM(CITY)='3830';
UPDATE crash_acc_2022 SET CITY_txt = 'Tyler' where TRIM(CITY)='3835';
UPDATE crash_acc_2022 SET CITY_txt = 'Ulen' where TRIM(CITY)='3840';
UPDATE crash_acc_2022 SET CITY_txt = 'Underwood' where TRIM(CITY)='3845';
UPDATE crash_acc_2022 SET CITY_txt = 'Upsala' where TRIM(CITY)='3850';
UPDATE crash_acc_2022 SET CITY_txt = 'Urbank' where TRIM(CITY)='3855';
UPDATE crash_acc_2022 SET CITY_txt = 'Utica' where TRIM(CITY)='3860';
UPDATE crash_acc_2022 SET CITY_txt = 'Vadnais Heights' where TRIM(CITY)='3865';
UPDATE crash_acc_2022 SET CITY_txt = 'Vergus' where TRIM(CITY)='3870';
UPDATE crash_acc_2022 SET CITY_txt = 'Vermillion' where TRIM(CITY)='3875';
UPDATE crash_acc_2022 SET CITY_txt = 'Verndale' where TRIM(CITY)='3880';
UPDATE crash_acc_2022 SET CITY_txt = 'Vernon Center' where TRIM(CITY)='3885';
UPDATE crash_acc_2022 SET CITY_txt = 'Vesta' where TRIM(CITY)='3890';
UPDATE crash_acc_2022 SET CITY_txt = 'Victoria' where TRIM(CITY)='3895';
UPDATE crash_acc_2022 SET CITY_txt = 'Viking' where TRIM(CITY)='3900';
UPDATE crash_acc_2022 SET CITY_txt = 'Villard' where TRIM(CITY)='3905';
UPDATE crash_acc_2022 SET CITY_txt = 'Viking' where TRIM(CITY)='3910';
UPDATE crash_acc_2022 SET CITY_txt = 'Virginia' where TRIM(CITY)='3915';
UPDATE crash_acc_2022 SET CITY_txt = 'Wabasha' where TRIM(CITY)='3920';
UPDATE crash_acc_2022 SET CITY_txt = 'Wabasso' where TRIM(CITY)='3925';
UPDATE crash_acc_2022 SET CITY_txt = 'Waconia' where TRIM(CITY)='3930';
UPDATE crash_acc_2022 SET CITY_txt = 'Wadena' where TRIM(CITY)='3935';
UPDATE crash_acc_2022 SET CITY_txt = 'Wahkon' where TRIM(CITY)='3940';
UPDATE crash_acc_2022 SET CITY_txt = 'Waite Park' where TRIM(CITY)='3945';
UPDATE crash_acc_2022 SET CITY_txt = 'Waldorf' where TRIM(CITY)='3950';
UPDATE crash_acc_2022 SET CITY_txt = 'Walker' where TRIM(CITY)='3955';
UPDATE crash_acc_2022 SET CITY_txt = 'Walnut Grove' where TRIM(CITY)='3960';
UPDATE crash_acc_2022 SET CITY_txt = 'Walters' where TRIM(CITY)='3965';
UPDATE crash_acc_2022 SET CITY_txt = 'Waltham' where TRIM(CITY)='3970';
UPDATE crash_acc_2022 SET CITY_txt = 'Wanamingo' where TRIM(CITY)='3975';
UPDATE crash_acc_2022 SET CITY_txt = 'Wanda' where TRIM(CITY)='3980';
UPDATE crash_acc_2022 SET CITY_txt = 'Warba' where TRIM(CITY)='3985';
UPDATE crash_acc_2022 SET CITY_txt = 'Warren' where TRIM(CITY)='3990';
UPDATE crash_acc_2022 SET CITY_txt = 'Warroad' where TRIM(CITY)='3995';
UPDATE crash_acc_2022 SET CITY_txt = 'Waseca' where TRIM(CITY)='4000';
UPDATE crash_acc_2022 SET CITY_txt = 'Watertown' where TRIM(CITY)='4005';
UPDATE crash_acc_2022 SET CITY_txt = 'Waterville' where TRIM(CITY)='4010';
UPDATE crash_acc_2022 SET CITY_txt = 'Watkins' where TRIM(CITY)='4015';
UPDATE crash_acc_2022 SET CITY_txt = 'Watson' where TRIM(CITY)='4020';
UPDATE crash_acc_2022 SET CITY_txt = 'Waubin' where TRIM(CITY)='4025';
UPDATE crash_acc_2022 SET CITY_txt = 'Waverly' where TRIM(CITY)='4030';
UPDATE crash_acc_2022 SET CITY_txt = 'Wayzata' where TRIM(CITY)='4035';
UPDATE crash_acc_2022 SET CITY_txt = 'Welcome' where TRIM(CITY)='4040';
UPDATE crash_acc_2022 SET CITY_txt = 'Wells' where TRIM(CITY)='4045';
UPDATE crash_acc_2022 SET CITY_txt = 'Wendell' where TRIM(CITY)='4050';
UPDATE crash_acc_2022 SET CITY_txt = 'Westbrook' where TRIM(CITY)='4055';
UPDATE crash_acc_2022 SET CITY_txt = 'West Concord' where TRIM(CITY)='4060';
UPDATE crash_acc_2022 SET CITY_txt = 'Westport' where TRIM(CITY)='4065';
UPDATE crash_acc_2022 SET CITY_txt = 'West St Paul' where TRIM(CITY)='4070';
UPDATE crash_acc_2022 SET CITY_txt = 'West Union' where TRIM(CITY)='4075';
UPDATE crash_acc_2022 SET CITY_txt = 'Whalen' where TRIM(CITY)='4080';
UPDATE crash_acc_2022 SET CITY_txt = 'Wheaton' where TRIM(CITY)='4085';
UPDATE crash_acc_2022 SET CITY_txt = 'White Bear Lake' where TRIM(CITY)='4090';
UPDATE crash_acc_2022 SET CITY_txt = 'Wilder' where TRIM(CITY)='4095';
UPDATE crash_acc_2022 SET CITY_txt = 'Willernie' where TRIM(CITY)='4100';
UPDATE crash_acc_2022 SET CITY_txt = 'Williams' where TRIM(CITY)='4105';
UPDATE crash_acc_2022 SET CITY_txt = 'Willmar' where TRIM(CITY)='4110';
UPDATE crash_acc_2022 SET CITY_txt = 'Willow River' where TRIM(CITY)='4115';
UPDATE crash_acc_2022 SET CITY_txt = 'Wilmont' where TRIM(CITY)='4120';
UPDATE crash_acc_2022 SET CITY_txt = 'Wilton' where TRIM(CITY)='4125';
UPDATE crash_acc_2022 SET CITY_txt = 'Windom' where TRIM(CITY)='4130';
UPDATE crash_acc_2022 SET CITY_txt = 'Winger' where TRIM(CITY)='4135';
UPDATE crash_acc_2022 SET CITY_txt = 'Winnebago' where TRIM(CITY)='4140';
UPDATE crash_acc_2022 SET CITY_txt = 'Winona' where TRIM(CITY)='4145';
UPDATE crash_acc_2022 SET CITY_txt = 'Winsted' where TRIM(CITY)='4150';
UPDATE crash_acc_2022 SET CITY_txt = 'Winthrop' where TRIM(CITY)='4155';
UPDATE crash_acc_2022 SET CITY_txt = 'Winton' where TRIM(CITY)='4160';
UPDATE crash_acc_2022 SET CITY_txt = 'Wolf Lake' where TRIM(CITY)='4165';
UPDATE crash_acc_2022 SET CITY_txt = 'Wolverton' where TRIM(CITY)='4170';
UPDATE crash_acc_2022 SET CITY_txt = 'Woodbury' where TRIM(CITY)='4173';
UPDATE crash_acc_2022 SET CITY_txt = 'Wood Lake' where TRIM(CITY)='4175';
UPDATE crash_acc_2022 SET CITY_txt = 'Woodland' where TRIM(CITY)='4180';
UPDATE crash_acc_2022 SET CITY_txt = 'Woodstock' where TRIM(CITY)='4185';
UPDATE crash_acc_2022 SET CITY_txt = 'Worthington' where TRIM(CITY)='4190';
UPDATE crash_acc_2022 SET CITY_txt = 'Wrenshall' where TRIM(CITY)='4195';
UPDATE crash_acc_2022 SET CITY_txt = 'Wright' where TRIM(CITY)='4200';
UPDATE crash_acc_2022 SET CITY_txt = 'Wykoff' where TRIM(CITY)='4205';
UPDATE crash_acc_2022 SET CITY_txt = 'Wyoming' where TRIM(CITY)='4210';
UPDATE crash_acc_2022 SET CITY_txt = 'Young America' where TRIM(CITY)='4215';
UPDATE crash_acc_2022 SET CITY_txt = 'Zemple' where TRIM(CITY)='4220';
UPDATE crash_acc_2022 SET CITY_txt = 'Zimmerman' where TRIM(CITY)='4222';
UPDATE crash_acc_2022 SET CITY_txt = 'Zumbro Falls' where TRIM(CITY)='4225';
UPDATE crash_acc_2022 SET CITY_txt = 'Zumbrota' where TRIM(CITY)='4230';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Ada PD' where TRIM(AGENCY)='3229';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Adams PD' where TRIM(AGENCY)='3230';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Adrian PD' where TRIM(AGENCY)='3231';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Aitkin Co Sheriff' where TRIM(AGENCY)='3232';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Aitkin PD' where TRIM(AGENCY)='3233';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Akeley PD' where TRIM(AGENCY)='3234';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Albany PD' where TRIM(AGENCY)='3235';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Albert Lea PD' where TRIM(AGENCY)='3236';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Alden PD' where TRIM(AGENCY)='3237';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Alexandria PD' where TRIM(AGENCY)='3238';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Annandale PD' where TRIM(AGENCY)='3240';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Anoka Co Central Communications - Main' where TRIM(AGENCY)='3241';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Anoka Co Sheriff' where TRIM(AGENCY)='3242';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Anoka PD' where TRIM(AGENCY)='3243';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Apple Valley PD' where TRIM(AGENCY)='3244';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Appleton PD' where TRIM(AGENCY)='3245';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Arlington PD' where TRIM(AGENCY)='3246';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Ashby PD' where TRIM(AGENCY)='3247';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Atwater PD' where TRIM(AGENCY)='3248';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Audubon PD' where TRIM(AGENCY)='3249';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Austin PD' where TRIM(AGENCY)='3250';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Avon PD' where TRIM(AGENCY)='3251';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Babbitt PD' where TRIM(AGENCY)='3252';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Bagley PD' where TRIM(AGENCY)='3253';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Balaton PD' where TRIM(AGENCY)='3254';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Barnesville PD' where TRIM(AGENCY)='3255';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Battle Lake PD' where TRIM(AGENCY)='3256';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Baudette PD' where TRIM(AGENCY)='3257';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Baxter PD' where TRIM(AGENCY)='3258';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Bayport PD' where TRIM(AGENCY)='3259';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Becker Co Sheriff' where TRIM(AGENCY)='3260';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Becker PD' where TRIM(AGENCY)='3261';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Belgrade PD' where TRIM(AGENCY)='3262';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Belle Plaine PD' where TRIM(AGENCY)='3263';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Beltrami Co Sheriff' where TRIM(AGENCY)='3264';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Bemidji PD' where TRIM(AGENCY)='3265';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Benson PD' where TRIM(AGENCY)='3266';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Benton Co Sheriff' where TRIM(AGENCY)='3267';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Big Lake PD' where TRIM(AGENCY)='3269';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Big Stone Co Sheriff' where TRIM(AGENCY)='3270';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Bigfork PD' where TRIM(AGENCY)='3271';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Blackduck PD' where TRIM(AGENCY)='3275';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Blaine PD' where TRIM(AGENCY)='3276';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Blooming Prairie PD' where TRIM(AGENCY)='3277';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Bloomington PD' where TRIM(AGENCY)='3278';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Blue Earth Co Sheriff' where TRIM(AGENCY)='3279';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Blue Earth PD' where TRIM(AGENCY)='3280';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Bovey PD' where TRIM(AGENCY)='3281';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Braham PD' where TRIM(AGENCY)='3283';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Brainerd PD' where TRIM(AGENCY)='3284';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Breckenridge PD' where TRIM(AGENCY)='3285';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Breezy Point PD' where TRIM(AGENCY)='3286';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Breitung Township PD' where TRIM(AGENCY)='3287';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Brooklyn Center PD' where TRIM(AGENCY)='3288';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Brooklyn Park PD' where TRIM(AGENCY)='3289';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Brown Co Sheriff' where TRIM(AGENCY)='3291';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Brownsdale PD' where TRIM(AGENCY)='3292';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Brownton PD' where TRIM(AGENCY)='3293';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Buffalo Lake PD' where TRIM(AGENCY)='3294';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Buffalo PD' where TRIM(AGENCY)='3295';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Bureau of Alcohol, Tobacco, Firearms and Explosives' where TRIM(AGENCY)='3296';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Burnsville PD' where TRIM(AGENCY)='3297';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Caledonia PD' where TRIM(AGENCY)='3298';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Callaway/Ogema PD' where TRIM(AGENCY)='3299';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Cambridge PD' where TRIM(AGENCY)='3300';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Canby PD' where TRIM(AGENCY)='3301';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Cannon Falls PD' where TRIM(AGENCY)='3302';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Carlton Co Sheriff' where TRIM(AGENCY)='3303';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Carver Co Sheriff' where TRIM(AGENCY)='3304';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Cass Co Sheriff' where TRIM(AGENCY)='3305';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Centennial Lakes PD' where TRIM(AGENCY)='3307';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Champlin PD' where TRIM(AGENCY)='3308';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Chaska PD' where TRIM(AGENCY)='3310';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Chatfield PD' where TRIM(AGENCY)='3311';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Chippewa Co Sheriff' where TRIM(AGENCY)='3312';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Chisago Co Sheriff' where TRIM(AGENCY)='3314';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Chisholm PD' where TRIM(AGENCY)='3315';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Clara City PD' where TRIM(AGENCY)='3316';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Clarkfield/Boyd PD' where TRIM(AGENCY)='3317';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Clay Co Sheriff' where TRIM(AGENCY)='3318';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Clearbrook PD' where TRIM(AGENCY)='3319';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Clearwater Co Sheriff' where TRIM(AGENCY)='3320';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Cleveland PD' where TRIM(AGENCY)='3321';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Cloquet PD' where TRIM(AGENCY)='3322';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Cold Spring/Richmond PD' where TRIM(AGENCY)='3323';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Coleraine PD' where TRIM(AGENCY)='3324';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Columbia Heights PD' where TRIM(AGENCY)='3325';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Comfrey PD' where TRIM(AGENCY)='3326';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Commerce Fraud Bureau' where TRIM(AGENCY)='3327';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Cook Co Sheriff' where TRIM(AGENCY)='3328';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Coon Rapids PD' where TRIM(AGENCY)='3330';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Corcoran PD' where TRIM(AGENCY)='3331';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Cottage Grove PD' where TRIM(AGENCY)='3332';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Cottonwood Co Sheriff' where TRIM(AGENCY)='3333';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Crookston PD' where TRIM(AGENCY)='3334';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Crosby PD' where TRIM(AGENCY)='3335';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Crosslake PD' where TRIM(AGENCY)='3336';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Crow Wing Co Sheriff' where TRIM(AGENCY)='3337';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Crystal PD' where TRIM(AGENCY)='3338';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Cuyuna PD' where TRIM(AGENCY)='3339';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Cyrus PD' where TRIM(AGENCY)='3340';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Dakota Communications Center - DCC' where TRIM(AGENCY)='3341';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Dakota Co Sheriff' where TRIM(AGENCY)='3342';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Danube PD' where TRIM(AGENCY)='3343';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Dawson PD' where TRIM(AGENCY)='3345';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Dayton PD' where TRIM(AGENCY)='3346';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Deephaven PD' where TRIM(AGENCY)='3347';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Deer River PD' where TRIM(AGENCY)='3348';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Deerwood PD' where TRIM(AGENCY)='3349';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Detroit Lakes PD' where TRIM(AGENCY)='3350';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Dilworth PD' where TRIM(AGENCY)='3351';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Dodge Co Sheriff' where TRIM(AGENCY)='3352';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Douglas Co Sheriff' where TRIM(AGENCY)='3353';
UPDATE crash_acc_2022 SET AGENCY_txt = 'DPS - Alcohol and Gambling Enforcement Division' where TRIM(AGENCY)='3354';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Duluth PD' where TRIM(AGENCY)='3355';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Duluth Township PD' where TRIM(AGENCY)='3356';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Dundas PD' where TRIM(AGENCY)='3357';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Dunnell PD' where TRIM(AGENCY)='3358';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Eagan PD' where TRIM(AGENCY)='3359';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Eagle Bend PD' where TRIM(AGENCY)='3360';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Eagle Lake PD' where TRIM(AGENCY)='3361';
UPDATE crash_acc_2022 SET AGENCY_txt = 'East Grand Forks PD' where TRIM(AGENCY)='3362';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Echo PD' where TRIM(AGENCY)='3363';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Eden Prairie PD' where TRIM(AGENCY)='3364';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Eden Valley PD' where TRIM(AGENCY)='3365';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Edina PD' where TRIM(AGENCY)='3366';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Elbow Lake PD' where TRIM(AGENCY)='3367';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Elk River PD' where TRIM(AGENCY)='3368';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Elko New Market PD' where TRIM(AGENCY)='3369';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Elmore PD' where TRIM(AGENCY)='3370';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Ely PD' where TRIM(AGENCY)='3371';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Emily PD' where TRIM(AGENCY)='3372';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Eveleth PD' where TRIM(AGENCY)='3373';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Fairfax PD' where TRIM(AGENCY)='3374';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Fairmont PD' where TRIM(AGENCY)='3375';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Faribault Co Sheriff' where TRIM(AGENCY)='3376';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Faribault PD' where TRIM(AGENCY)='3377';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Farmington PD' where TRIM(AGENCY)='3378';
UPDATE crash_acc_2022 SET AGENCY_txt = 'FBI Field Office - Main - Minneapolis' where TRIM(AGENCY)='3380';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Federal Air Marshals Service' where TRIM(AGENCY)='3381';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Fergus Falls PD' where TRIM(AGENCY)='3382';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Fillmore Co Sheriff' where TRIM(AGENCY)='3383';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Fisher PD' where TRIM(AGENCY)='3384';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Floodwood PD' where TRIM(AGENCY)='3385';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Foley PD' where TRIM(AGENCY)='3386';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Fond du Lac Tribal PD' where TRIM(AGENCY)='3387';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Forest Lake PD' where TRIM(AGENCY)='3388';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Fountain PD' where TRIM(AGENCY)='3389';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Franklin PD' where TRIM(AGENCY)='3390';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Frazee PD' where TRIM(AGENCY)='3391';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Freeborn Co Sheriff' where TRIM(AGENCY)='3392';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Fridley PD' where TRIM(AGENCY)='3393';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Fulda PD' where TRIM(AGENCY)='3394';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Gaylord PD' where TRIM(AGENCY)='3395';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Gibbon PD' where TRIM(AGENCY)='3396';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Gilbert PD' where TRIM(AGENCY)='3397';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Glencoe PD' where TRIM(AGENCY)='3398';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Glenwood PD' where TRIM(AGENCY)='3399';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Glyndon PD' where TRIM(AGENCY)='3400';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Golden Valley PD' where TRIM(AGENCY)='3401';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Goodhue Co Sheriff' where TRIM(AGENCY)='3403';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Goodhue PD' where TRIM(AGENCY)='3404';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Goodview PD' where TRIM(AGENCY)='3405';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Grand Meadow PD' where TRIM(AGENCY)='3406';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Grand Rapids PD' where TRIM(AGENCY)='3407';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Granite Falls PD' where TRIM(AGENCY)='3408';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Grant Co Sheriff' where TRIM(AGENCY)='3409';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Hallock PD' where TRIM(AGENCY)='3411';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Hancock PD' where TRIM(AGENCY)='3412';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Hastings PD' where TRIM(AGENCY)='3413';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Hawley PD' where TRIM(AGENCY)='3414';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Hector PD' where TRIM(AGENCY)='3415';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Henderson PD' where TRIM(AGENCY)='3416';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Hendrum PD' where TRIM(AGENCY)='3417';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Hennepin Co Sheriff' where TRIM(AGENCY)='3418';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Henning PD' where TRIM(AGENCY)='3419';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Hermantown PD' where TRIM(AGENCY)='3420';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Heron Lake - Okabena PD' where TRIM(AGENCY)='3421';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Hibbing PD' where TRIM(AGENCY)='3422';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Hill City PD' where TRIM(AGENCY)='3423';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Hokah PD' where TRIM(AGENCY)='3424';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Hopkins PD' where TRIM(AGENCY)='3425';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Houston Co Sheriff' where TRIM(AGENCY)='3426';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Houston PD' where TRIM(AGENCY)='3427';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Howard Lake PD' where TRIM(AGENCY)='3428';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Hubbard Co Sheriff' where TRIM(AGENCY)='3430';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Hutchinson PD' where TRIM(AGENCY)='3431';
UPDATE crash_acc_2022 SET AGENCY_txt = 'International Falls PD' where TRIM(AGENCY)='3432';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Inver Grove Heights PD' where TRIM(AGENCY)='3433';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Isanti Co Sheriff' where TRIM(AGENCY)='3434';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Isanti PD' where TRIM(AGENCY)='3435';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Isle PD' where TRIM(AGENCY)='3436';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Itasca Co Sheriff' where TRIM(AGENCY)='3437';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Ivanhoe PD' where TRIM(AGENCY)='3438';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Jackson Co Sheriff' where TRIM(AGENCY)='3439';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Janesville PD' where TRIM(AGENCY)='3441';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Jordan PD' where TRIM(AGENCY)='3442';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Kanabec Co Sheriff' where TRIM(AGENCY)='3443';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Kandiyohi Co Sheriff' where TRIM(AGENCY)='3444';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Kasson PD' where TRIM(AGENCY)='3446';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Keewatin PD' where TRIM(AGENCY)='3447';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Kenyon PD' where TRIM(AGENCY)='3448';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Kimball PD' where TRIM(AGENCY)='3449';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Kittson Co Sheriff' where TRIM(AGENCY)='3450';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Koochiching Co Sheriff' where TRIM(AGENCY)='3451';
UPDATE crash_acc_2022 SET AGENCY_txt = 'La Crescent PD' where TRIM(AGENCY)='3452';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Lac Qui Parle Co Sheriff' where TRIM(AGENCY)='3453';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Lake Benton PD' where TRIM(AGENCY)='3454';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Lake City PD' where TRIM(AGENCY)='3455';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Lake Co Sheriff' where TRIM(AGENCY)='3456';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Lake Crystal PD' where TRIM(AGENCY)='3457';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Lake of the Woods Co Sheriff' where TRIM(AGENCY)='3458';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Lake Park PD' where TRIM(AGENCY)='3459';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Lake Shore PD' where TRIM(AGENCY)='3460';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Lakefield PD' where TRIM(AGENCY)='3461';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Lakes Area PD' where TRIM(AGENCY)='3462';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Lakeville PD' where TRIM(AGENCY)='3463';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Lamberton PD' where TRIM(AGENCY)='3464';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Le Center PD' where TRIM(AGENCY)='3465';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Le Sueur Co Sheriff' where TRIM(AGENCY)='3466';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Le Sueur PD' where TRIM(AGENCY)='3467';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Leech Lake Band of Ojibwe DPS' where TRIM(AGENCY)='3468';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Lester Prairie PD' where TRIM(AGENCY)='3469';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Lewiston PD' where TRIM(AGENCY)='3470';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Lincoln Co Sheriff' where TRIM(AGENCY)='3471';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Lino Lakes PD' where TRIM(AGENCY)='3473';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Litchfield PD' where TRIM(AGENCY)='3474';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Little Falls PD' where TRIM(AGENCY)='3475';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Long Prairie PD' where TRIM(AGENCY)='3476';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Longville PD' where TRIM(AGENCY)='3477';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Lonsdale PD' where TRIM(AGENCY)='3478';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Lower Sioux Tribal PD' where TRIM(AGENCY)='3479';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Lyle PD' where TRIM(AGENCY)='3480';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Lyon Co Sheriff' where TRIM(AGENCY)='3481';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Madelia PD' where TRIM(AGENCY)='3482';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Madison Lake PD' where TRIM(AGENCY)='3483';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Mahnomen Co Sheriff' where TRIM(AGENCY)='3485';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Mankato Dept of Public Safety' where TRIM(AGENCY)='3486';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Maple Grove PD' where TRIM(AGENCY)='3487';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Mapleton PD' where TRIM(AGENCY)='3488';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Maplewood PD' where TRIM(AGENCY)='3489';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Marshall Co Sheriff' where TRIM(AGENCY)='3491';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Marshall PD' where TRIM(AGENCY)='3492';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Martin Co Sheriff' where TRIM(AGENCY)='3493';
UPDATE crash_acc_2022 SET AGENCY_txt = 'McGregor PD' where TRIM(AGENCY)='3494';
UPDATE crash_acc_2022 SET AGENCY_txt = 'McLeod Co Sheriff' where TRIM(AGENCY)='3495';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Medina PD' where TRIM(AGENCY)='3496';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Meeker Co Sheriff' where TRIM(AGENCY)='3497';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Melrose PD' where TRIM(AGENCY)='3498';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Menahga PD' where TRIM(AGENCY)='3499';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Mendota Heights PD' where TRIM(AGENCY)='3500';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Metropolitan Airport PD' where TRIM(AGENCY)='3501';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Metropolitan Transit PD' where TRIM(AGENCY)='3502';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Milaca PD' where TRIM(AGENCY)='3503';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Mille Lacs Band of Ojibwe Tribal PD' where TRIM(AGENCY)='3504';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Mille Lacs Co Sheriff' where TRIM(AGENCY)='3505';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Minneapolis Department of Veterans Affairs Police' where TRIM(AGENCY)='3506';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Minneapolis Park PD' where TRIM(AGENCY)='3507';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Minneapolis PD' where TRIM(AGENCY)='3508';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Minneapolis PD Emergency Communications Center MECC' where TRIM(AGENCY)='3509';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Minneota PD' where TRIM(AGENCY)='3510';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Minnesota Lake PD' where TRIM(AGENCY)='3511';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Minnetonka PD' where TRIM(AGENCY)='3512';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Minnetrista Public Safety Dept' where TRIM(AGENCY)='3513';
UPDATE crash_acc_2022 SET AGENCY_txt = 'MN Bureau of Criminal Apprehension' where TRIM(AGENCY)='3514';
UPDATE crash_acc_2022 SET AGENCY_txt = 'MN Dept of Corrections Fugitive Unit' where TRIM(AGENCY)='3516';
UPDATE crash_acc_2022 SET AGENCY_txt = 'MN Dept of Natural Resources - License Bureau' where TRIM(AGENCY)='3517';
UPDATE crash_acc_2022 SET AGENCY_txt = 'MN Financial Crimes Task Force' where TRIM(AGENCY)='3518';
UPDATE crash_acc_2022 SET AGENCY_txt = 'MN National Guard - 133rd Air Lift Wing' where TRIM(AGENCY)='3519';
UPDATE crash_acc_2022 SET AGENCY_txt = 'MN State Fair PD' where TRIM(AGENCY)='3520';
UPDATE crash_acc_2022 SET AGENCY_txt = 'MN State Patrol District 2000 - Central Office' where TRIM(AGENCY)='3521';
UPDATE crash_acc_2022 SET AGENCY_txt = 'MN State Patrol District 2100 - Rochester' where TRIM(AGENCY)='3523';
UPDATE crash_acc_2022 SET AGENCY_txt = 'MN State Patrol District 2200 - Mankato' where TRIM(AGENCY)='3524';
UPDATE crash_acc_2022 SET AGENCY_txt = 'MN State Patrol District 2300 - Marshall' where TRIM(AGENCY)='3525';
UPDATE crash_acc_2022 SET AGENCY_txt = 'MN State Patrol District 2400 - Oakdale' where TRIM(AGENCY)='3527';
UPDATE crash_acc_2022 SET AGENCY_txt = 'MN State Patrol District 2500 - Golden Valley' where TRIM(AGENCY)='3528';
UPDATE crash_acc_2022 SET AGENCY_txt = 'MN State Patrol District 2600 - St Cloud' where TRIM(AGENCY)='3529';
UPDATE crash_acc_2022 SET AGENCY_txt = 'MN State Patrol District 2700 - Duluth' where TRIM(AGENCY)='3530';
UPDATE crash_acc_2022 SET AGENCY_txt = 'MN State Patrol District 2800 - Brainerd' where TRIM(AGENCY)='3531';
UPDATE crash_acc_2022 SET AGENCY_txt = 'MN State Patrol District 2900 - Detroit Lakes' where TRIM(AGENCY)='3532';
UPDATE crash_acc_2022 SET AGENCY_txt = 'MN State Patrol District 3100 - Virginia' where TRIM(AGENCY)='3533';
UPDATE crash_acc_2022 SET AGENCY_txt = 'MN State Patrol District 3200 - Thief River Falls' where TRIM(AGENCY)='3534';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Montevideo PD' where TRIM(AGENCY)='3543';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Montgomery PD' where TRIM(AGENCY)='3544';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Moorhead PD' where TRIM(AGENCY)='3545';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Moose Lake PD' where TRIM(AGENCY)='3546';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Morgan PD' where TRIM(AGENCY)='3548';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Morris PD' where TRIM(AGENCY)='3549';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Morrison Co Sheriff' where TRIM(AGENCY)='3550';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Morristown PD' where TRIM(AGENCY)='3551';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Motley PD' where TRIM(AGENCY)='3553';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Mounds View PD' where TRIM(AGENCY)='3555';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Mountain Lake PD' where TRIM(AGENCY)='3556';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Mower Co Sheriff' where TRIM(AGENCY)='3557';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Murray Co Sheriff' where TRIM(AGENCY)='3558';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Nashwauk PD' where TRIM(AGENCY)='3559';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Nett Lake PD - Bureau of Indian Affairs' where TRIM(AGENCY)='3560';
UPDATE crash_acc_2022 SET AGENCY_txt = 'New Brighton Dept of Public Safety' where TRIM(AGENCY)='3562';
UPDATE crash_acc_2022 SET AGENCY_txt = 'New Hope PD' where TRIM(AGENCY)='3563';
UPDATE crash_acc_2022 SET AGENCY_txt = 'New Prague PD' where TRIM(AGENCY)='3564';
UPDATE crash_acc_2022 SET AGENCY_txt = 'New Richland PD' where TRIM(AGENCY)='3565';
UPDATE crash_acc_2022 SET AGENCY_txt = 'New Ulm PD' where TRIM(AGENCY)='3566';
UPDATE crash_acc_2022 SET AGENCY_txt = 'New York Mills PD' where TRIM(AGENCY)='3567';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Newport PD' where TRIM(AGENCY)='3568';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Nicollet Co Sheriff' where TRIM(AGENCY)='3569';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Nisswa PD' where TRIM(AGENCY)='3570';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Nobles Co Sheriff' where TRIM(AGENCY)='3571';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Norman Co Sheriff' where TRIM(AGENCY)='3572';
UPDATE crash_acc_2022 SET AGENCY_txt = 'North Branch PD' where TRIM(AGENCY)='3573';
UPDATE crash_acc_2022 SET AGENCY_txt = 'North Mankato PD' where TRIM(AGENCY)='3574';
UPDATE crash_acc_2022 SET AGENCY_txt = 'North St Paul PD' where TRIM(AGENCY)='3575';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Northfield PD' where TRIM(AGENCY)='3576';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Oak Park Heights PD' where TRIM(AGENCY)='3577';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Oakdale PD' where TRIM(AGENCY)='3578';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Olivia PD' where TRIM(AGENCY)='3579';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Olmsted Co Sheriff' where TRIM(AGENCY)='3580';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Onamia PD' where TRIM(AGENCY)='3581';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Orono PD' where TRIM(AGENCY)='3582';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Ortonville PD' where TRIM(AGENCY)='3583';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Osakis PD' where TRIM(AGENCY)='3584';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Osseo PD' where TRIM(AGENCY)='3585';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Ostrander PD' where TRIM(AGENCY)='3586';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Otter Tail Co Sheriff' where TRIM(AGENCY)='3587';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Owatonna PD' where TRIM(AGENCY)='3588';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Park Rapids PD' where TRIM(AGENCY)='3589';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Parkers Prairie PD' where TRIM(AGENCY)='3590';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Paynesville PD' where TRIM(AGENCY)='3591';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Pelican Rapids PD' where TRIM(AGENCY)='3592';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Pennington Co Sheriff' where TRIM(AGENCY)='3593';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Pequot Lakes PD' where TRIM(AGENCY)='3594';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Perham PD' where TRIM(AGENCY)='3595';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Pierz PD' where TRIM(AGENCY)='3596';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Pike Bay PD' where TRIM(AGENCY)='3597';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Pillager PD' where TRIM(AGENCY)='3598';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Pine Co Sheriff' where TRIM(AGENCY)='3599';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Pine River PD' where TRIM(AGENCY)='3600';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Pipestone Co Sheriff' where TRIM(AGENCY)='3601';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Plainview PD' where TRIM(AGENCY)='3602';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Plymouth PD' where TRIM(AGENCY)='3603';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Polk Co Sheriff' where TRIM(AGENCY)='3604';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Pope Co Sheriff' where TRIM(AGENCY)='3605';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Prairie Island Tribal PD' where TRIM(AGENCY)='3606';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Preston PD' where TRIM(AGENCY)='3607';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Princeton PD' where TRIM(AGENCY)='3608';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Prior Lake PD' where TRIM(AGENCY)='3609';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Proctor PD' where TRIM(AGENCY)='3610';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Ramsey Co Dispatch' where TRIM(AGENCY)='3611';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Ramsey Co Emergency Communications Center' where TRIM(AGENCY)='3612';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Ramsey Co Sheriff' where TRIM(AGENCY)='3613';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Ramsey PD' where TRIM(AGENCY)='3614';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Randall PD' where TRIM(AGENCY)='3615';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Red Lake Co Sheriff' where TRIM(AGENCY)='3616';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Red Lake Dept of Public Safety' where TRIM(AGENCY)='3617';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Red Wing PD' where TRIM(AGENCY)='3618';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Redwood Co Sheriff' where TRIM(AGENCY)='3619';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Redwood Falls PD' where TRIM(AGENCY)='3620';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Renville Co Sheriff' where TRIM(AGENCY)='3621';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Renville PD' where TRIM(AGENCY)='3622';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Rice Co Sheriff' where TRIM(AGENCY)='3623';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Rice PD' where TRIM(AGENCY)='3624';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Rice/Steele Co Consolidated PSAP' where TRIM(AGENCY)='3625';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Richfield PD' where TRIM(AGENCY)='3626';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Robbinsdale PD' where TRIM(AGENCY)='3628';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Rochester PD' where TRIM(AGENCY)='3629';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Rock Co Sheriff' where TRIM(AGENCY)='3630';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Rogers PD' where TRIM(AGENCY)='3631';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Roseau Co Sheriff' where TRIM(AGENCY)='3632';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Roseau PD' where TRIM(AGENCY)='3633';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Rosemount PD' where TRIM(AGENCY)='3634';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Roseville PD' where TRIM(AGENCY)='3635';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Royalton PD' where TRIM(AGENCY)='3636';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Rushford PD' where TRIM(AGENCY)='3637';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Sacred Heart PD' where TRIM(AGENCY)='3638';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Sartell PD' where TRIM(AGENCY)='3639';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Sauk Centre PD' where TRIM(AGENCY)='3640';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Sauk Rapids PD' where TRIM(AGENCY)='3641';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Savage PD' where TRIM(AGENCY)='3642';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Scott Co Sheriff' where TRIM(AGENCY)='3643';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Sebeka PD' where TRIM(AGENCY)='3644';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Shakopee PD' where TRIM(AGENCY)='3645';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Sherburn Welcome PD' where TRIM(AGENCY)='3646';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Sherburne Co Sheriff' where TRIM(AGENCY)='3647';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Sibley Co Sheriff' where TRIM(AGENCY)='3649';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Silver Bay PD' where TRIM(AGENCY)='3650';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Silver Lake PD' where TRIM(AGENCY)='3651';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Slayton PD' where TRIM(AGENCY)='3652';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Sleepy Eye PD' where TRIM(AGENCY)='3653';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Social Security Administration - Inspector General' where TRIM(AGENCY)='3654';
UPDATE crash_acc_2022 SET AGENCY_txt = 'South Lake Minnetonka PD' where TRIM(AGENCY)='3655';
UPDATE crash_acc_2022 SET AGENCY_txt = 'South St Paul PD' where TRIM(AGENCY)='3656';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Spring Grove PD' where TRIM(AGENCY)='3657';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Spring Lake Park PD' where TRIM(AGENCY)='3658';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Springfield PD' where TRIM(AGENCY)='3659';
UPDATE crash_acc_2022 SET AGENCY_txt = 'St Anthony PD' where TRIM(AGENCY)='3660';
UPDATE crash_acc_2022 SET AGENCY_txt = 'St Charles PD' where TRIM(AGENCY)='3661';
UPDATE crash_acc_2022 SET AGENCY_txt = 'St Cloud PD' where TRIM(AGENCY)='3662';
UPDATE crash_acc_2022 SET AGENCY_txt = 'St Francis PD' where TRIM(AGENCY)='3663';
UPDATE crash_acc_2022 SET AGENCY_txt = 'St James PD' where TRIM(AGENCY)='3664';
UPDATE crash_acc_2022 SET AGENCY_txt = 'St Joseph PD' where TRIM(AGENCY)='3665';
UPDATE crash_acc_2022 SET AGENCY_txt = 'St Louis Co Sheriff' where TRIM(AGENCY)='3666';
UPDATE crash_acc_2022 SET AGENCY_txt = 'St Louis Park PD' where TRIM(AGENCY)='3667';
UPDATE crash_acc_2022 SET AGENCY_txt = 'St Paul Park PD' where TRIM(AGENCY)='3668';
UPDATE crash_acc_2022 SET AGENCY_txt = 'St Paul PD' where TRIM(AGENCY)='3669';
UPDATE crash_acc_2022 SET AGENCY_txt = 'St Peter PD' where TRIM(AGENCY)='3670';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Staples PD' where TRIM(AGENCY)='3671';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Starbuck PD' where TRIM(AGENCY)='3672';
UPDATE crash_acc_2022 SET AGENCY_txt = 'State Fire Marshall' where TRIM(AGENCY)='3673';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Stearns Co Sheriff' where TRIM(AGENCY)='3674';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Steele Co Sheriff' where TRIM(AGENCY)='3675';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Stevens Co Sheriff' where TRIM(AGENCY)='3676';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Stillwater PD' where TRIM(AGENCY)='3678';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Stillwater Township PD' where TRIM(AGENCY)='3679';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Swift Co Sheriff' where TRIM(AGENCY)='3680';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Test Agency' where TRIM(AGENCY)='1 =';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Test Agency II' where TRIM(AGENCY)='3765';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Test Review Agency' where TRIM(AGENCY)='3766';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Test3' where TRIM(AGENCY)='3767';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Thief River Falls PD' where TRIM(AGENCY)='3681';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Thomson Township PD' where TRIM(AGENCY)='3682';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Three Rivers Park District PD' where TRIM(AGENCY)='3683';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Todd Co Sheriff' where TRIM(AGENCY)='3684';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Tracy PD' where TRIM(AGENCY)='3685';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Traverse Co Sheriff' where TRIM(AGENCY)='3686';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Trimont PD' where TRIM(AGENCY)='3687';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Truman PD' where TRIM(AGENCY)='3688';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Twin Valley PD' where TRIM(AGENCY)='3689';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Two Harbors PD' where TRIM(AGENCY)='3690';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Tyler PD' where TRIM(AGENCY)='3691';
UPDATE crash_acc_2022 SET AGENCY_txt = 'University of MN PD - Duluth' where TRIM(AGENCY)='3692';
UPDATE crash_acc_2022 SET AGENCY_txt = 'University of MN PD - Minneapolis' where TRIM(AGENCY)='3693';
UPDATE crash_acc_2022 SET AGENCY_txt = 'University of MN PD - Morris' where TRIM(AGENCY)='3694';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Upper Sioux Community PD' where TRIM(AGENCY)='3695';
UPDATE crash_acc_2022 SET AGENCY_txt = 'US Army Provost Marshal' where TRIM(AGENCY)='3696';
UPDATE crash_acc_2022 SET AGENCY_txt = 'US Army Provost Marshal - Camp Ripley' where TRIM(AGENCY)='3697';
UPDATE crash_acc_2022 SET AGENCY_txt = 'US Customs and Border Protection - Baudette Port of Entry' where TRIM(AGENCY)='3699';
UPDATE crash_acc_2022 SET AGENCY_txt = 'US Customs and Border Protection - Grand Marais Border Patrol Station' where TRIM(AGENCY)='3700';
UPDATE crash_acc_2022 SET AGENCY_txt = 'US Customs and Border Protection - MSP International Airport' where TRIM(AGENCY)='3701';
UPDATE crash_acc_2022 SET AGENCY_txt = 'US Customs and Border Protection - Pembina Border Patrol Station' where TRIM(AGENCY)='3702';
UPDATE crash_acc_2022 SET AGENCY_txt = 'US Customs and Border Protection - Roseau Port of Entry' where TRIM(AGENCY)='3703';
UPDATE crash_acc_2022 SET AGENCY_txt = 'US Customs and Border Protection - Warroad Border Patrol Station' where TRIM(AGENCY)='3704';
UPDATE crash_acc_2022 SET AGENCY_txt = 'US Customs and Border Protection - Warroad Port of Entry' where TRIM(AGENCY)='3705';
UPDATE crash_acc_2022 SET AGENCY_txt = 'US Customs Service' where TRIM(AGENCY)='3706';
UPDATE crash_acc_2022 SET AGENCY_txt = 'US Customs Service - Crane Lake' where TRIM(AGENCY)='3707';
UPDATE crash_acc_2022 SET AGENCY_txt = 'US Customs Service Field Operations - Pinecreek' where TRIM(AGENCY)='3708';
UPDATE crash_acc_2022 SET AGENCY_txt = 'US Department of the Interior - Office of Inspector General' where TRIM(AGENCY)='3709';
UPDATE crash_acc_2022 SET AGENCY_txt = 'US Dept of State Bureau of Diplomatic Security' where TRIM(AGENCY)='3710';
UPDATE crash_acc_2022 SET AGENCY_txt = 'US Drug Enforcement Administration - Minneapolis' where TRIM(AGENCY)='3711';
UPDATE crash_acc_2022 SET AGENCY_txt = 'US Fish & Wildlife Twin Cities' where TRIM(AGENCY)='3712';
UPDATE crash_acc_2022 SET AGENCY_txt = 'US Internal Revenue Service - Criminal Investigation Division' where TRIM(AGENCY)='3713';
UPDATE crash_acc_2022 SET AGENCY_txt = 'US Internal Revenue Service - Criminal Investigation Division' where TRIM(AGENCY)='3714';
UPDATE crash_acc_2022 SET AGENCY_txt = 'US Marshals Service - Minneapolis - Main' where TRIM(AGENCY)='3715';
UPDATE crash_acc_2022 SET AGENCY_txt = 'US Postal Inspection Service' where TRIM(AGENCY)='3716';
UPDATE crash_acc_2022 SET AGENCY_txt = 'US Postal Office of Inspector General - St Paul' where TRIM(AGENCY)='3717';
UPDATE crash_acc_2022 SET AGENCY_txt = 'US Secret Service - Minneapolis - Main' where TRIM(AGENCY)='3718';
UPDATE crash_acc_2022 SET AGENCY_txt = 'USAF 934th Airlift Wing' where TRIM(AGENCY)='3719';
UPDATE crash_acc_2022 SET AGENCY_txt = 'USDA Forest Service - Law Enforcement Group' where TRIM(AGENCY)='3720';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Verndale PD' where TRIM(AGENCY)='3721';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Virginia PD' where TRIM(AGENCY)='3722';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Wabasha Co Sheriff' where TRIM(AGENCY)='3724';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Wabasha PD' where TRIM(AGENCY)='3725';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Wadena Co Sheriff' where TRIM(AGENCY)='3726';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Wadena PD' where TRIM(AGENCY)='3727';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Waite Park PD' where TRIM(AGENCY)='3728';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Walker PD' where TRIM(AGENCY)='3729';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Walnut Grove PD' where TRIM(AGENCY)='3730';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Warroad PD' where TRIM(AGENCY)='3731';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Waseca Co Sheriff' where TRIM(AGENCY)='3732';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Waseca PD' where TRIM(AGENCY)='3733';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Washington Co Sheriff' where TRIM(AGENCY)='3734';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Waterville PD' where TRIM(AGENCY)='3735';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Watonwan Co Sheriff' where TRIM(AGENCY)='3737';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Wayzata PD' where TRIM(AGENCY)='3738';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Wells PD' where TRIM(AGENCY)='3739';
UPDATE crash_acc_2022 SET AGENCY_txt = 'West Concord PD' where TRIM(AGENCY)='3740';
UPDATE crash_acc_2022 SET AGENCY_txt = 'West Hennepin Dept of Public Safety' where TRIM(AGENCY)='3741';
UPDATE crash_acc_2022 SET AGENCY_txt = 'West St Paul PD' where TRIM(AGENCY)='3742';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Westbrook PD' where TRIM(AGENCY)='3743';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Wheaton PD' where TRIM(AGENCY)='3744';
UPDATE crash_acc_2022 SET AGENCY_txt = 'White Bear Lake PD' where TRIM(AGENCY)='3745';
UPDATE crash_acc_2022 SET AGENCY_txt = 'White Earth Tribal PD' where TRIM(AGENCY)='3746';
UPDATE crash_acc_2022 SET AGENCY_txt = 'White Township PD' where TRIM(AGENCY)='3747';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Wilkin Co Sheriff' where TRIM(AGENCY)='3748';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Willmar PD' where TRIM(AGENCY)='3749';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Windom PD' where TRIM(AGENCY)='3750';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Winnebago Public Safety' where TRIM(AGENCY)='3751';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Winona Co Sheriff' where TRIM(AGENCY)='3752';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Winona PD' where TRIM(AGENCY)='3753';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Winsted PD' where TRIM(AGENCY)='3754';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Winthrop PD' where TRIM(AGENCY)='3755';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Woodbury Public Safety' where TRIM(AGENCY)='3756';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Worthington Dept of Public Safety' where TRIM(AGENCY)='3757';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Wright Co Sheriff' where TRIM(AGENCY)='3758';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Wyoming PD' where TRIM(AGENCY)='3759';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Yellow Medicine Co Sheriff' where TRIM(AGENCY)='3760';
UPDATE crash_acc_2022 SET AGENCY_txt = 'Zumbrota PD' where TRIM(AGENCY)='3761';