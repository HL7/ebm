Profile: ComparativeEvidenceReportExpanded
Parent: ComparativeEvidenceReport
Id: comparative-evidence-report-expanded
Description: "Profile of Composition for Evidence Based Medicine IG. The ComparativeEvidenceReportExpanded Profile is used for an evidence report including the study group, exposure, comparator, and findings for any number of outcomes comparing the exposure to the comparator in the study group, expanded to also include reports of baseline characteristics and participant flow."
* ^extension[$ext-fmm].valueInteger = 1
* ^extension[$ext-wg].valueCode = #cds
* ^extension[$ext-standards-status].valueCode = #trial-use
* section 5..*
* section ^slicing.discriminator.type = #value
* section ^slicing.discriminator.path = "code.coding"
* section ^slicing.rules = #open
* section contains screenedGroup 0..1 MS and excludedGroup 0..1 MS and baselineVariables 0..1 MS and flowVariables 0..1 MS and baselineFindings 0..1 MS and flow 0..1 MS
* section[screenedGroup].code.coding 1..1
* section[screenedGroup].code.coding = https://fevir.net/resources/CodeSystem/179423#screened-group "Screened Group"
* section[screenedGroup]
  * entry only Reference(StudyGroup)
* section[excludedGroup].code.coding 1..1
* section[excludedGroup].code.coding = https://fevir.net/resources/CodeSystem/179423#excluded-group "Excluded Group"
* section[excludedGroup]
  * entry only Reference(StudyGroup)
* section[baselineVariables].code.coding 1..1
* section[baselineVariables].code.coding = https://fevir.net/resources/CodeSystem/179423#baseline-measures "Baseline Measures"
* section[baselineVariables]
  * entry only Reference(VariableDefinition or BaselineVariablesList)
* section[flowVariables].code.coding 1..1
* section[flowVariables].code.coding = https://fevir.net/resources/CodeSystem/179423#participant-flow-measures "Participant Flow Measures"
* section[flowVariables]
  * entry only Reference(ParticipantFlowEvidenceVariable or ParticipantFlowReasonEvidenceVariable or ParticipantFlowVariablesList)
* section[baselineFindings].code.coding 1..1
* section[baselineFindings].code.coding = https://fevir.net/resources/CodeSystem/179423#baseline-characteristics "Baseline Characteristics"
* section[baselineFindings]
  * entry only Reference(BaselineMeasureReport)
* section[flow].code.coding 1..1
* section[flow].code.coding = https://fevir.net/resources/CodeSystem/179423#participant-flow "Participant Flow"
* section[flow]
  * entry only Reference(ParticipantFlowReport)
