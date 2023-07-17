Profile: M11Section06
Parent: EvidenceReport
Id: m11-section-06
Description: "Profile of Composition for Evidence Based Medicine IG. The M11Section06 Profile is used for summary of Section 6 Trial Intervention and Concomitant Therapy for the Interntaional Council for Harmonisation of Technical Requirements for Pharmaceuticals for Human Use (ICH) Clinical Electronic Structured Harmonised Protocol (CeSHarP) M11 Technical Specification."
* category 1..*
* category ^slicing.discriminator.type = #pattern
* category ^slicing.discriminator.path = "text"
* category ^slicing.rules = #open
* category contains section06 1..1 MS
* category[section05].text = "Section 6 Trial Intervention and Concomitant Therapy"
* section 8..*
* section ^slicing.discriminator.type = #pattern
* section ^slicing.discriminator.path = "code"
* section ^slicing.rules = #open
* section contains description 1..1 MS and rationale 1..1 MS and dosingAdministration 1..1 MS and treatmentOfOverdose 1..1 MS and preparation 1..1 MS and assignmentAndBlinding 1..1 MS and compliance 1..1 MS and concomitantTherapy 1..1 MS
* section[description].code.text = "6.1 Description of Trial Intervention"
* section[description]
  * text 1..1
  * entry only Reference(InterventionDefinition)
* section[rationale].code.text = "5.2 Rationale for Trial Intervention"
* section[rationale]
  * text 1..1
  * entry only Reference(InterventionDefinition)
* section[dosingAdministration].code.text = "6.3 Dosing and Administration"
* section[dosingAdministration]
  * text 1..1
  * entry only Reference(ActivityDefinition)
  * section 0..*
  * section ^slicing.discriminator.type = #pattern
  * section ^slicing.discriminator.path = "code"
  * section ^slicing.rules = #open
  * section contains doseModification 0..1 MS
  * section[doseModification].code.text = "6.3.1 Trial Intervention Dose Modification"
    * text 1..1
    * entry only Reference(ActivityDefinition)
* section[treatmentOfOverdose].code.text = "6.4 Treatment of Overdose"
* section[treatmentOfOverdose]
  * text 1..1
  * entry only Reference(ActivityDefinition)
* section[preparation].code.text = "6.5 Preparation, Handling, Storage and Accountability"
* section[preparation]
  * text 1..1
* section[assignmentAndBlinding].code.text = "6.6 Participant Assignment, Randomisation and Blinding"
* section[assignmentAndBlinding]
  * text 1..1
* section[compliance].code.text = "6.7 Trial Intervention Compliance"
* section[compliance]
  * text 1..1
* section[concomitantTherapy].code.text = "6.8 Concomitant Therapy"
* section[concomitantTherapy]
  * text 1..1
  