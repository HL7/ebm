Profile: DichotomousIntendedOutcome
Parent: VariableDefinition
Id: dichotomous-intended-outcome 
Description: "Profile of EvidenceVariable for Evidence Based Medicine IG. The DichotomousIntendedOutcome Profile is used to provide a common variable definition for the 'intended' variable in the role of 'outcome' in Evidence Resources, to allow mapping evidence with different observed variables that relate to the same intended outcome."
* ^extension[$ext-fmm].valueInteger = 1
* ^extension[$ext-wg].valueCode = #cds
* ^extension[$ext-standards-status].valueCode = #draft
* definition.concept 1..1
* definition.reference 0..0
* actual = false
* handling = #boolean
* category 0..0

