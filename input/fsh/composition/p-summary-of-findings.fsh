Profile: SummaryOfFindings
Parent: EvidenceReport
Id: summary-of-findings
Description: "Profile of Composition for Evidence Based Medicine IG. The SummaryOfFindings Profile is used for an evidence report combining Evidence and EvidenceVariable Resources, organized around OutcomeDefinition (Profile of EvidenceVariable), to represent the summary of findings of comparative evidence."
* category 1..*
* category ^slicing.discriminator.type = #pattern
* category ^slicing.discriminator.path = "text"
* category ^slicing.rules = #open
* category contains summaryOfFindings 1..1 MS
* category[summaryOfFindings].text = "Summary of Findings"
* section 2..*
* section ^slicing.discriminator.type = #pattern
* section ^slicing.discriminator.path = "code"
* section ^slicing.rules = #open
* section contains columnHeaders 1..1 MS
* section[columnHeaders].code = http://hl7.org/fhir/evidence-report-section#Column-Headers "Column Headers"
* section[columnHeaders]
  * section 2..*
  * section ^slicing.discriminator.type = #pattern
  * section ^slicing.discriminator.path = "code"
  * section ^slicing.rules = #open
  * section contains outcomeDefinition 1..1 MS and sampleSize 0..1 and resultWithoutTreatment 0..1 and resultWithTreatmentObserved 0..1 and resultWithTreatmentDerived 0..1 and effectEstimate 0..1 and certaintyOfEvidence 0..1 and assertion 0..1
  * section[outcomeDefinition].code = http://hl7.org/fhir/evidence-report-section#EvidenceVariable-outcome "Evidence Variable in variable role Outcome (MeasuredVariable)"
  * section[sampleSize].code = http://hl7.org/fhir/evidence-report-section#SampleSize "Sample Size"
  * section[resultWithoutTreatment].code = http://hl7.org/fhir/evidence-report-section#Control-group-alone-Evidence "Evidence Results for the control exposure only"
  * section[resultWithTreatmentObserved].code = http://hl7.org/fhir/evidence-report-section#Intervention-group-alone-Evidence "Evidence Results for the intervention exposure only"
  * section[resultWithTreatmentDerived].code.text = "result with intervention with calculated value derived from the control group and effect estimate"
//TODO - convert the code.text above to a coding term in the codesystem
  * section[effectEstimate].code = http://hl7.org/fhir/evidence-report-section#Intervention-vs-Control-Evidence "Evidence Results for comparison of Intervention and Control"
  * section[certaintyOfEvidence].code = http://hl7.org/fhir/evidence-report-section#Certainty-of-Evidence "Certainty of Evidence"
  * section[assertion].code = http://hl7.org/fhir/evidence-report-section#Assertion "Assertion"
 