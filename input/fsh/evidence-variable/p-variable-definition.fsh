Profile: VariableDefinition
Parent: EvidenceVariable
Id: variable-definition
Description: "Profile of EvidenceVariable for Evidence Based Medicine IG. The VariableDefinition Profile uses a CodeableReference Datatype to provide a concept (e.g. coding in a code system) and/or a reference to a Group Resource for structured data to define the variable." 
* ^extension[$ext-fmm].valueInteger = 1
* ^extension[$ext-wg].valueCode = #cds
* ^extension[$ext-standards-status].valueCode = #draft
* extension contains EvidenceVariableDefinition named definition 1..1
* characteristic 0..0
* handling 1..1
* category
  * extension contains EvidenceVariableCategoryValueReference named valueReference 0..1