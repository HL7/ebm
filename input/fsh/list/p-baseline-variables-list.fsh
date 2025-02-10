Profile: BaselineVariablesList
Parent: List
Id: baseline-variables-list
Description: "Profile of List for Evidence Based Medicine IG. The BaselineVariablesList Profile is used to provide a list of EvidenceVariable Resources which represent baseline measures."
* ^extension[$ext-fmm].valueInteger = 1
* ^extension[$ext-wg].valueCode = #cds
* ^extension[$ext-standards-status].valueCode = #draft
* code.coding 1..1
* code.coding = https://fevir.net/resources/CodeSystem/179423#BaselineVariablesList "BaselineVariablesList"
* code.text = "Baseline Variables List"
* encounter 0..0
* entry
  * item only Reference(VariableDefinition)
