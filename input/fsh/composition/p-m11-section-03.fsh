Profile: M11Section03
Parent: EvidenceReport
Id: m11-section-03
Description: "Profile of Composition for Evidence Based Medicine IG. The M11Section03 Profile is used for summary of Section 3 Trial Objectives, Endpoints and Estimands for the International Council for Harmonisation of Technical Requirements for Pharmaceuticals for Human Use (ICH) Clinical Electronic Structured Harmonised Protocol (CeSHarP) M11 Technical Specification."
* category 1..*
* category ^slicing.discriminator.type = #pattern
* category ^slicing.discriminator.path = "text"
* category ^slicing.rules = #open
* category contains section03 1..1 MS
* category[section03].text = "Section 3 Trial Objectives, Endpoints and Estimands"
* section 1..*
* section ^slicing.discriminator.type = #pattern
* section ^slicing.discriminator.path = "code"
* section ^slicing.rules = #open
* section contains objectiveEndpoint 1..* MS
* section[objectiveEndpoint].code.text = "3.n Objective + Associated Endpoint"
* section[objectiveEndpoint]
  * focus 1..1
  * focus only Reference(OutcomeDefinition)
  * text 1..1
  * section 1..*
  * section ^slicing.discriminator.type = #pattern
  * section ^slicing.discriminator.path = "code"
  * section ^slicing.rules = #open
  * section contains primarySecondaryExploratory 0..1 MS and objective 1..1 MS and estimand 0..1 MS
  * section[primarySecondaryExploratory].code.text = "Primary/Secondary/Exploratory"
  * section[primarySecondaryExploratory]
    * text 1..1
  * section[objective].code.text = "Objective"
  * section[objective]
    * text 1..1
  * section[estimand].code.text = "Estimand"
  * section[estimand]
    * text 1..1
 