// Workaround for CPGonFHIR snapshots being based on FHIR R4,
// where PlanDefinition.action.code has a cardinality of 0..* instead of 0..1 in R5
// By generating the profiles via sushi based on FHIR R5, the R5 PlanDefinition resource is used,
// which is required for CPGonEBMonFHIR
// Auto-generated using GoFSH v1.6.2 (via FSH Online)
Alias: $cpg-common-process = http://hl7.org/fhir/uv/cpg/ValueSet/cpg-common-process

Profile: CPGStrategyDefinition
Parent: CPGComputablePlanDefinition
Id: cpg-strategydefinition
Description: "Profile of PlanDefinition as a Strategy Definition for use with CPG Implementation Guide. Strategies are used to group recommendations together, typically focused on a particular condition or state within the overall guideline or pathway"
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
* type = http://terminology.hl7.org/CodeSystem/plan-definition-type#workflow-definition
* type MS
* action MS
* action.title 1..1 MS
* action.description 1..1 MS
* action.code 1..1 MS
* action.code from $cpg-common-process (extensible)
* action.code ^binding.description = "High-level processes identified in guideline-based care"
* action.input MS
* action.output MS
* action.relatedAction MS
* action.type 0..0 MS
* action.groupingBehavior 0..0
* action.groupingBehavior ^mustSupport = false
* action.selectionBehavior 0..1 MS
* action.requiredBehavior 0..0
* action.requiredBehavior ^mustSupport = false
* action.precheckBehavior 0..0
* action.precheckBehavior ^mustSupport = false
* action.cardinalityBehavior 0..0
* action.cardinalityBehavior ^mustSupport = false
* action.definition[x] only canonical
* action.definition[x] MS
* action.definition[x] ^type.targetProfile = "http://hl7.org/fhir/StructureDefinition/PlanDefinition"
* action.transform 0..0
* action.transform ^mustSupport = false
* action.dynamicValue 0..0 MS
