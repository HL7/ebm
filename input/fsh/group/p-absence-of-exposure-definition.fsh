Profile: AbsenceOfExposureDefinition
Parent: ConceptualComparatorDefinition
Id: absence-of-exposure-definition
Description: "Profile of Group for Evidence Based Medicine IG. The AbsenceOfExposureDefinition Profile is used to constrain the ConceptualComparatorDefinition Profile to a single characteristic of not being exposed to a ConceptualExposureDefinition Profile instance."
* ^extension[$ext-fmm].valueInteger = 1
* ^extension[$ext-wg].valueCode = #cds
* ^extension[$ext-standards-status].valueCode = #trial-use
* characteristic 1..1
* characteristic.code.text = "Exposed to"
* characteristic.valueReference only Reference(ConceptualExposureDefinition)
* characteristic.exclude = true
