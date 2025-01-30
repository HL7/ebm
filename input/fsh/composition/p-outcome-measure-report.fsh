Profile: OutcomeMeasureReport
Parent: EvidenceTableReportPackage
Id: outcome-measure-report
Description: "Profile of Composition for Evidence Based Medicine IG. The OutcomeMeasureReport Profile is used for an evidence report including the findings for any number of outcome measures in a research study."
* ^extension[$ext-fmm].valueInteger = 1
* ^extension[$ext-wg].valueCode = #cds
* ^extension[$ext-standards-status].valueCode = #draft
* type.coding 1..1
* type.coding = https://fevir.net/resources/CodeSystem/179423#OutcomeMeasureReport "OutcomeMeasureReport"
* type.text = "Outcome Measure Report"
