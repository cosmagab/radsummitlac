clear all

global dir "C:\Users\Daniel Jensen\Box Sync\Training\LAC_Summit"

sysuse auto, clear

program define tabreport

syntax varlist(numeric max=2)

tab `varlist'

end

putdocx clear
putdocx begin

putdocx paragraph 
putdocx text("This is my first attempt at putdocx, let's see!")

tabreport gear foreign
return list
putdocx table=`r(N)' , title("Boring cars' table")


putdocx save "$dir/mydoc1.docx", replace
