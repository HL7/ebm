Profile: M11ResearchStudy
Parent: StudyDesign
Id: m11-research-study
Description: "Profile of ResearchStudy for Evidence Based Medicine IG. The M11ResearchStudy Profile is used to report data specified in the ICH M11 Harmonised Guideline CeSHarP. The instance in the Evidence Based Medicine on FHIR IG is a copy of the instance in the HL7 Vulcan Clinical Study Protocol IG, modified for technical support within the Evidence Based Medicine on FHIR IG because the coordination (dependencies) between the IGs cannot be technically established prior to publication of FHIR R6."
* ^extension[$ext-fmm].valueInteger = 1
* ^extension[$ext-wg].valueCode = #cds
* ^extension[$ext-standards-status].valueCode = #trial-use
* extension contains ResearchStudyVersionDate named versionDate 0..1
* extension contains ResearchStudyM11Approval named approval 0..1
* extension contains ResearchStudyM11ProtocolAmendment named m11Amendment 0..1
* identifier.type from udp-identifier-type (extensible)
* phase from ich-m11-trial-phase (required)
* focus
  * ^comment = "Expect MedicinalProductDefinition.name.type.code to be one of C71898 Proprietary name or C97054 Non-proprietary name"
* classifier from ich-m11-amendment-details-statement (preferred)
* associatedParty.role from udp-party-role-type (extensible)
