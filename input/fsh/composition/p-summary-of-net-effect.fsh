Profile: SummaryOfNetEffect
Parent: EvidenceReport
Id: summary-of-net-effect
Description: "Profile of Composition for Evidence Based Medicine IG. The SummaryOfNetEffect Profile is used for an evidence report combining ArtifactAssessment and Evidence and EvidenceVariable Resources, organized around OutcomeDefinition (Profile of EvidenceVariable), to represent the summary of net effect contributions of comparative evidence, adjusted for the relative importance of outcomes."
* category 1..*
* category ^slicing.discriminator.type = #pattern
* category ^slicing.discriminator.path = "text"
* category ^slicing.rules = #open
* category contains summaryOfNetEffect 1..1 MS
* category[summaryOfNetEffect].text = "Summary of Net Effect Contributions"
* section 2..*
* section ^slicing.discriminator.type = #pattern
* section ^slicing.discriminator.path = "code"
* section ^slicing.rules = #open
* section contains columnHeaders 1..1 MS and outcomeEntry 1..* MS and netEffectEstimate 0..1
* section[columnHeaders].code = http://hl7.org/fhir/evidence-report-section#Column-Headers "Column Headers"
* section[columnHeaders]
  * section 2..*
  * section ^slicing.discriminator.type = #pattern
  * section ^slicing.discriminator.path = "code"
  * section ^slicing.rules = #open
  * section contains outcomeDefinition 1..1 MS and outcomeDesirability 0..1 and relativeImportance 0..1 and resultWithoutTreatment 0..1 and resultWithTreatmentObserved 0..1 and resultWithTreatmentDerived 0..1 and effectEstimate 0..1 and netEffectContribution 1..1 MS
  * section[outcomeDefinition].code = http://hl7.org/fhir/evidence-report-section#EvidenceVariable-outcome "Evidence Variable in variable role Outcome (MeasuredVariable)"
  * section[outcomeDesirability].code.text = "Outcome Desirability"
//TODO - convert the code.text above to a coding term in the codesystem
  * section[relativeImportance].code.text = "Relative Importance"
//TODO - convert the code.text above to a coding term in the codesystem
  * section[resultWithoutTreatment].code = http://hl7.org/fhir/evidence-report-section#Control-group-alone-Evidence "Evidence Results for the control exposure only"
  * section[resultWithTreatmentObserved].code = http://hl7.org/fhir/evidence-report-section#Intervention-group-alone-Evidence "Evidence Results for the intervention exposure only"
  * section[resultWithTreatmentDerived].code.text = "result with intervention with calculated value derived from the control group and effect estimate"
//TODO - convert the code.text above to a coding term in the codesystem
  * section[effectEstimate].code = http://hl7.org/fhir/evidence-report-section#Intervention-vs-Control-Evidence "Evidence Results for comparison of Intervention and Control"
  * section[netEffectContribution].code.text = "Net Effect Contribution"
//TODO - convert the code.text above to a coding term in the codesystem
* section[outcomeEntry].code.text = "Summary of net effect contributions entry for a single outcome"
//TODO - convert the code.text above to a coding term in the codesystem
* section[outcomeEntry]
  * focus only Reference(OutcomeDefinition)
  * section 1..*
  * section ^slicing.discriminator.type = #pattern
  * section ^slicing.discriminator.path = "code"
  * section ^slicing.rules = #open
  * section contains outcomeDefinition 0..1 and outcomeDesirability 0..1 and relativeImportance 0..1 and resultWithoutTreatment 0..1 and resultWithTreatmentObserved 0..1 and resultWithTreatmentDerived 0..1 and effectEstimate 0..1 and netEffectContribution 1..1 MS
  * section[outcomeDefinition].code = http://hl7.org/fhir/evidence-report-section#EvidenceVariable-outcome "Evidence Variable in variable role Outcome (MeasuredVariable)"
  * section[outcomeDefinition]
    * entry 0..1 
    * entry only Reference(OutcomeDefinition)
  * section[outcomeDesirability].code.text = "Outcome Desirability"
//TODO - convert the code.text above to a coding term in the codesystem
  * section[outcomeDesirability]
    * entry 0..1 
    * entry only Reference(OutcomeImportance)
  * section[relativeImportance].code.text = "Relative Importance"
//TODO - convert the code.text above to a coding term in the codesystem
  * section[relativeImportance]
    * entry 0..1 
    * entry only Reference(OutcomeImportance)
  * section[resultWithoutTreatment].code = http://hl7.org/fhir/evidence-report-section#Control-group-alone-Evidence "Evidence Results for the control exposure only"
  * section[resultWithoutTreatment]
    * entry 0..1 
    * entry only Reference(ComparatorOnlyEvidence)
  * section[resultWithTreatmentObserved].code = http://hl7.org/fhir/evidence-report-section#Intervention-group-alone-Evidence "Evidence Results for the intervention exposure only"
  * section[resultWithTreatmentObserved]
    * entry 0..1 
    * entry only Reference(InterventionOnlyEvidence)
  * section[resultWithTreatmentDerived].code.text = "result with intervention with calculated value derived from the control group and effect estimate"
//TODO - convert the code.text above to a coding term in the codesystem
  * section[resultWithTreatmentDerived]
    * entry 0..2 
    * entry only Reference(ComparatorOnlyEvidence or ComparativeEvidence)
  * section[effectEstimate].code = http://hl7.org/fhir/evidence-report-section#Intervention-vs-Control-Evidence "Evidence Results for comparison of Intervention and Control"
  * section[effectEstimate]
    * entry 0..1 
    * entry only Reference(ComparativeEvidence)
  * section[netEffectContribution].code.text = "Net Effect Contribution"
//TODO - convert the code.text above to a coding term in the codesystem
* section[netEffectEstimate].code.text = "Net Effect Estimate"
//TODO - convert the code.text above to a coding term in the codesystem
 