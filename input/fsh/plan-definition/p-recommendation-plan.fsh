Profile: RecommendationPlan
Parent: PlanDefinition
Id: recommendation-plan
Description: "Profile of PlanDefinition for Evidence Based Medicine IG. The RecommendationPlan Profile is used for the implementable representation of a recommendation (such as that from a clinical practice guideline)."
* ^extension[$ext-fmm].valueInteger = 1
* ^extension[$ext-wg].valueCode = #cds
* ^extension[$ext-standards-status].valueCode = #trial-use
* extension contains ArtifactPublicationStatus named publicationStatus 0..1
* url 1..1 MS
* version 1..1 MS
* versionAlgorithm[x] MS
* name MS
* title 1..1 MS
* experimental MS
* publisher MS
* description 1..1 MS
* type 1..1 MS
* type only CodeableConcept
* type = http://terminology.hl7.org/CodeSystem/plan-definition-type#eca-rule
* subject[x] MS
* topic 0..0
* library 0..1 MS
* action 1..* MS
* action
  * extension contains CharacteristicTiming named timingRelativeTime 0..1
* action.prefix MS
* action.title MS
* action.description MS
* action.code MS
* action.reason MS
* action.documentation MS
* action.trigger MS
* action.condition MS
* action.timing[x] MS
* action.participant MS
* action.participant.role MS
* action.type MS
* action.input ^short = "Pertinent positives and negatives relevant to determining applicability"
* action.input ^definition = "For recommendation definitions, the input information for an action identifies pertinent positive and negative information relevant to determining the applicability of the recommendation."
* action.input ^comment = "Note that it may be possible to infer this information directly from the logic involved."
* action.input ^mustSupport = false
* action.output ^short = "Pertinent or relevant information that should be included with the recommendation"
* action.output ^definition = "For recommendation definitions, the output element is used to specify what information should be included as patient-specific supporting evidence for the recommendation."
* action.output ^comment = "If output elements are specified, implementations SHOULD support attaching content matching the output data requirements to the recommendation instances as appropriate for the recommendation resource type, typically a supportingInformation element."
* action.output ^mustSupport = false
* action.definition[x] MS
* action.definition[x] only canonical
* action.definition[x] ^type.targetProfile = "http://hl7.org/fhir/StructureDefinition/ActivityDefinition"
* action.dynamicValue MS
* action.dynamicValue.path MS
* action.dynamicValue.expression MS
* action.action MS
