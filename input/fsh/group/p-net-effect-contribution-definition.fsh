//TODO - remap net effect handling starting from a NetEffectEstimate Profile of Evidence
Profile: NetEffectContributionDefinition
Parent: CohortDefinition
Id: net-effect--contribution-definition
Description: "Profile of Group for Evidence Based Medicine IG. The NetEffectContributionDefinition Profile is used to express an outcome definition where the outcome is adjusted for its relative importance."
* ^extension[CombinationMethod].valueCode = #all-of
* membership = #conceptual
* code.text = "Net Effect Contribution Definition"
* characteristic ^slicing.discriminator.type = #value
* characteristic ^slicing.discriminator.path = "code"
* characteristic ^slicing.rules = #open
* characteristic contains comparativeEvidence 1..1 MS and relativeImportance 1..1 MS
* characteristic[comparativeEvidence].code.text = "ComparativeEvidence"
* characteristic[comparativeEvidence].valueReference only Reference(ComparativeEvidence)
* characteristic[comparativeEvidence].exclude = false
* characteristic[relativeImportance].code.text = "OutcomeImportance"
* characteristic[relativeImportance].valueReference only Reference(OutcomeImportance)
* characteristic[relativeImportance].exclude = false

// "characteristic.method net-effect-contribution."