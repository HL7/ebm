Profile: M11Section05
Parent: EvidenceReport
Id: m11-section-05
Description: "Profile of Composition for Evidence Based Medicine IG. The M11Section05 Profile is used for summary of Section 5 Trial Population for the International Council for Harmonisation of Technical Requirements for Pharmaceuticals for Human Use (ICH) Clinical Electronic Structured Harmonised Protocol (CeSHarP) M11 Technical Specification."
* category 1..*
* category ^slicing.discriminator.type = #value
* category ^slicing.discriminator.path = "text"
* category ^slicing.rules = #open
* category contains section05 1..1 MS
* category[section05].text = "Section 5 Trial Population"
* section 1..*
* section ^slicing.discriminator.type = #value
* section ^slicing.discriminator.path = "code"
* section ^slicing.rules = #open
* section contains population 1..1 MS
* section[population].title = "Trial Population"
* section[population].code.text = "section5-trial-population"
* section[population]
  * section 5..*
  * section ^slicing.discriminator.type = #value
  * section ^slicing.discriminator.path = "code"
  * section ^slicing.rules = #open
  * section contains description 1..1 MS and inclusionCriteria 1..1 MS and exclusionCriteria 1..1 MS and lifestyle 0..1 MS and screenFailures 0..1 MS
  * section[description].title = "5.1	Description of Trial Population and Rationale"
  * section[description].code.text = "section5.1-population-description"
  * section[description]
    * text 1..1
    * text ^comment = "Describe the population selected (for example, healthy participants, adult participants, paediatric participants) and how the enrollment criteria reflect the populations that are likely to use the drug if approved.  Specify the population age range (for example, ≤3 months, ≥18 to ≤80 years old) including the time point at which qualification for age criteria is determined (for example, at time of screening vs randomization for paediatric trials). Specify any key diagnostic criteria for the population (for example, “acute lung injury”, or a specific biomarker profile).  If applicable, describe similar conditions or diseases and their differential diagnosis. Provide a rationale for the trial population ensuring that the population selected is well defined and clinically recognisable. Describe how the selected population can meet the trial objectives and how the enrollment criteria reflects the targeted populations. Justify whether the trial intervention is to be evaluated in paediatric participants, in adults unable to consent for themselves, other vulnerable participant populations, or those that may respond to the trial intervention differently (for example, elderly, hepatic or renally impaired, or immunocompromised participants)."
    * entry only Reference(CohortDefinition)
  * section[inclusionCriteria].title = "Inclusion Criteria"
  * section[inclusionCriteria].code.text = "section5.2-inclusion-criteria"
  * section[inclusionCriteria]
    * text 1..1
    * text ^comment = "Inclusion criteria are characteristics that define the trial population, for example, those criteria that every potential participant must satisfy, to qualify for trial entry."
    * entry only Reference(CohortDefinition)
  * section[exclusionCriteria].title = "Exclusion Criteria"
  * section[exclusionCriteria].code.text = "section5.3-exclusion-criteria"
  * section[exclusionCriteria]
    * text 1..1
    * text ^comment = "Exclusion criteria are characteristics that make an individual ineligible for participation."
    * entry only Reference(CohortDefinition)
  * section[lifestyle].title = "Lifestyle Restrictions"
  * section[lifestyle].code.text = "section5.4-lifestyle-restrictions"
  * section[lifestyle]
    * text 1..1
    * text ^comment = "In the following subsections, describe any restrictions during the trial pertaining to lifestyle and/or diet, intake of caffeine, alcohol, or tobacco, or physical and other activities. If not applicable, include a statement that no restrictions are required."
    * section 0..*
    * section ^slicing.discriminator.type = #value
    * section ^slicing.discriminator.path = "code"
    * section ^slicing.rules = #open
    * section contains dietary 0..1 MS and substances 0..1 MS and activity 0..1 MS and other 0..1 MS
    * section[dietary].title = "Meals and Dietary Restrictions"
    * section[dietary].code.text = "section5.4.1-dietary-restrictions"
    * section[dietary]
      * text 1..1
      * text ^comment = "If applicable, describe any restrictions on diet (for example, food and drink restrictions, timing of meals relative to dosing)."
    * section[substances].title = "Caffeine, Alcohol, Tobacco, and Other Restrictions"
    * section[substances].code.text = "section5.4.2-substances-restrictions"
    * section[substances]
      * text 1..1
      * text ^comment = "If applicable, describe any restrictions on the intake of caffeine, alcohol, tobacco, or other restrictions."
    * section[activity].title = "Physical Activity Restrictions"
    * section[activity].code.text = "section5.4.3-activity-restrictions"
    * section[activity]
      * text 1..1
      * text ^comment = "If applicable, describe any restrictions on activity (for example, in first-in-human trials, activity may be restricted by ensuring participants remain in bed for 4 to 6 hours after dosing)."
    * section[other].title = "Other Activity Restrictions"
    * section[other].code.text = "section5.4.4-other-restrictions"
    * section[other]
      * text 1..1
      * text ^comment = "If applicable, describe restrictions on any other activity (for example, blood or tissue donation); or any other activity restrictions, such as on driving, heavy machinery use, or sun exposure."  
  * section[screenFailures].title = "Screen Failure and Rescreening" 
  * section[screenFailures].code.text = "section5.5-screen-failure"
  * section[screenFailures]
    * text 1..1
    * text ^comment = "Indicate how screen failure will be handled in the trial, including conditions and criteria upon which rescreening is acceptable. If applicable, indicate the circumstances and time window under which a repeat procedure is allowed for screen failure relating to specific inclusion/exclusion criteria for the trial."
  