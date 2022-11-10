clear all

* set directory
set more off, perm
cd "C:\Users\user\Documents\trith"
import excel using "microdataset1.xlsx", sheet("Sheet1") firstrow


* Learning more about this data file in order to verify how many observations it has 
* and see the names of the variables it contains.
describe

* (1) Calculate descriptive statistics
summarize

* (2) More stats for just 4 variables
summarize wage educ age exper, detail 
outreg2 using x.doc, replace sum(detail) keep(wage educ age exper) eqkeep(p10 p25 p50 p75 p90)
* Second way
codebook wage educ age exper

* (3) Graphs for exploring continuous variables
histogram wage, frequency fcolor(ltbluishgray) lcolor(ltblue) ylabel(, angle(horizontal)) title(Histogram of wage)
histogram educ, frequency fcolor(ltbluishgray) lcolor(ltblue) ylabel(, angle(horizontal)) title(Histogram of education)
histogram age, frequency fcolor(ltbluishgray) lcolor(ltblue) ylabel(, angle(horizontal)) title(Histogram of age)
histogram hours, frequency fcolor(ltbluishgray) lcolor(ltblue) ylabel(, angle(horizontal)) title(Histogram of hours)
histogram faminc, frequency fcolor(ltbluishgray) lcolor(ltblue) ylabel(, angle(horizontal)) title(Histogram of family's income)

* (4)
ssc install outreg2
reg wage educ , robust
outreg2 using AssignmentStata.doc


reg wage educ age , robust


generate age2 = age^2
regress wage educ age age2 , robust

