Profile: ComparativeEvidenceReport
Parent: EvidenceReport
Id: comparative-evidence-report
Description: "Profile of Composition for Evidence Based Medicine IG. The ComparativeEvidenceReport Profile is used for an evidence report including the study group, exposure, comparator, and findings for any number of outcomes comparing the exposure to the comparator in the study group."
* ^extension[$ext-fmm].valueInteger = 1
* ^extension[$ext-wg].valueCode = #cds
* ^extension[$ext-standards-status].valueCode = #draft
* category 1..*
* category ^slicing.discriminator.type = #value
* category ^slicing.discriminator.path = "coding"
* category ^slicing.rules = #open
* category contains comparativeEvidenceReport 1..1 MS
* category[comparativeEvidenceReport].coding 1..1
* category[comparativeEvidenceReport].coding = https://fevir.net/resources/CodeSystem/179423#ComparativeEvidenceReport "ComparativeEvidenceReport"
* category[comparativeEvidenceReport].text = "Comparative Evidence Report"
* section 5..*
* section ^slicing.discriminator.type = #value
* section ^slicing.discriminator.path = "code.coding"
* section ^slicing.rules = #open
* section contains population 1..1 MS and intervention 1..* MS and comparator 1..1 MS and studyDesign 1..1 MS and baseline 0..1 MS and flow 0..1 MS and outcomes 1..1 MS
* section[population].code.coding 1..1
* section[population].code.coding = https://fevir.net/resources/CodeSystem/179423#population "Population"
* section[population]
  * entry only Reference(StudyGroup)
* section[intervention].code.coding 1..1
* section[intervention].code.coding = https://fevir.net/resources/CodeSystem/179423#intervention "Intervention"
* section[intervention]
  * section 2..2
  * section ^slicing.discriminator.type = #value
  * section ^slicing.discriminator.path = "code.coding"
  * section ^slicing.rules = #open
  * section contains description 1..1 MS and group 1..1 MS
  * section[description].code.coding 1..1
  * section[description].code.coding = https://fevir.net/resources/CodeSystem/179423#intervention-description "Intervention Description"
  * section[description]
    * entry 0..1
    * entry only Reference(ExposureDefinition)
  * section[group].code.coding 1..1
  * section[group].code.coding = https://fevir.net/resources/CodeSystem/179423#intervention-group "Intervention Group"
  * section[group]
    * entry 0..1
    * entry only Reference(ExposureGroup)
* section[comparator].code.coding 1..1
* section[comparator].code.coding = https://fevir.net/resources/CodeSystem/179423#comparator "Comparator"
* section[comparator]
  * section 2..2
  * section ^slicing.discriminator.type = #value
  * section ^slicing.discriminator.path = "code.coding"
  * section ^slicing.rules = #open
  * section contains description 1..1 MS and group 1..1 MS
  * section[description].code.coding 1..1
  * section[description].code.coding = https://fevir.net/resources/CodeSystem/179423#comparator-description "Comparator Description"
  * section[description]
    * entry 0..1
    * entry only Reference(ComparatorDefinition or ExposureDefinition)
  * section[group].code.coding 1..1
  * section[group].code.coding = https://fevir.net/resources/CodeSystem/179423#comparator-group "Comparator Group"
  * section[group]
    * entry 0..1
    * entry only Reference(ComparatorGroup or ExposureGroup)
* section[studyDesign].code.coding 1..1
* section[studyDesign].code.coding = https://fevir.net/resources/CodeSystem/179423#study-design "Study Design"
* section[studyDesign]
  * entry only Reference(ResearchStudy or Classification)
* section[baseline].code.coding 1..1
* section[baseline].code.coding = https://fevir.net/resources/CodeSystem/179423#baseline-measures "Baseline Measures"
* section[baseline]
  * section 1..*
    * focus only Reference(ExposureVariable)
    * section 1..*
    * section ^slicing.discriminator.type = #value
    * section ^slicing.discriminator.path = "code.coding"
    * section ^slicing.rules = #open
    * section contains comparatorEvidence 1..1 MS and interventionEvidence 1..1 MS and totalGroup 0..1 MS and comparativeEvidence 0..1 MS
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
* section[flow].code.coding 1..1
* section[flow].code.coding = https://fevir.net/resources/CodeSystem/179423#participant-flow "Participant Flow"
* section[flow]
  * section 1..*
    * focus only Reference(ParticipantFlowMeasure)
    * section 1..*
    * section ^slicing.discriminator.type = #value
    * section ^slicing.discriminator.path = "code.coding"
    * section ^slicing.rules = #open
    * section contains comparatorEvidence 0..1 MS and interventionEvidence 0..1 MS and totalGroup 0..1 MS and comparativeEvidence 0..1 MS
    * section[comparatorEvidence].code.coding 1..1
    * section[comparatorEvidence].code.coding = https://fevir.net/resources/CodeSystem/179423#evidence-with-comparator-alone "Evidence with comparator alone"
    * section[comparatorEvidence]
      * entry 0..1 
      * entry only Reference(ParticipantFlow)
    * section[interventionEvidence].code.coding 1..1
    * section[interventionEvidence].code.coding = https://fevir.net/resources/CodeSystem/179423#evidence-with-intervention-alone "Evidence with intervention alone"
    * section[interventionEvidence]
      * entry 0..1 
      * entry only Reference(ParticipantFlow)
    * section[totalGroup].code.coding 1..1
    * section[totalGroup].code.coding = https://fevir.net/resources/CodeSystem/179423#evidence-with-total-group "Evidence with total group"
    * section[totalGroup]
      * entry 0..1 
      * entry only Reference(ParticipantFlow)
    * section[comparativeEvidence].code.coding 1..1
    * section[comparativeEvidence].code.coding = https://fevir.net/resources/CodeSystem/179423#evidence-with-intervention-vs-comparator "Evidence with intervention vs. comparator"
    * section[comparativeEvidence]
      * entry 0..1 
      * entry only Reference(ComparativeParticipantFlow)
* section[outcomes].code.coding 1..1
* section[outcomes].code.coding = https://fevir.net/resources/CodeSystem/179423#outcome-measures "Outcome Measures"
* section[outcomes]
  * section 1..*
    * focus only Reference(OutcomeVariable)
    * section 1..*
    * section ^slicing.discriminator.type = #value
    * section ^slicing.discriminator.path = "code.coding"
    * section ^slicing.rules = #open
    * section contains comparatorEvidence 0..1 MS and interventionEvidence 0..1 MS and comparativeEvidence 1..1 MS
    * section[comparatorEvidence].code.coding 1..1
    * section[comparatorEvidence].code.coding = https://fevir.net/resources/CodeSystem/179423#evidence-with-comparator-alone "Evidence with comparator alone"
    * section[comparatorEvidence]
      * entry 0..1 
      * entry only Reference(ComparatorOnlyEvidence)
    * section[interventionEvidence].code.coding 1..1
    * section[interventionEvidence].code.coding = https://fevir.net/resources/CodeSystem/179423#evidence-with-intervention-alone "Evidence with intervention alone"
    * section[interventionEvidence]
      * entry 0..1 
      * entry only Reference(InterventionOnlyEvidence)
    * section[comparativeEvidence].code.coding 1..1
    * section[comparativeEvidence].code.coding = https://fevir.net/resources/CodeSystem/179423#evidence-with-intervention-vs-comparator "Evidence with intervention vs. comparator"
    * section[comparativeEvidence]
      * entry 0..1 
      * entry only Reference(ComparativeEvidence)