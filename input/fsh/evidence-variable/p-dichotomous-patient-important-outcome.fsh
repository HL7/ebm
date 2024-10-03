Profile: DichotomousPatientImportantOutcome
Parent: VariableDefinition
Id: dichotomous-patient-important-outcome 
Description: "Profile of EvidenceVariable for Evidence Based Medicine IG. The DichotomousPatientImportantOutcome Profile is used to provide a common variable definition for the 'intended' variable in the role of 'outcome' in Evidence Resources, to allow mapping evidence with different observaed variables that relate to the same intended outcome."
* ^extension[$ext-fmm].valueInteger = 1
* ^extension[$ext-wg].valueCode = #cds
* ^extension[$ext-standards-status].valueCode = #draft
* extension[definition].valueCodeableReference.concept 1..1
* extension[definition].valueCodeableReference.reference 0..0
* extension[datatype] 1..1
* extension[datatype].valueCodeableConcept = http://hl7.org/fhir/fhir-types#boolean "boolean"
* handling = #dichotomous

