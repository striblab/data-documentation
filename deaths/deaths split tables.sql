SELECT RTRIM(ST_FILE_NBR) AS STATEID, 
RTRIM(DECD_FRST_NME) AS FIRSTNAME, 
RTRIM(DECD_MIDD_NME) AS MIDDLENAME, 
RTRIM(DECD_LST_NME) AS LASTNAME, 
RTRIM(DECD_MAIDN_NME) AS MAIDENNAME, 
RTRIM(DECD_SUFX) AS SUFFIX, 
DECD_BRTH_DT AS BIRTHDATE, 
DECD_DTH_DT AS DEATHDATE, 
RTRIM(DECD_SEX) AS GENDER, 
RTRIM(RACE) AS RACE, 
RTRIM(HISPANICETHNICITY) AS HISPANICETHNICITY, 
RTRIM(DECD_AGE_TYPE) AS AGE_TYPE, 
DECD_AGE_YR AS AGEYEARS, 
DECD_AGE_MON AS AGEMONTHS, 
DECD_AGE_DAY AS AGEDAYS, 
DECD_AGE_HR AS AGEHOURS, 
DECD_AGE_MIN AS AGEMINUTES, 
RTRIM(DECD_BRTH_CNTRY) AS BIRTHCOUNTRY, 
RTRIM(DECD_BRTH_ST) AS BIRTHSTATE, 
RTRIM(DECD_BRTH_CTY) AS BIRTHCITY, 
RTRIM(DECD_RES_NURSING) AS NURSHOME, 
RTRIM(DECD_RES_FCLTY) AS RESFACILITY , 
RTRIM(DECD_RES_STRT) AS RESADDRESS, 
RTRIM(DECD_RES_CNTRY) AS RESCOUNTRY, 
RTRIM(DECD_RES_ST) AS RESSTATE, 
RTRIM(DECD_RES_CNTY) AS RESCOUNTY, 
RTRIM(DECD_RES_CTY) AS RESCITY, 
RTRIM(DECD_RES_ZIP5) AS ZIP, 
RTRIM(DECD_ARMF_FL) AS ARMEDFORCES, 
RTRIM(DECD_EDUC) AS YEARSEDUCATION, 
RTRIM(DECD_OCPTN) AS OCCUPATION, 
RTRIM(DECD_IDSTY) AS INDUSTRY, 
RTRIM(DECD_MRTL_STATUS) AS MARITALSTATUS, 
RTRIM(SPS_FRST_NME) AS SPOUSEFIRST, 
RTRIM(SPS_MIDD_NME) AS SPOUSEMIDDLE, 
RTRIM(SPS_LST_NME) AS SPOUSELAST, 
RTRIM(FTHR_FRST_NME) AS FATHERFIRST, 
RTRIM(FTHR_MIDD_NME) AS FATHERMIDDLE, 
RTRIM(FTHR_LST_NME) AS FATHERLAST, 
RTRIM(FTHR_SFX_NME) AS FATHERSUFFIX, 
RTRIM(MTHR_FRST_NME) AS MOTHERFIRST, 
RTRIM(MTHR_MIDD_NME) AS MOTHERMIDDLE, 
RTRIM(MTHR_MAIDN_NME) AS MOTHERMAIDEN, 
RTRIM(DECD_PLCE_DTH_TYP) AS PLACETYPE, 
RTRIM(DECD_PLCE_DTH_OTHR) AS PLACEOTHER, 
RTRIM(DECD_DTH_FCLTY) AS FACILITY, 
RTRIM(DECD_DTH_FCLTY_OTHR) AS FACILITYOTHER, 
RTRIM(DECD_DTH_STRT) AS DEATHADDRESS, 
RTRIM(DECD_DTH_CNTRY) AS DEATHCOUNTRY, 
RTRIM(DECD_DTH_ST) AS DEATHSTATE, 
RTRIM(DECD_DTH_CTY) AS DEATHCITY, 
RTRIM(DECD_DTH_ZIP5) AS DEATHZIP, 
RTRIM(DECD_DTH_CNTY) AS DEATHCOUNTY, 
RTRIM(CAUSE_DTH_A) AS CAUSEA, 
RTRIM(CAUSE_DTH_B) AS CAUSEB, 
RTRIM(CAUSE_DTH_C) AS CAUSEC, 
RTRIM(CAUSE_DTH_D) AS CAUSED, 
RTRIM(CAUSE_DTH_OTHR) AS CAUSEOTHER, 
RTRIM(CERTFR_MANNER_DTH) AS MANNERDEATH, 
INJURY_DATE, 
RTRIM(INJURY_PLCE_TYP) AS INJURYPLACE, 
RTRIM(INJURY_WORK) AS INJURYWORK, 
RTRIM(INJURY_LOC_STRT) AS INJURYADDRESS, 
RTRIM(INJURY_LOC_ST) AS INJURYSTATE, 
RTRIM(INJURY_LOC_CNTY) AS INJURYCOUNTY, 
RTRIM(INJURY_LOC_CNTRY) AS INJURYCOUNTRY , 
RTRIM(INJURY_LOC_CTY) AS INJURYCITY, 
RTRIM(INJURY_LOC_ZIP5) AS INJURYZIP, 
RTRIM(INJURY_DESC) AS INJURYDESC, 
STRIBIMPORTDATE AS IMPORTDATE, 
RTRIM(YR) AS DEATHYEAR, 
RTRIM(SOURCECODE) AS SOURCECODE
into deaths_main
FROM DEATHS_ORIGINAL





SELECT rtrim(ST_FILE_NBR) AS ST_FILE_NBR,
rtrim(ALIAS_FRST_NME) AS ALIAS_FRST_NME, 
rtrim(ALIAS_MIDD_NME) AS ALIAS_MIDD_NME, 
rtrim(ALIAS_LST_NME) AS ALIAS_LST_NME, 
rtrim(ALIAS_SUFX) AS ALIAS_SUFX, 
rtrim(DECD_BRTH_CNTRY_FIPS_CD) AS DECD_BRTH_CNTRY_FIPS_CD, 
rtrim(DECD_BRTH_ST_FIPS_CD) AS DECD_BRTH_ST_FIPS_CD, 
rtrim(DECD_BRTH_CTY_FIPS_CD) AS DECD_BRTH_CTY_FIPS_CD, 
rtrim(DECD_RES_MLTIUNIT) AS DECD_RES_MLTIUNIT, 
rtrim(DECD_RES_CNTRY_FIPS_CD) AS DECD_RES_CNTRY_FIPS_CD, 
rtrim(DECD_RES_ST_FIPS_CD) AS DECD_RES_ST_FIPS_CD, 
rtrim(DECD_RES_CNTY_FIPS_CD) AS DECD_RES_CNTY_FIPS_CD, 
rtrim(DECD_RES_CTY_FIPS_CD) AS DECD_RES_CTY_FIPS_CD, 
rtrim(DECD_RES_ZIP4) AS DECD_RES_ZIP4, 
rtrim(DECD_RES_INTL_FL) AS DECD_RES_INTL_FL, 
rtrim(DECD_RES_INTL_CD) AS DECD_RES_INTL_CD, 
rtrim(DECD_RES_CTY_TWNSHP_LIMITS) AS DECD_RES_CTY_TWNSHP_LIMITS, 
rtrim(DECD_MRTL_STATUS_CD) AS DECD_MRTL_STATUS_CD, 
rtrim(MTHR_SFX_NME) AS MTHR_SFX_NME, 
rtrim(IFRMT_TYPE) AS IFRMT_TYPE, 
rtrim(IFRMT_FRST_NME) AS IFRMT_FRST_NME, 
rtrim(IFRMT_MIDD_NME) AS IFRMT_MIDD_NME, 
rtrim(IFRMT_LST_NME) AS IFRMT_LST_NME, 
rtrim(IFRMT_ENTITY) AS IFRMT_ENTITY, 
rtrim(IFRMT_SFX_NME) AS IFRMT_SFX_NME, 
rtrim(IFRMT_RLSHP) AS IFRMT_RLSHP, 
rtrim(IFRMT_ADDR_SAME_AS_DECD) AS IFRMT_ADDR_SAME_AS_DECD, 
rtrim(IFRMT_ADDR_STRT) AS IFRMT_ADDR_STRT, 
rtrim(IFRMT_ADDR_MLTIUNIT) AS IFRMT_ADDR_MLTIUNIT, 
rtrim(IFRMT_ADDR_CNTRY) AS IFRMT_ADDR_CNTRY, 
rtrim(IFRMT_ADDR_CNTRY_FIPS_CD) AS IFRMT_ADDR_CNTRY_FIPS_CD, 
rtrim(IFRMT_ADDR_ST) AS IFRMT_ADDR_ST, 
rtrim(IFRMT_ADDR_ST_FIPS_CD) AS IFRMT_ADDR_ST_FIPS_CD, 
rtrim(IFRMT_ADDR_CTY) AS IFRMT_ADDR_CTY, 
rtrim(IFRMT_ADDR_CTY_FIPS_CD) AS IFRMT_ADDR_CTY_FIPS_CD, 
rtrim(IFRMT_ADDR_ZIP5) AS IFRMT_ADDR_ZIP5, 
rtrim(IFRMT_ADDR_ZIP4) AS IFRMT_ADDR_ZIP4, 
rtrim(IFRMT_ADDR_INTL_FL) AS IFRMT_ADDR_INTL_FL, 
rtrim(IFRMT_ADDR_INTL_CD) AS IFRMT_ADDR_INTL_CD, 
rtrim(DECD_PLCE_DTH_TYP_CD) AS DECD_PLCE_DTH_TYP_CD, 
rtrim(DECD_DTH_FCLTY_ID) AS DECD_DTH_FCLTY_ID, 
rtrim(DECD_DTH_MLTIUNIT) AS DECD_DTH_MLTIUNIT, 
rtrim(DECD_DTH_CNTRY_FIPS_CD) AS DECD_DTH_CNTRY_FIPS_CD, 
rtrim(DECD_DTH_ST_FIPS_ALPHA_CD) AS DECD_DTH_ST_FIPS_ALPHA_CD, 
rtrim(DECD_DTH_CTY_FIPS_CD) AS DECD_DTH_CTY_FIPS_CD, 
rtrim(DECD_DTH_ZIP4) AS DECD_DTH_ZIP4, 
rtrim(DECD_DTH_INTL_FL) AS DECD_DTH_INTL_FL, 
rtrim(DECD_DTH_INTL_CD) AS DECD_DTH_INTL_CD, 
rtrim(DECD_DTH_CNTY_FIPS_CD) AS DECD_DTH_CNTY_FIPS_CD, 
rtrim(DISP_MTHD_BURIAL) AS DISP_MTHD_BURIAL, 
rtrim(DISP_MTHD_ENT) AS DISP_MTHD_ENT, 
rtrim(DISP_MTHD_DON) AS DISP_MTHD_DON, 
rtrim(DISP_MTHD_CREM) AS DISP_MTHD_CREM, 
rtrim(DISP_MTHD_RMVL_FRM_ST) AS DISP_MTHD_RMVL_FRM_ST, 
rtrim(DISP_MTHD_OTHR) AS DISP_MTHD_OTHR, 
rtrim(DISP_MTHD_OTHR_TEXT) AS DISP_MTHD_OTHR_TEXT, 
rtrim(DISP_MTHD_UNKN) AS DISP_MTHD_UNKN, 
rtrim(DISP_CMTRY_PLCE) AS DISP_CMTRY_PLCE, 
rtrim(DISP_CMTRY_PLCE_OTHR) AS DISP_CMTRY_PLCE_OTHR, 
rtrim(DISP_CMTRY_CNTRY) AS DISP_CMTRY_CNTRY, 
rtrim(DISP_CMTRY_ST) AS DISP_CMTRY_ST, 
rtrim(DISP_CMTRY_CTY) AS DISP_CMTRY_CTY, 
rtrim(CREM_NME) AS CREM_NME, 
rtrim(CREM_NME_OTHR) AS CREM_NME_OTHR, 
rtrim(CREM_CNTRY) AS CREM_CNTRY, 
rtrim(CREM_ST) AS CREM_ST, 
rtrim(CREM_CTY) AS CREM_CTY, 
rtrim(AUTHR_LIC_NBR) AS AUTHR_LIC_NBR, 
rtrim(AUTHR_FRST_NME) AS AUTHR_FRST_NME, 
rtrim(AUTHR_MIDD_NME) AS AUTHR_MIDD_NME, 
rtrim(AUTHR_LST_NME) AS AUTHR_LST_NME, 
rtrim(AUTHR_TITLE) AS AUTHR_TITLE, 
rtrim(INSTITUTION_TYPE) AS INSTITUTION_TYPE, 
rtrim(FD_FH_ESTAB_NBR) AS FD_FH_ESTAB_NBR, 
rtrim(FD_FH_NME) AS FD_FH_NME, 
rtrim(FD_FH_LOC_STRT) AS FD_FH_LOC_STRT, 
rtrim(FD_FH_LOC_MLTIUNIT) AS FD_FH_LOC_MLTIUNIT, 
rtrim(FD_FH_LOC_CTY) AS FD_FH_LOC_CTY, 
rtrim(FD_FH_LOC_ST) AS FD_FH_LOC_ST, 
rtrim(FD_FH_LOC_ST_FIPS_CD) AS FD_FH_LOC_ST_FIPS_CD, 
rtrim(FD_FH_LOC_ZIP5) AS FD_FH_LOC_ZIP5, 
rtrim(FD_FH_LOC_ZIP4) AS FD_FH_LOC_ZIP4, 
rtrim(FD_FH_LOC_INTL_FL) AS FD_FH_LOC_INTL_FL, 
rtrim(FD_FH_LOC_INTL_CD) AS FD_FH_LOC_INTL_CD, 
rtrim(FD_FH_LOC_CNTRY) AS FD_FH_LOC_CNTRY, 
rtrim(FD_LIC_NBR) AS FD_LIC_NBR, 
rtrim(FD_FRST_NME) AS FD_FRST_NME, 
rtrim(FD_MIDD_NME) AS FD_MIDD_NME, 
rtrim(FD_LST_NME) AS FD_LST_NME, 
rtrim(FD_SFX_NME) AS FD_SFX_NME, 
rtrim(DECD_DTH_DT_MODIFIER) AS DECD_DTH_DT_MODIFIER, 
rtrim(DECD_DTH_TM) AS DECD_DTH_TM, 
rtrim(DECD_DTH_TM_MODIFIER) AS DECD_DTH_TM_MODIFIER, 
rtrim(ME_CONTACTED) AS ME_CONTACTED, 
rtrim(CA_DISPOSITION_POSTPONE) AS CA_DISPOSITION_POSTPONE, 
rtrim(CA_DISPOSITION_POSTPONE_REASON) AS CA_DISPOSITION_POSTPONE_REASON, 
rtrim(CA_INJURY_OR_TRAUMA) AS CA_INJURY_OR_TRAUMA, 
CA_INJURY_OR_TRAUMA_DESCRIBE,
rtrim(DT_LAST_SEEN_DAY) AS DT_LAST_SEEN_DAY, 
rtrim(DT_LAST_SEEN_MONTH) AS DT_LAST_SEEN_MONTH, 
rtrim(DT_LAST_SEEN_YEAR) AS DT_LAST_SEEN_YEAR, 
rtrim(CAUSE_INTRVL_A) AS CAUSE_INTRVL_A, 
rtrim(CAUSE_INTRVL_B) AS CAUSE_INTRVL_B, 
rtrim(CAUSE_INTRVL_C) AS CAUSE_INTRVL_C, 
rtrim(CAUSE_INTRVL_D) AS CAUSE_INTRVL_D, 
rtrim(ME_AUTPSY) AS ME_AUTPSY, 
rtrim(ME_AUTPSY_RES_AVLBL) AS ME_AUTPSY_RES_AVLBL, 
rtrim(TOBACCO_CONTRIBUTED) AS TOBACCO_CONTRIBUTED, 
rtrim(DECD_PREG_DESC) AS DECD_PREG_DESC, 
rtrim(DECD_PREG_CD) AS DECD_PREG_CD, 
rtrim(CERTFR_MANNER_DTH_CD) AS CERTFR_MANNER_DTH_CD, 
rtrim(INJURY_FL) AS INJURY_FL, 
rtrim(INJURY_DT_TXT) AS INJURY_DT_TXT, 
rtrim(INJURY_DT_CANNOT_DETERMINE) AS INJURY_DT_CANNOT_DETERMINE, 
rtrim(INJURY_TM) AS INJURY_TM, 
rtrim(INJURY_TM_CANNOT_DETERMINE) AS INJURY_TM_CANNOT_DETERMINE, 
rtrim(INJURY_LOC_MLTIUNIT) AS INJURY_LOC_MLTIUNIT, 
rtrim(INJURY_LOC_ST_FIPS_CD) AS INJURY_LOC_ST_FIPS_CD, 
rtrim(INJURY_LOC_CNTY_FIPS_CD) AS INJURY_LOC_CNTY_FIPS_CD, 
rtrim(INJURY_LOC_CNTRY_FIPS_CD) AS INJURY_LOC_CNTRY_FIPS_CD, 
rtrim(INJURY_LOC_CTY_FIPS_CD) AS INJURY_LOC_CTY_FIPS_CD, 
rtrim(INJURY_LOC_ZIP4) AS INJURY_LOC_ZIP4, 
rtrim(INJURY_LOC_INTL_FL) AS INJURY_LOC_INTL_FL, 
rtrim(INJURY_LOC_INTL_CD) AS INJURY_LOC_INTL_CD, 
rtrim(INJURY_LOC_TRANSPORT) AS INJURY_LOC_TRANSPORT, 
rtrim(INJURY_LOC_TRANSPORT_CD) AS INJURY_LOC_TRANSPORT_CD, 
rtrim(CERTFR_FRST_NME) AS CERTFR_FRST_NME, 
rtrim(CERTFR_MIDD_NME) AS CERTFR_MIDD_NME, 
rtrim(CERTFR_LST_NME) AS CERTFR_LST_NME, 
rtrim(CERTFR_SFX_NME) AS CERTFR_SFX_NME, 
rtrim(CERTFR_ADDR_STRT) AS CERTFR_ADDR_STRT, 
rtrim(CERTFR_ADDR_MLTIUNIT) AS CERTFR_ADDR_MLTIUNIT, 
rtrim(CERTFR_ADDR_CNTRY) AS CERTFR_ADDR_CNTRY, 
rtrim(CERTFR_ADDR_CNTRY_FIPS_CD) AS CERTFR_ADDR_CNTRY_FIPS_CD, 
rtrim(CERTFR_ADDR_ST) AS CERTFR_ADDR_ST, 
rtrim(CERTFR_ADDR_ST_FIPS_CD) AS CERTFR_ADDR_ST_FIPS_CD, 
rtrim(CERTFR_ADDR_CTY) AS CERTFR_ADDR_CTY, 
rtrim(CERTFR_ADDR_CTY_FIPS_CD) AS CERTFR_ADDR_CTY_FIPS_CD, 
rtrim(CERTFR_ADDR_ZIP5) AS CERTFR_ADDR_ZIP5, 
rtrim(CERTFR_ADDR_ZIP4) AS CERTFR_ADDR_ZIP4, 
rtrim(CERTFR_ADDR_INTL_FL) AS CERTFR_ADDR_INTL_FL, 
rtrim(CERTFR_ADDR_INTL_CD) AS CERTFR_ADDR_INTL_CD, 
rtrim(CERTFR_TITLE) AS CERTFR_TITLE, 
rtrim(CERTFR_LIC_NBR) AS CERTFR_LIC_NBR, 
rtrim(CERTFR_NPI_CD) AS CERTFR_NPI_CD, 
DT_FILED_MED AS DT_FILED_MED, 
DT_FILED_LEGL AS DT_FILED_LEGL, 
rtrim(CMPLT_FL) AS CMPLT_FL, 
rtrim(DECD_EDUC_CD) AS DECD_EDUC_CD, 
rtrim(SUBJECT_NOT_HISPANIC) AS SUBJECT_NOT_HISPANIC, 
rtrim(SUBJECT_MEXICAN) AS SUBJECT_MEXICAN, 
rtrim(SUBJECT_PUERTO_RICAN) AS SUBJECT_PUERTO_RICAN, 
rtrim(SUBJECT_CUBAN) AS SUBJECT_CUBAN, 
rtrim(SUBJECT_OTHER_SPANISH) AS SUBJECT_OTHER_SPANISH, 
rtrim(SUBJECT_OTHR_SPAN_TXT) AS SUBJECT_OTHR_SPAN_TXT, 
rtrim(SUBJECT_REFUSED_HISPANIC) AS SUBJECT_REFUSED_HISPANIC, 
rtrim(SUBJECT_UNKNOWN_HISPANIC) AS SUBJECT_UNKNOWN_HISPANIC, 
rtrim(SUBJECT_NOTOBTAINABLE_HISPANIC) AS SUBJECT_NOTOBTAINABLE_HISPANIC, 
rtrim(SUBJECT_WHITE) AS SUBJECT_WHITE, 
rtrim(SUBJECT_AFRICAN_AMERICAN) AS SUBJECT_AFRICAN_AMERICAN, 
rtrim(SUBJECT_SOMALI) AS SUBJECT_SOMALI, 
rtrim(SUBJECT_ETHIOPIAN) AS SUBJECT_ETHIOPIAN, 
rtrim(SUBJECT_LIBERIAN) AS SUBJECT_LIBERIAN, 
rtrim(SUBJECT_KENYAN) AS SUBJECT_KENYAN, 
rtrim(SUBJECT_SUDANESE) AS SUBJECT_SUDANESE, 
rtrim(SUBJECT_NIGERIAN) AS SUBJECT_NIGERIAN, 
rtrim(SUBJECT_GHANIAN) AS SUBJECT_GHANIAN, 
rtrim(SUBJECT_OTHER_AFRICAN) AS SUBJECT_OTHER_AFRICAN, 
rtrim(SUBJECT_OTHER_AFRICAN_TXT) AS SUBJECT_OTHER_AFRICAN_TXT, 
rtrim(SUBJECT_AMERICAN_INDIAN) AS SUBJECT_AMERICAN_INDIAN, 
rtrim(SUBJECT_TRIBE_TXT1) AS SUBJECT_TRIBE_TXT1, 
rtrim(SUBJECT_TRIBE_TXT2) AS SUBJECT_TRIBE_TXT2, 
rtrim(SUBJECT_ASIAN_INDIAN) AS SUBJECT_ASIAN_INDIAN, 
rtrim(SUBJECT_CHINESE) AS SUBJECT_CHINESE, 
rtrim(SUBJECT_FILIPINO) AS SUBJECT_FILIPINO, 
rtrim(SUBJECT_JAPANESE) AS SUBJECT_JAPANESE, 
rtrim(SUBJECT_KOREAN) AS SUBJECT_KOREAN, 
rtrim(SUBJECT_VIETNAMESE) AS SUBJECT_VIETNAMESE, 
rtrim(SUBJECT_HMONG) AS SUBJECT_HMONG, 
rtrim(SUBJECT_CAMBODIAN) AS SUBJECT_CAMBODIAN, 
rtrim(SUBJECT_LAOTIAN) AS SUBJECT_LAOTIAN, 
rtrim(SUBJECT_OTHER_ASIAN) AS SUBJECT_OTHER_ASIAN, 
rtrim(SUBJECT_OTHR_ASN_TXT1) AS SUBJECT_OTHR_ASN_TXT1, 
rtrim(SUBJECT_OTHR_ASN_TXT2) AS SUBJECT_OTHR_ASN_TXT2, 
rtrim(SUBJECT_HAWAIIAN) AS SUBJECT_HAWAIIAN, 
rtrim(SUBJECT_GUAMANIAN_CHAMORRO) AS SUBJECT_GUAMANIAN_CHAMORRO, 
rtrim(SUBJECT_SAMOAN) AS SUBJECT_SAMOAN, 
rtrim(SUBJECT_OTHER_PACIFIC_ISLANDER) AS SUBJECT_OTHER_PACIFIC_ISLANDER, 
rtrim(SUBJECT_OTHR_PAC_ISLE_TXT1) AS SUBJECT_OTHR_PAC_ISLE_TXT1, 
rtrim(SUBJECT_OTHR_PAC_ISLE_TXT2) AS SUBJECT_OTHR_PAC_ISLE_TXT2, 
rtrim(SUBJECT_OTHER) AS SUBJECT_OTHER, 
rtrim(SUBJECT_OTHR_TXT1) AS SUBJECT_OTHR_TXT1, 
rtrim(SUBJECT_OTHR_TXT2) AS SUBJECT_OTHR_TXT2, 
rtrim(SUBJECT_REFUSED_RACE) AS SUBJECT_REFUSED_RACE, 
rtrim(SUBJECT_UNKNOWN) AS SUBJECT_UNKNOWN, 
rtrim(SUBJECT_NOTOBTAINABLE_RACE) AS SUBJECT_NOTOBTAINABLE_RACE, 
rtrim(SUBJECT_RACE_MVR) AS SUBJECT_RACE_MVR, 
rtrim(SUBJECT_RACE1E) AS SUBJECT_RACE1E, 
rtrim(SUBJECT_RACE2E) AS SUBJECT_RACE2E, 
rtrim(SUBJECT_RACE3E) AS SUBJECT_RACE3E, 
rtrim(SUBJECT_RACE4E) AS SUBJECT_RACE4E, 
rtrim(SUBJECT_RACE5E) AS SUBJECT_RACE5E, 
rtrim(SUBJECT_RACE6E) AS SUBJECT_RACE6E, 
rtrim(SUBJECT_RACE7E) AS SUBJECT_RACE7E, 
rtrim(SUBJECT_RACE8E) AS SUBJECT_RACE8E, 
rtrim(SUBJECT_RACE16C) AS SUBJECT_RACE16C, 
rtrim(SUBJECT_RACE17C) AS SUBJECT_RACE17C, 
rtrim(SUBJECT_RACE18C) AS SUBJECT_RACE18C, 
rtrim(SUBJECT_RACE19C) AS SUBJECT_RACE19C, 
rtrim(SUBJECT_RACE20C) AS SUBJECT_RACE20C, 
rtrim(SUBJECT_RACE21C) AS SUBJECT_RACE21C, 
rtrim(SUBJECT_RACE22C) AS SUBJECT_RACE22C, 
rtrim(SUBJECT_RACE23C) AS SUBJECT_RACE23C, 
rtrim(SUBJECT_ETHNICE) AS SUBJECT_ETHNICE, 
rtrim(SUBJECT_ETHNIC5C) AS SUBJECT_ETHNIC5C, 
rtrim(SUBJECT_RACEBRG) AS SUBJECT_RACEBRG, 
rtrim(MNL_UNLY_CAUSE_DTH) AS MNL_UNLY_CAUSE_DTH,
stribimportdate as importdate,
yr as deathyear
INTO deaths_other
FROM DEATHS_ORIGINAL




SELECT ST_FILE_NBR,
RAC_ICD01,
RAC_ICD02,
RAC_ICD03,
RAC_ICD04,
RAC_ICD05,
RAC_ICD06,
RAC_ICD07,
RAC_ICD08,
RAC_ICD09,
RAC_ICD10,
RAC_ICD11,
RAC_ICD12,
RAC_ICD13,
RAC_ICD14,
RAC_ICD15,
RAC_ICD16,
RAC_ICD17,
RAC_ICD18,
RAC_ICD19,
RAC_ICD20
FROM DEATHS_ORIGINAL
