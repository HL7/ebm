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
* category[evidenceMap].text = "Evidence Map"
* section 1..*
* section ^slicing.discriminator.type = #value
* section ^slicing.discriminator.path = "code"
* section ^slicing.rules = #open
* section contains outcomeDefinition 0..1 and comparatorOnlyEvidence 0..1 and interventionOnlyEvidence 0..1 and comparativeEvidence 0..1 and certaintyOfEvidence 0..1 and evidenceVariablePopulation 0..1 and interventionDefinition 0..1 and evidenceClassifier 0..1
* section[outcomeDefinition].code = http://hl7.org/fhir/evidence-report-section#EvidenceVariable-outcome "Evidence Variable in variable role Outcome (MeasuredVariable)"
* section[outcomeDefinition]
  * entry only Reference(OutcomeVariable)
* section[comparatorOnlyEvidence].code = http://hl7.org/fhir/evidence-report-section#Control-group-alone-Evidence "Evidence Results for the control exposure only"
* section[comparatorOnlyEvidence]
  * entry only Reference(ComparatorOnlyEvidence)
* section[interventionOnlyEvidence].code = http://hl7.org/fhir/evidence-report-section#Intervention-group-alone-Evidence "Evidence Results for the intervention exposure only"
* section[interventionOnlyEvidence]
  * entry only Reference(InterventionOnlyEvidence)
* section[comparativeEvidence].code = http://hl7.org/fhir/evidence-report-section#Intervention-vs-Control-Evidence "Evidence Results for comparison of Intervention and Control"
* section[comparativeEvidence]
  * entry only Reference(ComparativeEvidence)
* section[certaintyOfEvidence].code = http://hl7.org/fhir/evidence-report-section#Certainty-of-Evidence "Certainty of Evidence"
* section[certaintyOfEvidence]
  * entry only Reference(CertaintyOfEvidence)
* section[evidenceVariablePopulation].code = http://hl7.org/fhir/evidence-report-section#EvidenceVariable-population "Evidence Variable in variable role Population"
* section[evidenceVariablePopulation]
  * entry only Reference(EvidenceVariable or Group)
* section[interventionDefinition].code = http://hl7.org/fhir/evidence-report-section#EvidenceVariable-exposure "Evidence Variable in variable role Exposure"
* section[interventionDefinition]
  * entry only Reference(ExposureVariable or Group)
* section[evidenceClassifier].code = http://hl7.org/fhir/evidence-report-section#Evidence-Classifier "Evidence Classifier section"
* section[evidenceClassifier]
  * entry only Reference(ArtifactAssessment)



 
