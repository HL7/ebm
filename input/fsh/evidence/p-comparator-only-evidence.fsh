Profile: ComparatorOnlyEvidence
Parent: NonComparativeEvidence
Id: comparator-only-evidence
Description: "Profile of Evidence for Evidence Based Medicine IG. The ComparatorOnlyEvidence Profile is used for evidence with a measured variable that is considered the outcome of an exposure or intervention, and a population that has an exposure with a categorical value that is the reference category for the exposure in a ComparativeEvidence Profile. The ComparatorOnlyEvidence describes the evidence for the comparator group." 
* ^extension[$ext-fmm].valueInteger = 1
* ^extension[$ext-wg].valueCode = #cds
* ^extension[$ext-standards-status].valueCode = #draft
* variableDefinition
  * ^comment = "To report comparator-only evidence for a research question defined by Population, Intervention, Comparator, and Outcome (PICO), one would use two variableDefinition instances. A group defined by a combination of Population and Comparator has the variableRole of population, the Intervention is not included in the ComparatorOnlyEvidence, and the Outcome has variableRole of outcome."
* variableDefinition[population]
  * observed only Reference(ExposureGroup or ComparatorGroup or MetaanalysisStudyGroup)
