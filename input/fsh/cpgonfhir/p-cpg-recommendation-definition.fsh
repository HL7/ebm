// Workaround for CPGonFHIR snapshots being based on FHIR R4,
// where PlanDefinition does not support canonical(EvidenceVariable) as type for subjectCanonical
// By generating the profiles via sushi based on FHIR R5, the R5 PlanDefinition resource is used,
// which is required for CPGonEBMonFHIR.
// Auto-generated using GoFSH v1.6.2 (via FSH Online)
Profile: CPGRecommendationDefinition
Parent: CPGComputablePlanDefinition
Id: cpg-recommendationdefinition
Description: "Profile of PlanDefinition as a Recommendation Definition for use with CPG Implementation Guide"
* ^abstract = true // modification to original CPGonFHIR definition to not having the FSH Validator require a defined instance
* ^status = #draft
* ^experimental = false
* ^date = "2019-06-06"
* ^publisher = "Health Level Seven, Inc. - CDS WG"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://hl7.org/special/committees/DSS"
* ^jurisdiction = http://unstats.un.org/unsd/methods/m49/m49.htm#001 "World"
* . ^mustSupport = false
* type only CodeableConcept
* type = http://terminology.hl7.org/CodeSystem/plan-definition-type#eca-rule
* type MS
* action MS
* action.input ^short = "Pertinent positives and negatives relevant to determining applicability"
* action.input ^definition = "For recommendation definitions, the input information for an action identifies pertinent positive and negative information relevant to determining the applicability of the recommendation."
* action.input ^comment = "Note that it may be possible to infer this information directly from the logic involved."
* action.input ^mustSupport = false
* action.output ^short = "Pertinent or relevant information that should be included with the recommendation"
* action.output ^definition = "For recommendation definitions, the output element is used to specify what information should be included as patient-specific supporting evidence for the recommendation."
* action.output ^comment = "If output elements are specified, implementations SHOULD support attaching content matching the output data requirements to the recommendation instances as appropriate for the recommendation resource type, typically a supportingInformation element."
* action.output ^mustSupport = false
* action.definition[x] only canonical
* action.definition[x] MS
* action.definition[x] ^type.targetProfile = "http://hl7.org/fhir/StructureDefinition/ActivityDefinition"
