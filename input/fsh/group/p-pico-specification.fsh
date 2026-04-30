Profile: PICOSpecification
Parent: ConceptualCohortDefinition
Id: pico-specification
Description: "Profile of Group for Evidence Based Medicine IG. The PICOSpecification Profile is used to represent a clinical question defined with Population, Intervention, Comparator, and Outcome components."
* ^extension[$ext-fmm].valueInteger = 1
* ^extension[$ext-wg].valueCode = #cds
* ^extension[$ext-standards-status].valueCode = #trial-use
* combinationMethod = #all-of
* characteristic.code from PICOClassification (extensible)