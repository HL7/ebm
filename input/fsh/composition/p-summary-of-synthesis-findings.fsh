Profile: SummaryOfSynthesisFindings
Parent: EvidenceSynthesisTableReportPackage
Id: summary-of-synthesis-findings
Description: "Profile of Composition for Evidence Based Medicine IG. The SummaryOfSynthesisFindings Profile is used for an evidence report combining Evidence and EvidenceVariable Resources, organized around VariableDefinition (Profile of EvidenceVariable), to represent the summary of findings of comparative evidence from an evidence synthesis."
* ^extension[$ext-fmm].valueInteger = 1
* ^extension[$ext-wg].valueCode = #cds
* ^extension[$ext-standards-status].valueCode = #draft
* type.coding 1..1
* type.coding = https://fevir.net/resources/CodeSystem/179423#SummaryOfSynthesisFindings "SummaryOfSynthesisFindings"
* type.text = "Summary of Synthesis Findings"
* section 2..*
* section ^slicing.discriminator.type = #value
* section ^slicing.discriminator.path = "code.coding"
* section ^slicing.rules = #open
* section contains columnHeaders 1..1 MS and summaryOfFindings 1..1 MS
* section[columnHeaders].code.coding 1..1
* section[columnHeaders].code.coding = https://fevir.net/resources/CodeSystem/179423#column-headers "Column Headers"
* section[columnHeaders]
  * section 2..*
  * section ^slicing.discriminator.type = #value
  * section ^slicing.discriminator.path = "code.coding"
  * section ^slicing.rules = #open
  * section contains outcomeDefinition 1..1 MS and sampleSize 0..1 and resultWithoutTreatment 0..1 and resultWithTreatmentObserved 0..1 and resultWithTreatmentDerived 0..1 and effectEstimate 0..1 and certaintyOfEvidence 0..1 and assertion 0..1
  * section[outcomeDefinition].code.coding 1..1
  * section[outcomeDefinition].code.coding = https://fevir.net/resources/CodeSystem/179423#outcome-measure "Outcome Measure"
  * section[sampleSize].code.coding 1..1
  * section[sampleSize].code.coding = https://fevir.net/resources/CodeSystem/179423#sample-size "Sample Size"
  * section[resultWithoutTreatment].code.coding 1..1
  * section[resultWithoutTreatment].code.coding = https://fevir.net/resources/CodeSystem/179423#result-with-comparator-alone "Result with comparator alone"
  * section[resultWithTreatmentObserved].code.coding 1..1
  * section[resultWithTreatmentObserved].code.coding = https://fevir.net/resources/CodeSystem/179423#result-with-intervention-alone "Result with intervention alone"
  * section[resultWithTreatmentDerived].code.coding 1..1
  * section[resultWithTreatmentDerived].code.coding = https://fevir.net/resources/CodeSystem/179423#result-with-intervention-alone-calculated "Result with intervention alone (calculated)"
  * section[effectEstimate].code.coding 1..1
  * section[effectEstimate].code.coding = https://fevir.net/resources/CodeSystem/179423#result-with-intervention-vs-comparator "Result with intervention vs. comparator"
  * section[certaintyOfEvidence].code.coding 1..1
  * section[certaintyOfEvidence].code.coding = https://fevir.net/resources/CodeSystem/179423#certainty-of-evidence "Certainty of Evidence"
  * section[assertion].code.coding 1..1
  * section[assertion].code.coding = https://fevir.net/resources/CodeSystem/179423#assertion "Assertion"
* section[summaryOfFindings].code.coding 1..1
* section[summaryOfFindings].code.coding = https://fevir.net/resources/CodeSystem/179423#summary-of-findings "Summary of Findings"
* section[summaryOfFindings]
  * section ^slicing.discriminator.type = #value
  * section ^slicing.discriminator.path = "code.coding"
  * section ^slicing.rules = #closed
  * section contains outcomeEntry 1..* MS
  * section[outcomeEntry].code.coding 1..1
  * section[outcomeEntry].code.coding = https://fevir.net/resources/CodeSystem/179423#summary-of-findings-entry-for-a-single-outcome "Summary of findings entry for a single outcome"
  * section[outcomeEntry]
    * focus only Reference(VariableDefinition)
    * section 1..*
    * section ^slicing.discriminator.type = #value
    * section ^slicing.discriminator.path = "code.coding"
    * section ^slicing.rules = #open
    * section contains outcomeDefinition 0..1 and sampleSize 0..1 and resultWithoutTreatment 0..1 and resultWithTreatmentObserved 0..1 and resultWithTreatmentDerived 0..1 and effectEstimate 0..1 and certaintyOfEvidence 0..1 and assertion 0..1
    * section[outcomeDefinition].code.coding 1..1
    * section[outcomeDefinition].code.coding = https://fevir.net/resources/CodeSystem/179423#outcome-measure "Outcome Measure"
    * section[outcomeDefinition]
      * entry 0..1 
      * entry only Reference(VariableDefinition)
    * section[sampleSize].code.coding 1..1
    * section[sampleSize].code.coding = https://fevir.net/resources/CodeSystem/179423#sample-size "Sample Size"
    * section[resultWithoutTreatment].code.coding 1..1
    * section[resultWithoutTreatment].code.coding = https://fevir.net/resources/CodeSystem/179423#result-with-comparator-alone "Result with comparator alone"
    * section[resultWithoutTreatment]
      * entry 0..1 
      * entry only Reference(ComparatorOnlyEvidence)
    * section[resultWithTreatmentObserved].code.coding 1..1
    * section[resultWithTreatmentObserved].code.coding = https://fevir.net/resources/CodeSystem/179423#result-with-intervention-alone "Result with intervention alone"
    * section[resultWithTreatmentObserved]
      * entry 0..1 
      * entry only Reference(InterventionOnlyEvidence)
    * section[resultWithTreatmentDerived].code.coding 1..1
    * section[resultWithTreatmentDerived].code.coding = https://fevir.net/resources/CodeSystem/179423#result-with-intervention-alone-calculated "Result with intervention alone (calculated)"
    * section[resultWithTreatmentDerived]
      * entry 0..2 
      * entry only Reference(ComparatorOnlyEvidence or ComparativeEvidence)
    * section[effectEstimate].code.coding 1..1
    * section[effectEstimate].code.coding = https://fevir.net/resources/CodeSystem/179423#result-with-intervention-vs-comparator "Result with intervention vs. comparator"
    * section[effectEstimate]
      * entry 0..1 
      * entry only Reference(ComparativeEvidence)
    * section[certaintyOfEvidence].code.coding 1..1
    * section[certaintyOfEvidence].code.coding = https://fevir.net/resources/CodeSystem/179423#certainty-of-evidence "Certainty of Evidence"
    * section[certaintyOfEvidence]
      * entry only Reference(ComparativeEvidence or CertaintyOfEvidence)
    * section[assertion].code.coding 1..1
    * section[assertion].code.coding = https://fevir.net/resources/CodeSystem/179423#assertion "Assertion"
    * section[assertion]
      * entry 0..1
      * entry only Reference(ComparativeEvidence)

  