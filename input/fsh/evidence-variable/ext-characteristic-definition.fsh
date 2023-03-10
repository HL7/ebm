Extension: CharacteristicDefinition
Id: characteristic-definition
Description: "Reference to a Characteristic Resource to express a characteristic definition."
* ^context.type = #element
* ^context.expression = "EvidenceVariable"
* value[x] only Reference
* . ^short = "The complete set of characteristics defining the cohort"
* . ^definition = "The complete set of characteristics defining the cohort."
* . ^comment = "The Characteristic Resource used is for model development and not currently part of FHIR."
