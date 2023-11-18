//TODO - remap net effect handling starting from a NetEffectEstimate Profile of Evidence
Profile: NetEffectDefinition
Parent: CohortDefinition
Id: net-effect-definition
Description: "Profile of Group for Evidence Based Medicine IG. The NetEffectDefinition Profile is used to express an outcome definition where the outcome is a composite outcome combining outcomes adjusted for their relative importance."
* ^extension[CombinationMethod].valueCode = #all-of
* membership = #conceptual
* code.text = "Net Effect Outcome Definition"
* characteristic ^slicing.discriminator.type = #value
* characteristic ^slicing.discriminator.path = "code"
* characteristic ^slicing.rules = #open
* characteristic contains comparativeEvidence 0..1 MS and relativeImportance 0..1 MS and comparator 0..1 MS and outcomes 0..1 MS
* characteristic[comparativeEvidence].code.text = "ComparativeEvidence"
* characteristic[comparativeEvidence].valueReference only Reference(ComparativeEvidence)
* characteristic[comparativeEvidence].exclude = false
* characteristic[relativeImportance].code.text = "OutcomeImportance"
* characteristic[relativeImportance].valueReference only Reference(OutcomeImportance)
* characteristic[relativeImportance].exclude = false


// "characteristic.code ComparativeEvidence or OutcomeImportance, characteristic.valueReference(ComparativeEvidence or OutcomeImportance), characteristic.exclude false, characteristic.method net-effect-contribution."