Profile: InterventionOnlyEvidence
Parent: NonComparativeEvidence
Id: intervention-only-evidence
Description: "Profile of Evidence for Evidence Based Medicine IG. The InterventionOnlyEvidence Profile is used for evidence with a measured variable that is considered the outcome of an exposure or intervention. The InterventionOnlyEvidence describes the evidence for the intervention group." 
* ^extension[$ext-fmm].valueInteger = 1
* ^extension[$ext-wg].valueCode = #cds
* ^extension[$ext-standards-status].valueCode = #draft
* variableDefinition
  * ^comment = "To report intervention-only evidence for a research question defined by Population, Intervention, Comparator, and Outcome (PICO), one would use two variableDefinition instances. A group defined by a combination of Population and Intervention has the variableRole of population, the Comparator is not included in the InterventionOnlyEvidence, and the Outcome has variableRole of outcome."
* variableDefinition[population]
  * observed only Reference(ExposureGroup or MetaanalysisStudyGroup)