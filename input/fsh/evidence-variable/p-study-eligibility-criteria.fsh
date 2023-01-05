Profile: StudyEligibilityCriteria
Parent: EvidenceVariable
Id: study-eligibility-criteria
Title: "Study Eligibility Criteria"
Description: "Profile of EvidenceVariable for Evidence Based Medicine IG. The StudyEligibilityCriteria Profile is used to describe inclusion and exclusion criteria for a clinical trial or other research study."
* subtitle 0..0
* effectivePeriod ^definition = "For the StudyEligibilityCriteria Profile, the effectivePeriod element may be used when there is a change in eligibility criteria during the course of the study."
* actual 0..0
* characteristic.definitionCodeableConcept ^definition = "For the StudyEligibilityCriteria Profile, definitionByTypeAndValue is preferred over definitionCodeableConcept where structured data with type/value pairs is more clear for matching algorithms, and use of the description element without a definitionXXX element is preferred for characteristics without structured expression of the definition. The defintiionCodeableConcept element is thus limited in use to characteristics defined by a single coding."
* handling 0..0
* category 0..0