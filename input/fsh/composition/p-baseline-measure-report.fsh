Profile: BaselineMeasureReport
Parent: EvidenceTableReportPackage
Id: baseline-measure-report
Description: "Profile of Composition for Evidence Based Medicine IG. The BaselineMeasureReport Profile is used for an evidence report including the findings for any number of baseline measures in a research study."
* ^extension[$ext-fmm].valueInteger = 1
* ^extension[$ext-wg].valueCode = #cds
* ^extension[$ext-standards-status].valueCode = #draft
* type.coding 1..1
* type.coding = https://fevir.net/resources/CodeSystem/179423#BaselineMeasureReport "BaselineMeasureReport"
* type.text = "Baseline Measure Report"
