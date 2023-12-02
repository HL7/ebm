Profile: OutcomeMeasureEvidence
Parent: EvidenceR6
Id: outcome-measure-evidence
Description: "Profile of Evidence for Evidence Based Medicine IG. The OutcomeMeasureEvidence Profile is used for evidence with a measured variable that is considered the outcome of an exposure or intervention." 
* variableDefinition 2..*
  * ^comment = "The Outcome has variableRole of outcome."
* variableDefinition ^slicing.discriminator.type = #value
* variableDefinition ^slicing.discriminator.path = "extension.valueCode"
* variableDefinition ^slicing.rules = #open
* variableDefinition contains population 1..* MS and outcome 1..* MS
* variableDefinition[population]
  * extension 1..*
  * extension ^slicing.discriminator.type = #value
  * extension ^slicing.discriminator.path = "url"
  * extension ^slicing.rules = #open
  * extension contains variableRoleCodeExtension 1..1
  * extension[variableRoleCodeExtension].url = "https://hl7.org/fhir/uv/ebm/StructureDefinition/variable-definition-variable-role-code"
  * extension[variableRoleCodeExtension]
    * valueCode = #population
  * observed only Reference(StudyGroup or ExposureGroup or ComparatorGroup or MetaanalysisStudyGroup)
* variableDefinition[outcome]
  * extension 1..*
  * extension ^slicing.discriminator.type = #value
  * extension ^slicing.discriminator.path = "url"
  * extension ^slicing.rules = #open
  * extension contains variableRoleCodeExtension 1..1
  * extension[variableRoleCodeExtension].url = "https://hl7.org/fhir/uv/ebm/StructureDefinition/variable-definition-variable-role-code"
  * extension[variableRoleCodeExtension]
    * valueCode = #outcome
  * observed only Reference(StudyGroup or ExposureGroup or ComparatorGroup or MetaanalysisStudyGroup)
  * observed only Reference(ExposureVariable or OutcomeVariable)
