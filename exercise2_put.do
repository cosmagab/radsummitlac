*** I added this to see how does it work on GitHub

lear all

global dir "C:\Users\Daniel Jensen\Box Sync\Training\LAC_Summit"

sysuse auto, clear

program define tabreport

putdocx clear
putdocx begin

syntax varlist(numeric max=2)

tab `varlist'



end


putdocx paragraph 
putdocx text ("This is my first attempt at putdocx, let's see!")

tabreport gear foreign
return list
putdocx table tb = "`r(N)'" , title("Cars' table")


putdocx save "$dir/mydoc1.docx", replace
