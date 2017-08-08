FULL SOLUTION
=============

* create some data;
options validvarname=upcase;
libname sd1 "d:/sd1";
data sd1.have;
   lon=-73.97378;
   lat=40.76245;
run;quit;


%utl_submit_wps64('
libname sd1 "d:/sd1";
options set=R_HOME "C:/Program Files/R/R-3.3.2";
libname wrk "%sysfunc(pathname(work))";
proc r;
submit;
source("C:/Program Files/R/R-3.3.2/etc/Rprofile.site", echo=T);
library(haven);
library(ggmap);
lonlat_sample<-as.numeric(read_sas("d:/sd1/have.sas7bdat"));
res <- revgeocode(lonlat_sample, output="more");
endsubmit;
import r=res data=wrk.reswps;
run;quit;
');

proc transpose data=reswps out=reswpsxpo;
var _all_;
run;quit;


p to 40 obs from reswps total obs=1

                                                          STREET_
bs                    ADDRESS                    PREMISE  NUMBER     ROUTE

1   Trump, 725 5th Ave, New York, NY 10022, USA   Trump     725    5th Avenue


                                   ADMINISTRATIVE_  ADMINISTRATIVE_                 POSTAL
NEIGHBORHOOD  POLITICAL  LOCALITY   AREA_LEVEL_2     AREA_LEVEL_1       COUNTRY      CODE

  Midtown     Manhattan  New York  New York County     New York      United States   10022

%utl_submit_r64('
source("c:/Program Files/R/R-3.3.2/etc/Rprofile.site",echo=T);
library("ggmap");
lonlat_sample <- as.numeric(geocode("725 fifth avenue, New York NY"));
class(lonlat_sample);
lonlat_sample;
res <- revgeocode(lonlat_sample, output="more");
res$postal_code;
res$neighborhood;
');

