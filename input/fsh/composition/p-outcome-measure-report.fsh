Profile: OutcomeMeasureReport
Parent: EvidenceReport
Id: outcome-measure-report
Description: "Profile of Composition for Evidence Based Medicine IG. The OutcomeMeasureReport Profile is used for an evidence report including the findings for any number of outcome measures in a research study."
* ^extension[$ext-fmm].valueInteger = 1
* ^extension[$ext-wg].valueCode = #cds
* ^extension[$ext-standards-status].valueCode = #draft
* type.coding 1..1
* type.coding = https://fevir.net/resources/CodeSystem/179423#OutcomeMeasureReport "OutcomeMeasureReport"
* type.text = "Outcome Measure Report"
* relatesTo 1..*
* relatesTo ^slicing.discriminator.type = #value
* relatesTo ^slicing.discriminator.path = "label"
* relatesTo ^slicing.rules = #open
* relatesTo contains interventionGroup 0..* MS and comparatorGroup 0..* MS and totalGroup 0..1 MS
* relatesTo[interventionGroup].type = #depends-on
* relatesTo[interventionGroup].label = "Intervention Group"
* relatesTo[interventionGroup].resourceReference only Reference(ExposureGroup or ComparatorGroup)
* relatesTo[comparatorGroup].type = #depends-on
* relatesTo[comparatorGroup].label = "Comparator Group"
* relatesTo[comparatorGroup].resourceReference only Reference(ExposureGroup or ComparatorGroup)
* relatesTo[totalGroup].type = #depends-on
* relatesTo[totalGroup].label = "Total Group"
* relatesTo[totalGroup].resourceReference only Reference(StudyGroup)
* section 1..*
  * focus only Reference(VariableDefinition)
  * section ^slicing.discriminator.type = #value
  * section ^slicing.discriminator.path = "code.coding"
  * section ^slicing.rules = #open
  * section contains comparatorEvidence 0..1 MS and interventionEvidence 0..1 MS and totalGroup 0..1 MS and comparativeEvidence 0..1 MS
  * section[comparatorEvidence].code.coding 1..1
  * section[comparatorEvidence].code.coding = https://fevir.net/resources/CodeSystem/179423#evidence-with-comparator-alone "Evidence with comparator alone"
  * section[comparatorEvidence]
    * entry 0..1 
    * entry only Reference(NoncomparativeEvidence)
  * section[interventionEvidence].code.coding 1..1
  * section[interventionEvidence].code.coding = https://fevir.net/resources/CodeSystem/179423#evidence-with-intervention-alone "Evidence with intervention alone"
  * section[interventionEvidence]
    * entry 0..1 
    * entry only Reference(NoncomparativeEvidence)
  * section[totalGroup].code.coding 1..1
  * section[totalGroup].code.coding = https://fevir.net/resources/CodeSystem/179423#evidence-with-total-group "Evidence with total group"
  * section[totalGroup]
    * entry 0..1 
    * entry only Reference(NoncomparativeEvidence)
  * section[comparativeEvidence].code.coding 1..1
  * section[comparativeEvidence].code.coding = https://fevir.net/resources/CodeSystem/179423#evidence-with-intervention-vs-comparator "Evidence with intervention vs. comparator"
  * section[comparativeEvidence]
    * entry 0..1 
    * entry only Reference(ComparativeEvidence)
