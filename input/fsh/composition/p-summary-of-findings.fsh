Profile: SummaryOfFindings
Parent: EvidenceReport
Id: summary-of-findings
Description: "Profile of Composition for Evidence Based Medicine IG. The SummaryOfFindings Profile is used for an evidence report combining Evidence and EvidenceVariable Resources, organized around OutcomeVariable (Profile of EvidenceVariable), to represent the summary of findings of comparative evidence."
* category 1..*
* category ^slicing.discriminator.type = #value
* category ^slicing.discriminator.path = "text"
* category ^slicing.rules = #open
* category contains summaryOfFindings 1..1 MS
* category[summaryOfFindings].coding = https://fevir.net/resources/CodeSystem/179423#SummaryOfFindings "SummaryOfFindings"
* category[summaryOfFindings].text = "Summary of Findings"
* section 2..*
* section ^slicing.discriminator.type = #value
* section ^slicing.discriminator.path = "code"
* section ^slicing.rules = #open
* section contains columnHeaders 1..1 MS and outcomeEntry 1..* MS
* section[columnHeaders].code = https://fevir.net/resources/CodeSystem/179423#column-headers "Column Headers"
* section[columnHeaders]
  * section 2..*
  * section ^slicing.discriminator.type = #value
  * section ^slicing.discriminator.path = "code"
  * section ^slicing.rules = #open
  * section contains outcomeDefinition 1..1 MS and sampleSize 0..1 and resultWithoutTreatment 0..1 and resultWithTreatmentObserved 0..1 and resultWithTreatmentDerived 0..1 and effectEstimate 0..1 and certaintyOfEvidence 0..1 and assertion 0..1
  * section[outcomeDefinition].code = https://fevir.net/resources/CodeSystem/179423#outcome-measure "Outcome Measure"
  * section[sampleSize].code = https://fevir.net/resources/CodeSystem/179423#sample-size "Sample Size"
  * section[resultWithoutTreatment].code = https://fevir.net/resources/CodeSystem/179423#result-with-comparator-alone "Result with comparator alone"
  * section[resultWithTreatmentObserved].code = https://fevir.net/resources/CodeSystem/179423#result-with-intervention-alone "Result with intervention alone"
  * section[resultWithTreatmentDerived].code = https://fevir.net/resources/CodeSystem/179423#result-with-intervention-alone-calculated "Result with intervention alone (calculated)"
  * section[effectEstimate].code = https://fevir.net/resources/CodeSystem/179423#result-with-intervention-vs-comparator "Result with intervention vs. comparator"
  * section[certaintyOfEvidence].code = https://fevir.net/resources/CodeSystem/179423#certainty-of-evidence "Certainty of Evidence"
  * section[assertion].code = https://fevir.net/resources/CodeSystem/179423#assertion "Assertion"
* section[outcomeEntry].code = https://fevir.net/resources/CodeSystem/179423#summary-of-findings-entry-for-a-single-outcome "Summary of findings entry for a single outcome"
* section[outcomeEntry]
  * focus only Reference(OutcomeVariable)
  * section 1..*
  * section ^slicing.discriminator.type = #value
  * section ^slicing.discriminator.path = "code"
  * section ^slicing.rules = #open
  * section contains outcomeDefinition 0..1 and sampleSize 0..1 and resultWithoutTreatment 0..1 and resultWithTreatmentObserved 0..1 and resultWithTreatmentDerived 0..1 and effectEstimate 0..1 and certaintyOfEvidence 0..1 and assertion 0..1
  * section[outcomeDefinition].code = https://fevir.net/resources/CodeSystem/179423#outcome-measure "Outcome Measure"
  * section[outcomeDefinition]
    * entry 0..1 
    * entry only Reference(OutcomeVariable)
  * section[sampleSize].code = https://fevir.net/resources/CodeSystem/179423#sample-size "Sample Size"
  * section[resultWithoutTreatment].code = https://fevir.net/resources/CodeSystem/179423#result-with-comparator-alone "Result with comparator alone"
  * section[resultWithoutTreatment]
    * entry 0..1 
    * entry only Reference(ComparatorOnlyEvidence)
  * section[resultWithTreatmentObserved].code = https://fevir.net/resources/CodeSystem/179423#result-with-intervention-alone "Result with intervention alone"
  * section[resultWithTreatmentObserved]
    * entry 0..1 
    * entry only Reference(InterventionOnlyEvidence)
  * section[resultWithTreatmentDerived].code = https://fevir.net/resources/CodeSystem/179423#result-with-intervention-alone-calculated "Result with intervention alone (calculated)"
  * section[resultWithTreatmentDerived]
    * entry 0..2 
    * entry only Reference(ComparatorOnlyEvidence or ComparativeEvidence)
  * section[effectEstimate].code = https://fevir.net/resources/CodeSystem/179423#result-with-intervention-vs-comparator "Result with intervention vs. comparator"
  * section[effectEstimate]
    * entry 0..1 
    * entry only Reference(ComparativeEvidence)
  * section[certaintyOfEvidence].code = https://fevir.net/resources/CodeSystem/179423#certainty-of-evidence "Certainty of Evidence"
  * section[certaintyOfEvidence]
    * entry only Reference(ComparativeEvidence or CertaintyOfEvidence)
  * section[assertion].code = https://fevir.net/resources/CodeSystem/179423#assertion "Assertion"
  * section[assertion]
    * entry 0..1
    * entry only Reference(ComparativeEvidence)

 