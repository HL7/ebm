Profile: ComparativeEvidence
Parent: EvidenceR6
Id: comparative-evidence
Description: "Profile of Evidence for Evidence Based Medicine IG. The ComparativeEvidence Profile is used for evidence with a measured variable that is considered the outcome of an exposure or intervention, and an exposure variable with two or more categories that are being compared." 
* variableDefinition 2..*
  * ^comment = "To report comparative evidence for a research question defined by Population, Intervention, Comparator, and Outcome (PICO), one would use three variableDefinition instances: the Population has variableRole of population, the Intervention and Comparator will be expressed as category values for a GroupAssignment EvidenceVariable with the variableRole of exposure, and the Outcome has variableRole of outcome. In some types of Comparative Evidence, where the groups being compared are not from the same Population (and thus not a PICO-style research question), the GroupAssignment EvidenceVariable may have the variableRole of exposure instead of population. This approach may be used for example to compare cats and dogs."
* variableDefinition ^slicing.discriminator.type = #value
* variableDefinition ^slicing.discriminator.path = "extension(url:'https://hl7.org/fhir/uv/ebm/StructureDefinition/variable-definition-variable-role-code').valueCode"
* variableDefinition ^slicing.rules = #open
* variableDefinition contains population 1..* and exposure 0..* and outcome 1..* MS
* variableDefinition[population]
  * extension[variableRoleCode].valueCode = #population
  * observed only Reference(StudyGroup or ExposureGroup or ComparatorGroup or MetaanalysisStudyGroup)
  * intended only Reference(Group)
* variableDefinition[exposure]
  * extension[variableRoleCode].valueCode = #exposure
  * extension[VariableDefinitionComparatorCategory] 1..1
  * observed only Reference(GroupAssignment or ExposureVariable or OutcomeVariable)
  * intended only Reference(VariableDefinition)
* variableDefinition[outcome]
  * extension[variableRoleCode].valueCode = #outcome
  * extension[VariableDefinitionComparatorCategory] 0..0
  * observed only Reference(OutcomeVariable or ExposureVariable or ParticipantFlowMeasure)
  * intended only Reference(EvidenceVariable)