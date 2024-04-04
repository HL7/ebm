Profile: BaselineMeasureReport
Parent: EvidenceReport
Id: baseline-measure-report
Description: "Profile of Composition for Evidence Based Medicine IG. The BaselineMeasureReport Profile is used for an evidence report including the findings for any number of baseline measures in a research study."
* ^extension[$ext-fmm].valueInteger = 1
* ^extension[$ext-wg].valueCode = #cds
* ^extension[$ext-standards-status].valueCode = #draft
* category 1..*
* category ^slicing.discriminator.type = #value
* category ^slicing.discriminator.path = "coding"
* category ^slicing.rules = #open
* category contains baselineMeasureReport 1..1 MS
* category[baselineMeasureReport].coding 1..1
* category[baselineMeasureReport].coding = https://fevir.net/resources/CodeSystem/179423#BaselineMeasureReport "BaselineMeasureReport"
* category[baselineMeasureReport].text = "Baseline Measure Report"
* section 1..*
  * focus only Reference(VariableDefinition)
  * section 1..*
  * section ^slicing.discriminator.type = #value
  * section ^slicing.discriminator.path = "code.coding"
  * section ^slicing.rules = #open
  * section contains comparatorEvidence 0..1 MS and interventionEvidence 0..1 MS and totalGroup 0..1 MS and comparativeEvidence 0..1 MS
  * section[comparatorEvidence].code.coding 1..1
  * section[comparatorEvidence].code.coding = https://fevir.net/resources/CodeSystem/179423#evidence-with-comparator-alone "Evidence with comparator alone"
  * section[comparatorEvidence]
    * entry 0..1 
    * entry only Reference(BaselineMeasureEvidence)
  * section[interventionEvidence].code.coding 1..1
  * section[interventionEvidence].code.coding = https://fevir.net/resources/CodeSystem/179423#evidence-with-intervention-alone "Evidence with intervention alone"
  * section[interventionEvidence]
    * entry 0..1 
    * entry only Reference(BaselineMeasureEvidence)
  * section[totalGroup].code.coding 1..1
  * section[totalGroup].code.coding = https://fevir.net/resources/CodeSystem/179423#evidence-with-total-group "Evidence with total group"
  * section[totalGroup]
    * entry 0..1 
    * entry only Reference(BaselineMeasureEvidence)
  * section[comparativeEvidence].code.coding 1..1
  * section[comparativeEvidence].code.coding = https://fevir.net/resources/CodeSystem/179423#evidence-with-intervention-vs-comparator "Evidence with intervention vs. comparator"
  * section[comparativeEvidence]
    * entry 0..1 
    * entry only Reference(ComparativeBaselineMeasureEvidence)
