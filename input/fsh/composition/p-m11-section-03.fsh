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
* section contains endpoints 1..* MS
* section[endpoints].title = "Trial Objectives, Endpoints and Estimands"
* section[endpoints].code.text = "section3-endpoints"
* section[endpoints]
  * section 1..*
  * section ^slicing.discriminator.type = #pattern
  * section ^slicing.discriminator.path = "code"
  * section ^slicing.rules = #open
  * section contains objectiveEndpoint 1..* MS
  * section[objectiveEndpoint].title = "Objective + Associated Endpoint (and Estimand)"
  * section[objectiveEndpoint].code.text = "section3.1-objective-endpoint-estimand"
  * section[objectiveEndpoint]
    * focus 1..1
    * focus only Reference(OutcomeVariable)
    * section 4..*
    * section ^slicing.discriminator.type = #pattern
    * section ^slicing.discriminator.path = "code"
    * section ^slicing.rules = #open
    * section contains primarySecondaryExploratory 1..1 MS and objective 1..1 MS and endpoint 1..1 MS and estimand 1..1 MS
    * section[primarySecondaryExploratory].title = "Primary/Secondary/Exploratory Classification"
    * section[primarySecondaryExploratory].code.text = "Primary/Secondary/Exploratory"
    * section[primarySecondaryExploratory]
      * text 1..1
      * text ^comment = "Enter 'Primary' or 'Secondary' or 'Exploratory' as the data value."
    * section[objective].title = "Objective"
    * section[objective].code.text = "Objective"
    * section[objective]
      * text 1..1
      * text ^comment = "Precisely define each clinical question of interest by stating each trial objective."
    * section[endpoint].title = "Endpoint"
    * section[endpoint].code.text = "Endpoint"
    * section[endpoint]
      * text 1..1
      * text ^comment = "Enter the description of the Endpoint (measured variable)."
    * section[estimand].title = "Estimand"
    * section[estimand].code.text = "Estimand"
    * section[estimand]
      * text 1..1
      * text ^comment = "Describe the attributes that construct the estimand: the treatment condition of interest, the population of participants targeted by the clinical question of interest, other intercurrent events (if applicable), a population level summary, and the endpoint (or variable) specified in the table above."
 