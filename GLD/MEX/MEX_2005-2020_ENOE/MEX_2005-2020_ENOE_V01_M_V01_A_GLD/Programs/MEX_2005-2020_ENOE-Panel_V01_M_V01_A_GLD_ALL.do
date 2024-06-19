
/*%%=============================================================================================
	0: GLD Panel Creation Preamble
==============================================================================================%%*/

/* -----------------------------------------------------------------------

<_Program name_>				MEC_2005-2020_ENOE-Panel_V01_M_V01_A_GLD_ALL.do </_Program name_>
<_Application_>					Stata 17 <_Application_>
<_Author(s)_>					World Bank Jobs Group (gld@worldbank.org) </_Author(s)_>
<_Date created_>				2024-06-12 </_Date created_>

<_Country_>						Mexico </_Country_>
<_Survey Title_>				ENOE </_Survey Title_>
<_Survey Years_>				2005 - 2020 </_Survey Years_>
<_Sample size (Unique HH)_> 	 </_Sample size (Unique HH)_>
<_Sample size (Unique IND)_> 	 </_Sample size (Unique IND)_>
<_Rotation pattern> 			Individuals are interviewed for 4 consecutive quarters prior to replacement. There is 25% attrition between rounds in the first 4 quarters of the 2017-2018 PLFS </_Rotation pattern_>
-----------------------------------------------------------------------
<_Version Control_>

</_Version Control_>


------------------------------------------------------------------------- */


/*%%=============================================================================================
	1: Setting up of program environment, dataset
==============================================================================================%%*/

*----------1.1: Initial commands------------------------------*

clear
set more off
set mem 800m

*----------1.2: Set directories------------------------------*

global server 	"Y:\GLD-Harmonization\625372_DB"
global country 	"MEX"
global survey_p "ENOE"
global survey_i "ENOE"
global years 	"2005 2006 2007 2008 2009 2010 2011 2012 2013 2014 2015 2016 2017 2018 2019 2020"
global vermast 	"V01"
global veralt  	"V01"


*------------------------------------------------------------*
local first_year = word("$years", 1)
local last_year = word("$years", -1)
global panel_years "`first_year'-`last_year'"

global level_1	 "${country}_${panel_years}_${survey_p}"
global level_2_mast "${level_1}_${vermast}_M"
global level_2_harm "${level_1}_${vermast}_M_${veralt}_A_GLD"

* From chunks, define path_in, path_output folder
global path_helper 	 "${server}/${country}/${level_1}/${level_2_harm}/Programs/Helper"
global path_output   "${server}/${country}/${level_1}/${level_2_harm}/Data/Harmonized"
global path_work	 "${server}/${country}/${level_1}/${level_2_harm}/Work"

* Define Output file name
global out_file "${level_2_harm}_ALL.dta"

*----------1.3: Install packages------------------------------*



/*%%=============================================================================================
	2: Append the datasets
==============================================================================================%%*/

* A1: Create a list of files with all the harmonized datasets
do "${path_helper}/A1_Filelist.do"

	* Diagnostic 1: Check data quality for appending
	gldpanel_append_check

* A2: Identify the latest file version
do "${path_helper}/A2_Extract_Latest.do"

* A3: Append the datasets
do "${path_helper}/A3_Append.do"

*drop 2020-Q2 to 2020-Q4
drop if year == 2020 & (wave == "Q2" | wave == "Q3" | wave == "Q4")


/*%%=============================================================================================
	3: Create panel variable
==============================================================================================%%*/

	* Diagnostic 2: Check wave and visit consistency. For a given HH wave- visit_no should be unique. Only applies when visit_no is available. 
	
	capture confirm variable visit_no
	
	if _rc == 0 {	  
	gldpanel_wave_visit_check
	drop vw_tag
	}
	
	*There are no cases of individual-waves where the household-wave info is mapped to more than one visit_no.

	* Diagnostic 3: Check for re-use of HHID outside panel
	gldpanel_id_check

/*
	* The results above show that there is a prevalent re-use of HHIDs in non-subsequent years!
	* Also, there is a re-use of HHID within a year! 
	* This means we cannot use HHID or PID to create the panel variable!
	* Incorporate visit number in the process
	
* B1: Create panel variables
do "${path_helper}/B1_Create_Panel.do"

	* Diagnostic: Check for re-use of HHID outside panel
	gldpanel_id_check, hhid(hhid_panel) pid(pid_panel)
	
	* Check panel formation
	levelsof panel, local(panels)
	foreach panel of local panels {
	dis "This is panel: `panel'"
	tab year wave if panel == "`panel'"
}
*/

tostring panel, replace format("%02.0f")

*<_hhid_panel_>
	gen hhid_panel = hhid + panel
	label var hhid_panel "Household ID (panel)"
*</_hhid_panel_>


*<_pid_panel_>

* Create PID variable adding panel information
	* First extract the individual number
	gen rosternum = substr(pid, -2, 2)
	gen pid_panel = hhid + panel + rosternum
	drop rosternum
	
	isid pid_panel wave year
	label var pid_panel "Person ID (panel)"
*</_pid_panel_>

	* Diagnostic: Check for re-use of HHID outside panel
	gldpanel_id_check, hhid(hhid_panel) pid(pid_panel)

* Erase temporary file
erase "${path_output}/paneldata_${country}.dta"

* Save the file (use of the macros!)
save "${path_output}/${out_file}", replace


/*%%=============================================================================================
	4: Assess panel quality
==============================================================================================%%*/

*----------4.1: Age sex matches ------------------------------*
gldpanel_issue_check, hhid(hhid_panel) pid(pid_panel)
graph export "${path_work}/age_sex_matches.png", replace

*----------4.2: Sources of mismatch ------------------------------*
gldpanel_check_source, hhid(hhid_panel) pid(pid_panel)
graph export "${path_work}/source_mismatches.png", replace


*----------4.3: PID Attrition ------------------------------*
gldpanel_attrition, hhid(hhid_panel) pid(pid_panel) wave(wave) consecutive_waves
graph export "${path_work}/attrition_consecutive_waves.png", replace

gldpanel_attrition, hhid(hhid_panel) pid(pid_panel) wave(wave) any_wave
graph export "${path_work}/attrition_any_wave.png", replace

gldpanel_attrition, hhid(hhid_panel) pid(pid_panel) wave(wave) all_waves
graph export "${path_work}/attrition_all_waves.png", replace


    * Display unique panels and tabulate year and wave for each panel
    quietly levelsof panel, local(panels)
    foreach panel of local panels {
        display "* Displaying panel: `panel'",
        dis "This is panel: `panel'"
        tab year wave if panel == "`panel'"
    }




