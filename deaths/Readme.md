Death certificate data:

Request data from Minnesota Department of Health. You need to fill out a request form.  A copy of a recent one is included here. That goes to a unit that then passes it on to one of their data people. In recent years we've been working with Neeti Sethi, who is fabulous. They charge $20 per year, even if you ask for multiple years of data in one batch. Generally you don't need to deal with the media people, although they could help if you run into trouble.

See separate text file with the list of the fields that we request each year. Neeti has created a query that matches our file structure and the fields come through matching previous years consistently. I fear that this might change if Neeti leaves or no longer works with us.  The import procedures documented below are set up to work with that table structure. 

The data is all on the Amazon server, in newsroomdata. Tables: deaths_main, deaths_icd, deaths_race, deaths_other. I have a saved query that has all the import specs and updates that need to be run. I saved a backup of it here on github (updated in Feb 2020)

The data comes as one big flat file, but I've split it into these separate relational tables in order to make it more manageable. 

The table "deaths_main" is generally the go-table for anything. This table is mostly complete for 1985 through 1999 and is very complete for 2000 to present day. Anything older are generally records from the Minnesota Historical Society and there isn't much information on these deaths. The data from 1985 to 1999 appears to only contain records for people who LIVED in Minnesota and died here. More recent years include people who died here while visiting. Data prior to 1985 contains minimal information. 

Deaths_other contains all the extraneous stuff we hardly ever use -- name of funeral home, burial/cremation info, etc. And this information is only available for 2000 to present day.  In Jan 2020, I discovered that the import process had not been pulling all the extraneous fields and, in particular, was missing an ID number for funeral homes (which a reporter needed to match with some other data on funeral homes). I went back and reimported all the old data I had available, grabbing all the fields, but it turns out I was missing several random years (2013, 2015, and 2018). I think I deleted those original data files instead of archiving them. I also didn't reimport 2017 because for some reason the old file I had was only pulling in about half the records that were supposed to be there. 

Deaths_race contains the huge set of race/ethnicity fields that MDH started using in the 2000s. 

And deaths_icd has multiple records for each death since 2000 -- one for each ICD code that was listed on their death certificate. Most people only have two or three. But it can be up to 20 codes. I converted it to this structure so it's easier to search and find all the people who had a particular code. 

In August 2017 I requested a whole new run of data from 2000 to 2015 because I kept finding so many holes in the old data (like the gender field completely blank for all records). So currently the 2000 to 2016 data is very solid.

In January 2020, we got revised files for 1985 through 1999. The structure of those files (and the codes used as variables) is quite a bit different than the newer structures. They gave us three files - 1985 through 1988; 1989 to 1994 and 1995 to 1999. That last file is the most complete (with things like father's last name and decedants address). All of those files are heavily coded, so I created some lookup tables and wrote some SQL to create new columns with actual names (of counties, cities, etc) for the key fields we care about. I merged key fields into the deaths_main table, but then I also retained the original files on the server. I did NOT transfer any of the cause of death information. Most of it is ICD 9 codes (while our newer stuff is ICD10), and I don't have a readily available ICD 9 lookup table. The data also uses a different coding schema that you don't see in the newer data. It has a field called "codsumm" which is a high-level bucket -- such as "unintentional deaths" (accident), "intentional deaths" (murder/suicide) and various buckets for natural/medical cause of deaths. Then there is a second layer within these buckets called "codmort" (for example, 96=murder). The definitions are in the codebook that they sent along (and I've included here)

Archived data original files (as they came to us from MDH) are stored in my OneDrive cloud directory. 
