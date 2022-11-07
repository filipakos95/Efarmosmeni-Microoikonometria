clear all

* set directory
set more off, perm
cd "C:\Users\user\Documents\trith"
import excel using "microdataset1.xlsx", sheet("Sheet1") firstrow


*vriskw μέσος όρος, τυπική απόκλιση, ελάχιστες και μέγιστες τιμές 
summarize

*ftiaxnw pinaka gia mean, stddev, min, max

input str16 Variable Mean StdDev Min Max
"vinlf" .5683931 .4956295 0 1
"hours" 740.5764 871.3142 0 4950
"kidslt6" .2377158 .523959 0 3
"kidsge6" 1.353254 1.319874 0 8
"age" 42.53785 8.072574 30 60					
"educ" 12.28685 2.280246 5 17
"wage" 4.177682 3.310282 0.1282 25
"repwage" 1.849734 2.419887 0 9,98
"hushrs" 2267.271 595.5666 175 5010
"husage" 45.12085 8.058793 30 60				
"huseduc" 12.49137 3.020804 3 17
"huswage" 7.482179 4,230559 0.4121 0.509
"faminc" 23080.59 12190.2 1500 96000
"mtr" .6788632 0.0834955 0.4415 0.9415
"motheduc" 9.250996 3.367468 0 17					
"fatheduc" 8.808765 3.57229 0 17
"unem" 8.623506 3.114934 3 14
"city" 0.6427623 0.4795042 0 1
"exper" 10.63081 8.06913 0 45
"nwifeinc" 20.12896 11.6348 -0.0290575 96					
"expersq" 178.0385 249.6308 0 2025

end
list

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
