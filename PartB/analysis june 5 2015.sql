/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP 1000 [NPI]
      ,[NPPES_PROVIDER_LAST_ORG_NAME]
      ,[NPPES_PROVIDER_FIRST_NAME]
      ,[NPPES_PROVIDER_MI]
      ,[NPPES_CREDENTIALS]
      ,[NPPES_PROVIDER_GENDER]
      ,[NPPES_ENTITY_CODE]
      ,[NPPES_PROVIDER_STREET1]
      ,[NPPES_PROVIDER_STREET2]
      ,[NPPES_PROVIDER_CITY]
      ,[NPPES_PROVIDER_ZIP]
      ,[NPPES_PROVIDER_STATE]
      ,[NPPES_PROVIDER_COUNTRY]
      ,[PROVIDER_TYPE]
      ,[MEDICARE_PARTICIPATION_INDICATOR]
      ,[PLACE_OF_SERVICE]
      ,[HCPCS_CODE]
      ,[HCPCS_DESCRIPTION]
      ,[HCPCS_DRUG_INDICATOR]
      ,[LINE_SRVC_CNT]
      ,[BENE_UNIQUE_CNT]
      ,[BENE_DAY_SRVC_CNT]
      ,[AVERAGE_MEDICARE_ALLOWED_AMT]
      ,[STDEV_MEDICARE_ALLOWED_AMT]
      ,[AVERAGE_SUBMITTED_CHRG_AMT]
      ,[STDEV_SUBMITTED_CHRG_AMT]
      ,[AVERAGE_MEDICARE_PAYMENT_AMT]
      ,[STDEV_MEDICARE_PAYMENT_AMT]
  FROM [medicare].[dbo].[PartBall2013]
  
  select  NPPES_PROVIDER_STATE,HCPCS_CODE, hcpcs_description, bene_unique_cnt, average_medicare_payment_amt
  from partBall2013
  where bene_unique_cnt=0
  
  select nppes_provider_state, provider_type, HCPCS_CODE, hcpcs_description, sum(average_medicare_payment_amt*bene_unique_cnt)/sum(bene_unique_cnt) as WgtAvg
   into temp_procedures
    from partBall2013
    group by nppes_provider_state,provider_type, HCPCS_CODE, hcpcs_description
    
    delete from partBall2013
    where bene_unique_cnt=0
    
    select top 10 *
    from temp_procedures
    
    select temp_procedures.provider_type, temp_procedures.hcpcs_code, temp_procedures.hcpcs_description, min(wgtavg) as MinAvg, max(wgtavg) as MaxAvg, max(wgtavg)-min(wgtavg) as Diff
    from temp_procedures inner join temp_topprocs on temp_procedures.provider_type=temp_topprocs.provider_type and
    temp_procedures.hcpcs_code=temp_topprocs.hcpcs_code
    group by temp_procedures.provider_type, temp_procedures.hcpcs_code, temp_procedures.hcpcs_description
    order by 6 desc
    
    select top 500 provider_type, hcpcs_code, hcpcs_description, sum(LINE_SRVC_CNT) as TotalServices into temp_TopProcs
    from partball2013
    group by provider_type, hcpcs_code, hcpcs_description
    order by 4 desc
    
    select a.*
    from temp_procedures a inner join procs_compare b on a.provider_type=b.provider_type and
    a.hcpcs_code=b.hcpcs_code and a.wgtavg=b.minavg
    where nppes_provider_state='MN'
    
    select *
    from temp_procedures
    where hcpcs_code='70553' and provider_type='diagnostic radiology'
    order by wgtavg desc
    
    select hcpcs_code,hcpcs_description, min(wgtavg), max(wgtavg), max(wgtavg)-min(wgtavg) as Diff
    from temp_procedures
    where nppes_provider_state='MN'
    group by hcpcs_code, hcpcs_description
    order by 5 desc
    
    
    select top 100 *
    from partb_mn_2013

select  specialty, hcpcscode, pcpcsdescr, min(avgpayment) as MinPay, max(avgpayment) as MaxPay,  max(avgpayment)-min(avgpayment) as Diff
from partb_mn_2013
group by  specialty, hcpcscode, pcpcsdescr
order by 6 desc

select npi, lname, fname, addr1, city, specialty, hcpcscode, pcpcsdescr, servicecount, benecount, beneday, avgallowed, avgsubmitted, avgpayment
from partb_mn_2013
where hcpcscode='63685'
order by avgpayment desc

select *
from temp_procedures
order by wgtavg desc

select *
from temp_procedures
where hcpcs_code='j7187'

select hcpcs_code, hcpcs_description, sum(average_medicare_payment_amt*bene_unique_cnt)/sum(bene_unique_cnt) as WgtAvg
into temp_LucrativeProcs2
from partball2013
group by hcpcs_code, hcpcs_description


select a.wgtavg as OverallAvg, hcpcscode, pcpcsdescr, npi, lname, fname, mname, city, servicecount, benecount, beneday, avgpayment, pctofservices, pctofbenes
from temp_lucrativeprocs a inner join partb_mn_2013 b on a.hcpcs_code=b.hcpcscode
order by pctofservices desc

select hcpcscode, pcpcsdescr, sum(servicecount) as TotalServices, sum(benecount) as TotalBenes into temp_totals
from  partb_mn_2013
group by hcpcscode, pcpcsdescr

update partb_mn_2013 set pctofservices=(cast(a.servicecount as float)/cast(b.totalservices as float))*100
from partb_mn_2013 a inner join temp_totals b on a.hcpcscode=b.hcpcscode

select top 1000 *
from partb_mn_2013
order by pctofservices desc

select *
from temp_totals

update partb_mn_2013 set pctofbenes=(cast(a.benecount as float)/cast(b.totalbenes as float))*100
from partb_mn_2013 a inner join temp_totals b on a.hcpcscode=b.hcpcscode

select *
from partb_mn_2013
where hcpcscode='91110'


select hcpcscode, max(pctofbenes) as MaxPctofBenes into temp_MaxPctofBenes
from partb_mn_2013
group by hcpcscode

select a.*
from partb_mn_2013 a inner join temp_maxpctofbenes b on a.hcpcscode=b.hcpcscode
and a.pctofbenes=b.maxpctofbenes
