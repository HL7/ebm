// Workaround for CPGonFHIR snapshots being based on FHIR R4,
// where PlanDefinition does not support canonical(EvidenceVariable) as type for subjectCanonical
// By generating the profiles via sushi based on FHIR R5, the R5 PlanDefinition resource is used,
// which is required for CPGonEBMonFHIR.
// Auto-generated using GoFSH v1.6.2 (via FSH Online)
Alias: $cpg-enabled = http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-enabled
Alias: $cpg-partOf = http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-partOf
// The following two extensions had to be added as fsh files, because sushi 2.9.0 could not use them based on the URL
Alias: $cqf-strengthOfRecommendation = cqf-strengthOfRecommendation //http://hl7.org/fhir/StructureDefinition/cqf-strengthOfRecommendation
Alias: $cqf-qualityOfEvidence = cqf-qualityOfEvidence // http://hl7.org/fhir/StructureDefinition/cqf-qualityOfEvidence
Alias: $cpg-directionOfRecommendation = http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-directionOfRecommendation
Alias: $cpg-common-persona = http://hl7.org/fhir/uv/cpg/ValueSet/cpg-common-persona

Profile: CPGComputablePlanDefinition
Parent: CPGShareablePlanDefinition
Id: cpg-computableplandefinition
Description: "Defines the minimum expectations and behavior for a computable plan definition"
* ^abstract = true // modification to original CPGonFHIR definition to not having the FSH Validator require a defined instance
* ^status = #draft
* ^experimental = false
* ^date = "2019-06-06"
* ^publisher = "Health Level Seven, Inc. - CDS WG"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://hl7.org/special/committees/DSS"
* ^jurisdiction = http://unstats.un.org/unsd/methods/m49/m49.htm#001 "World"
* . ^mustSupport = false
* extension contains
    $cpg-enabled named enabled 0..1 MS and
    $cpg-partOf named partOf 0..1 MS
* type 1..1 MS
* subject[x] MS
* library 0..1 MS
* action 1..* MS
* action.extension contains
    $cqf-strengthOfRecommendation named strengthOfRecommendation 0..1 MS and
    $cpg-directionOfRecommendation named directionOfRecommendation 0..1 MS and
    $cqf-qualityOfEvidence named qualityOfEvidence 0..1 MS
* action.prefix MS
* action.title MS
* action.description MS
* action.code MS
* action.reason MS
* action.documentation MS
* action.trigger MS
* action.condition MS
* action.timing[x] MS
* action.participant MS
* action.participant.role MS
* action.participant.role from $cpg-common-persona (preferred)
* action.participant.role ^binding.description = "Personas used in identifying participants and their roles in computable content"
* action.type MS
* action.definition[x] MS
* action.dynamicValue MS
* action.dynamicValue.path MS
* action.dynamicValue.expression MS
* action.action MS
