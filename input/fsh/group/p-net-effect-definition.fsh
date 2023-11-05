Profile: NetEffectDefinition
Parent: CohortDefinition
Id: net-effect-definition
Description: "Profile of Group for Evidence Based Medicine IG. The NetEffectDefinition Profile is used to express an outcome definition where the outcome is a composite outcome combining outcomes adjusted for their relative importance. When the R6 base to Group is available, the NetEffectDefinition Profile will have combinationMethod all-of, characteristic.code ComparativeEvidence or OutcomeImportance, characteristic.valueReference(ComparativeEvidence or OutcomeImportance), characteristic.exclude false, characteristic.method net-effect-contribution."
* code.text = "Net Effect Outcome Definition"