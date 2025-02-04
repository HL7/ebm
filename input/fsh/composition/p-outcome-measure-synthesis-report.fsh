Profile: OutcomeMeasureSynthesisReport
Parent: EvidenceSynthesisTableReportPackage
Id: outcome-measure-synthesis-report
Description: "Profile of Composition for Evidence Based Medicine IG. The OutcomeMeasureSynthesisReport Profile is used for an evidence report including the findings for any number of outcomes in a synthesis of research studies, where there may be a unique observed study group, observed exposure group, and observed comparator group for each outcome."
* ^extension[$ext-fmm].valueInteger = 1
* ^extension[$ext-wg].valueCode = #cds
* ^extension[$ext-standards-status].valueCode = #draft
* type.coding 1..1
* type.coding = https://fevir.net/resources/CodeSystem/179423#OutcomeMeasureSynthesisReport "OutcomeMeasureSynthesisReport"
* type.text = "Outcome Measure Synthesis Report"