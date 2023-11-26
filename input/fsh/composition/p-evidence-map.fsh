Profile: EvidenceMap
Parent: EvidenceReport
Id: evidence-map
Description: "Profile of Composition for Evidence Based Medicine IG. The EvidenceMap Profile is used for an organized listing of Resources used to generate EvidenceReport instances." 
* category 1..*
* category ^slicing.discriminator.type = #value
* category ^slicing.discriminator.path = "text"
* category ^slicing.rules = #open
* category contains evidenceMap 1..1 MS
* category[evidenceMap].coding = https://fevir.net/resources/CodeSystem/179423#EvidenceMap "EvidenceMap"
* section 1..*
* section ^slicing.discriminator.type = #value
* section ^slicing.discriminator.path = "code"
* section ^slicing.rules = #open
* section contains outcomeDefinition 0..1 and comparatorOnlyEvidence 0..1 and interventionOnlyEvidence 0..1 and comparativeEvidence 0..1 and certaintyOfEvidence 0..1 and evidenceVariablePopulation 0..1 and intervention 0..1 and interventionDescription 0..1 and interventionGroup 0..1 and evidenceClassifier 0..1
* section[outcomeDefinition].code = https://fevir.net/resources/CodeSystem/179423#outcome-measure "Outcome Measure"
* section[outcomeDefinition]
  * entry only Reference(OutcomeVariable)
* section[comparatorOnlyEvidence].code = https://fevir.net/resources/CodeSystem/179423#evidence-with-comparator-alone "Evidence with comparator alone"
* section[comparatorOnlyEvidence]
  * entry only Reference(ComparatorOnlyEvidence)
* section[interventionOnlyEvidence].code = https://fevir.net/resources/CodeSystem/179423#evidence-with-intervention-alone "Evidence with intervention alone"
* section[interventionOnlyEvidence]
  * entry only Reference(InterventionOnlyEvidence)
* section[comparativeEvidence].code = https://fevir.net/resources/CodeSystem/179423#evidence-with-intervention-vs-comparator "Evidence with intervention vs. comparator"
* section[comparativeEvidence]
  * entry only Reference(ComparativeEvidence)
* section[certaintyOfEvidence].code = https://fevir.net/resources/CodeSystem/179423#certainty-of-evidence "Certainty of Evidence"
* section[certaintyOfEvidence]
  * entry only Reference(CertaintyOfEvidence)
* section[evidenceVariablePopulation].code = https://fevir.net/resources/CodeSystem/179423#population "Population"
* section[evidenceVariablePopulation]
  * entry only Reference(Group)
* section[intervention].code = https://fevir.net/resources/CodeSystem/179423#intervention "Intervention"
* section[intervention]
  * entry only Reference(ExposureVariable)
* section[interventionDescription].code = https://fevir.net/resources/CodeSystem/179423#intervention-description "Intervention Description"
* section[interventionDescription]
  * entry only Reference(Group)
* section[interventionGroup].code = https://fevir.net/resources/CodeSystem/179423#intervention-group "Intervention Group"
* section[interventionGroup]
  * entry only Reference(Group)
* section[evidenceClassifier].code = https://fevir.net/resources/CodeSystem/179423#classifier "Classifier"
* section[evidenceClassifier]
  * entry only Reference(ArtifactAssessment)



 
