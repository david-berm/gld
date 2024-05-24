
/*%%=============================================================================================
	0: GLD Harmonization Preamble
================================================================================================*/

/* -----------------------------------------------------------------------

<_Program name_> 			IND_1999_EUS_V01_M_V06_A_GLD_ALL.do </_Program name_>
<_Application_>					STATA 16 <_Application_>
<_Author(s)_>					World Bank Jobs Group </_Author(s)_>
<_Date created_>				2021-03-23 </_Date created_>
<_Date modified>				2024-05-23 </_Date modified_>

-------------------------------------------------------------------------

<_Country_>						India </_Country_>
<_Survey Title_>				Employment and Unemployment Survey: NSS 55th Round : July 1999 - June 2000 </_Survey Title_>
<_Survey Year_>					1999 </_Survey Year_>
<_ICLS Version_>				Unknown (does not seem to follow ICLS-13 </_ICLS Version_>
<_Study ID_>					DDI-IND-MOSPI-NSSO-55Rnd-Sch10-and-10dot1-1999-2000 </_Study ID_>
<_Data collection from (M/Y)_>	07/1999 </_Data collection from (M/Y)_>
<_Data collection to (M/Y)_>	06/1999 </_Data collection to (M/Y)_>
<_Source of dataset_> 			http://microdata.gov.in/nada43/index.php/catalog/90 </_Source of dataset_>
<_Sample size (HH)_> 			120,578 </_Sample size (HH)_>
<_Sample size (IND)_> 			819,011 </_Sample size (IND)_>
<_Sampling method_> 			Sampling frame for first stage units:

The frame used for selection of first stage units in the rural sector was the 1991 census list of  villages for all the four sub-rounds  for 8 states/u.t.s viz. Andhra Pradesh, Assam, Kerala, Madhya Pradesh, Orissa, Uttar Pradesh, West Bengal and Chandigarh. However for Agra district of U.P. and the three districts, viz.Durg, Sagar, and Morena of M.P., samples  were drawn using 1981 census list of villages. For Jammu & Kashmir samples for all the 4 sub-rounds were drawn using the 1981 census list as the 1991 census was not conducted in the st ate. For the remaining 23 states/u.t.s, the frame was 1991 census list for sub-rounds 2 to 4 and 1981 census list for sub-round 1  as the 1991 census list was not available for use at the time of drawing the samples.
As usual, for Nagaland the list of villages within 5 kms. of the bus route and for Andaman and Nicobar Islands the list of accessible villages constituted the frame. In the case of urban sector the frame consisted of the UFS blocks  and, for some newly declared towns where these were not available, the 1991 census enumeration blocks were used.

Region formation and stratification:
States were divided into regions by grouping contiguous districts similar in respect of  population density and cropping pattern. In rural sector each district was treated a separate  stratum if the population was below 2 million and where it exceeded 2 million, it was split into two or more strata. This cut off point of population was taken as 1.8 million ( in place of  2 million ) for the purpose of stratification for districts for which the 1981 census frame wa s used. In the urban sector, strata were formed, within each NSS region on the basis of population size class of towns. However for towns with population of 4 lakhs or more the urban blocks were divided into two classes  viz. one consisting of blocks inhabited by affluent section of the population and the other consisting of the remaining blocks.

Selection of first stage units :

Selection of sample villages was done circular systematically with probability proportional to population and sample blocks circular system-atically with equal probability. Both the sample villages and the sample blocks were selected in the form of two or more independent sub-samples. In Arunachal Pradesh the procedure of cluster sampling has been followed. Further large villages/blocks having present population of 1200 or more were divided into a suitable number of hamlet- groups/ sub-blocks having equal population content. Two hamlet- groups were selected from the
larger villages while one sub-block was selected in urban sector for larger blocks.

Selection of households :

While listing the households in the selected villages, certain relatively affluent households were identified and considered as second stage stratum 1 and the rest as second stage stratum 2.
A total of 10 households were surveyed from the selected village/hamlet-groups, 2 from the fi rst category and remaining from the second.
Further in the second stage stratum-2, the households were arranged according to the means of livelihood. The means of livelihood were identified on the basis of the major source of income as  i) self-employed in non-agricultu re, ii) rural labour and iii) others. The land possessed by the households was also ascertained and the frame for selection was arranged on the basis of this information.
The households  were selected circular systematically from both the second stage strata.

In the urban blocks a different method  was used for arranging the households for selection. This involved the identification means of livelihood of households as any one of a) self-employed, b)regular salaried/wage earnings, c) casual labour, d) others. Further the average household monthly per capita consumer expenditure (mpce) was also ascertained. All households with MPCE of (i) Rs. 1200/- or more (in towns with population less than 10 lakhs or (ii) Rs. 1500/- or more (in towns with population 10 lakh or more) formed second-stage stratum 1 and the rest, second-stage stratum 2.The households of second-stage stratum 2 were arranged according to means of livelihood class and MPCE ranges before selection of sample households. A total of 10 households were selected from each sample block as follows

(i)  For affluent strata/classes : 4 households from second- stage stratum 1 and 6 households from second-stage stratum 2
(ii) For other strata/classes :     2 households from second-stage  stratum 1 and 8 from second-stage stratum 2.
Households were then selected  circular systematically w ith a random start.
											</_Sampling method_>
<_Geographic coverage_> 		State Level </_Geographic coverage_>
<_Currency_> 					Indian Rupee </_Currency_>
-----------------------------------------------------------------------

<_ICLS Version_>			ICLS 13 </_ICLS Version_>
<_ISCED Version_>			ISCED 1997 </_ISCED Version_>
<_ISCO Version_>			ISCO 1968 </_ISCO Version_>
<_OCCUP National_>			NCO 1968 </_OCCUP National_>
<_ISIC Version_>			ISIC 3 </_ISIC Version_>
<_INDUS National_>			NIC 1998 </_INDUS National_>

-----------------------------------------------------------------------

<_Version Control_>

* Date: 2022-07-11 File: IND_1999_EUS_V01_M_V02_A_GLD.do
	Changes to more accurately define what is a first jobs and a second job in 12 month recall.
	Done corretly for lstatus and empstat but other variables were not capturing this concept
	accurately. Were sometimes using the subsidiary info wholesale, especially not using contract
	or social security benefits (e.g., not using Social Security 2 for both first and second jobs.)
	Change subnatid1 to string, improve subnatidsurvey
* Date: 2024-01-05 - Update vars subnatid2, subnatid3
* Date: 2024-02-07 - Update vars subnatid2, subnatid3
* Date: 2024-04-17 - Update vars subnatid1
* Date: 2024-05-23 - Update ID creation to link block 4 and block 5 data, limit to only single visits
</_Version Control_>

-------------------------------------------------------------------------*/


/*%%=============================================================================================
	1: Setting up of program environment, dataset
================================================================================================*/

*----------1.1: Initial commands------------------------------*

clear
set more off
set mem 800m

*----------1.2: Set directories------------------------------*

* Define path sections
local server  "Y:/GLD-Harmonization/510859_AS"
local country "IND"
local year    "1999"
local survey  "EUS"
local vermast "V01"
local veralt "V06"

* From the definitions, set path chunks
local level_1      "`country'_`year'_`survey'"
local level_2_mast "`level_1'_`vermast'_M"
local level_2_harm "`level_1'_`vermast'_M_`veralt'_A_GLD"

* From chunks, define path_in, path_output folder
local path_in_stata "`server'/`country'/`level_1'/`level_2_mast'/Data/Stata"
local path_in_other "`server'/`country'/`level_1'/`level_2_mast'/Data/Original"
local path_output   "`server'/`country'/`level_1'/`level_2_harm'/Data/Harmonized"

* Define Output file name
local out_file "`level_2_harm'_ALL.dta"

*----------1.3: Database assembly------------------------------*

* Start with Block 5.3 as this has several lines per individual
	use "`path_in_stata'\Block53-sch10-Persons-daily-activity-time-disposition-Records.dta", clear

	********************************************************************************
	********************************************************************************
	* Sorting procedure

	/*==============================================================================
	Current weekly activity is selected based on this order:
		1. Equal to current weekly activity variable
		2. Activity status classification (see below)
		3. Number of days worked in a week
		4. If number of days are equal between two employment activities, the status
		code that is smaller in value is taken as the CWA (e.g., activites 11 and 51
		are worked for 3.5 days each; activity 11 will be the CWA because it is smaller
		in value than 51.

		Rule #1 is added because otherwise, CWA will not be entirely equal to activity status 1
	==============================================================================*/


	/* Need to classify activity status into the following:

		a. Working status
		b. Non-working status but seeking employment
		c. Neither working nor available for work

	*/


	drop if missing(B53_q4)

	gen first = 1 if B53_q4 == B53_q20
	replace first = 2 if B53_q4 != B53_q20

	destring B53_q4, gen(priority_tag)
	gen num_status = priority_tag
	* Classify the level of priority
	recode priority_tag 11/72=1 81 82=2 91/98=3 99=.

	* Decreasing order of number of days worked
	bys Key_PRSN: egen totdays = sum(B53_q14)
	sum totdays
	local max = r(max)
	assert `max' == 7

	gen neg_days = -(B53_q14)


	* Generate idp
	gen idp = Key_PRSN

	* Activity status should be unique per activity
	duplicates drop idp B53_q4, force

	* Sorting
	sort idp first priority_tag neg_days num_status
	bys idp: gen runner = _n

	* How many cases wherein this priority order is not followed
	count if B53_q4! =  B53_q20 & runner==1

	********************************************************************************
	********************************************************************************
	keep runner B53_q4 B53_q5 B53_q14 B53_q17 B53_q18 B53_q20 B53_q21  B53_q22 Key_Hhold Key_PRSN State Stratum District fsu_no seg_no Stg2_stratm Hhold_Slno
	reshape wide B53_q4 B53_q5 B53_q14 B53_q17 B53_q18 B53_q22, i(Key_PRSN State Stratum District fsu_no seg_no Stg2_stratm Hhold_Slno) j(runner)

	drop B53_q222  B53_q223 B53_q224
	rename B53_q221 B53_q22

	* Check whether activities correctly coded in order - there should not be a third activity if
	* there is no second activity.
	count if missing(B53_q41) & !missing(B53_q42)
	count if missing(B53_q42) & !missing(B53_q43)
	count if missing(B53_q43) & !missing(B53_q44)

	gen ID = Key_PRSN

	tempfile weekly_act
	save `weekly_act'


	* Continue with block 6 since it has 9455 observations but 9433 unique ones. There are 22 perfect pairs.
	use "`path_in_stata'\Block6-sch10-persons-unemployed-7daysweek-Records.dta", clear
	rename Key_Hhold_slno Key_Hhold
	rename Key_Prsn_slno Key_PRSN
	capture which dups
	if _rc != 0 ssc install dups
	dups
	dups, drop key(Key_PRSN)
	drop _expand

	gen ID = Key_PRSN

	tempfile weekly_unemp
	save `weekly_unemp'

	* Next is Block 5.2 which lists secondary activties. 24.034 individuals have a secondary
	* activity, 2.173 of them have two.
	use "`path_in_stata'\Block52-sch10-Persons-subsidiary-activity-Records.dta", clear
	destring B52_q17, replace
	keep B52_q2 B52_q3 B52_q5 B52_q6 B52_q7 B52_q8 B52_q9 B52_q10 B52_q11 B52_q12 B52_q13 B52_q14 B52_q15 B52_q16 Key_Hhold Key_prsn B52_q17
	reshape wide B52_q3 B52_q5 B52_q6 B52_q7 B52_q8 B52_q9 B52_q10 B52_q11 B52_q12 B52_q13 B52_q14 B52_q15 B52_q16, i(Key_prsn) j(B52_q17)
	gen ID = Key_prsn

	tempfile subsidiary_act
	save `subsidiary_act'

	* Start process with individual block 4
	use "`path_in_stata'\Block4-sch10-persons-demographic-migration-records.dta", clear

	replace Sub_sample = "3" if Sub_sample == "1" & State=="32" & Stratum == "10" & sub_round == "2"
	replace Sub_sample = "4" if Sub_sample == "2" & State=="32" & Stratum == "10" & sub_round == "2"
	replace Sub_sample = "7" if Sub_sample == "5" & State=="32" & Stratum == "10" & sub_round == "4"
	replace Sub_sample = "8" if Sub_sample == "6" & State=="32" & Stratum == "10" & sub_round == "4"
	
	gen hhold_help = Hhold_Slno
	replace hhold_help = "02" if inlist(hhold_help, "06", "22") &  State=="32" & Stratum == "10" & inlist(sub_round, "2", "4")
	replace hhold_help = "04" if inlist(hhold_help, "08", "24") &  State=="32" & Stratum == "10"  & inlist(sub_round, "2", "4")
	replace hhold_help = "06" if hhold_help== "26" &  State=="32" & Stratum == "10" & inlist(sub_round, "2", "4")
	replace hhold_help = "08" if hhold_help== "28" &  State=="32" & Stratum == "10" & inlist(sub_round, "2", "4")
	replace hhold_help = "10" if hhold_help== "30" &  State=="32" & Stratum == "10" & inlist(sub_round, "2", "4")
	replace hhold_help = "12" if hhold_help== "32" &  State=="32" & Stratum == "10" & inlist(sub_round, "2", "4")
	replace hhold_help = "14" if hhold_help== "34" &  State=="32" & Stratum == "10" & inlist(sub_round, "2", "4")
	replace hhold_help = "16" if hhold_help== "36" &  State=="32" & Stratum == "10" & inlist(sub_round, "2", "4")
	replace hhold_help = "18" if hhold_help== "38" &  State=="32" & Stratum == "10" & inlist(sub_round, "2", "4")
	replace hhold_help = "20" if hhold_help== "40" &  State=="32" & Stratum == "10" & inlist(sub_round, "2", "4")



	gen ID = sub_round + Sub_sample + fsu_no + visit_no + seg_no + Stg2_stratm + hhold_help + Prsn_Slno_B4_q1

	* Merge block 4 with 7 day time spent info
	merge 1:1 ID using `weekly_act', keep(match master) nogen

	* Merge with Block 5.1 -
	* Same issue with merge errors in Lakshadweep.
	gen Key_prsn = key_prsn
	merge 1:1 Key_prsn using "`path_in_stata'\Block51-sch10-Persons-usual-principal-activity-Records.dta", keep(match master) nogen

	* Merge with Block 5.2 (which has more than one entry per
	* individual, so treated earlier and saved as
	* `subsidiary_act'
	* Note that 52 don't match, all from Lakshadweep
	merge 1:1 ID using `subsidiary_act', keep(master match) nogen

	* Merge with Block 6
	* Note that 29 don't match, all from Lakshadweep
	merge 1:1 ID using `weekly_unemp', keep(master match) nogen

	* Merge with Block 7.1
	* Note that 354 don't match, all from Lakshadweep
	drop Key_* key_*
	gen Key_prsn_slno = ID
	merge 1:1 Key_prsn_slno using "`path_in_stata'\Block71-sch10-Persons-availability-for-work-Records.dta", keep(master match) nogen

	* Merge with Block 7.2
	* Note that 354 don't match, all from Lakshadweep
	gen Key_Prsn_slno = ID
	merge 1:1 Key_Prsn_slno using "`path_in_stata'\Block72-sch10-Persons-change-of-work-Records.dta", keep(master match) nogen

* This leads to a sample size of 819,011, while the published
* data has 819,013. In addition, estimated total population is
* 920,989,477 instead of the published 920,987,900,
* Cannot get how this difference arose. Since published data is
* rounded to the nearest hundred, the error is at most 1577
* people in an estimate of nearly a billion. Caveat yet proceed.


* Have no duplicates at this point
duplicates report Key_prsn_slno
assert `r(unique_value)' == `r(N)'

* Adding in Block 3
egen hid2= concat(sub_round Sub_sample fsu_no visit_no seg_no Stg2_stratm Hhold_Slno)

preserve
use "Y:\GLD-Harmonization\510859_AS\IND\IND_1999_EUS\IND_1999_EUS_V01_M\Data\Stata\Block3-sch10--Household-Characteristics-records.dta", clear	
	replace Sub_sample = "3" if Sub_sample == "1" & State=="32" & Stratum == "10" & Sub_round == "2"
	replace Sub_sample = "4" if Sub_sample == "2" & State=="32" & Stratum == "10" & Sub_round == "2"
	replace Sub_sample = "7" if Sub_sample == "5" & State=="32" & Stratum == "10" & Sub_round == "4"
	replace Sub_sample = "8" if Sub_sample == "6" & State=="32" & Stratum == "10" & Sub_round == "4"
	
	gen f2 = Sub_round + Sub_sample
	
	replace f2 = "35" if  State=="32" & Stratum == "10" & f2 == "47"	
		
	replace f2 = "36" if  State=="32" & Stratum == "10" & f2 == "48"
		
	
	gen hhold_help = Hhhold_Slno
	/*
	replace hhold_help = "02" if inlist(hhold_help, "06", "22") &  State=="32" & Stratum == "10" & inlist(Sub_round, "2", "4")
	replace hhold_help = "04" if inlist(hhold_help, "08", "24") &  State=="32" & Stratum == "10"  & inlist(Sub_round, "2", "4")
	replace hhold_help = "06" if hhold_help== "26" &  State=="32" & Stratum == "10" & inlist(Sub_round, "2", "4")
	replace hhold_help = "08" if hhold_help== "28" &  State=="32" & Stratum == "10" & inlist(Sub_round, "2", "4")
	replace hhold_help = "10" if hhold_help== "30" &  State=="32" & Stratum == "10" & inlist(Sub_round, "2", "4")
	replace hhold_help = "12" if hhold_help== "32" &  State=="32" & Stratum == "10" & inlist(Sub_round, "2", "4")
	replace hhold_help = "14" if hhold_help== "34" &  State=="32" & Stratum == "10" & inlist(Sub_round, "2", "4")
	replace hhold_help = "16" if hhold_help== "36" &  State=="32" & Stratum == "10" & inlist(Sub_round, "2", "4")
	replace hhold_help = "18" if hhold_help== "38" &  State=="32" & Stratum == "10" & inlist(Sub_round, "2", "4")
	replace hhold_help = "20" if hhold_help== "40" &  State=="32" & Stratum == "10" & inlist(Sub_round, "2", "4")
	*/
	egen hid2 = concat(f2 fsu_no Visit_no Seg_no Stg2_stratm hhold_help)
	tempfile hhdata
	save `hhdata'
restore

merge m:1 hid2 using `hhdata'

* Causes a single duplicate, 95 repeats
count
local pre `r(N)'
duplicates drop Key_prsn_slno, force 
count 
assert `pre' == `r(N)' + 95

* Still have 603 observations (96 HHlds) that do not exist in Block 3 (drop?)


* One line with missing person ID, no info, drop.
count
local pre `r(N)'
drop if mi( Key_Prsn_slno)
count 
assert `pre' == `r(N)' + 1

* Rename variables different because we are using schedule 10 and not the combined
* Schedule 10 and 10.1
rename Prsn_Slno_B4_q1 B4_q1

/*%%=============================================================================================
	2: Survey & ID
================================================================================================*/

{

*<_countrycode_>
	gen str4 countrycode="IND"
	label var countrycode "Country code"
*</_countrycode_>


*<_survname_>
	gen survname = "EUS"
	label var survname "Survey acronym"
*</_survname_>


*<_survey_>
	gen survey = "LFS"
	label var survey "Survey type"
*</_survey_>


*<_icls_v_>
	gen icls_v = "ICLS-13"
	label var icls_v "ICLS version underlying questionnaire questions"
*</_icls_v_>


*<_isced_version_>
	gen isced_version = "isced_1997"
	label var isced_version "Version of ISCED used for educat_isced"
*</_isced_version_>


*<_isco_version_>
	gen isco_version = "isco_1988"
	label var isco_version "Version of ISCO used"
*</_isco_version_>


*<_isic_version_>
	gen isic_version = "isic_3"
	label var isic_version "Version of ISIC used"
*</_isic_version_>


*<_year_>
	gen int year = 1999
	label var year "Year of the start of the survey"
*</_year_>


*<_vermast_>
	gen vermast = "`vermast'"
	label var vermast "Version of master data"
*</_vermast_>


*<_veralt_>
	gen veralt = "`veralt'"
	label var veralt "Version of the alt/harmonized data"
*</_veralt_>


*<_harmonization_>
	gen harmonization = "GLD"
	label var harmonization "Type of harmonization"
*</_harmonization_>


*<_int_year_>
	gen int_year=.
	replace int_year = 1999 if inlist(sub_round,"1","2")
	replace int_year = 2000 if inlist(sub_round,"3","4")
	label var int_year "Year of the interview"
*</_int_year_>


*<_int_month_>
	gen  int_month = .
	label de lblint_month 1 "January" 2 "February" 3 "March" 4 "April" 5 "May" 6 "June" 7 "July" 8 "August" 9 "September" 10 "October" 11 "November" 12 "December"
	label value int_month lblint_month
	label var int_month "Month of the interview"
*</_int_month_>

*<_hhid_>
	egen hhid= concat(fsu_no visit_no seg_no Stg2_stratm Hhold_Slno)
	label var hhid "Household ID"
*</_hhid_>


*<_pid_>
	*gen id_helper = substr(Key_prsn,-3,3)
	*egen  str11 pid = concat(hhid id_helper)
	gen pid = Key_prsn_slno
	label var pid "Individual ID"
	isid pid
*</_pid_>


*<_weight_>
/* <_weight_note>

	To get the yearly weight we reduce the quarterly weight by their share 
	in the sample

</_weight_note> */
	gen wh_counter = 1
	bys sub_round : egen wh_total_subround = total(wh_counter)
	egen wh_total_allround = total(wh_counter)
	gen wh_rel_wgt = wh_total_subround / wh_total_allround
	
	gen weight = Wgt_SR_Comb * wh_rel_wgt
	label var weight "Household sampling weight"
	drop wh_*
*</_weight_>


*<_weight_m_>
	gen weight_m = .
	label var weight_m "Survey sampling weight to obtain national estimates for each month"
*</_weight_m_>


*<_weight_q_>
	gen weight_q = Wgt_SR_Comb
	label var weight_q "Survey sampling weight to obtain national estimates for each quarter"
*</_weight_q_>


*<_psu_>
	gen psu = fsu_no
	label var psu "Primary sampling units"
*</_psu_>


*<_strata_>
	gen strata = Stratum
	label var strata "Strata"
*</_strata_>

*<_wave_>
	gen wave = sub_round
	label var wave "Survey wave"
*</_wave_>

*<_panel_>
	gen str panel = ""
	label var panel "Panel individual belongs to"
*</_panel_>

*<_visit_no_>
	drop visit_no
	gen visit_no = .
	label var visit_no "Visit number in panel"
*</_visit_no_>

}

/*%%=============================================================================================
	3: Geography
================================================================================================*/

{

*<_urban_>
	destring Sector, gen(urban)
	recode urban (1 = 0) (2 = 1)
	label var urban "Location is urban"
	la de lblurban 1 "Urban" 0 "Rural"
	label values urban lblurban
*</_urban_>

*<_subnatid1_>
	destring State, gen(subnatid1)
	label de lblsubnatid1 2 "2 - Andhra Pradesh" 3 "3 - Arunachal Pradesh" 4 "4 - Assam" 5 "5 - Bihar" 6 "6 - Goa" 7 "7 - Gujarat" 8 "8 - Haryana" 9 "9 - Himachal Pradesh" 10 "10 - Jammu & Kashmir" 11 "11 - Karnataka" 12 "12 - Kerala" 13 "13 - Madhya Pradesh" 14 "14 - Maharashtra" 15 "15 - Manipur" 16 "16 - Meghalaya" 17 "17 - Mizoram" 18 "18 - Nagaland" 19 "19 - Orissa" 20 "20 - Punjab" 21 "21 - Rajasthan" 22 "22 - Sikkim" 23 "23 - Tamil Nadu" 24 "24 - Tripura" 25 "25 - Uttar Pradesh" 26 "26 - West Bengal" 27 "27 - A & N Islands" 28 "28 - Chandigarh" 29 "29 - Dadra & Nagar Haveli" 30 "30 - Daman & Diu" 31 "31 - Delhi" 32 "32 - Lakshadweep" 33 "33 - Pondicherry"
	label values subnatid1 lblsubnatid1
	* Convert numeric into string
	decode subnatid1, gen(subnatid1_str)
	rename subnatid1 subnatid1_num
	rename subnatid1_str subnatid1
	label var subnatid1 "Subnational ID at First Administrative Level"
	* Create correspondence table for migrated_from_code
	preserve
	collapse (first) state_name=subnatid1, by(subnatid1_num)
	rename subnatid1_num migrated_from_code
	tempfile state_name_correspondence
	save `state_name_correspondence'
	restore
*</_subnatid1_>


*<_subnatid2_>
	egen subnatid2 = concat(State District), punct(-)
	label var subnatid2 "Admin 2 - District"
	replace subnatid2 = "27-01 - Andaman" if subnatid2 == "27-01"
	replace subnatid2 = "27-02 - Nicobar" if subnatid2 == "27-02"
	replace subnatid2 = "02-01 - Srikakulam" if subnatid2 == "02-01"
	replace subnatid2 = "02-02 - Vizianagaram" if subnatid2 == "02-02"
	replace subnatid2 = "02-03 - Vishakhapatnam" if subnatid2 == "02-03"
	replace subnatid2 = "02-04 - East Godavari" if subnatid2 == "02-04"
	replace subnatid2 = "02-05 - West Godawari" if subnatid2 == "02-05"
	replace subnatid2 = "02-06 - Krishna" if subnatid2 == "02-06"
	replace subnatid2 = "02-07 - Guntur" if subnatid2 == "02-07"
	replace subnatid2 = "02-08 - Prakasam" if subnatid2 == "02-08"
	replace subnatid2 = "02-09 - Nellore" if subnatid2 == "02-09"
	replace subnatid2 = "02-14 - Mahbubnagar" if subnatid2 == "02-14"
	replace subnatid2 = "02-15 - Rangareddy" if subnatid2 == "02-15"
	replace subnatid2 = "02-16 - Hyderabad" if subnatid2 == "02-16"
	replace subnatid2 = "02-17 - Medak" if subnatid2 == "02-17"
	replace subnatid2 = "02-18 - Nizamabad" if subnatid2 == "02-18"
	replace subnatid2 = "02-19 - Adilabad" if subnatid2 == "02-19"
	replace subnatid2 = "02-20 - Karimnagar" if subnatid2 == "02-20"
	replace subnatid2 = "02-21 - Warangal" if subnatid2 == "02-21"
	replace subnatid2 = "02-22 - Khammam" if subnatid2 == "02-22"
	replace subnatid2 = "02-23 - Nalgonda" if subnatid2 == "02-23"
	replace subnatid2 = "02-10 - Chittoor" if subnatid2 == "02-10"
	replace subnatid2 = "02-11 - Cuddapah" if subnatid2 == "02-11"
	replace subnatid2 = "02-12 - Anantpur" if subnatid2 == "02-12"
	replace subnatid2 = "02-13 - Kurnool" if subnatid2 == "02-13"
	replace subnatid2 = "03-01 - Tawang" if subnatid2 == "03-01"
	replace subnatid2 = "03-02 - West Kameng" if subnatid2 == "03-02"
	replace subnatid2 = "03-03 - East Kameng" if subnatid2 == "03-03"
	replace subnatid2 = "03-04 - Lower Subansiri" if subnatid2 == "03-04"
	replace subnatid2 = "03-05 - Upper Subansiri" if subnatid2 == "03-05"
	replace subnatid2 = "03-06 - West Siang" if subnatid2 == "03-06"
	replace subnatid2 = "03-07 - East Siang" if subnatid2 == "03-07"
	replace subnatid2 = "03-08 - Dibang" if subnatid2 == "03-08"
	replace subnatid2 = "03-09 - Lohit" if subnatid2 == "03-09"
	replace subnatid2 = "03-10 - Tirap" if subnatid2 == "03-10"
	replace subnatid2 = "03-11 - Changlong" if subnatid2 == "03-11"
	replace subnatid2 = "04-02 - Kokrajhar" if subnatid2 == "04-02"
	replace subnatid2 = "04-19 - Karbiaglong" if subnatid2 == "04-19"
	replace subnatid2 = "04-20 - North Cachar" if subnatid2 == "04-20"
	replace subnatid2 = "04-03 - Bongaigaon" if subnatid2 == "04-03"
	replace subnatid2 = "04-05 - Barpeta" if subnatid2 == "04-05"
	replace subnatid2 = "04-06 - Nalbari" if subnatid2 == "04-06"
	replace subnatid2 = "04-09 - Sonitpur" if subnatid2 == "04-09"
	replace subnatid2 = "04-10 - Lakhimpur" if subnatid2 == "04-10"
	replace subnatid2 = "04-12 - Morigaon" if subnatid2 == "04-12"
	replace subnatid2 = "04-16 - Sibsagar" if subnatid2 == "04-16"
	replace subnatid2 = "04-17 - Dibrugarh" if subnatid2 == "04-17"
	replace subnatid2 = "04-18 - Tinsukia" if subnatid2 == "04-18"
	replace subnatid2 = "04-23 - Cachar" if subnatid2 == "04-23"
	replace subnatid2 = "04-01 - Dhubri" if subnatid2 == "04-01"
	replace subnatid2 = "04-04 - Goalpara" if subnatid2 == "04-04"
	replace subnatid2 = "04-07 - Kamrup" if subnatid2 == "04-07"
	replace subnatid2 = "04-08 - Darrang" if subnatid2 == "04-08"
	replace subnatid2 = "04-11 - Dhemaji" if subnatid2 == "04-11"
	replace subnatid2 = "04-13 - Nowgong" if subnatid2 == "04-13"
	replace subnatid2 = "04-14 - Golaghat" if subnatid2 == "04-14"
	replace subnatid2 = "04-15 - Jorhat" if subnatid2 == "04-15"
	replace subnatid2 = "04-21 - Karimgang" if subnatid2 == "04-21"
	replace subnatid2 = "04-22 - Hailakandi" if subnatid2 == "04-22"
	replace subnatid2 = "05-01 - Patna" if subnatid2 == "05-01"
	replace subnatid2 = "05-02 - Nalanda" if subnatid2 == "05-02"
	replace subnatid2 = "05-03 - Bhojpur" if subnatid2 == "05-03"
	replace subnatid2 = "05-04 - Rohtas" if subnatid2 == "05-04"
	replace subnatid2 = "05-05 - Aurangabad" if subnatid2 == "05-05"
	replace subnatid2 = "05-06 - Jehanabad" if subnatid2 == "05-06"
	replace subnatid2 = "05-07 - Gaya" if subnatid2 == "05-07"
	replace subnatid2 = "05-08 - Nawada" if subnatid2 == "05-08"
	replace subnatid2 = "05-17 - Begusarai" if subnatid2 == "05-17"
	replace subnatid2 = "05-25 - Khagaria" if subnatid2 == "05-25"
	replace subnatid2 = "05-26 - Munger" if subnatid2 == "05-26"
	replace subnatid2 = "05-27 - Bhagalpur" if subnatid2 == "05-27"
	replace subnatid2 = "05-43 - Buxar" if subnatid2 == "05-43"
	replace subnatid2 = "05-44 - Bhabua" if subnatid2 == "05-44"
	replace subnatid2 = "05-46 - Jamui" if subnatid2 == "05-46"
	replace subnatid2 = "05-47 - Banka" if subnatid2 == "05-47"
	replace subnatid2 = "05-09 - Saran" if subnatid2 == "05-09"
	replace subnatid2 = "05-10 - Siwan" if subnatid2 == "05-10"
	replace subnatid2 = "05-11 - Gopalganj" if subnatid2 == "05-11"
	replace subnatid2 = "05-12 - West Champaran" if subnatid2 == "05-12"
	replace subnatid2 = "05-13 - East Champaran" if subnatid2 == "05-13"
	replace subnatid2 = "05-14 - Sitamari" if subnatid2 == "05-14"
	replace subnatid2 = "05-15 - Muzaffarpur" if subnatid2 == "05-15"
	replace subnatid2 = "05-16 - Vaishali" if subnatid2 == "05-16"
	replace subnatid2 = "05-18 - Samastipur" if subnatid2 == "05-18"
	replace subnatid2 = "05-19 - Darbhanga" if subnatid2 == "05-19"
	replace subnatid2 = "05-20 - Madhubani" if subnatid2 == "05-20"
	replace subnatid2 = "05-21 - Saharsa" if subnatid2 == "05-21"
	replace subnatid2 = "05-22 - Madhepura" if subnatid2 == "05-22"
	replace subnatid2 = "05-23 - Purnea" if subnatid2 == "05-23"
	replace subnatid2 = "05-24 - Katihar" if subnatid2 == "05-24"
	replace subnatid2 = "05-41 - Araria" if subnatid2 == "05-41"
	replace subnatid2 = "05-42 - Kishanganj" if subnatid2 == "05-42"
	replace subnatid2 = "05-45 - Supaul" if subnatid2 == "05-45"
	replace subnatid2 = "05-28 - Godda" if subnatid2 == "05-28"
	replace subnatid2 = "05-29 - Sahibaganj" if subnatid2 == "05-29"
	replace subnatid2 = "05-30 - Dumka" if subnatid2 == "05-30"
	replace subnatid2 = "05-31 - Deoghar" if subnatid2 == "05-31"
	replace subnatid2 = "05-32 - Dhanbad" if subnatid2 == "05-32"
	replace subnatid2 = "05-33 - Giridih" if subnatid2 == "05-33"
	replace subnatid2 = "05-34 - Hazaribagh" if subnatid2 == "05-34"
	replace subnatid2 = "05-35 - Palamu" if subnatid2 == "05-35"
	replace subnatid2 = "05-36 - Lohardaga" if subnatid2 == "05-36"
	replace subnatid2 = "05-37 - Gumla" if subnatid2 == "05-37"
	replace subnatid2 = "05-38 - Ranchi" if subnatid2 == "05-38"
	replace subnatid2 = "05-39 - Purbi Singhbhum" if subnatid2 == "05-39"
	replace subnatid2 = "05-40 - Paschim Singhbhum" if subnatid2 == "05-40"
	replace subnatid2 = "05-48 - Pakur" if subnatid2 == "05-48"
	replace subnatid2 = "05-49 - Bokaro" if subnatid2 == "05-49"
	replace subnatid2 = "05-50 - Kodarma" if subnatid2 == "05-50"
	replace subnatid2 = "05-51 - Chatra" if subnatid2 == "05-51"
	replace subnatid2 = "05-52 - Garhwa" if subnatid2 == "05-52"
	replace subnatid2 = "06-01 - North" if subnatid2 == "06-01"
	replace subnatid2 = "06-02 - South" if subnatid2 == "06-02"
	replace subnatid2 = "07-03 - Surendranagar" if subnatid2 == "07-03"
	replace subnatid2 = "07-07 - Kachchh" if subnatid2 == "07-07"
	replace subnatid2 = "07-08 - Bans Kantha" if subnatid2 == "07-08"
	replace subnatid2 = "07-10 - Mahesana" if subnatid2 == "07-10"
	replace subnatid2 = "07-09 - Sabar Kantha" if subnatid2 == "07-09"
	replace subnatid2 = "07-14 - Panch Mahals" if subnatid2 == "07-14"
	replace subnatid2 = "07-15 - Vadodara" if subnatid2 == "07-15"
	replace subnatid2 = "07-16 - Bharuch" if subnatid2 == "07-16"
	replace subnatid2 = "07-17 - Surat" if subnatid2 == "07-17"
	replace subnatid2 = "07-18 - Valsad" if subnatid2 == "07-18"
	replace subnatid2 = "07-19 - The Dangs" if subnatid2 == "07-19"
	replace subnatid2 = "07-11 - Gandhinagar" if subnatid2 == "07-11"
	replace subnatid2 = "07-12 - Ahmedabad" if subnatid2 == "07-12"
	replace subnatid2 = "07-13 - Kheda" if subnatid2 == "07-13"
	replace subnatid2 = "07-01 - Jamnagar" if subnatid2 == "07-01"
	replace subnatid2 = "07-02 - Rajkot" if subnatid2 == "07-02"
	replace subnatid2 = "07-04 - Bhavnagar" if subnatid2 == "07-04"
	replace subnatid2 = "07-05 - Amreli" if subnatid2 == "07-05"
	replace subnatid2 = "07-06 - Junagadh" if subnatid2 == "07-06"
	replace subnatid2 = "08-01 - Ambala" if subnatid2 == "08-01"
	replace subnatid2 = "08-02 - Yamuna Nagar" if subnatid2 == "08-02"
	replace subnatid2 = "08-03 - Kurukshetra" if subnatid2 == "08-03"
	replace subnatid2 = "08-04 - Kaithal" if subnatid2 == "08-04"
	replace subnatid2 = "08-05 - Karnal" if subnatid2 == "08-05"
	replace subnatid2 = "08-06 - Panipat" if subnatid2 == "08-06"
	replace subnatid2 = "08-07 - Sonipat" if subnatid2 == "08-07"
	replace subnatid2 = "08-08 - Rohtak" if subnatid2 == "08-08"
	replace subnatid2 = "08-09 - Faridabad" if subnatid2 == "08-09"
	replace subnatid2 = "08-10 - Gurgaon" if subnatid2 == "08-10"
	replace subnatid2 = "08-11 - Rewari" if subnatid2 == "08-11"
	replace subnatid2 = "08-12 - Mahendragarh" if subnatid2 == "08-12"
	replace subnatid2 = "08-13 - Bhilwani" if subnatid2 == "08-13"
	replace subnatid2 = "08-14 - Jind" if subnatid2 == "08-14"
	replace subnatid2 = "08-15 - Hisar" if subnatid2 == "08-15"
	replace subnatid2 = "08-16 - Sirsa" if subnatid2 == "08-16"
	replace subnatid2 = "09-01 - Chamba" if subnatid2 == "09-01"
	replace subnatid2 = "09-02 - Kangra" if subnatid2 == "09-02"
	replace subnatid2 = "09-03 - Hamirpur" if subnatid2 == "09-03"
	replace subnatid2 = "09-04 - Una" if subnatid2 == "09-04"
	replace subnatid2 = "09-05 - Bilaspur" if subnatid2 == "09-05"
	replace subnatid2 = "09-06 - Mandi" if subnatid2 == "09-06"
	replace subnatid2 = "09-07 - Kullu" if subnatid2 == "09-07"
	replace subnatid2 = "09-08 - Lahul & Spiti" if subnatid2 == "09-08"
	replace subnatid2 = "09-09 - Shimla" if subnatid2 == "09-09"
	replace subnatid2 = "09-10 - Solan" if subnatid2 == "09-10"
	replace subnatid2 = "09-11 - Sirampur" if subnatid2 == "09-11"
	replace subnatid2 = "09-12 - Kinnaur" if subnatid2 == "09-12"
	replace subnatid2 = "11-09 - Dakshin Kannad" if subnatid2 == "11-09"
	replace subnatid2 = "11-20 - Uttar Kannad" if subnatid2 == "11-20"
	replace subnatid2 = "11-07 - Chikmagalur" if subnatid2 == "11-07"
	replace subnatid2 = "11-12 - Hassan" if subnatid2 == "11-12"
	replace subnatid2 = "11-13 - Kodagu" if subnatid2 == "11-13"
	replace subnatid2 = "11-18 - Shimoga" if subnatid2 == "11-18"
	replace subnatid2 = "11-03 - Belgaum" if subnatid2 == "11-03"
	replace subnatid2 = "11-04 - Bellary" if subnatid2 == "11-04"
	replace subnatid2 = "11-05 - Bidar" if subnatid2 == "11-05"
	replace subnatid2 = "11-06 - Bijapur" if subnatid2 == "11-06"
	replace subnatid2 = "11-08 - Chitradurga" if subnatid2 == "11-08"
	replace subnatid2 = "11-10 - Dharwad" if subnatid2 == "11-10"
	replace subnatid2 = "11-11 - Gulbarga" if subnatid2 == "11-11"
	replace subnatid2 = "11-17 - Raichur" if subnatid2 == "11-17"
	replace subnatid2 = "11-01 - Bangalore (Urban)" if subnatid2 == "11-01"
	replace subnatid2 = "11-02 - Bangalore (Rural)" if subnatid2 == "11-02"
	replace subnatid2 = "11-14 - Kolar" if subnatid2 == "11-14"
	replace subnatid2 = "11-15 - Mandhya" if subnatid2 == "11-15"
	replace subnatid2 = "11-16 - Mysore" if subnatid2 == "11-16"
	replace subnatid2 = "11-19 - Tumkur" if subnatid2 == "11-19"
	replace subnatid2 = "12-01 - Kasargod" if subnatid2 == "12-01"
	replace subnatid2 = "12-02 - Kannur" if subnatid2 == "12-02"
	replace subnatid2 = "12-03 - Wayanad" if subnatid2 == "12-03"
	replace subnatid2 = "12-04 - Kozhikode" if subnatid2 == "12-04"
	replace subnatid2 = "12-05 - Malapuram" if subnatid2 == "12-05"
	replace subnatid2 = "12-06 - Palakkad" if subnatid2 == "12-06"
	replace subnatid2 = "12-07 - Trichur" if subnatid2 == "12-07"
	replace subnatid2 = "12-08 - Ernakulam" if subnatid2 == "12-08"
	replace subnatid2 = "12-09 - Idukki" if subnatid2 == "12-09"
	replace subnatid2 = "12-11 - Alappuzm" if subnatid2 == "12-11"
	replace subnatid2 = "12-12 - Pathanamthitta" if subnatid2 == "12-12"
	replace subnatid2 = "12-13 - Kollam" if subnatid2 == "12-13"
	replace subnatid2 = "12-10 - Kottayam" if subnatid2 == "12-10"
	replace subnatid2 = "12-14 - Thiruvananthapuram" if subnatid2 == "12-14"
	replace subnatid2 = "32-01 - Lakshadweep" if subnatid2 == "32-01"
	replace subnatid2 = "14-01 - Greater Bombay" if subnatid2 == "14-01"
	replace subnatid2 = "14-02 - Thane" if subnatid2 == "14-02"
	replace subnatid2 = "14-03 - Raigarh (Kulaba)" if subnatid2 == "14-03"
	replace subnatid2 = "14-04 - Ratnagiri" if subnatid2 == "14-04"
	replace subnatid2 = "14-05 - Sindhudurg" if subnatid2 == "14-05"
	replace subnatid2 = "14-28 - Bhandara" if subnatid2 == "14-28"
	replace subnatid2 = "14-29 - Chandrapur" if subnatid2 == "14-29"
	replace subnatid2 = "14-30 - Gadchiroli" if subnatid2 == "14-30"
	replace subnatid2 = "14-15 - Aurangabad" if subnatid2 == "14-15"
	replace subnatid2 = "14-16 - Jalna" if subnatid2 == "14-16"
	replace subnatid2 = "14-17 - Parbhani" if subnatid2 == "14-17"
	replace subnatid2 = "14-18 - Bid" if subnatid2 == "14-18"
	replace subnatid2 = "14-19 - Nanded" if subnatid2 == "14-19"
	replace subnatid2 = "14-20 - Osmanabad" if subnatid2 == "14-20"
	replace subnatid2 = "14-21 - Latur" if subnatid2 == "14-21"
	replace subnatid2 = "14-22 - Buldana" if subnatid2 == "14-22"
	replace subnatid2 = "14-23 - Akola" if subnatid2 == "14-23"
	replace subnatid2 = "14-24 - Amravati" if subnatid2 == "14-24"
	replace subnatid2 = "14-25 - Yavatmal" if subnatid2 == "14-25"
	replace subnatid2 = "14-26 - Wardha" if subnatid2 == "14-26"
	replace subnatid2 = "14-27 - Nagpur" if subnatid2 == "14-27"
	replace subnatid2 = "14-06 - Nasik" if subnatid2 == "14-06"
	replace subnatid2 = "14-07 - Dhule" if subnatid2 == "14-07"
	replace subnatid2 = "14-08 - Jalgaon" if subnatid2 == "14-08"
	replace subnatid2 = "14-09 - Ahmadnagar" if subnatid2 == "14-09"
	replace subnatid2 = "14-10 - Pune" if subnatid2 == "14-10"
	replace subnatid2 = "14-11 - Satara" if subnatid2 == "14-11"
	replace subnatid2 = "14-12 - Sangli" if subnatid2 == "14-12"
	replace subnatid2 = "14-13 - Solapur" if subnatid2 == "14-13"
	replace subnatid2 = "14-14 - Kolhapur" if subnatid2 == "14-14"
	replace subnatid2 = "15-01 - Senapati" if subnatid2 == "15-01"
	replace subnatid2 = "15-02 - Tamenglong" if subnatid2 == "15-02"
	replace subnatid2 = "15-03 - Churachandpur" if subnatid2 == "15-03"
	replace subnatid2 = "15-04 - Chandel" if subnatid2 == "15-04"
	replace subnatid2 = "15-08 - Ukhrul" if subnatid2 == "15-08"
	replace subnatid2 = "15-05 - Thoubal" if subnatid2 == "15-05"
	replace subnatid2 = "15-06 - Bishnupur" if subnatid2 == "15-06"
	replace subnatid2 = "15-07 - Imphal" if subnatid2 == "15-07"
	replace subnatid2 = "16-01 - Jaintia Hills" if subnatid2 == "16-01"
	replace subnatid2 = "16-02 - East Khasi Hills" if subnatid2 == "16-02"
	replace subnatid2 = "16-03 - West Khasi Hills" if subnatid2 == "16-03"
	replace subnatid2 = "16-04 - East Garo Hills" if subnatid2 == "16-04"
	replace subnatid2 = "16-05 - West Garo Hills" if subnatid2 == "16-05"
	replace subnatid2 = "16-06 - Ri-bhoi" if subnatid2 == "16-06"
	replace subnatid2 = "16-07 - Bhagmara" if subnatid2 == "16-07"
	replace subnatid2 = "17-01 - Aizwal" if subnatid2 == "17-01"
	replace subnatid2 = "17-02 - Lunglei" if subnatid2 == "17-02"
	replace subnatid2 = "17-03 - Chhimtuipui" if subnatid2 == "17-03"
	replace subnatid2 = "13-10 - Sagar" if subnatid2 == "13-10"
	replace subnatid2 = "13-11 - Damoh" if subnatid2 == "13-11"
	replace subnatid2 = "13-27 - Vidisha" if subnatid2 == "13-27"
	replace subnatid2 = "13-28 - Bhopal" if subnatid2 == "13-28"
	replace subnatid2 = "13-29 - Sehore" if subnatid2 == "13-29"
	replace subnatid2 = "13-30 - Raisen" if subnatid2 == "13-30"
	replace subnatid2 = "13-39 - Surguja" if subnatid2 == "13-39"
	replace subnatid2 = "13-40 - Bilaspur" if subnatid2 == "13-40"
	replace subnatid2 = "13-41 - Raigarh" if subnatid2 == "13-41"
	replace subnatid2 = "13-42 - Raj Nandgaon" if subnatid2 == "13-42"
	replace subnatid2 = "13-43 - Durg" if subnatid2 == "13-43"
	replace subnatid2 = "13-44 - Raipur" if subnatid2 == "13-44"
	replace subnatid2 = "13-45 - Bastar" if subnatid2 == "13-45"
	replace subnatid2 = "13-16 - Mandsaur" if subnatid2 == "13-16"
	replace subnatid2 = "13-17 - Ratlam" if subnatid2 == "13-17"
	replace subnatid2 = "13-18 - Ujjain" if subnatid2 == "13-18"
	replace subnatid2 = "13-19 - Shajapur" if subnatid2 == "13-19"
	replace subnatid2 = "13-20 - Dewas" if subnatid2 == "13-20"
	replace subnatid2 = "13-21 - Jhabua" if subnatid2 == "13-21"
	replace subnatid2 = "13-22 - Dhar" if subnatid2 == "13-22"
	replace subnatid2 = "13-23 - Indore" if subnatid2 == "13-23"
	replace subnatid2 = "13-26 - Rajgarh" if subnatid2 == "13-26"
	replace subnatid2 = "13-01 - Morena" if subnatid2 == "13-01"
	replace subnatid2 = "13-02 - Bhind" if subnatid2 == "13-02"
	replace subnatid2 = "13-03 - Gwalior" if subnatid2 == "13-03"
	replace subnatid2 = "13-04 - Datia" if subnatid2 == "13-04"
	replace subnatid2 = "13-05 - Shivpuri" if subnatid2 == "13-05"
	replace subnatid2 = "13-06 - Guna" if subnatid2 == "13-06"
	replace subnatid2 = "13-33 - Jabalpur" if subnatid2 == "13-33"
	replace subnatid2 = "13-34 - Narsimhapur" if subnatid2 == "13-34"
	replace subnatid2 = "13-35 - Mandla" if subnatid2 == "13-35"
	replace subnatid2 = "13-36 - Chhindwara" if subnatid2 == "13-36"
	replace subnatid2 = "13-37 - Seoni" if subnatid2 == "13-37"
	replace subnatid2 = "13-38 - Balaghat" if subnatid2 == "13-38"
	replace subnatid2 = "13-24 - Khargone (W. Nimar)" if subnatid2 == "13-24"
	replace subnatid2 = "13-25 - Khandwa (E. Nimar)" if subnatid2 == "13-25"
	replace subnatid2 = "13-31 - Betul" if subnatid2 == "13-31"
	replace subnatid2 = "13-32 - Hoshangabad" if subnatid2 == "13-32"
	replace subnatid2 = "13-07 - Tikamgarh" if subnatid2 == "13-07"
	replace subnatid2 = "13-08 - Chhatarpur" if subnatid2 == "13-08"
	replace subnatid2 = "13-09 - Panna" if subnatid2 == "13-09"
	replace subnatid2 = "13-12 - Satna" if subnatid2 == "13-12"
	replace subnatid2 = "13-13 - Rewa" if subnatid2 == "13-13"
	replace subnatid2 = "13-14 - Shadol" if subnatid2 == "13-14"
	replace subnatid2 = "13-15 - Sidhi" if subnatid2 == "13-15"
	replace subnatid2 = "18-01 - Kohima" if subnatid2 == "18-01"
	replace subnatid2 = "18-02 - Phek" if subnatid2 == "18-02"
	replace subnatid2 = "18-03 - Zunhehoto" if subnatid2 == "18-03"
	replace subnatid2 = "18-04 - Wokha" if subnatid2 == "18-04"
	replace subnatid2 = "18-05 - Mukokchung" if subnatid2 == "18-05"
	replace subnatid2 = "18-06 - Tuensang" if subnatid2 == "18-06"
	replace subnatid2 = "18-07 - Mon" if subnatid2 == "18-07"
	replace subnatid2 = "19-05 - Baleshwar" if subnatid2 == "19-05"
	replace subnatid2 = "19-06 - Cuttack" if subnatid2 == "19-06"
	replace subnatid2 = "19-12 - Ganjam" if subnatid2 == "19-12"
	replace subnatid2 = "19-13 - Puri" if subnatid2 == "19-13"
	replace subnatid2 = "19-14 - Bhadrak" if subnatid2 == "19-14"
	replace subnatid2 = "19-15 - Jagatsinghpura" if subnatid2 == "19-15"
	replace subnatid2 = "19-16 - Jajpur" if subnatid2 == "19-16"
	replace subnatid2 = "19-17 - Kendrapara" if subnatid2 == "19-17"
	replace subnatid2 = "19-18 - Nayagarh" if subnatid2 == "19-18"
	replace subnatid2 = "19-19 - Khurda" if subnatid2 == "19-19"
	replace subnatid2 = "19-20 - Gajipati" if subnatid2 == "19-20"
	replace subnatid2 = "19-01 - Sambalpur" if subnatid2 == "19-01"
	replace subnatid2 = "19-02 - Sundargarh" if subnatid2 == "19-02"
	replace subnatid2 = "19-03 - Keonjhar" if subnatid2 == "19-03"
	replace subnatid2 = "19-04 - Mayurbhanj" if subnatid2 == "19-04"
	replace subnatid2 = "19-07 - Dhenkanal" if subnatid2 == "19-07"
	replace subnatid2 = "19-09 - Bolangir" if subnatid2 == "19-09"
	replace subnatid2 = "19-26 - Jharsuguda" if subnatid2 == "19-26"
	replace subnatid2 = "19-27 - Deogarh" if subnatid2 == "19-27"
	replace subnatid2 = "19-29 - Sonepur" if subnatid2 == "19-29"
	replace subnatid2 = "19-30 - Angul" if subnatid2 == "19-30"
	replace subnatid2 = "19-28 - Baragarh" if subnatid2 == "19-28"
	replace subnatid2 = "19-08 - Phulbani" if subnatid2 == "19-08"
	replace subnatid2 = "19-10 - Kalahandi" if subnatid2 == "19-10"
	replace subnatid2 = "19-11 - Koraput" if subnatid2 == "19-11"
	replace subnatid2 = "19-21 - Boudh" if subnatid2 == "19-21"
	replace subnatid2 = "19-22 - Nuapara" if subnatid2 == "19-22"
	replace subnatid2 = "19-23 - Malkangiri" if subnatid2 == "19-23"
	replace subnatid2 = "19-24 - Nowarangpur" if subnatid2 == "19-24"
	replace subnatid2 = "19-25 - Rayagarh" if subnatid2 == "19-25"
	replace subnatid2 = "33-01 - Pondicherry" if subnatid2 == "33-01"
	replace subnatid2 = "33-02 - Karaikal" if subnatid2 == "33-02"
	replace subnatid2 = "33-03 - Mahe" if subnatid2 == "33-03"
	replace subnatid2 = "33-04 - Yanam" if subnatid2 == "33-04"
	replace subnatid2 = "20-01 - Gurdaspur" if subnatid2 == "20-01"
	replace subnatid2 = "20-02 - Amritsar" if subnatid2 == "20-02"
	replace subnatid2 = "20-04 - Ludhiana" if subnatid2 == "20-04"
	replace subnatid2 = "20-05 - Jalandhar" if subnatid2 == "20-05"
	replace subnatid2 = "20-06 - Kapurthala" if subnatid2 == "20-06"
	replace subnatid2 = "20-07 - Hoshiarpur" if subnatid2 == "20-07"
	replace subnatid2 = "20-08 - Rupnagar  (Ropar)" if subnatid2 == "20-08"
	replace subnatid2 = "20-03 - Firozpur" if subnatid2 == "20-03"
	replace subnatid2 = "20-09 - Patiala" if subnatid2 == "20-09"
	replace subnatid2 = "20-10 - Sangrur" if subnatid2 == "20-10"
	replace subnatid2 = "20-11 - Bhatinda" if subnatid2 == "20-11"
	replace subnatid2 = "20-12 - Faridkot" if subnatid2 == "20-12"
	replace subnatid2 = "20-13 - Fatehgarh Sahib" if subnatid2 == "20-13"
	replace subnatid2 = "20-14 - Mansa" if subnatid2 == "20-14"
	replace subnatid2 = "21-04 - Jhunjhuna" if subnatid2 == "21-04"
	replace subnatid2 = "21-05 - Alwar" if subnatid2 == "21-05"
	replace subnatid2 = "21-06 - Bharatpur" if subnatid2 == "21-06"
	replace subnatid2 = "21-07 - Dholpur" if subnatid2 == "21-07"
	replace subnatid2 = "21-08 - Sawai Madhopur" if subnatid2 == "21-08"
	replace subnatid2 = "21-09 - Jaipur" if subnatid2 == "21-09"
	replace subnatid2 = "21-10 - Sikar" if subnatid2 == "21-10"
	replace subnatid2 = "21-11 - Ajmer" if subnatid2 == "21-11"
	replace subnatid2 = "21-12 - Tonk" if subnatid2 == "21-12"
	replace subnatid2 = "21-20 - Bhilwara" if subnatid2 == "21-20"
	replace subnatid2 = "21-28 - Dausa" if subnatid2 == "21-28"
	replace subnatid2 = "21-22 - Chittaurgarh" if subnatid2 == "21-22"
	replace subnatid2 = "21-25 - Bundi" if subnatid2 == "21-25"
	replace subnatid2 = "21-26 - Kota" if subnatid2 == "21-26"
	replace subnatid2 = "21-27 - Jhalawar" if subnatid2 == "21-27"
	replace subnatid2 = "21-29 - Baran" if subnatid2 == "21-29"
	replace subnatid2 = "21-21 - Udaipur" if subnatid2 == "21-21"
	replace subnatid2 = "21-23 - Dungarpur" if subnatid2 == "21-23"
	replace subnatid2 = "21-24 - Banswara" if subnatid2 == "21-24"
	replace subnatid2 = "21-30 - Rajsamand" if subnatid2 == "21-30"
	replace subnatid2 = "21-01 - Ganganagar" if subnatid2 == "21-01"
	replace subnatid2 = "21-02 - Bikaner" if subnatid2 == "21-02"
	replace subnatid2 = "21-03 - Churu" if subnatid2 == "21-03"
	replace subnatid2 = "21-13 - Jaisalmer" if subnatid2 == "21-13"
	replace subnatid2 = "21-14 - Jodhpur" if subnatid2 == "21-14"
	replace subnatid2 = "21-15 - Nagaur" if subnatid2 == "21-15"
	replace subnatid2 = "21-16 - Pali" if subnatid2 == "21-16"
	replace subnatid2 = "21-17 - Barmer" if subnatid2 == "21-17"
	replace subnatid2 = "21-18 - Jalor" if subnatid2 == "21-18"
	replace subnatid2 = "21-19 - Sirohi" if subnatid2 == "21-19"
	replace subnatid2 = "22-01 - North (Mongam)" if subnatid2 == "22-01"
	replace subnatid2 = "22-02 - East (Gangtok)" if subnatid2 == "22-02"
	replace subnatid2 = "22-03 - South (Nimachai)" if subnatid2 == "22-03"
	replace subnatid2 = "22-04 - West (Gyalshing)" if subnatid2 == "22-04"
	replace subnatid2 = "23-12 - Tiruchirapalli" if subnatid2 == "23-12"
	replace subnatid2 = "23-13 - Thanjavur" if subnatid2 == "23-13"
	replace subnatid2 = "23-14 - Pudukkottai" if subnatid2 == "23-14"
	replace subnatid2 = "23-23 - Nagapattinam-Quaie" if subnatid2 == "23-23"
	replace subnatid2 = "23-01 - Madras" if subnatid2 == "23-01"
	replace subnatid2 = "23-02 - Chengai Anna (Chen" if subnatid2 == "23-02"
	replace subnatid2 = "23-03 - North Arcot Ambedhk" if subnatid2 == "23-03"
	replace subnatid2 = "23-05 - Thiruvannamalai Sam" if subnatid2 == "23-05"
	replace subnatid2 = "23-06 - South Arcot" if subnatid2 == "23-06"
	replace subnatid2 = "23-22 - Villupuram" if subnatid2 == "23-22"
	replace subnatid2 = "23-04 - Dharampuri" if subnatid2 == "23-04"
	replace subnatid2 = "23-07 - Salem" if subnatid2 == "23-07"
	replace subnatid2 = "23-08 - Periyar" if subnatid2 == "23-08"
	replace subnatid2 = "23-09 - Nilgiri" if subnatid2 == "23-09"
	replace subnatid2 = "23-10 - Coimbatore" if subnatid2 == "23-10"
	replace subnatid2 = "23-11 - Dindigul-Quide Millet" if subnatid2 == "23-11"
	replace subnatid2 = "23-15 - Pasupomthevar Thiru" if subnatid2 == "23-15"
	replace subnatid2 = "23-16 - Madurai" if subnatid2 == "23-16"
	replace subnatid2 = "23-17 - Ramnathapuram" if subnatid2 == "23-17"
	replace subnatid2 = "23-18 - Kamarajar" if subnatid2 == "23-18"
	replace subnatid2 = "23-19 - V.O.  Chiudambaram" if subnatid2 == "23-19"
	replace subnatid2 = "23-20 - Tirunelveli Kottabom" if subnatid2 == "23-20"
	replace subnatid2 = "23-21 - KannyaiKumari" if subnatid2 == "23-21"
	replace subnatid2 = "24-01 - West Tripura" if subnatid2 == "24-01"
	replace subnatid2 = "24-02 - North Tripura" if subnatid2 == "24-02"
	replace subnatid2 = "24-03 - South Tripura" if subnatid2 == "24-03"
	replace subnatid2 = "25-28 - Kheri" if subnatid2 == "25-28"
	replace subnatid2 = "25-29 - Sitapur" if subnatid2 == "25-29"
	replace subnatid2 = "25-30 - Hardoi" if subnatid2 == "25-30"
	replace subnatid2 = "25-31 - Unnao" if subnatid2 == "25-31"
	replace subnatid2 = "25-32 - Lucknow" if subnatid2 == "25-32"
	replace subnatid2 = "25-33 - Rai Bareli" if subnatid2 == "25-33"
	replace subnatid2 = "25-36 - Kanpur Dehat" if subnatid2 == "25-36"
	replace subnatid2 = "25-37 - Kanpur Nagar" if subnatid2 == "25-37"
	replace subnatid2 = "25-43 - Fatepur" if subnatid2 == "25-43"
	replace subnatid2 = "25-48 - Bara Banki" if subnatid2 == "25-48"
	replace subnatid2 = "25-44 - Pratapgarh" if subnatid2 == "25-44"
	replace subnatid2 = "25-45 - Allahabad" if subnatid2 == "25-45"
	replace subnatid2 = "25-46 - Bahraich" if subnatid2 == "25-46"
	replace subnatid2 = "25-47 - Gonda" if subnatid2 == "25-47"
	replace subnatid2 = "25-49 - Faizabad" if subnatid2 == "25-49"
	replace subnatid2 = "25-50 - Sultanpur" if subnatid2 == "25-50"
	replace subnatid2 = "25-51 - Sidhartha nagar" if subnatid2 == "25-51"
	replace subnatid2 = "25-52 - Maharajganj" if subnatid2 == "25-52"
	replace subnatid2 = "25-53 - Basti" if subnatid2 == "25-53"
	replace subnatid2 = "25-54 - Gorakhpur" if subnatid2 == "25-54"
	replace subnatid2 = "25-55 - Deeria" if subnatid2 == "25-55"
	replace subnatid2 = "25-56 - Maunath Bhanjan" if subnatid2 == "25-56"
	replace subnatid2 = "25-57 - Azamgarh" if subnatid2 == "25-57"
	replace subnatid2 = "25-58 - Jaunpur" if subnatid2 == "25-58"
	replace subnatid2 = "25-59 - Ballia" if subnatid2 == "25-59"
	replace subnatid2 = "25-60 - Ghazipur" if subnatid2 == "25-60"
	replace subnatid2 = "25-61 - Varanashi" if subnatid2 == "25-61"
	replace subnatid2 = "25-62 - Mirzapur" if subnatid2 == "25-62"
	replace subnatid2 = "25-66 - Balrampur" if subnatid2 == "25-66"
	replace subnatid2 = "25-72 - Chandauli" if subnatid2 == "25-72"
	replace subnatid2 = "25-01 - Uttar Kashi" if subnatid2 == "25-01"
	replace subnatid2 = "25-02 - Chamoli" if subnatid2 == "25-02"
	replace subnatid2 = "25-03 - Tehri Garhwal" if subnatid2 == "25-03"
	replace subnatid2 = "25-04 - Dehra Dun" if subnatid2 == "25-04"
	replace subnatid2 = "25-05 - Garhwal" if subnatid2 == "25-05"
	replace subnatid2 = "25-06 - Pithoragarh" if subnatid2 == "25-06"
	replace subnatid2 = "25-07 - Almora" if subnatid2 == "25-07"
	replace subnatid2 = "25-08 - Nainital" if subnatid2 == "25-08"
	replace subnatid2 = "25-25 - Bareilly" if subnatid2 == "25-25"
	replace subnatid2 = "25-68 - Champaran" if subnatid2 == "25-68"
	replace subnatid2 = "25-38 - Jalan" if subnatid2 == "25-38"
	replace subnatid2 = "25-39 - Jhansi" if subnatid2 == "25-39"
	replace subnatid2 = "25-40 - Lalitpur" if subnatid2 == "25-40"
	replace subnatid2 = "25-41 - Hamirpur" if subnatid2 == "25-41"
	replace subnatid2 = "25-42 - Banda" if subnatid2 == "25-42"
	replace subnatid2 = "25-69 - Chitrakut" if subnatid2 == "25-69"
	replace subnatid2 = "25-09 - Bijnor" if subnatid2 == "25-09"
	replace subnatid2 = "25-10 - Moradabad" if subnatid2 == "25-10"
	replace subnatid2 = "25-11 - Rampur" if subnatid2 == "25-11"
	replace subnatid2 = "25-12 - Saharanpur" if subnatid2 == "25-12"
	replace subnatid2 = "25-13 - Hardwar" if subnatid2 == "25-13"
	replace subnatid2 = "25-14 - Muzaffarnagar" if subnatid2 == "25-14"
	replace subnatid2 = "25-15 - Meerut" if subnatid2 == "25-15"
	replace subnatid2 = "25-16 - Ghaziabad" if subnatid2 == "25-16"
	replace subnatid2 = "25-17 - Bulandshahr" if subnatid2 == "25-17"
	replace subnatid2 = "25-18 - Aligarh" if subnatid2 == "25-18"
	replace subnatid2 = "25-19 - Mathura" if subnatid2 == "25-19"
	replace subnatid2 = "25-20 - Agra" if subnatid2 == "25-20"
	replace subnatid2 = "25-21 - Firozabad" if subnatid2 == "25-21"
	replace subnatid2 = "25-22 - Etah" if subnatid2 == "25-22"
	replace subnatid2 = "25-23 - Mainpuri" if subnatid2 == "25-23"
	replace subnatid2 = "25-24 - Budaun" if subnatid2 == "25-24"
	replace subnatid2 = "25-26 - Pilibhit" if subnatid2 == "25-26"
	replace subnatid2 = "25-27 - Shahjahanpur" if subnatid2 == "25-27"
	replace subnatid2 = "25-34 - Farrukhabad" if subnatid2 == "25-34"
	replace subnatid2 = "25-35 - Etawah" if subnatid2 == "25-35"
	replace subnatid2 = "25-63 - Sonbadra" if subnatid2 == "25-63"
	replace subnatid2 = "25-71 - Bagpet" if subnatid2 == "25-71"
	replace subnatid2 = "25-67 - Jyotiba Phule Nagar" if subnatid2 == "25-67"
	replace subnatid2 = "25-64 - Oreiya" if subnatid2 == "25-64"
	replace subnatid2 = "25-65 - Mahamayanagar" if subnatid2 == "25-65"
	replace subnatid2 = "25-70 - Kannauj" if subnatid2 == "25-70"
	replace subnatid2 = "26-08 - 24-Parganas (North)" if subnatid2 == "26-08"
	replace subnatid2 = "26-09 - 24-Parganas (South)" if subnatid2 == "26-09"
	replace subnatid2 = "26-10 - Calcutta" if subnatid2 == "26-10"
	replace subnatid2 = "26-11 - Howrah" if subnatid2 == "26-11"
	replace subnatid2 = "26-12 - Hooghly" if subnatid2 == "26-12"
	replace subnatid2 = "26-16 - Burdwan" if subnatid2 == "26-16"
	replace subnatid2 = "26-04 - West Dinajpur" if subnatid2 == "26-04"
	replace subnatid2 = "26-05 - Maldah" if subnatid2 == "26-05"
	replace subnatid2 = "26-06 - Murshidabad" if subnatid2 == "26-06"
	replace subnatid2 = "26-07 - Nandia" if subnatid2 == "26-07"
	replace subnatid2 = "26-17 - Birbhum" if subnatid2 == "26-17"
	replace subnatid2 = "26-02 - Jalpaiguri" if subnatid2 == "26-02"
	replace subnatid2 = "26-03 - Darjiling" if subnatid2 == "26-03"
	replace subnatid2 = "26-01 - Kochbihar" if subnatid2 == "26-01"
	replace subnatid2 = "26-13 - Midnapur" if subnatid2 == "26-13"
	replace subnatid2 = "26-14 - Bankura" if subnatid2 == "26-14"
	replace subnatid2 = "26-15 - Puruliya" if subnatid2 == "26-15"
	replace subnatid2 = "28-01 - Chandigarh" if subnatid2 == "28-01"
	replace subnatid2 = "29-01 - D&N" if subnatid2 == "29-01"
	replace subnatid2 = "30-01 - Daman" if subnatid2 == "30-01"
	replace subnatid2 = "30-02 - Diu" if subnatid2 == "30-02"
	replace subnatid2 = "10-11 - Kathua" if subnatid2 == "10-11"
	replace subnatid2 = "10-12 - Jammu" if subnatid2 == "10-12"
	replace subnatid2 = "10-09 - Doda" if subnatid2 == "10-09"
	replace subnatid2 = "10-10 - Udhampur" if subnatid2 == "10-10"
	replace subnatid2 = "10-13 - Rajouri" if subnatid2 == "10-13"
	replace subnatid2 = "10-14 - Poonch" if subnatid2 == "10-14"
	replace subnatid2 = "10-01 - Anantnag" if subnatid2 == "10-01"
	replace subnatid2 = "10-02 - Pulwama" if subnatid2 == "10-02"
	replace subnatid2 = "10-03 - Srinagar" if subnatid2 == "10-03"
	replace subnatid2 = "10-04 - Badgam" if subnatid2 == "10-04"
	replace subnatid2 = "10-05 - Baramula" if subnatid2 == "10-05"
	replace subnatid2 = "10-06 - Kupwara" if subnatid2 == "10-06"
	replace subnatid2 = "10-07 - Kargil" if subnatid2 == "10-07"
	replace subnatid2 = "10-08 - Ladakh" if subnatid2 == "10-08"
	replace subnatid2 = "31-01 - Delhi" if subnatid2 == "31-01"
*</_subnatid2_>


*<_subnatid3_>
	gen str subnatid3 = ""
	label var subnatid3 "Subnational ID at Third Administrative Level"
*</_subnatid3_>


*<_subnatidsurvey_>
	gen subnatidsurvey = ""
	replace subnatidsurvey = subnatid1 + " - Urban" if urban == 1
	replace subnatidsurvey = subnatid1 + " - Rural" if urban == 0
	label var subnatidsurvey "Administrative level at which survey is representative"
*</_subnatidsurvey_>


*<_subnatid1_prev_>
/* <_subnatid1_prev>

	subnatid1_prev is coded as missing unless the classification used for subnatid1 has changed since the previous survey.

</_subnatid1_prev> */
	gen subnatid1_prev = .
	label var subnatid1_prev "Classification used for subnatid1 from previous survey"
*</_subnatid1_prev_>


*<_subnatid2_prev_>
	gen subnatid2_prev = .
	label var subnatid2_prev "Classification used for subnatid2 from previous survey"
*</_subnatid2_prev_>


*<_subnatid3_prev_>
	gen subnatid3_prev = .
	label var subnatid3_prev "Classification used for subnatid3 from previous survey"
*</_subnatid3_prev_>


*<_gaul_adm1_code_>
	gen gaul_adm1_code = .
	label var gaul_adm1_code "Global Administrative Unit Layers (GAUL) Admin 1 code"
*</_gaul_adm1_code_>


*<_gaul_adm2_code_>
	gen gaul_adm2_code = .
	label var gaul_adm2_code "Global Administrative Unit Layers (GAUL) Admin 2 code"
*</_gaul_adm2_code_>


*<_gaul_adm3_code_>
	gen gaul_adm3_code = .
	label var gaul_adm3_code "Global Administrative Unit Layers (GAUL) Admin 3 code"
*</_gaul_adm3_code_>

}

/*%%=============================================================================================
	4: Demography
================================================================================================*/

{

*<_hsize_>
	bys hhid: gen hsize = _N
	label var hsize "Household size"
*</_hsize_>


*<_age_>
	gen age = B4_q5
	label var age "Individual age"
*</_age_>


*<_male_>
	destring B4_q4, gen(male)
	recode male (2 = 0)
	label var male "Sex - Ind is male"
	la de lblmale 1 "Male" 0 "Female"
	label values male lblmale
*</_male_>


*<_relationharm_>
/* <_relationharm_note>

	5430 observations (1064 HHs) have either no head or more than one.Force it by making:
	* If several heads, other heads with higher in house ID to missing
	* If not head, person with the lowest in house ID number (1 in 99.9%) of cases.
</_relationharm_note> */

	bys hhid: gen one=1 if B4_q3=="1"
	bys hhid: egen temp=count(one)
	tab temp

	destring B4_q1, gen(pno)
	destring B4_q3, gen(relation)

	bys hhid: egen minid = min(pno)
	replace relation = . if temp >1 & B4_q3=="1" & minid<pno

	drop one temp
	bys hhid: gen one=1 if relation==1
	bys hhid: egen temp=count(one)
	tab temp

	replace relation = 1 if temp==0 & minid==pno

	drop one temp

	bys hhid: gen one=1 if relation==1
	bys hhid: egen temp=count(one)
	tab temp
	drop one temp

	gen relationharm = relation
	recode relationharm (3 5 = 3) (7=4) (4 6 8 = 5) (9=6) (0=.)
	label var relationharm "Relationship to the head of household - Harmonized"
	la de lblrelationharm  1 "Head of household" 2 "Spouse" 3 "Children" 4 "Parents" 5 "Other relatives" 6 "Other and non-relatives"
	label values relationharm  lblrelationharm
*</_relationharm_>


*<_relationcs_>
	gen relationcs = relation
	label var relationcs "Relationship to the head of household - Country original"
*</_relationcs_>


*<_marital_>
	destring B4_q6, gen(marital)
	recode marital (1 = 2) (2 = 1) (3 = 5) (0 = .)
	label var marital "Marital status"
	la de lblmarital 1 "Married" 2 "Never Married" 3 "Living together" 4 "Divorced/Separated" 5 "Widowed"
	label values marital lblmarital
*</_marital_>


*<_eye_dsablty_>
	gen eye_dsablty = .
	label var eye_dsablty "Disability related to eyesight"
*</_eye_dsablty_>


*<_hear_dsablty_>
	gen hear_dsablty = .
	label var eye_dsablty "Disability related to hearing"
*</_hear_dsablty_>


*<_walk_dsablty_>
	gen walk_dsablty = .
	label var eye_dsablty "Disability related to walking or climbing stairs"
*</_walk_dsablty_>


*<_conc_dsord_>
	gen conc_dsord = .
	label var eye_dsablty "Disability related to concentration or remembering"
*</_conc_dsord_>


*<_slfcre_dsablty_>
	gen slfcre_dsablty  = .
	label var eye_dsablty "Disability related to selfcare"
*</_slfcre_dsablty_>


*<_comm_dsablty_>
	gen comm_dsablty = .
	label var eye_dsablty "Disability related to communicating"
*</_comm_dsablty_>

}


/*%%=============================================================================================
	5: Migration
================================================================================================*/


{

*<_migrated_mod_age_>
	gen migrated_mod_age = 0
	label var migrated_mod_age "Migration module application age"
*</_migrated_mod_age_>


*<_migrated_ref_time_>
	gen migrated_ref_time = 99
	label var migrated_ref_time "Reference time applied to migration questions"
*</_migrated_ref_time_>


*<_migrated_binary_>
	destring B4_q13, gen(migrated_binary)
	recode migrated_binary (2 = 0)
	label de lblmigrated_binary 0 "No" 1 "Yes"
	label values migrated_binary lblmigrated_binary
	label var migrated_binary "Individual has migrated"
*</_migrated_binary_>


*<_migrated_years_>
	gen migrated_years = .
	destring B4_q14, gen(helper_var)
	replace migrated_years = helper_var if migrated_binary == 1
	label var migrated_years "Years since latest migration"
	drop helper_var
*</_migrated_years_>


*<_migrated_from_urban_>
	gen migrated_from_urban = .
	replace migrated_from_urban = 1 if inlist(B4_q15, "2", "4", "6") & migrated_binary == 1
	replace migrated_from_urban = 0 if inlist(B4_q15, "1", "3", "5") & migrated_binary == 1
	label de lblmigrated_from_urban 0 "Rural" 1 "Urban"
	label values migrated_from_urban lblmigrated_from_urban
	label var migrated_from_urban "Migrated from area"
*</_migrated_from_urban_>


*<_migrated_from_cat_>
	gen migrated_from_cat = .
	replace migrated_from_cat = 2 if inlist(B4_q15, "1", "2") & migrated_binary == 1
	replace migrated_from_cat = 3 if inlist(B4_q15, "3", "4") & migrated_binary == 1
	replace migrated_from_cat = 4 if inlist(B4_q15, "5", "6") & migrated_binary == 1
	replace migrated_from_cat = 5 if inlist(B4_q15, "7") & migrated_binary == 1
	label de lblmigrated_from_cat 1 "From same admin3 area" 2 "From same admin2 area" 3 "From same admin1 area" 4 "From other admin1 area" 5 "From other country"
	label values migrated_from_cat lblmigrated_from_cat
	label var migrated_from_cat "Category of migration area"
*</_migrated_from_cat_>


*<_migrated_from_code_>
	destring B4_q17, gen(helper_var)
	gen migrated_from_code = .
	replace migrated_from_code = subnatid1_num if inrange(migrated_from_cat,1,3)
	replace migrated_from_code = helper_var if migrated_from_cat == 4
	* replace as missing if they claim they came from another state (from_cat = 4) but state code is actually a country (>33)
	replace migrated_from_code = . if (migrated_from_cat == 4 & helper_var > 33)
	
	* Read in correspondence to make codes into string descriptions
	merge m:1 migrated_from_code using "`state_name_correspondence'",  keep(match master) nogen
	drop migrated_from_code
	rename state_name migrated_from_code
	label var migrated_from_code "Code of migration area as subnatid level of migrated_from_cat"
	drop helper_var
*</_migrated_from_code_>


*<_migrated_from_country_>
	gen migrated_from_country = ""
	replace migrated_from_country = "BGD" if migrated_from_cat == 5 & B4_q17 == "51"
	replace migrated_from_country = "NPL" if migrated_from_cat == 5 & B4_q17 == "52"
	replace migrated_from_country = "PAK" if migrated_from_cat == 5 & B4_q17 == "53"
	replace migrated_from_country = "LKA" if migrated_from_cat == 5 & B4_q17 == "54"
	replace migrated_from_country = "BTN" if migrated_from_cat == 5 & B4_q17 == "55"
	replace migrated_from_country = "Gulf countries" if migrated_from_cat == 5 & B4_q17 == "56"
	replace migrated_from_country = "Other Asian" if migrated_from_cat == 5 & B4_q17 == "57"
	replace migrated_from_country = "USA" if migrated_from_cat == 5 & B4_q17 == "58"
	replace migrated_from_country = "CAN" if migrated_from_cat == 5 & B4_q17 == "59"
	replace migrated_from_country = "Other Americas" if migrated_from_cat == 5 & B4_q17 == "60"
	replace migrated_from_country = "UK" if migrated_from_cat == 5 & B4_q17 == "61"
	replace migrated_from_country = "Other Europe" if migrated_from_cat == 5 & B4_q17 == "62"
	replace migrated_from_country = "African countries" if migrated_from_cat == 5 & B4_q17 == "63"
	replace migrated_from_country = "Other World" if migrated_from_cat == 5 & B4_q17 == "64"
	label var migrated_from_country "Code of migration country (ISO 3 Letter Code)"
*</_migrated_from_country_>


*<_migrated_reason_>
	gen migrated_reason = .
	replace migrated_reason =  3 if inlist(B4_q20,"01", "02", "03", "04", "05") & !missing(migrated_binary)
	replace migrated_reason =  2 if inlist(B4_q20,"06") & !missing(migrated_binary)
	replace migrated_reason =  1 if inlist(B4_q20,"11", "07", "12") & !missing(migrated_binary)
	replace migrated_reason =  4 if inlist(B4_q20,"09") & !missing(migrated_binary)
	replace migrated_reason =  5 if inlist(B4_q20,"10", "08", "19") & !missing(migrated_binary)
	label de lblmigrated_reason 1 "Family reasons" 2 "Educational reasons" 3 "Employment" 4 "Forced (political reasons, natural disaster, …)" 5 "Other reasons"
	label values migrated_reason lblmigrated_reason
	label var migrated_reason "Reason for migrating"
*</_migrated_reason_>


}


/*%%=============================================================================================
	6: Education
================================================================================================*/


{

*<_ed_mod_age_>

/* <_ed_mod_age_note>

Education module is only asked to those XX and older.

</_ed_mod_age_note> */

gen byte ed_mod_age = 0
label var ed_mod_age "Education module application age"

*</_ed_mod_age_>

*<_school_>
	gen byte school = .
	replace school = . if B4_q9 == "00"
	replace school=0 if inlist(B4_q9, "11", "12", "13", "14", "15", "16")
	replace school=1 if !inlist(B4_q9, "11", "12", "13", "14", "15", "16", "00") & !missing(B4_q9)
	label var school "Attending school"
	la de lblschool 0 "No" 1 "Yes"
	label values school  lblschool
*</_school_>


*<_literacy_>
	gen byte literacy = .
	replace literacy = . if B4_q7 == "00"
	replace literacy = 0 if B4_q7 == "01"
	replace literacy = 1 if !inlist(B4_q7, "01", "00") & !missing(B4_q7)
	label var literacy "Individual can read & write"
	la de lblliteracy 0 "No" 1 "Yes"
	label values literacy lblliteracy
*</_literacy_>


*<_educy_>
	gen educy=.
	label var educy "Years of education"
*</_educy_>


*<_educat7_>
	destring B4_q7, gen(genedulev)
	gen byte educat7 = .
	replace educat7=1 if genedulev <= 4 // No educ
	replace educat7 = 2 if genedulev == 5 // Primary incomplete
	replace educat7 = 3 if genedulev == 6 // Primary complete
	replace educat7 = 4 if genedulev == 7 // Secondary incomplete
	replace educat7 = 5 if (genedulev == 8 | genedulev == 9)  // Secondary complete
	replace educat7= 7 if genedulev==10 | genedulev==11 | genedulev==12 | genedulev==13

	* 5 cases of kids, aged 5 to 11 who are coded as general education 13 (university), set to missing as information is incorrect
	replace educat7 = . if B4_q7 == "13" & inrange(age,5,11)

	label var educat7 "Level of education 1"
	la de lbleducat7 1 "No education" 2 "Primary incomplete" 3 "Primary complete" 4 "Secondary incomplete" 5 "Secondary complete" 6 "Higher than secondary but not university" 7 "University incomplete or complete"
	label values educat7 lbleducat7
	drop genedulev
*</_educat7_>


*<_educat5_>
	gen byte educat5 = educat7
	recode educat5 4=3 5=4 6 7=5
	label var educat5 "Level of education 2"
	la de lbleducat5 1 "No education" 2 "Primary incomplete"  3 "Primary complete but secondary incomplete" 4 "Secondary complete" 5 "Some tertiary/post-secondary"
	label values educat5 lbleducat5
*</_educat5_>


*<_educat4_>
	gen byte educat4 = educat7
	recode educat4 2 3 4=2 4 5=3 6 7=4 8 9=.
	label var educat4 "Level of education 3"
	la de lbleducat4 1 "No education" 2 "Primary" 3 "Secondary" 4 "Post-secondary"
	label values educat4 lbleducat4
*</_educat4_>


*<_educat_orig_>
 	gen educat_orig = B4_q7
 	label var educat_orig "Original survey education code"
 *</_educat_orig_>


*<_educat_isced_>
	destring B4_q7, gen(genedulev)
	gen educat_isced = .
	replace educat_isced = 000 if genedulev < 6
	replace educat_isced = 100 if genedulev == 6
	replace educat_isced = 200 if genedulev == 7
	replace educat_isced = 300 if inrange(genedulev,8,9)
	replace educat_isced = 600 if genedulev > 9
	label var educat_isced "ISCED standardised level of education"
	drop genedulev
*</_educat_isced_>


*----------6.1: Education cleanup------------------------------*

*<_% Correction min age_>

** Drop info for cases under the age for which questions to be asked (do not need a variable for this)
local ed_var "school literacy educy educat7 educat5 educat4 educat_orig educat_isced"

foreach v of local ed_var {
	cap confirm numeric variable `v'
	if _rc == 0 { // is indeed numeric
		replace `v'=. if ( age < ed_mod_age & !missing(age) )
	}
	else { // is not
		replace `v'= "" if ( age < ed_mod_age & !missing(age) )
	}
}

*</_% Correction min age_>


}


/*%%=============================================================================================
	7: Training
================================================================================================*/


{

*<_vocational_>
	gen vocational = .
	label de lblvocational 0 "No" 1 "Yes"
	label values vocational lblvocational
	label var vocational "Ever received vocational training"
*</_vocational_>

*<_vocational_type_>
	gen vocational_type = .
	label de lblvocational_type 1 "Inside Enterprise" 2 "External"
	label values vocational_type lblvocational_type
	label var vocational_type "Type of vocational training"
*</_vocational_type_>

*<_vocational_length_l_>
	gen vocational_length_l = .
	label var vocational_length_l "Length of training, lower limit"
*</_vocational_length_l_>

*<_vocational_length_u_>
	gen vocational_length_u = .
	label var vocational_length_u "Length of training, upper limit"
*</_vocational_length_u_>

*<_vocational_field_>
	gen vocational_field = .
	label var vocational_field "Field of training"
*</_vocational_field_>

*<_vocational_financed_>
	gen vocational_financed = .
	label de lblvocational_financed 1 "Employer" 2 "Government" 3 "Mixed Employer/Government" 4 "Own funds" 5 "Other"
	label var vocational_financed "How training was financed"
*</_vocational_financed_>

}

/*%%=============================================================================================
	8: Labour
================================================================================================*/


*<_minlaborage_>
	gen byte minlaborage = 0
	label var minlaborage "Labor module application age"
*</_minlaborage_>


*----------8.1: 7 day reference overall------------------------------*

{
*<_lstatus_>
	destring B53_q20, gen(lstatus)
	recode lstatus  (11/72 98 = 1) (81=2) (82 91/97=3) (99=.)
	replace lstatus = . if age < minlaborage
	label var lstatus "Labor status"
	la de lbllstatus 1 "Employed" 2 "Unemployed" 3 "Non-LF"
	label values lstatus lbllstatus
*</_lstatus_>


*<_potential_lf_>
	gen byte potential_lf = .
	replace potential_lf = 0 if lstatus == 3
	replace potential_lf = 1 if B53_q20 == "82"
	label var potential_lf "Potential labour force status"
	la de lblpotential_lf 0 "No" 1 "Yes"
	label values potential_lf lblpotential_lf
*</_potential_lf_>


*<_underemployment_>
	gen byte underemployment = .
	replace underemployment = . if age < minlaborage & age != .
	replace underemployment = . if lstatus == 1
	label var underemployment "Underemployment status"
	la de lblunderemployment 0 "No" 1 "Yes"
	label values underemployment lblunderemployment
*</_underemployment_>


*<_nlfreason_>
	destring B53_q20, gen(nlfreason)
	recode nlfreason (11/81 98=.) (91=1) (92 93=2) (94=3) (95=4) (82 96 97=5)
	replace nlfreason = . if lstatus != 3 | (age < minlaborage & age != .)
	label var nlfreason "Reason not in the labor force"
	la de lblnlfreason 1 "Student" 2 "Housekeeper" 3 "Retired" 4 "Disabled" 5 "Other"
	label values nlfreason lblnlfreason
*</_nlfreason_>


*<_unempldur_l_>
	gen unempldur_l=.
	replace unempldur_l=0 if B6_q4=="1"
	replace unempldur_l=0.25 if B6_q4=="2"
	replace unempldur_l=0.5 if B6_q4=="3"
	replace unempldur_l=1 if B6_q4=="4"
	replace unempldur_l=2 if B6_q4=="5"
	replace unempldur_l=3 if B6_q4=="6"
	replace unempldur_l=6 if B6_q4=="7"
	replace unempldur_l=12 if B6_q4=="8"
	replace unempldur_l=. if missing(B6_q4)
	replace unempldur_l=. if lstatus!=2
	label var unempldur_l "Unemployment duration (months) lower bracket"
*</_unempldur_l_>


*<_unempldur_u_>
	gen unempldur_u=.
	replace unempldur_u=0.25 if B6_q4=="1"
	replace unempldur_u=0.5 if B6_q4=="2"
	replace unempldur_u=1 if B6_q4=="3"
	replace unempldur_u=2 if B6_q4=="4"
	replace unempldur_u=3 if B6_q4=="5"
	replace unempldur_u=6 if B6_q4=="6"
	replace unempldur_u=12 if B6_q4=="7"
	replace unempldur_u=. if B6_q4=="8"
	replace unempldur_u=. if lstatus!=2
	label var unempldur_u "Unemployment duration (months) upper bracket"
*</_unempldur_u_>
}


*----------8.2: 7 day reference main job------------------------------*


{
*<_empstat_>
	destring B53_q20, gen(empstat)
	recode empstat (11=4) (12=3) (61 62 21=2) (31 41 42 51 52 71 72 98 =1) (81/97 99=.)
	replace empstat=. if lstatus != 1 | (age < minlaborage & age != .)
	label var empstat "Employment status during past week primary job 7 day recall"
	la de lblempstat 1 "Paid employee" 2 "Non-paid employee" 3 "Employer" 4 "Self-employed" 5 "Other, workers not classifiable by status"
	label values empstat lblempstat
*</_empstat_>


*<_ocusec_>
	gen byte ocusec = .
	label var ocusec "Sector of activity primary job 7 day recall"
	la de lblocusec 1 "Public Sector, Central Government, Army" 2 "Private, NGO" 3 "State owned" 4 "Public or State-owned, but cannot distinguish"
	label values ocusec lblocusec
*</_ocusec_>


*<_industry_orig_>
	gen industry_orig = B53_q21
	replace industry_orig = "" if lstatus != 1
	label var industry_orig "Original survey industry code, main job 7 day recall"
*</_industry_orig_>


*<_industrycat_isic_>
	gen industrycat_isic = substr(industry_orig,1,4)
	replace industrycat_isic = "" if lstatus != 1
	label var industrycat_isic "ISIC code of primary job 7 day recall"
*</_industrycat_isic_>


*<_industrycat10_>
	gen red_indus =substr(B53_q21,1,2)
	destring red_indus, replace

	gen industrycat10 = .

	replace industrycat10=1 if red_indus>=00 & red_indus<=09
	replace industrycat10=2 if red_indus>=10 & red_indus<=14
	replace industrycat10=3 if red_indus>=15 & red_indus<=39
	replace industrycat10=4 if red_indus>=40 & red_indus<=41
	replace industrycat10=5 if red_indus>=45 & red_indus<=45
	replace industrycat10=6 if red_indus>=50 & red_indus<=59
	replace industrycat10=7 if red_indus>=60 & red_indus<=64
	replace industrycat10=8 if red_indus>=65 & red_indus<=74
	replace industrycat10=9 if  red_indus==75
	replace industrycat10=10 if red_indus>=80 & red_indus<=99

	replace industrycat10=. if lstatus != 1 | (age < minlaborage & age != .)
	label var industrycat10 "1 digit industry classification, primary job 7 day recall"
	la de lblindustrycat10 1 "Agriculture" 2 "Mining" 3 "Manufacturing" 4 "Public utilities" 5 "Construction"  6 "Commerce" 7 "Transport and Comnunications" 8 "Financial and Business Services" 9 "Public Administration" 10 "Other Services, Unspecified"
	label values industrycat10 lblindustrycat10
	drop red_indus
*</_industrycat10_>


*<_industrycat4_>
	gen byte industrycat4 = industrycat10
	recode industrycat4 (1=1)(2 3 4 5 =2)(6 7 8 9=3)(10=4)
	label var industrycat4 "1 digit industry classification (Broad Economic Activities), primary job 7 day recall"
	la de lblindustrycat4 1 "Agriculture" 2 "Industry" 3 "Services" 4 "Other"
	label values industrycat4 lblindustrycat4
*</_industrycat4_>


*<_occup_orig_>
	gen occup_orig = B53_q22
	replace occup_orig = "" if lstatus != 1
	label var occup_orig "Original occupation record primary job 7 day recall"
*</_occup_orig_>


*<_occup_isco_>
	gen nco_68 = occup_orig
	gen x_indic = regexm(nco_68, "x|X|y|y")
	replace nco_68 = "099" if x_indic == 1
	replace nco_68 = "0" + nco_68 if length(nco_68) == 2
	replace nco_68 = "00" + nco_68 if length(nco_68) == 1

	merge m:1 nco_68 using "`path_in_stata'/India_occup_correspondences.dta", nogen keep(match master)

	gen occup_isco = isco_88
	replace occup_isco = "" if lstatus != 1
	drop x_indic nco_68 nco_04 isco_88
	label var occup_isco "ISCO code of primary job 7 day recall"
*</_occup_isco_>


*<_occup_>
	gen nco_68 = occup_orig
	gen x_indic = regexm(nco_68, "x|X|y|y")
	replace nco_68 = "099" if x_indic == 1
	replace nco_68 = "0" + nco_68 if length(nco_68) == 2
	replace nco_68 = "00" + nco_68 if length(nco_68) == 1

	merge m:1 nco_68 using "`path_in_stata'/India_occup_correspondences.dta", nogen keep(match master)
	gen code_04 = substr(nco_04,1,1)
	destring code_04, replace

	gen occup = .
	replace occup = code_04 if lstatus == 1 & (age >= minlaborage & age != .)
	replace occup = 99 if x_indic == 1 & lstatus == 1 & (age >= minlaborage & age != .)
	label var occup "1 digit occupational classification, primary job 7 day recall"
	la de lbloccup 1 "Managers" 2 "Professionals" 3 "Technicians" 4 "Clerks" 5 "Service and market sales workers" 6 "Skilled agricultural" 7 "Craft workers" 8 "Machine operators" 9 "Elementary occupations" 10 "Armed forces"  99 "Others"
	label values occup lbloccup
	drop x_indic nco_68 nco_04 isco_88 code_04
*</_occup_>


*<_occup_skill_>
	gen occup_skill = .
	replace occup_skill = 3 if inrange(occup, 1, 3)
	replace occup_skill = 2 if inrange(occup, 4, 8)
	replace occup_skill = 1 if occup == 9
	label var occup_skill "Skill based on ISCO standard primary job 7 day recall"
*</_occup_skill_>


*<_wage_no_compen_>
	gen double wage_no_compen = B53_q171 // note that 5.3 combined does only contain total, not cash or kind
	replace wage_no_compen=. if lstatus != 1 | (age < minlaborage & age != .)
	label var wage_no_compen "Last wage payment primary job 7 day recall"
*</_wage_no_compen_>


*<_unitwage_>
	gen byte unitwage = 2
	replace unitwage=. if lstatus != 1 | (age < minlaborage & age != .)
	label var unitwage "Last wages' time unit primary job 7 day recall"
	la de lblunitwage 1 "Daily" 2 "Weekly" 3 "Every two weeks" 4 "Bimonthly"  5 "Monthly" 6 "Trimester" 7 "Biannual" 8 "Annually" 9 "Hourly" 10 "Other"
	label values unitwage lblunitwage
*</_unitwage_>


*<_whours_>
/* <_whours_note>

	Data is recorded for the day as full day or half day, then summed up over the 7 days. Assume a full day has 8 hours

</_whours_note> */
	gen whours = 8*B53_q141
	replace whours=. if lstatus != 1 | (age < minlaborage & age != .)
	label var whours "Hours of work in last week primary job 7 day recall"
*</_whours_>


*<_wmonths_>
	gen wmonths = .
	label var wmonths "Months of work in past 12 months primary job 7 day recall"
*</_wmonths_>


*<_wage_total_>
/* <_wage_total_note>

	Since this is annualized but no information is given on how many months of work cannot fill it out

</_wage_total_note> */
	gen wage_total = .
	replace wage_total=. if lstatus != 1 | (age < minlaborage & age != .)
	label var wage_total "Annualized total wage primary job 7 day recall"
*</_wage_total_>


*<_contract_>
	gen byte contract = .
	label var contract "Employment has contract primary job 7 day recall"
	la de lblcontract 0 "Without contract" 1 "With contract"
	label values contract lblcontract
*</_contract_>


*<_healthins_>
	gen byte healthins = .
	label var healthins "Employment has health insurance primary job 7 day recall"
	la de lblhealthins 0 "Without health insurance" 1 "With health insurance"
	label values healthins lblhealthins
*</_healthins_>


*<_socialsec_>
	gen byte socialsec = .
	label var socialsec "Employment has social security insurance primary job 7 day recall"
	la de lblsocialsec 1 "With social security" 0 "Without social secturity"
	label values socialsec lblsocialsec
*</_socialsec_>


*<_union_>
	gen byte union = .
	label var union "Union membership at primary job 7 day recall"
	la de lblunion 0 "Not union member" 1 "Union member"
	label values union lblunion
*</_union_>


*<_firmsize_l_>
	gen byte firmsize_l = .
	label var firmsize_l "Firm size (lower bracket) primary job 7 day recall"
*</_firmsize_l_>


*<_firmsize_u_>
	gen byte firmsize_u=.
	label var firmsize_u "Firm size (upper bracket) primary job 7 day recall"
*</_firmsize_u_>

}


*----------8.3: 7 day reference secondary job------------------------------*
* Since labels are the same as main job, values are labelled using main job labels


{
*<_empstat_2_>
	gen has_job_primary = inlist(B53_q41,"11", "12", "21", "31", "41", "51") | inlist(B53_q41, "61", "62", "71", "72", "98")
	destring B53_q42, gen(empstat_2)
	recode empstat_2 (11=4) (12=3) (61 62 21=2) (31 41 42 51 52 71 72 98 =1) (81/97 99=.)
	replace empstat_2=. if lstatus != 1 | (age < minlaborage & age != .)
	replace empstat_2 = . if has_job_primary == 0 & !missing(empstat_2)
	label var empstat_2 "Employment status during past week primary job 7 day recall"
	la de lblempstat_2 1 "Paid employee" 2 "Non-paid employee" 3 "Employer" 4 "Self-employed" 5 "Other, workers not classifiable by status", modify
	label values empstat_2 lblempstat_2
	drop has_job_primary
*</_empstat_2_>


*<_ocusec_2_>
	gen byte ocusec_2 = .
	label var ocusec_2 "Sector of activity secondary job 7 day recall"
	label values ocusec_2 lblocusec
*</_ocusec_2_>


*<_industry_orig_2_>
	gen industry_orig_2 = B53_q52
	replace industry_orig_2 = "" if missing(empstat_2)
	label var industry_orig_2 "Original survey industry code, secondary job 7 day recall"
*</_industry_orig_2_>


*<_industrycat_isic_2_>
	gen industrycat_isic_2 = B53_q52 + "00"
	replace industrycat_isic_2 = "" if missing(empstat_2)
	replace industrycat_isic_2 = "" if industrycat_isic_2 == "00"
	label var industrycat_isic_2 "ISIC code of secondary job 7 day recall"
*</_industrycat_isic_2_>


*<_industrycat10_2_>
	destring B53_q52, gen(red_indus)

	gen industrycat10_2 = .
	replace industrycat10_2=1 if red_indus>=00 & red_indus<=09
	replace industrycat10_2=2 if red_indus>=10 & red_indus<=14
	replace industrycat10_2=3 if red_indus>=15 & red_indus<=39
	replace industrycat10_2=4 if red_indus>=40 & red_indus<=41
	replace industrycat10_2=5 if red_indus>=45 & red_indus<=45
	replace industrycat10_2=6 if red_indus>=50 & red_indus<=59
	replace industrycat10_2=7 if red_indus>=60 & red_indus<=64
	replace industrycat10_2=8 if red_indus>=65 & red_indus<=74
	replace industrycat10_2=9 if  red_indus==75
	replace industrycat10_2=10 if red_indus>=80 & red_indus<=99

	replace industrycat10_2 = . if lstatus != 1 | (age < minlaborage & age != .)
	replace industrycat10_2 = . if missing(empstat_2)
	label var industrycat10_2 "1 digit industry classification, primary job 7 day recall"
	la de lblindustrycat10_2 1 "Agriculture" 2 "Mining" 3 "Manufacturing" 4 "Public utilities" 5 "Construction"  6 "Commerce" 7 "Transport and Comnunications" 8 "Financial and Business Services" 9 "Public Administration" 10 "Other Services, Unspecified"
	label values industrycat10_2 lblindustrycat10_2
	drop red_indus
*</_industrycat10_2_>


*<_industrycat4_2_>
	gen byte industrycat4_2 = industrycat10_2
	recode industrycat4_2 (1=1)(2 3 4 5 =2)(6 7 8 9=3)(10=4)
	label var industrycat4_2 "1 digit industry classification (Broad Economic Activities), secondary job 7 day recall"
	label values industrycat4_2 lblindustrycat4
*</_industrycat4_2_>


*<_occup_orig_2_>
	gen occup_orig_2 = .
	label var occup_orig_2 "Original occupation record secondary job 7 day recall"
*</_occup_orig_2_>


*<_occup_isco_2_>
	gen occup_isco_2 = .
	label var occup_isco_2 "ISCO code of secondary job 7 day recall"
*</_occup_isco_2_>


*<_occup_skill_2_>
	gen occup_skill_2 = .
	label var occup_skill_2 "Skill based on ISCO standard secondary job 7 day recall"
*</_occup_skill_2_>


*<_occup_2_>
	gen byte occup_2 = .
	label var occup_2 "1 digit occupational classification secondary job 7 day recall"
	label values occup_2 lbloccup
*</_occup_2_>


*<_wage_no_compen_2_>
	gen double wage_no_compen_2 = B53_q172
	replace wage_no_compen_2=. if lstatus != 1 | (age < minlaborage & age != .)
	replace wage_no_compen_2 = . if missing(empstat_2)
	label var wage_no_compen_2 "Last wage payment secondary job 7 day recall"
*</_wage_no_compen_2_>


*<_unitwage_2_>
	gen byte unitwage_2 = 2
	replace unitwage_2=. if lstatus != 1 | (age < minlaborage & age != .)
	replace unitwage_2 = . if missing(empstat_2)
	label var unitwage_2 "Last wages' time unit secondary job 7 day recall"
	la de lblunitwage_2 1 "Daily" 2 "Weekly" 3 "Every two weeks" 4 "Bimonthly"  5 "Monthly" 6 "Trimester" 7 "Biannual" 8 "Annually" 9 "Hourly" 10 "Other"
	label values unitwage_2 lblunitwage_2
*</_unitwage_2_>


*<_whours_2_>
	gen whours_2 = 8*B53_q142
	replace whours_2=. if lstatus != 1 | (age < minlaborage & age != .)
	replace unitwage_2 = . if missing(empstat_2)
	label var whours_2 "Hours of work in last week secondary job 7 day recall"
*</_whours_2_>


*<_wmonths_2_>
	gen wmonths_2 = .
	label var wmonths_2 "Months of work in past 12 months secondary job 7 day recall"
*</_wmonths_2_>


*<_wage_total_2_>
	gen wage_total_2 = .
	label var wage_total_2 "Annualized total wage secondary job 7 day recall"
*</_wage_total_2_>


*<_firmsize_l_2_>
	gen byte firmsize_l_2 = .
	label var firmsize_l_2 "Firm size (lower bracket) secondary job 7 day recall"
*</_firmsize_l_2_>


*<_firmsize_u_2_>
	gen byte firmsize_u_2 = .
	label var firmsize_u_2 "Firm size (upper bracket) secondary job 7 day recall"
*</_firmsize_u_2_>

}

*----------8.4: 7 day reference additional jobs------------------------------*

*<_t_hours_others_>
	gen third_h = B53_q143*8 if inlist(B53_q43,"11", "12", "21", "31", "41", "51") | inlist(B53_q43, "61", "62", "71", "72")
	gen fourth_h = B53_q144*8 if inlist(B53_q44,"11", "12", "21", "31", "41", "51") | inlist(B53_q44, "61", "62", "71", "72")
	egen t_hours_others = rowtotal(third_h fourth_h), missing
	label var t_hours_others "Annualized hours worked in all but primary and secondary jobs 7 day recall"
	drop third_h fourth_h
*</_t_hours_others_>


*<_t_wage_nocompen_others_>
	gen t_wage_nocompen_others = .
	label var t_wage_nocompen_others "Annualized wage in all but primary & secondary jobs excl. bonuses, etc. 7 day recall"
*</_t_wage_nocompen_others_>


*<_t_wage_others_>
	gen t_wage_others = .
	label var t_wage_others "Annualized wage in all but primary and secondary jobs (12-mon ref period)"
*</_t_wage_others_total_>


*----------8.5: 7 day reference total summary------------------------------*


*<_t_hours_total_>
	egen t_hours_total = rowtotal(whours whours_2 t_hours_others), missing
	label var t_hours_total "Annualized hours worked in all jobs 7 day recall"
*</_t_hours_total_>


*<_t_wage_nocompen_total_>
	gen t_wage_nocompen_total = .
	label var t_wage_nocompen_total "Annualized wage in all jobs excl. bonuses, etc. 7 day recall"
*</_t_wage_nocompen_total_>


*<_t_wage_total_>
	gen t_wage_total = .
	label var t_wage_total "Annualized total wage for all jobs 7 day recall"
*</_t_wage_total_>


*----------8.6: 12 month reference overall------------------------------*

{

*<_lstatus_year_>
/* <_lstatus_year_note>

	For a person to be employed use the concept of usual economic activity, that is principal
	activity and add secondary if the principal is not in employment byt secondary is.
	So a full time student working on the side is still in the labor force in this 12 month sense

	Thus labour info for the 12 month recall is what is coded in Usual Principal Activity plus
	adding Subsidiary Activity if the person is not employed in Principal but is in secondary

*</_lstatus_year_note> */
	destring B51_q3, gen(primary_help)
	recode primary_help  11/72=1 81 82=2 91/98=3 99=.
	destring B52_q31, gen(secondary_help)
	recode secondary_help  11/72=1 81 82=2 91/98=3 99=.
	* tab primary_help secondary_help,m
	* Cross tabulation let's us see which cases are the adders and true seconds
	gen adders = 1 if inrange(primary_help,2,3) & secondary_help == 1
	gen seconds = 1 if primary_help == 1 & secondary_help == 1

	gen lstatus_year = primary_help
	replace lstatus_year = 1 if adders == 1

	replace lstatus_year = . if age < minlaborage
	label var lstatus_year "Labor status during last year"
	la de lbllstatus_year 1 "Employed" 2 "Unemployed" 3 "Non-LF"
	label values lstatus_year lbllstatus_year
	drop secondary_help
*</_lstatus_year_>

*<_potential_lf_year_>
	gen byte potential_lf_year = .
	replace potential_lf_year=. if age < minlaborage & age != .
	replace potential_lf_year = . if lstatus_year != 3
	label var potential_lf_year "Potential labour force status"
	la de lblpotential_lf_year 0 "No" 1 "Yes"
	label values potential_lf_year lblpotential_lf_year
*</_potential_lf_year_>


*<_underemployment_year_>
	gen byte underemployment_year = 0
	replace underemployment_year = 1 if inlist(B71_q10,"1", "2")
	replace underemployment_year = . if age < minlaborage & age != .
	replace underemployment_year = . if lstatus_year != 1
	label var underemployment_year "Underemployment status"
	la de lblunderemployment_year 0 "No" 1 "Yes"
	label values underemployment_year lblunderemployment_year
*</_underemployment_year_>


*<_nlfreason_year_>
	destring B51_q3, gen(nlfreason_year)
	recode nlfreason_year 11/82=. 91=1 92 93=2 94=3 95=4 96/99=5
	replace nlfreason_year = . if lstatus_year != 3 | (age < minlaborage & age != .)
	label var nlfreason_year "Reason not in the labor force - 12 month recall"
	la de lblnlfreason_year 1 "Student" 2 "Housekeeper" 3 "Retired" 4 "Disabled" 5 "Other"
	label values nlfreason_year lblnlfreason_year
*</_nlfreason_year_>


*<_unempldur_l_year_>
	gen byte unempldur_l_year=.
	label var unempldur_l_year "Unemployment duration (months) lower bracket"
*</_unempldur_l_year_>


*<_unempldur_u_year_>
	gen byte unempldur_u_year=.
	label var unempldur_u_year "Unemployment duration (months) upper bracket"
*</_unempldur_u_year_>

}

*----------8.7: 12 month reference main job------------------------------*

{

*<_empstat_year_>
	destring B51_q3, gen(empstat_y1)
	recode empstat_y1 (11=4) (12=3) (61 62 21=2) (31 41 42 51 52 71 72=1) (81/99=.)
	destring B52_q31, gen(empstat_y2)
	recode empstat_y2 (11=4) (12=3) (61 62 21=2) (31 41 42 51 52 71 72=1) (81/99=.)

	gen empstat_year = empstat_y1
	replace empstat_year = empstat_y2 if adders == 1

	label var empstat_year "Employment status during past week primary job 12 month recall"
	la de lblempstat_year 1 "Paid employee" 2 "Non-paid employee" 3 "Employer" 4 "Self-employed" 5 "Other, workers not classifiable by status"
	label values empstat_year lblempstat_year
	drop empstat_y1 empstat_y2
*</_empstat_year_>

*<_ocusec_year_>
/* <_ocusec_year_note>

	Ocusec question is only to those with who are not in agriculture.
	This is 52% of employment.
</_ocusec_year_note> */
	gen byte ocusec_year = .
	destring B51_q10, replace
	replace ocusec_year = 1 if B51_q10==5
	replace ocusec_year = 2 if inrange(B51_q10,1,4) | inrange(B51_q10,7,8)
	replace ocusec_year = 4 if B51_q10 == 6
	replace ocusec_year = . if B51_q10 == 9

	destring B52_q81, replace
	replace ocusec_year = 1 if B52_q81==5 & adders == 1
	replace ocusec_year = 2 if  (inrange(B52_q81,1,4) | inrange(B52_q81,7,8)) & adders == 1
	replace ocusec_year = 4 if B52_q81 == 6 & adders == 1
	replace ocusec_year = . if B52_q81 == 9 & adders == 1

	replace ocusec_year = . if lstatus_year != 1
	label var ocusec_year "Sector of activity primary job 12 day recall"
	la de lblocusec_year 1 "Public Sector, Central Government, Army" 2 "Private, NGO" 3 "State owned" 4 "Public or State-owned, but cannot distinguish", replace
	label values ocusec_year lblocusec_year
*</_ocusec_year_>

*<_industry_orig_year_>
	gen industry_orig_year = B51_q5
	replace industry_orig_year = B52_q51 if adders == 1
	replace industry_orig_year = "" if lstatus_year != 1
	label var industry_orig_year "Original industry record main job 12 month recall"
*</_industry_orig_year_>


*<_industrycat_isic_year_>
	gen industrycat_isic_year = substr(industry_orig_year,1,4)
	label var industrycat_isic_year "ISIC code of primary job 12 month recall"
*</_industrycat_isic_year_>


*<_industrycat10_year_>
	gen red_indus =substr(industry_orig_year,1,2)
	destring red_indus, replace

	gen byte industrycat10_year = .
	replace industrycat10_year=1 if red_indus>=00 & red_indus<=09
	replace industrycat10_year=2 if red_indus>=10 & red_indus<=14
	replace industrycat10_year=3 if red_indus>=15 & red_indus<=39
	replace industrycat10_year=4 if red_indus>=40 & red_indus<=41
	replace industrycat10_year=5 if red_indus>=45 & red_indus<=45
	replace industrycat10_year=6 if red_indus>=50 & red_indus<=59
	replace industrycat10_year=7 if red_indus>=60 & red_indus<=64
	replace industrycat10_year=8 if red_indus>=65 & red_indus<=74
	replace industrycat10_year=9 if red_indus==75
	replace industrycat10_year=10 if red_indus>=80 & red_indus<=99
	replace industrycat10_year= . if lstatus_year != 1 | (age < minlaborage & age != .)
	label var industrycat10_year "1 digit industry classification, primary job 12 month recall"
	la de lblindustrycat10_year 1 "Agriculture" 2 "Mining" 3 "Manufacturing" 4 "Public utilities" 5 "Construction"  6 "Commerce" 7 "Transport and Comnunications" 8 "Financial and Business Services" 9 "Public Administration" 10 "Other Services, Unspecified"
	label values industrycat10_year lblindustrycat10_year
	drop red_indus
*</_industrycat10_year_>


*<_industrycat4_year_>
	gen byte industrycat4_year=industrycat10_year
	recode industrycat4_year (1=1)(2 3 4 5 =2)(6 7 8 9=3)(10=4)
	label var industrycat4_year "1 digit industry classification (Broad Economic Activities), primary job 12 month recall"
	la de lblindustrycat4_year 1 "Agriculture" 2 "Industry" 3 "Services" 4 "Other"
	label values industrycat4_year lblindustrycat4_year
*</_industrycat4_year_>


*<_occup_orig_year_>
	gen occup_orig_year = B51_q6
	replace occup_orig_year = B51_q6 if adders == 1
	replace occup_orig_year = "" if lstatus_year != 1
	label var occup_orig_year "Original occupation record primary job 12 month recall"
*</_occup_orig_year_>


*<_occup_isco_year_>
	gen nco_68 = occup_orig_year
	gen x_indic = regexm(nco_68, "x|X|y|y")
	replace nco_68 = "099" if x_indic == 1
	replace nco_68 = "0" + nco_68 if length(nco_68) == 2
	replace nco_68 = "00" + nco_68 if length(nco_68) == 1

	merge m:1 nco_68 using "`path_in_stata'/India_occup_correspondences.dta", nogen keep(match master)

	gen occup_isco_year = isco_88
	replace occup_isco_year = "" if lstatus_year != 1
	drop x_indic nco_68 nco_04 isco_88
	label var occup_isco_year "ISCO code of primary job 12 month recall"
*</_occup_isco_year_>


*<_occup_year_>
	gen nco_68 = occup_orig_year
	gen x_indic = regexm(nco_68, "x|X|y|y")
	replace nco_68 = "099" if x_indic == 1
	replace nco_68 = "0" + nco_68 if length(nco_68) == 2
	replace nco_68 = "00" + nco_68 if length(nco_68) == 1

	merge m:1 nco_68 using "`path_in_stata'/India_occup_correspondences.dta", nogen keep(match master)
	gen code_04 = substr(nco_04,1,1)
	destring code_04, replace

	gen occup_year = .
	replace occup_year = code_04 if lstatus_year == 1 & (age >= minlaborage & age != .)
	replace occup_year = 99 if x_indic == 1 & lstatus_year == 1 & (age >= minlaborage & age != .)
	label var occup_year "1 digit occupational classification, primary job 12 month recall"
	la de lbloccup_year 1 "Managers" 2 "Professionals" 3 "Technicians" 4 "Clerks" 5 "Service and market sales workers" 6 "Skilled agricultural" 7 "Craft workers" 8 "Machine operators" 9 "Elementary occupations" 10 "Armed forces"  99 "Others"
	label values occup_year lbloccup_year
	drop x_indic nco_68 nco_04 isco_88 code_04
*</_occup_year_>


*<_occup_skill_year_>
	gen occup_skill_year = .
	replace occup_skill_year = 3 if inrange(occup_year, 1, 3)
	replace occup_skill_year = 2 if inrange(occup_year, 4, 8)
	replace occup_skill_year = 1 if occup_year == 9
	label var occup_skill_year "Skill based on ISCO standard primary job 12 month recall"
*</_occup_skill_year_>


*<_wage_no_compen_year_>
	gen double wage_no_compen_year = .
	label var wage_no_compen_year "Last wage payment primary job 12 month recall"
*</_wage_no_compen_year_>


*<_unitwage_year_>
	gen byte unitwage_year = .
	label var unitwage_year "Last wages' time unit primary job 12 month recall"
	la de lblunitwage_year 1 "Daily" 2 "Weekly" 3 "Every two weeks" 4 "Bimonthly"  5 "Monthly" 6 "Trimester" 7 "Biannual" 8 "Annually" 9 "Hourly" 10 "Other"
	label values unitwage_year lblunitwage_year
*</_unitwage_year_>


*<_whours_year_>
	gen whours_year = .
	label var whours_year "Hours of work in last week primary job 12 month recall"
*</_whours_year_>


*<_wmonths_year_>
/* <_wmonths_year_note>

	Survey asks individuals whether they worked regularly. If not, how many months out of work.
	Hence assume if worked regularly 12 months of work, if not 12 minus the number mentioned.
</_wmonths_year_note> */
	gen wmonths_year = .
	replace wmonths_year = 12 if B71_q6 == "1"
	replace wmonths_year = 12 - B71_q7 if !missing(B71_q7) & B71_q6 != "1"
	replace wmonths_year = . if missing(empstat_year)
	label var wmonths_year "Months of work in past 12 months primary job 12 month recall"
*</_wmonths_year_>


*<_wage_total_year_>
	gen wage_total_year = .
	label var wage_total_year "Annualized total wage primary job 12 month recall"
*</_wage_total_year_>


*<_contract_year_>
	gen byte contract_year = .
	label var contract_year "Employment has contract primary job 12 month recall"
	la de lblcontract_year 0 "Without contract" 1 "With contract"
	label values contract_year lblcontract_year
*</_contract_year_>


*<_healthins_year_>
	gen byte healthins_year = .
	label var healthins_year "Employment has health insurance primary job 12 month recall"
	la de lblhealthins_year 0 "Without health insurance" 1 "With health insurance"
	label values healthins_year lblhealthins_year
*</_healthins_year_>


*<_socialsec_year_>
	gen byte socialsec_year = .
	label var socialsec_year "Employment has social security insurance primary job 7 day recall"
	la de lblsocialsec_year 1 "With social security" 0 "Without social secturity"
	label values socialsec_year lblsocialsec_year
*</_socialsec_year_>


*<_union_year_>
/* <_wmonths_year_note>

	Survey asks whether there is a union available, if not no further questions - if yes,
	then whether they are member. Treat no union available also as a no.
</_wmonths_year_note> */
	gen byte union_year = .
	replace union_year = 0 if B72_q5 == "2"
	replace union_year = 0 if B72_q5 == "1" & B72_q6 == "2"
	replace union_year = 1 if B72_q5 == "1" & B72_q6 == "1"
	replace union_year = . if missing(empstat_year)
	label var union_year "Union membership at primary job 12 month recall"
	la de lblunion_year 0 "Not union member" 1 "Union member"
	label values union_year lblunion_year
*</_union_year_>


*<_firmsize_l_year_>
	gen byte firmsize_l_year = .
	label var firmsize_l_year "Firm size (lower bracket) primary job 12 month recall"
*</_firmsize_l_year_>


*<_firmsize_u_year_>
	gen byte firmsize_u_year = .
	label var firmsize_u_year "Firm size (upper bracket) primary job 12 month recall"
*</_firmsize_u_year_>

}


*----------8.8: 12 month reference secondary job------------------------------*

* Secondary activity only recorded if not active in first activity
* Hence there is no "true" second job to code.

{

*<_empstat_2_year_>
	destring B52_q31, gen(empstat_2_year)
	recode empstat_2_year (11=4) (12=3) (61 62 21=2) (31 41 42 51 52 71 72=1) (81/99=.)
	replace empstat_2_year = . if lstatus_year != 1
	replace empstat_2_year = . if seconds != 1

	label var empstat_2_year "Employment status during past week secondary job 12 month recall"
	la de lblempstat_2_year 1 "Paid employee" 2 "Non-paid employee" 3 "Employer" 4 "Self-employed" 5 "Other, workers not classifiable by status", replace
	label values empstat_2_year lblempstat_2_year
*</_empstat_2_year_>


*<_ocusec_2_year_>
	gen byte ocusec_2_year = .

	replace ocusec_2_year = 1 if B52_q81==5 & seconds == 1
	replace ocusec_2_year = 2 if  (inrange(B52_q81,1,4) | inrange(B52_q81,7,8)) & seconds == 1
	replace ocusec_2_year = 4 if B52_q81 == 6 & seconds == 1
	replace ocusec_2_year = . if B52_q81 == 9 & seconds == 1

	label var ocusec_2_year "Sector of activity secondary job 12 day recall"
	la de lblocusec_2_year 1 "Public Sector, Central Government, Army" 2 "Private, NGO" 3 "State owned" 4 "Public or State-owned, but cannot distinguish"
	label values ocusec_2_year lblocusec_2_year
*</_ocusec_2_year_>


*<_industry_orig_2_year_>
	gen industry_orig_2_year = B52_q51 if seconds == 1
	replace industry_orig_2_year = "" if missing(empstat_2_year)
	label var industry_orig_2_year "Original survey industry code, secondary job 12 month recall"
*</_industry_orig_2_year_>


*<_industrycat_isic_2_year_>
	gen industrycat_isic_2_year = substr(industry_orig_2_year, 1, 4)
	label var industrycat_isic_2_year "ISIC code of secondary job 12 month recall"
*</_industrycat_isic_2_year_>


*<_industrycat10_2_year_>
	gen red_indus =substr(industry_orig_2_year,1,2)
	destring red_indus, replace

	gen byte industrycat10_2_year = .
	replace industrycat10_2_year=1 if red_indus>=00 & red_indus<=09
	replace industrycat10_2_year=2 if red_indus>=10 & red_indus<=14
	replace industrycat10_2_year=3 if red_indus>=15 & red_indus<=39
	replace industrycat10_2_year=4 if red_indus>=40 & red_indus<=41
	replace industrycat10_2_year=5 if red_indus>=45 & red_indus<=45
	replace industrycat10_2_year=6 if red_indus>=50 & red_indus<=59
	replace industrycat10_2_year=7 if red_indus>=60 & red_indus<=64
	replace industrycat10_2_year=8 if red_indus>=65 & red_indus<=74
	replace industrycat10_2_year=9 if red_indus==75
	replace industrycat10_2_year=10 if red_indus>=80 & red_indus<=99
	replace industrycat10_2_year= . if lstatus_year != 1 | (age < minlaborage & age != .)
	label var industrycat10_2_year "1 digit industry classification, secondary job 12 month recall"
	la de lblindustrycat10_2_year 1 "Agriculture" 2 "Mining" 3 "Manufacturing" 4 "Public utilities" 5 "Construction"  6 "Commerce" 7 "Transport and Comnunications" 8 "Financial and Business Services" 9 "Public Administration" 10 "Other Services, Unspecified"
	label values industrycat10_2_year lblindustrycat10_2_year
*</_industrycat10_2_year_>


*<_industrycat4_2_year_>
	gen byte industrycat4_2_year=industrycat10_2_year
	recode industrycat4_2_year (1=1)(2 3 4 5 =2)(6 7 8 9=3)(10=4)
	label var industrycat4_2_year "1 digit industry classification (Broad Economic Activities), secondary job 12 month recall"
	label values industrycat4_2_year lblindustrycat4_year
*</_industrycat4_2_year_>


*<_occup_orig_2_year_>
	gen occup_orig_2_year = B52_q61 if seconds == 1
	replace occup_orig_2_year = "" if missing(empstat_2_year)
	label var occup_orig_2_year "Original occupation record secondary job 12 month recall"
*</_occup_orig_2_year_>


*<_occup_isco_2_year_>
	gen occup_isco_2_year = .
	label var occup_isco_2_year "ISCO code of secondary job 12 month recall"
*</_occup_isco_2_year_>


*<_occup_skill_2_year_>
	gen occup_skill_2_year = .
	label var occup_skill_2_year "Skill based on ISCO standard secondary job 12 month recall"
*</_occup_skill_2_year_>


*<_occup_2_year_>
	gen occup_2_year = .
	label var occup_2_year "1 digit occupational classification, secondary job 12 month recall"
	la de lbloccup_2_year 1 "Managers" 2 "Professionals" 3 "Technicians" 4 "Clerks" 5 "Service and market sales workers" 6 "Skilled agricultural" 7 "Craft workers" 8 "Machine operators" 9 "Elementary occupations" 10 "Armed forces"  99 "Others"
	label values occup_2_year lbloccup_2_year
*</_occup_2_year_>


*<_wage_no_compen_2_year_>
	gen double wage_no_compen_2_year = .
	label var wage_no_compen_2_year "Last wage payment secondary job 12 month recall"
*</_wage_no_compen_2_year_>


*<_unitwage_2_year_>
	gen byte unitwage_2_year = .
	label var unitwage_2_year "Last wages' time unit secondary job 12 month recall"
	label values unitwage_2_year lblunitwage_year
*</_unitwage_2_year_>


*<_whours_2_year_>
	gen whours_2_year = .
	label var whours_2_year "Hours of work in last week secondary job 12 month recall"
*</_whours_2_year_>


*<_wmonths_2_year_>
	gen wmonths_2_year = .
	label var wmonths_2_year "Months of work in past 12 months secondary job 12 month recall"
*</_wmonths_2_year_>


*<_wage_total_2_year_>
	gen wage_total_2_year = .
	label var wage_total_2_year "Annualized total wage secondary job 12 month recall"
*</_wage_total_2_year_>

*<_firmsize_l_2_year_>
	gen byte firmsize_l_2_year = .
	label var firmsize_l_2_year "Firm size (lower bracket) secondary job 12 month recall"
*</_firmsize_l_2_year_>


*<_firmsize_u_2_year_>
	gen byte firmsize_u_2_year = .
	label var firmsize_u_2_year "Firm size (upper bracket) secondary job 12 month recall"
*</_firmsize_u_2_year_>

}


*----------8.9: 12 month reference additional jobs------------------------------*


*<_t_hours_others_year_>
	gen t_hours_others_year = .
	label var t_hours_others_year "Annualized hours worked in all but primary and secondary jobs 12 month recall"
*</_t_hours_others_year_>

*<_t_wage_nocompen_others_year_>
	gen t_wage_nocompen_others_year = .
	label var t_wage_nocompen_others_year "Annualized wage in all but primary & secondary jobs excl. bonuses, etc. 12 month recall)"
*</_t_wage_nocompen_others_year_>

*<_t_wage_others_year_>
	gen t_wage_others_year = .
	label var t_wage_others_year "Annualized wage in all but primary and secondary jobs 12 month recall"
*</_t_wage_others_year_>


*----------8.10: 12 month total summary------------------------------*


*<_t_hours_total_year_>
	gen t_hours_total_year = .
	label var t_hours_total_year "Annualized hours worked in all jobs 12 month month recall"
*</_t_hours_total_year_>


*<_t_wage_nocompen_total_year_>
	gen t_wage_nocompen_total_year = .
	label var t_wage_nocompen_total_year "Annualized wage in all jobs excl. bonuses, etc. 12 month recall"
*</_t_wage_nocompen_total_year_>


*<_t_wage_total_year_>
	gen t_wage_total_year = .
	label var t_wage_total_year "Annualized total wage for all jobs 12 month recall"
*</_t_wage_total_year_>


*----------8.11: Overall across reference periods------------------------------*


*<_njobs_>
	gen njobs = .
	label var njobs "Total number of jobs"
*</_njobs_>


*<_t_hours_annual_>
	gen t_hours_annual = .
	label var t_hours_annual "Total hours worked in all jobs in the previous 12 months"
*</_t_hours_annual_>


*<_linc_nc_>
	gen linc_nc = .
	label var linc_nc "Total annual wage income in all jobs, excl. bonuses, etc."
*</_linc_nc_>


*<_laborincome_>
	gen laborincome = .
	label var laborincome "Total annual individual labor income in all jobs, incl. bonuses, etc."
*</_laborincome_>


*----------8.13: Labour cleanup------------------------------*

{
*<_% Correction min age_>

** Drop info for cases under the age for which questions to be asked (do not need a variable for this)
local lab_var "lstatus potential_lf underemployment nlfreason unempldur_l unempldur_u empstat ocusec industry_orig industrycat_isic industrycat10 industrycat4 occup_orig occup_isco occup_skill occup wage_no_compen unitwage whours wmonths wage_total contract healthins socialsec union firmsize_l firmsize_u empstat_2 ocusec_2 industry_orig_2 industrycat_isic_2 industrycat10_2 industrycat4_2 occup_orig_2 occup_isco_2 occup_skill_2 occup_2 wage_no_compen_2 unitwage_2 whours_2 wmonths_2 wage_total_2 firmsize_l_2 firmsize_u_2 t_hours_others t_wage_nocompen_others t_wage_others  t_hours_total t_wage_nocompen_total t_wage_total lstatus_year potential_lf_year underemployment_year nlfreason_year unempldur_l_year unempldur_u_year empstat_year ocusec_year industry_orig_year industrycat_isic_year industrycat10_year industrycat4_year occup_orig_year occup_isco_year occup_skill_year occup_year wage_no_compen_year unitwage_year whours_year wmonths_year wage_total_year contract_year healthins_year socialsec_year union_year firmsize_l_year firmsize_u_year empstat_2_year ocusec_2_year industry_orig_2_year industrycat_isic_2_year industrycat10_2_year industrycat4_2_year occup_orig_2_year occup_isco_2_year occup_skill_2_year occup_2_year wage_no_compen_2_year unitwage_2_year whours_2_year wmonths_2_year wage_total_2_year firmsize_l_2_year firmsize_u_2_year t_hours_others_year t_wage_nocompen_others_year t_wage_others_year t_hours_total_year t_wage_nocompen_total_year t_wage_total_year njobs t_hours_annual linc_nc laborincome"

foreach v of local lab_var {
	capture confirm numeric variable `v'
	if _rc != 0 {
		replace `v'="" if ( age < minlaborage & !missing(age) )
	}
	else {
		replace `v'=. if ( age < minlaborage & !missing(age) )
	}

}

*</_% Correction min age_>
}


/*%%=============================================================================================
	9: Final steps
================================================================================================*/

{

*<_% KEEP VARIABLES - ALL_>

keep countrycode survname survey icls_v isced_version isco_version isic_version year vermast veralt harmonization int_year int_month hhid pid weight weight_q weight_m psu strata wave panel visit_no urban subnatid1 subnatid2 subnatid3 subnatidsurvey subnatid1_prev subnatid2_prev subnatid3_prev gaul_adm1_code gaul_adm2_code gaul_adm3_code hsize age male relationharm relationcs marital eye_dsablty hear_dsablty walk_dsablty conc_dsord slfcre_dsablty comm_dsablty migrated_mod_age migrated_ref_time migrated_binary migrated_years migrated_from_urban migrated_from_cat migrated_from_code migrated_from_country migrated_reason ed_mod_age school literacy educy educat7 educat5 educat4 educat_orig educat_isced vocational vocational_type vocational_length_l vocational_length_u vocational_field vocational_financed minlaborage lstatus potential_lf underemployment nlfreason unempldur_l unempldur_u empstat ocusec industry_orig industrycat_isic industrycat10 industrycat4 occup_orig occup_isco occup_skill occup wage_no_compen unitwage whours wmonths wage_total contract healthins socialsec union firmsize_l firmsize_u empstat_2 ocusec_2 industry_orig_2 industrycat_isic_2 industrycat10_2 industrycat4_2 occup_orig_2 occup_isco_2 occup_skill_2 occup_2 wage_no_compen_2 unitwage_2 whours_2 wmonths_2 wage_total_2 firmsize_l_2 firmsize_u_2 t_hours_others t_wage_nocompen_others t_wage_others t_hours_total t_wage_nocompen_total t_wage_total lstatus_year potential_lf_year underemployment_year nlfreason_year unempldur_l_year unempldur_u_year empstat_year ocusec_year industry_orig_year industrycat_isic_year industrycat10_year industrycat4_year occup_orig_year occup_isco_year occup_skill_year occup_year wage_no_compen_year unitwage_year whours_year wmonths_year wage_total_year contract_year healthins_year socialsec_year union_year firmsize_l_year firmsize_u_year empstat_2_year ocusec_2_year industry_orig_2_year industrycat_isic_2_year industrycat10_2_year industrycat4_2_year occup_orig_2_year occup_isco_2_year occup_skill_2_year occup_2_year wage_no_compen_2_year unitwage_2_year whours_2_year wmonths_2_year wage_total_2_year firmsize_l_2_year firmsize_u_2_year t_hours_others_year t_wage_nocompen_others_year t_wage_others_year t_hours_total_year t_wage_nocompen_total_year t_wage_total_year njobs t_hours_annual linc_nc laborincome

*</_% KEEP VARIABLES - ALL_>

*<_% ORDER VARIABLES_>

order countrycode survname survey icls_v isced_version isco_version isic_version year vermast veralt harmonization int_year int_month hhid pid  weight weight_q weight_m psu strata wave panel visit_no urban subnatid1 subnatid2 subnatid3 subnatidsurvey subnatid1_prev subnatid2_prev subnatid3_prev gaul_adm1_code gaul_adm2_code gaul_adm3_code hsize age male relationharm relationcs marital eye_dsablty hear_dsablty walk_dsablty conc_dsord slfcre_dsablty comm_dsablty migrated_mod_age migrated_ref_time migrated_binary migrated_years migrated_from_urban migrated_from_cat migrated_from_code migrated_from_country migrated_reason ed_mod_age school literacy educy educat7 educat5 educat4 educat_orig educat_isced vocational vocational_type vocational_length_l vocational_length_u vocational_field vocational_financed minlaborage lstatus potential_lf underemployment nlfreason unempldur_l unempldur_u empstat ocusec industry_orig industrycat_isic industrycat10 industrycat4 occup_orig occup_isco occup_skill occup wage_no_compen unitwage whours wmonths wage_total contract healthins socialsec union firmsize_l firmsize_u empstat_2 ocusec_2 industry_orig_2 industrycat_isic_2 industrycat10_2 industrycat4_2 occup_orig_2 occup_isco_2 occup_skill_2 occup_2 wage_no_compen_2 unitwage_2 whours_2 wmonths_2 wage_total_2 firmsize_l_2 firmsize_u_2 t_hours_others t_wage_nocompen_others t_wage_others t_hours_total t_wage_nocompen_total t_wage_total lstatus_year potential_lf_year underemployment_year nlfreason_year unempldur_l_year unempldur_u_year empstat_year ocusec_year industry_orig_year industrycat_isic_year industrycat10_year industrycat4_year occup_orig_year occup_isco_year occup_skill_year occup_year wage_no_compen_year unitwage_year whours_year wmonths_year wage_total_year contract_year healthins_year socialsec_year union_year firmsize_l_year firmsize_u_year empstat_2_year ocusec_2_year industry_orig_2_year industrycat_isic_2_year industrycat10_2_year industrycat4_2_year occup_orig_2_year occup_isco_2_year occup_skill_2_year occup_2_year wage_no_compen_2_year unitwage_2_year whours_2_year wmonths_2_year wage_total_2_year firmsize_l_2_year firmsize_u_2_year t_hours_others_year t_wage_nocompen_others_year t_wage_others_year t_hours_total_year t_wage_nocompen_total_year t_wage_total_year njobs t_hours_annual linc_nc laborincome

*</_% ORDER VARIABLES_>

}


*<_% COMPRESS_>

compress

*</_% COMPRESS_>


*<_% DELETE MISSING VARIABLES_>

quietly: describe, varlist
local kept_vars `r(varlist)'

foreach var of local kept_vars {
   capture assert missing(`var')
   if _rc == 0 {
	drop `var'
	dis as error "Drop variable: `var' since all missing"
   }
}

*</_% DELETE MISSING VARIABLES_>


*<_% SAVE_>

save "`path_output'/`out_file'", replace

*</_% SAVE_>
