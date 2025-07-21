Profile: OutcomeVariablesList
Parent: List
Id: outcome-variables-list
Description: "Profile of List for Evidence Based Medicine IG. The OutcomeVariablesList Profile is used to provide a list of EvidenceVariable Resources which represent outcome measures."
* ^extension[$ext-fmm].valueInteger = 1
* ^extension[$ext-wg].valueCode = #cds
* ^extension[$ext-standards-status].valueCode = #draft
* code.coding 1..1
* code.coding = EBMonFHIRProfileNameCodeSystem#OutcomeVariablesList "OutcomeVariablesList"
* code.text = "Outcome Variables List"
* encounter 0..0
* entry
  * item only Reference(VariableDefinition)
