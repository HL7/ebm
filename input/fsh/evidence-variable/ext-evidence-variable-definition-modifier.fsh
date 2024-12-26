Extension: EvidenceVariableDefinitionModifier
Id: evidence-variable-definition-modifier
Description: "A characteristic applied to the definition of the EvidenceVariable which changes its interpretation."
* ^extension[$ext-fmm].valueInteger = 1
* ^extension[$ext-wg].valueCode = #cds
* ^extension[$ext-standards-status].valueCode = #draft
* ^context[0].type = #element
* ^context[0].expression = "EvidenceVariable"
* value[x] 0..0
* . ^short = "Modifier to value in definition"
* . ^definition = "A characteristic applied to the definition of the EvidenceVariable which changes its interpretation."
* extension contains code 1..1 and value 1..1
* extension[code].value[x] only CodeableConcept
  * ^short = "Type of modifier"
  * ^definition = "Type of modifier; e.g. method, unit of measure, relative timing."
* extension[value].value[x] only CodeableConcept or Quantity or Range or Expression or boolean or Period or RelativeTime or Reference or uri
  * ^short = "Value of modifier"
  * ^definition = "Value of modifier."