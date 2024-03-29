Bridge inspection data:

We requested data in 2017 to go with a story on the 10th anniversary of the 35W bridge collapse. We also still have 2006 National Bridge Inventory
data that was used at the time of the collapse. 

All of that data is on the Amazon data server in the newsroomdata database. See the inventory table for list of all tables that are grouped as "bridges."

The most up-to-date way to get bridge inspection data is from Minnesota Department of Transportation. However, you can get national data that will be about six months out of date from the National Bridge Inventory data that is easily accessible for a fee from IRE and NICAR.

From MNDOT, you have to file an official public records request with their FOIA officer.
Nicole Johnson 
Office of Chief Counsel
Data Practices Coordinator & Paralegal
Minnesota Department of Transportation
395 John Ireland Boulevard MS 140
St. Paul, MN 55155
Tel: 651-366-4816
nicole.johnson@state.mn.us  

However, the person I dealt with regarding the data is David Hedeen -- he was super helpful.

David Hedeen
Bridge Inventory Management Unit  
651-366-4528

The MNDOT inventory contains dozens of tables. Hedeen gave me the full list of tables and fields (see record layouts and table scripts),
but only gave me a few tables that really contained what I needed. I found I really only needed "bridge", "inspevnt" and "roadway"

The bridge table has one record for each bridge and contains the bulk of the info you need - bridge number, location, lat/long, length, etc.
The roadway table, though, is necessary to get the average traffic volume. The "inspevnt" table is the inspections table -- one record for each
inspection. The data had inspections going back to the 1990s, at least, for some bridges. Here's where you get the sufficiency ratings.

The inventory contains a lot of bridges that generally are not included when you do an analysis of "deficient" bridges. There are pedestrian
bridges, railroad bridges, and even privately-owned bridges or others that are not under the jurisdiction of MNDOT. 

The universe of bridges that are reported to the National Bridge Inventory is supposed to only be highway bridges that are 20 feet or longer, but
Hedeen said (and the data confirms) that states don't always adhere to that. He also said that the rules about what should or should not be included 
has changed over the years. So to do my analysis he recommended I limit my analysis to bridges that are 20 feet or longer, open to traffic,
and carry highway (not railroads or pedestrians). 

Here's the query to do that in the Minnesota data:

select *
from mnbridge
where tot_length>=6.096 and (oppostcl='A' or oppostcl='G') and (servtypon='1' or servtypon='4' or servtypon='5')

FYI: the bridge length in both sets of data is in meters. 6.096=20 feet.

Oppostcl="A" is open. and oppostcl='G' is 'new but not yet open'

servtypon 1, 4 or 5 are service types that include highway traffic.

You also need to ignore bridges where the "createuserkey" field has any one of these codes below. These are
indicators that the bridge is either privately owned or owned by a city or some other entity that
exempts it from being included in the national inventory. But those entities have requested MNDOT include them in their state inventory.

where createuserkey='3' or createuserkey='246' or createuserkey='242' or createuserkey='309'

Hedeen also gave me a file called "parameters" that is the code book (in Excel form). So you can filter down to the table and field you want 
and then see all the codes.


FOR THE NATIONAL BRIDGE INVENTORY:
There are usually more than 1 record for each bridge -- one for what goes on it, one for what goes under it, etc. So you need to limit to 
jsut those records with rectype="1"

This would be the query to get just the bridges that we care about:
select *
from usbridges2016
where rectype='1' and (onserve='1' or onserve='4' or onserve='5') and strcstat<>'K' and STRLNGNO>=6.096


PROJECTS:
I also asked MNDOT to supply me with data on all the construction repair/new build bridge projects between 2008 and 2017 -- the 10 years 
since the 35W bridge collapse. And they put together a dataset that didn't previously exist, but it turned out to be quite 
incomplete.For this I dealt with Amber Blanchert.

I expected that it would include all the bridges that were identified in 2008 as part of the "Chapter 152" program -- this was a legislative
mandate that required MNDOT to identify the most troubled bridges and then gave them extra money to work on them over a 10-year period.

They identifed 172 bridges and put them into tiers. Tier 1 being the most serious --those that are structurally deficient and/or fracture critical. 
Generally they were the biggest and most problematic bridges. In the end, one was removed from the list; several others were part of
other projects (like Unweave the Weave on 35E or the Crosstown Commons project) so they weren't tracked separately. And then there were a couple others
that turned out to not be highway bridges or were privately owned.

The project data I requested should've included all the Chapter 172 bridges, but I found some were not in there. And there were dozens of projects
that weren't in the 152 program. Also there were
some in there that weren't highway bridges (a few pedestrian bridges) and there were quite a few projects that involved putting in culverts
so those didn't really count. Bottom line was that it was next to impossible ot match up the projects data to the inventory data, although
I think I did a pretty good job in the end. 

Then I discovered that the fields indicating how much was spent on those projects was incomplete. There were many cases where they put
zero in the cost fields and then put a note in that said something like "municipal agreement" or "bridge costs not broken out" or "no bridge costs found."
Amber Blanchert told me that they only pulled dollar figures from their "construction database" and sometimes the payments
for the bridge work didn't run through that construction program. The municipal agreement ones might've been paid for by the city
where the bridge was located; the "costs not broken out" were cases where the bridge work was part of a bigger highway project
and they only had a grand total for all the highway work. The ones where it was "not found" are cases where the money wasn't in their construction database 
for whatever reason. So we decided to really not use this data.  Amber said she is going to be putting together final dollar figures
for the Chapter 152 bridges for the next report they need to make to the legislature in January 2018. 



