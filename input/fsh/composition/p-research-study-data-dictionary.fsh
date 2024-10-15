Profile: ResearchStudyDataDictionary
Parent: EvidenceReport
Id: research-study-data-dictionary
Description: "Profile of Composition for Evidence Based Medicine IG. The ResearchStudyDataDictionary Profile is used for a code key for variable names in a dataset containing the observations collected in a research study. Each variable is included in a section.entry instance which references a VariableDefinition Profile of EvidenceVariable."
* ^extension[$ext-fmm].valueInteger = 1
* ^extension[$ext-wg].valueCode = #cds
* ^extension[$ext-standards-status].valueCode = #draft
* type.coding 1..1
* type.coding = https://fevir.net/resources/CodeSystem/179423#ResearchStudyDataDictionary "ResearchStudyDataDictionary"
* type.text = "Research Study Data Dictionary"
