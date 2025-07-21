Profile: RecommendationAction
Parent: ActivityDefinition
Id: recommendation-action
Description: "Profile of ActivityDefinition for Evidence Based Medicine IG. The RecommendationAction Profile is used for a recommendation from a clinical practice guideline."
* ^extension[$ext-fmm].valueInteger = 1
* ^extension[$ext-wg].valueCode = #cds
* ^extension[$ext-standards-status].valueCode = #trial-use
* extension contains CharacteristicTiming named timingRelativeTime 0..1
* topic 0..0