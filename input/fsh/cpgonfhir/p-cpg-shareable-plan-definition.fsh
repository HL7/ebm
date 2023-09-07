// Workaround for CPGonFHIR snapshots being based on FHIR R4,
// where PlanDefinition does not support canonical(EvidenceVariable) as type for subjectCanonical
// By generating the profiles via sushi based on FHIR R5, the R5 PlanDefinition resource is used,
// which is required for CPGonEBMonFHIR
// Auto-generated using GoFSH v1.6.2 (via FSH Online)
Alias: $cqf-knowledgeCapability = http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-knowledgeCapability
Alias: $cqf-knowledgeRepresentationLevel = http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-knowledgeRepresentationLevel
// The following extension had to be added as fsh files, because sushi 2.9.0 could not use them based on the URL
Alias: $cqf-artifactComment = cqfm-artifactComment //http://hl7.org/fhir/us/cqfmeasures/StructureDefinition/cqfm-artifactComment

Profile: ShareablePlanDefinition
Parent: PlanDefinition
Id: shareableplandefinition
Title: "Shareable PlanDefinition"
Description: "Enforces the minimum information set for the plan definition metadata required by HL7 and other organizations that share and publish plan definitions"
* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* ^extension[=].valueInteger = 3
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension[=].valueCode = #cds
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* ^extension[=].valueCode = #trial-use
* ^identifier.system = "urn:ietf:rfc:3986"
* ^identifier.value = "urn:oid:2.16.840.1.113883.4.642.5.1077"
* ^version = "5.0.0-draft-final"
* ^status = #draft
* ^experimental = false
* ^date = "2020-12-28T16:55:11+11:00"
* ^publisher = "HL7"
* ^abstract = true // modification to original CPGonFHIR definition to not having the FSH Validator require a defined instance
* . 1..1
* extension contains
    $cqf-knowledgeCapability named knowledgeCapability 0..* MS and
    $cqf-knowledgeRepresentationLevel named knowledgeRepresentationLevel 0..* MS and
    $cqf-artifactComment named artifactComment 0..* MS
* url 1..1 MS
* version 1..1 MS
* versionAlgorithm[x] MS
* name MS
* title 1..1 MS
* experimental MS
* publisher MS
* description 1..1 MS

Profile: CPGShareablePlanDefinition
Parent: shareableplandefinition
Id: cpg-shareableplandefinition
Description: "Defines the minimum expectations for a shareable plan definition for use with computable guideline content. This profile derives from the ShareablePlanDefinition profile defined in the base FHIR specification, and adds support for declaring knowledge representation level and knowledge artifact capabilities."
* ^abstract = true // modification to original CPGonFHIR definition to not having the FSH Validator require a defined instance
* ^version = "1.0.0"
* ^status = #draft
* ^experimental = false
* ^date = "2019-06-06"
* ^publisher = "Health Level Seven, Inc. - CDS WG"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://hl7.org/special/committees/DSS"
* ^jurisdiction = http://unstats.un.org/unsd/methods/m49/m49.htm#001 "World"
* . ^mustSupport = false
// These extensions are already defined in ShareablePlanDefinition
//* extension contains
//    $cpg-knowledgeCapability named knowledgeCapability 1..* MS and
//    $cpg-knowledgeRepresentationLevel named knowledgeRepresentationLevel 0..* MS
