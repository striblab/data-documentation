

CREATE TABLE [dbo].[research_2014](

	[reciptype] [nvarchar](50) NULL,
	[noncoventity] [nvarchar](50) NULL,
	[hospid] [nvarchar](38) NULL,
	[hospname] [nvarchar](100) NULL,
	[physid] [nvarchar](38) NULL,
	[physfname] [nvarchar](20) NULL,
	[physmname] [nvarchar](20) NULL,
	[physlname] [nvarchar](35) NULL,
	[physsuffix] [nvarchar](5) NULL,
	[addr1] [nvarchar](55) NULL,
	[addr2] [nvarchar](55) NULL,
	[city] [nvarchar](40) NULL,
	[state] [nvarchar](2) NULL,
	[zip] [nvarchar](10) NULL,
	[country] [nvarchar](100) NULL,
	[province] [nvarchar](20) NULL,
	[postal] [nvarchar](20) NULL,
	[phystype] [nvarchar](50) NULL,
	[specialty] [nvarchar](300) NULL,
	[lic1] [nvarchar](2) NULL,
	[lic2] [nvarchar](2) NULL,
	[lic3] [nvarchar](2) NULL,
	[lic4] [nvarchar](2) NULL,
	[lic5] [nvarchar](2) NULL,
	[prin1ID] [nvarchar] (38),
[prin1Fname] [nvarchar] (20),
[prin1Mname] [nvarchar] (20),
[prin1LName] [nvarchar] (35),
[prin1Suffix] [nvarchar] (5),
[prin1Addr1] [nvarchar] (55),
[prin1Addr2] [nvarchar] (55),
[prin1City] [nvarchar] (40),
[prin1State] [nvarchar] (2),
[prin1Zip] [nvarchar] (10),
[prin1Country] [nvarchar] (100),
[prin1Province] [nvarchar] (20),
[prin1Postal] [nvarchar] (20),
[prin1Type] [nvarchar] (50),
[prin1Specialty] [nvarchar] (300),
[prin1Lic1] [nvarchar] (2),
[prin1Lic2] [nvarchar] (2),
[prin1Lic3] [nvarchar] (2),
[prin1Lic4] [nvarchar] (2),
[prin1Lic5] [nvarchar] (2),
[prin2ID] [nvarchar] (38),
[prin2Fname] [nvarchar] (20),
[prin2Mname] [nvarchar] (20),
[prin2LName] [nvarchar] (35),
[prin2Suffix] [nvarchar] (5),
[prin2Addr1] [nvarchar] (55),
[prin2Addr2] [nvarchar] (55),
[prin2City] [nvarchar] (40),
[prin2State] [nvarchar] (2),
[prin2Zip] [nvarchar] (10),
[prin2Country] [nvarchar] (100),
[prin2Province] [nvarchar] (20),
[prin2Postal] [nvarchar] (20),
[prin2Type] [nvarchar] (50),
[prin2Specialty] [nvarchar] (300),
[prin2Lic1] [nvarchar] (2),
[prin2Lic2] [nvarchar] (2),
[prin2Lic3] [nvarchar] (2),
[prin2Lic4] [nvarchar] (2),
[prin2Lic5] [nvarchar] (2),
[prin3ID] [nvarchar] (38),
[prin3Fname] [nvarchar] (20),
[prin3Mname] [nvarchar] (20),
[prin3LName] [nvarchar] (35),
[prin3Suffix] [nvarchar] (5),
[prin3Addr1] [nvarchar] (55),
[prin3Addr2] [nvarchar] (55),
[prin3City] [nvarchar] (40),
[prin3State] [nvarchar] (2),
[prin3Zip] [nvarchar] (10),
[prin3Country] [nvarchar] (100),
[prin3Province] [nvarchar] (20),
[prin3Postal] [nvarchar] (20),
[prin3Type] [nvarchar] (50),
[prin3Specialty] [nvarchar] (300),
[prin3Lic1] [nvarchar] (2),
[prin3Lic2] [nvarchar] (2),
[prin3Lic3] [nvarchar] (2),
[prin3Lic4] [nvarchar] (2),
[prin3Lic5] [nvarchar] (2),
[prin4ID] [nvarchar] (38),
[prin4Fname] [nvarchar] (20),
[prin4Mname] [nvarchar] (20),
[prin4LName] [nvarchar] (35),
[prin4Suffix] [nvarchar] (5),
[prin4Addr1] [nvarchar] (55),
[prin4Addr2] [nvarchar] (55),
[prin4City] [nvarchar] (40),
[prin4State] [nvarchar] (2),
[prin4Zip] [nvarchar] (10),
[prin4Country] [nvarchar] (100),
[prin4Province] [nvarchar] (20),
[prin4Postal] [nvarchar] (20),
[prin4Type] [nvarchar] (50),
[prin4Specialty] [nvarchar] (300),
[prin4Lic1] [nvarchar] (2),
[prin4Lic2] [nvarchar] (2),
[prin4Lic3] [nvarchar] (2),
[prin4Lic4] [nvarchar] (2),
[prin4Lic5] [nvarchar] (2),
[prin5ID] [nvarchar] (38),
[prin5Fname] [nvarchar] (20),
[prin5Mname] [nvarchar] (20),
[prin5LName] [nvarchar] (35),
[prin5Suffix] [nvarchar] (5),
[prin5Addr1] [nvarchar] (55),
[prin5Addr2] [nvarchar] (55),
[prin5City] [nvarchar] (40),
[prin5State] [nvarchar] (2),
[prin5Zip] [nvarchar] (10),
[prin5Country] [nvarchar] (100),
[prin5Province] [nvarchar] (20),
[prin5Postal] [nvarchar] (20),
[prin5Type] [nvarchar] (50),
[prin5Specialty] [nvarchar] (300),
[prin5Lic1] [nvarchar] (2),
[prin5Lic2] [nvarchar] (2),
[prin5Lic3] [nvarchar] (2),
[prin5Lic4] [nvarchar] (2),
[prin5Lic5] [nvarchar] (2),
	[mfgr] [nvarchar](100) NULL,
	[payerid] [nvarchar](38) NULL,
	[payer] [nvarchar](100) NULL,
	[payerstate] [nvarchar](2) NULL,
	[payercountry] [nvarchar](100) NULL,
	[prodindicator] [nvarchar](50) NULL,
	[assoc1] [nvarchar](100) NULL,
	[assoc2] [nvarchar](100) NULL,
	[assoc3] [nvarchar](100) NULL,
	[assoc4] [nvarchar](100) NULL,
	[assoc5] [nvarchar](100) NULL,
	[ndc1] [nvarchar](12) NULL,
	[ndc2] [nvarchar](12) NULL,
	[ndc3] [nvarchar](12) NULL,
	[ndc4] [nvarchar](12) NULL,
	[ndc5] [nvarchar](12) NULL,
	[market1] [nvarchar](100) NULL,
	[market2] [nvarchar](100) NULL,
	[market3] [nvarchar](100) NULL,
	[market4] [nvarchar](100) NULL,
	[market5] [nvarchar](100) NULL,
	[payment] [money] NULL,
	[paydate] [datetime] NULL,
	[payform] [nvarchar](100) NULL,
	[expcat1] [nvarchar](50) NULL,
	[expcat2] [nvarchar](50) NULL,
	[expcat3] [nvarchar](50) NULL,
	[expcat4] [nvarchar](50) NULL,
	[expcat5] [nvarchar](50) NULL,
	[expcat6] [nvarchar](50) NULL,
	[preclin] [nvarchar](3) NULL,
	[delay] [nvarchar](3) NULL,
	[studyname] [nvarchar](500) NULL,
	[disputestatus] [nvarchar](20) NULL,
	[tranid] [nvarchar](38) NULL,
	[progyr] [char](4) NULL,
	[pubdate] [nvarchar](12) NULL,
	[clintrialsid] [nvarchar](11) NULL,
	[reslink] [nvarchar](2083) NULL,
	[rescontext] [nvarchar](500) NULL,)
	
	
	
	
	