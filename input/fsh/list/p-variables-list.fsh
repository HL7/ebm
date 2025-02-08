Profile: VariablesList
Parent: List
Id: variables-list
Description: "Profile of List for Evidence Based Medicine IG. The VariablesList Profile is used to provide a list of EvidenceVariable Resources."
* ^extension[$ext-fmm].valueInteger = 1
* ^extension[$ext-wg].valueCode = #cds
* ^extension[$ext-standards-status].valueCode = #draft
* code.coding 1..1
* code.coding = https://fevir.net/resources/CodeSystem/179423#VariablesList "VariablesList"
* code.text = "Variables List"
* encounter 0..0
* entry
  * item only Reference(EvidenceVariable)
