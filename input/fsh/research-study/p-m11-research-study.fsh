Profile: M11ResearchStudy
Parent: StudyDesign
Id: m11-research-study
Description: "Profile of ResearchStudy for Evidence Based Medicine IG. The M11ResearchStudy Profile is used to report data specified in the ICH M11 Harmonised Guideline CeSHarP. The instance in the Evidence Based Medicine on FHIR IG is a copy of the instance in the HL7 Vulcan Clinical Study Protocol IG, modified for technical support within the Evidence Based Medicine on FHIR IG because the coordination (dependencies) between the IGs cannot be technically established prior to publication of FHIR R6."
* ^extension[$ext-fmm].valueInteger = 1
* ^extension[$ext-wg].valueCode = #cds
* ^extension[$ext-standards-status].valueCode = #trial-use
* associatedParty.role from udp-party-role-type (extensible)
