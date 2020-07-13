# utl_geocode_reverse_geocode
Given and address get long lat or given long lat get address

    ```  WPS/SAS/R: Given Latitude and Longitude get postal_code and other geography  ```
    ```    ```
    Free Geocoding                                                                                                                                                                                                                                                  
                                                                                                                                                                                                                                                                
       google                                                                                                                                                                                                                                                          
        https://developers.google.com/maps/documentation/geocoding/intro                                                                                                                                                                                                                                                         

        Texas A&M                                                                          
        http://geoservices.tamu.edu/Services/Geocode/BatchProcess/OverviewHowData.aspx     
                                                                                   
        UCLA Web Geocoder                                                                 
        https://gis.ucla.edu/geocoder                                                      
                                                                                   
        github
        https://tinyurl.com/yd9c7l94
        https://github.com/rogerjdeangelis/utl_geocode_and_reverse_geocode_netherland_addresses_and_latitudes_longitudes
    ```  WORKING CODE  ```
    ```  ============  ```
    ```    ```
    ```     WPS/R  ```
    ```    ```
    ```      res <- revgeocode(lonlat_sample, output="more");  ```
    ```    ```
    ```    You can also geocode  ```
    ```    ```
    ```      geo <- geocode("725 fifth avenue, New York NY")  ```
    ```      yeild see code at end  ```
    ```    ```
    ```         [1] -73.97378  40.76245  ```
    ```         [1] 10022  ```
    ```         [1] Midtown  ```
    ```    ```
    ```    ```
    ```  If you have IML interface with R you can just paste the code below  ```
    ```    ```
    ```  The free express edition of WPS does not limit the size of the SAS dataset  ```
    ```  produced by R  ```
    ```    ```
    ```  Package also does geocoding  ```
    ```    ```
    ```  HAVE  ```
    ```  ====  ```
    ```    ```
    ```  Up to 40 obs from sd1.have total obs=1  ```
    ```    ```
    ```  Obs       LON        LAT  ```
    ```    ```
    ```   1     -73.9738    40.7625  ```
    ```    ```
    ```  WANT  ```
    ```  ===  ```
    ```    ```
    ```  Up to 40 obs WORK.RESWPSXPO total obs=11  ```
    ```    ```
    ```  Obs    NAME                           VALUE  ```
    ```    ```
    ```   11    POSTAL_CODE                    10022  ```
    ```    ```
    ```    1    ADDRESS                        Trump, 725 5th Ave, New York, NY 10022, USA  ```
    ```    2    PREMISE                        Trump  ```
    ```    3    STREET_NUMBER                  725  ```
    ```    4    ROUTE                          5th Avenue  ```
    ```    5    NEIGHBORHOOD                   Midtown  ```
    ```    6    POLITICAL                      Manhattan  ```
    ```    7    LOCALITY                       New York  ```
    ```    8    ADMINISTRATIVE_AREA_LEVEL_2    New York County  ```
    ```    9    ADMINISTRATIVE_AREA_LEVEL_1    New York  ```
    ```   10    COUNTRY                        United States  ```
    ```    ```
    ```    ```
