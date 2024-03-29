
select npi, nppes_provider_last_org_name as lname, nppes_provider_first_name as fname, nppes_provider_mi as mname,
nppes_credentials as cred, nppes_provider_gender as gender, nppes_entity_code as ntype, nppes_provider_street1 as addr1,
nppes_provider_street2 as addr2, nppes_provider_city as city, nppes_provider_zip as zip, nppes_provider_state as [state],
nppes_provider_country as country, provider_type as specialty, medicare_participation_indicator as participation,
place_of_service as placeofservice, hcpcs_code as hcpcscode, hcpcs_description as pcpcsdescr, hcpcs_drug_indicator as hcpcs_drug_ind, 
line_srvc_cnt as servicecount , bene_unique_cnt as benecount, bene_day_srvc_cnt as beneday, average_medicare_allowed_amt as avgallowed,
stdev_medicare_allowed_amt as avgdeviation,
average_submitted_chrg_amt as avgsubmitted, stdev_submitted_chrg_amt as avgsubdev,average_medicare_payment_amt as avgpayment,
stdev_medicare_payment_amt as devpayment into PartB_MN_2013
from partball2013
where nppes_provider_state='MN'
