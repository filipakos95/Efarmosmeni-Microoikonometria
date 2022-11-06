clear all

* set directory
set more off, perm
cd "C:\Users\user\Documents\trith"
import excel using "microdataset1.xlsx", sheet("Sheet1") firstrow


*vriskw μέσος όρος, τυπική απόκλιση, ελάχιστες και μέγιστες τιμές 
summarize

*krataw tis metablites pou xreiazomai
keep wage educ age hours faminc exper

*upologizo diameso kai 10%, 25%, 75%, 90% posostimorio
summarize wage educ age exper, detail

*istogramma
histogram wage 
histogram educ 
histogram age 
histogram hours 
histogram faminc 
histogram exper
