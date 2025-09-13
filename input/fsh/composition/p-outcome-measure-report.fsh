Profile: OutcomeMeasureReport
Parent: EvidenceReport
Id: outcome-measure-report
Description: "Profile of Composition for Evidence Based Medicine IG. The OutcomeMeasureReport Profile is used for an evidence report including the findings for any number of outcome measures in a research study."
* ^extension[$ext-fmm].valueInteger = 1
* ^extension[$ext-wg].valueCode = #cds
* ^extension[$ext-standards-status].valueCode = #trial-use
* type.coding 1..1
* type.coding = https://fevir.net/resources/CodeSystem/179423#OutcomeMeasureReport "OutcomeMeasureReport"
* type.text = "Outcome Measure Report"
* section ^slicing.discriminator.type = #value
* section ^slicing.discriminator.path = "code.coding"
* section ^slicing.rules = #open
* section contains groups 0..1 and results-outcome 0..* MS
* section[groups].code.coding 1..1
* section[groups].code.coding = https://fevir.net/resources/CodeSystem/179423#groups "Groups"
* section[groups]
  * entry only Reference(Group or EvidenceVariable or List)
* section[results-outcome].code.coding 1..1
* section[results-outcome].code.coding = https://fevir.net/resources/CodeSystem/179423#results "Results"
* section[results-outcome]
  * focus only Reference(VariableDefinition)
  * entry only Reference(NonComparativeEvidence or ComparativeEvidence)
