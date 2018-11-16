# hw07-aleurcelay 

Hello! :raising_hand:

This is the repository of my homework 7: Building your own R package, for the [STAT547](http://stat545.com) course.
Instructions for this assignment can be found [here](http://stat545.com/Classroom/assignments/hw07/hw07.html)


For this assignment I modified the foofactors package developed by Jenny Brian. 
The original package can be found [here](https://github.com/jennybc/foofactors) 

For the README file of my modified version of foofactors please click in the following link

:star2: [Modified foofactors by Alejandra](/foofactors/README.md)

## Summary

### Installation

To install my version of the package:
`devtools::install_github("STAT545-UBC-students/hw07-aleurcelay/foofactors")`

This package contains the following functions.

* `fbind()`: Glues two factors together and returns factor.
* `freq_out()`: Returns a frequency table as a well-named `tbl_df`
* `first_upper()`: Returns the same factor but with the first letter of each character value capitalized. 
* `subfactor()`: Returns a factor with just the first three letters of each element. 
* `factor_asis()`: Encodes a vector as a factor with levels in the same order as they appear in the data
* `reorder_desc()`: Reorders the levels of a factor in a descending order. 


Below is quick demo, for some more examples working with graphs take a look at the [vignettes](http://rpubs.com/aleurcelay/440302) 