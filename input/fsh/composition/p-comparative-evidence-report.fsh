Profile: ComparativeEvidenceReport
Parent: EvidenceReport
Id: comparative-evidence-report
Description: "Profile of Composition for Evidence Based Medicine IG. The ComparativeEvidenceReport Profile is used for an evidence report including the study group, exposure, comparator, and findings for any number of outcomes comparing the exposure to the comparator in the study group."
* category 1..*
* category ^slicing.discriminator.type = #value
* category ^slicing.discriminator.path = "text"
* category ^slicing.rules = #open
* category contains comparativeEvidenceReport 1..1 MS
* category[comparativeEvidenceReport].text = "Comparative Evidence Report"
* subject 1..1
* subject only Reference(ComparativeEvidenceReportSubject)
* section 5..*
* section ^slicing.discriminator.type = #value
* section ^slicing.discriminator.path = "code"
* section ^slicing.rules = #open
* section contains population 1..1 MS and intervention 1..* MS and comparator 1..1 MS and studyDesign 1..1 MS and baseline 0..1 MS and flow 0..1 MS and outcomes 1..1 MS
* section[population].code.text = "Population"
* section[population]
  * entry only Reference(StudyGroup)
* section[intervention].code.text = "Intervention"
* section[intervention]
  * section 2..2
  * section ^slicing.discriminator.type = #value
  * section ^slicing.discriminator.path = "code"
  * section ^slicing.rules = #open
  * section contains description 1..1 MS and group 1..1 MS
  * section[description].code.text = "Intervention Description"
  * section[description]
    * entry 0..1
    * entry only Reference(ExposureDefinition)
  * section[group].code.text = "Intervention Group"
  * section[group]
    * entry 0..1
    * entry only Reference(InterventionGroup or ExposureGroup)
* section[comparator].code.text = "Comparator"
* section[comparator]
  * section 2..2
  * section ^slicing.discriminator.type = #value
  * section ^slicing.discriminator.path = "code"
  * section ^slicing.rules = #open
  * section contains description 1..1 MS and group 1..1 MS
  * section[description].code.text = "Comparator Description"
  * section[description]
    * entry 0..1
    * entry only Reference(ComparatorDefinition or ExposureDefinition)
  * section[group].code.text = "Comparator Group"
  * section[group]
    * entry 0..1
    * entry only Reference(ComparatorGroup or InterventionGroup or ExposureGroup)
* section[studyDesign].code.text = "Study Design"
* section[studyDesign]
  * entry only Reference(ResearchStudy or Classification)
* section[baseline].code.text = "Baseline Measures"
* section[baseline]
  * section 1..*
    * focus only Reference(ExposureVariable)
    * section 1..*
    * section ^slicing.discriminator.type = #value
    * section ^slicing.discriminator.path = "code"
    * section ^slicing.rules = #open
    * section contains comparatorEvidence 1..1 MS and interventionEvidence 1..1 MS and totalGroup 0..1 MS and comparativeEvidence 0..1 MS
    * section[comparatorEvidence].code.text = "Baseline measure with comparator alone"
    * section[comparatorEvidence]
      * entry 0..1 
      * entry only Reference(BaselineMeasureEvidence)
    * section[interventionEvidence].code.text = "Baseline measure with intervention alone"
    * section[interventionEvidence]
      * entry 0..1 
      * entry only Reference(BaselineMeasureEvidence)
    * section[totalGroup].code.text = "Baseline measure with total group"
    * section[totalGroup]
      * entry 0..1 
      * entry only Reference(BaselineMeasureEvidence)
    * section[comparativeEvidence].code.text = "Baseline measure with intervention vs. comparator"
    * section[comparativeEvidence]
      * entry 0..1 
      * entry only Reference(ComparativeBaselineMeasureEvidence)
* section[flow].code.text = "Participant Flow"
* section[flow]
  * section 1..*
    * focus only Reference(ParticipantFlowMeasure)
    * section 1..*
    * section ^slicing.discriminator.type = #value
    * section ^slicing.discriminator.path = "code"
    * section ^slicing.rules = #open
    * section contains comparatorEvidence 0..1 MS and interventionEvidence 0..1 MS and totalGroup 0..1 MS and comparativeEvidence 0..1 MS
    * section[comparatorEvidence].code.text = "Participant flow with comparator alone"
    * section[comparatorEvidence]
      * entry 0..1 
      * entry only Reference(ParticipantFlow)
    * section[interventionEvidence].code.text = "Participant flow with intervention alone"
    * section[interventionEvidence]
      * entry 0..1 
      * entry only Reference(ParticipantFlow)
    * section[totalGroup].code.text = "Participant flow with total group"
    * section[totalGroup]
      * entry 0..1 
      * entry only Reference(ParticipantFlow)
    * section[comparativeEvidence].code.text = "Participant flow with intervention vs. comparator"
    * section[comparativeEvidence]
      * entry 0..1 
      * entry only Reference(ComparativeParticipantFlow)
* section[outcomes].code.text = "Outcomes"
* section[outcomes]
  * section 1..*
    * focus only Reference(OutcomeVariable)
    * section 1..*
    * section ^slicing.discriminator.type = #value
    * section ^slicing.discriminator.path = "code"
    * section ^slicing.rules = #open
    * section contains comparatorEvidence 0..1 MS and interventionEvidence 0..1 MS and comparativeEvidence 1..1 MS
    * section[comparatorEvidence].code.text = "Outcome with comparator alone"
    * section[comparatorEvidence]
      * entry 0..1 
      * entry only Reference(ComparatorOnlyEvidence)
    * section[interventionEvidence].code.text = "Outcome with intervention alone"
    * section[interventionEvidence]
      * entry 0..1 
      * entry only Reference(InterventionOnlyEvidence)
    * section[comparativeEvidence].code.text = "Outcome with intervention vs. comparator"
    * section[comparativeEvidence]
      * entry 0..1 
      * entry only Reference(ComparativeEvidence)