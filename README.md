<h1 align="center"> Assessment Center Database </h1>

This project provides the scripts that allow creation the of tables with primary and foreign keys of a database of a language center. It also includes some scripts that provide general reports to know the productivity of the centers and assessors.

## Tables and variables:

The tables contemplated in this scheme are 9 and are shown below:

![image](https://github.com/YennyAC/Language_Center_PostgreSQL/assets/158214216/4909fdd5-c3bc-4827-830d-e9b53ad3bf41)

<li><b>customer</b>: Table that stores the general data of the person who needs to present an assessment. </li>
<li><b>assesor</b>: Table that stores the general data of the person performing the assessment.</li>
<li><b>center</b>: Table that stores the data of the language center.</li>
<li><b>language</b>: Table that stores the type of language to be evaluated in the assessment.</li>
<li><b>score</b>: Table that stores the concepts that will be evaluated in each assessment.</li>
<li><b>scorexcustomer</b>:Table that stores the score obtained for each student in the assessment.</li>
<li><b>assesor_customer</b>:Table that allows the relationship between the table assesor and customer.</li>
<li><b>center_assesor</b>:Table that allows the relationship between the table center and assessor.</li>
<li><b>language_assesor</b>: Table that allows the relationship between the table language and assesor.</li>
<br><br/>
<b>Note</b>: Data insertion has not been included in the scripts.

## Reports:
The published queries show the following results:

<li><b></b>Number of clients by assessor and by date. </li>
<li><b></b>Number of clients attended by an assessor and language center. </li>
<li><b></b>List the status of the assessor by center.</li>

## Acknowledgments:
I thank IT instructor Will Edwards and the Cantek IT Program for allowing me to receive this training, and for conducting the creation of projects using the tools and concepts learned in the program.
 
 	

