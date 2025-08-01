Profile: SummaryOfNetEffect
Parent: EvidenceReportPackage
Id: summary-of-net-effect
Description: "Profile of Composition for Evidence Based Medicine IG. The SummaryOfNetEffect Profile is used for an evidence report combining ArtifactAssessment and Evidence and EvidenceVariable Resources, organized around VariableDefinition (Profile of EvidenceVariable), to represent the summary of net effect contributions of comparative evidence, adjusted for the relative importance of outcomes."
* ^extension[$ext-fmm].valueInteger = 1
* ^extension[$ext-wg].valueCode = #cds
* ^extension[$ext-standards-status].valueCode = #trial-use
* type.coding 1..1
* type.coding = https://fevir.net/resources/CodeSystem/179423#SummaryOfNetEffect "SummaryOfNetEffect"
* type.text = "Summary of Net Effect Contributions"
* section 2..*
* section ^slicing.discriminator.type = #value
* section ^slicing.discriminator.path = "code.coding"
* section ^slicing.rules = #open
* section contains columnHeaders 1..1 MS and outcomeEntry 1..* MS and netEffectEstimate 0..1
* section[columnHeaders].code.coding 1..1
* section[columnHeaders].code.coding = https://fevir.net/resources/CodeSystem/179423#column-headers "Column Headers"
* section[columnHeaders]
  * section 2..*
  * section ^slicing.discriminator.type = #value
  * section ^slicing.discriminator.path = "code.coding"
  * section ^slicing.rules = #open
  * section contains outcomeDefinition 1..1 MS and outcomeDesirability 0..1 and relativeImportance 0..1 and resultWithoutTreatment 0..1 and resultWithTreatmentObserved 0..1 and resultWithTreatmentDerived 0..1 and effectEstimate 0..1 and netEffectContribution 1..1 MS
  * section[outcomeDefinition].code.coding 1..1
  * section[outcomeDefinition].code.coding = https://fevir.net/resources/CodeSystem/179423#outcome-measure "Outcome Measure"
  * section[outcomeDesirability].code.coding 1..1
  * section[outcomeDesirability].code.coding = https://fevir.net/resources/CodeSystem/179423#outcome-desirability "Outcome Desirability"
  * section[relativeImportance].code.coding 1..1
  * section[relativeImportance].code.coding = https://fevir.net/resources/CodeSystem/179423#relative-importance "Relative Importance"
  * section[resultWithoutTreatment].code.coding 1..1
  * section[resultWithoutTreatment].code.coding = https://fevir.net/resources/CodeSystem/179423#result-with-comparator-alone "Result with comparator alone"
  * section[resultWithTreatmentObserved].code.coding 1..1
  * section[resultWithTreatmentObserved].code.coding = https://fevir.net/resources/CodeSystem/179423#result-with-intervention-alone "Result with intervention alone"
  * section[resultWithTreatmentDerived].code.coding 1..1
  * section[resultWithTreatmentDerived].code.coding = https://fevir.net/resources/CodeSystem/179423#result-with-intervention-alone-calculated "Result with intervention alone (calculated)"
  * section[effectEstimate].code.coding 1..1
  * section[effectEstimate].code.coding = https://fevir.net/resources/CodeSystem/179423#result-with-intervention-vs-comparator "Result with intervention vs. comparator"
  * section[netEffectContribution].code.coding 1..1
  * section[netEffectContribution].code.coding = https://fevir.net/resources/CodeSystem/179423#net-effect-contribution "Net Effect Contribution"
* section[outcomeEntry].code.coding 1..1
* section[outcomeEntry].code.coding = https://fevir.net/resources/CodeSystem/179423#summary-of-net-effect-contributions-entry-for-a-single-outcome "Summary of net effect contributions entry for a single outcome"
* section[outcomeEntry]
  * focus only Reference(VariableDefinition)
  * section 1..*
  * section ^slicing.discriminator.type = #value
  * section ^slicing.discriminator.path = "code.coding"
  * section ^slicing.rules = #open
  * section contains outcomeDefinition 0..1 and outcomeDesirability 0..1 and relativeImportance 0..1 and resultWithoutTreatment 0..1 and resultWithTreatmentObserved 0..1 and resultWithTreatmentDerived 0..1 and effectEstimate 0..1 and netEffectContribution 1..1 MS
  * section[outcomeDefinition].code.coding 1..1
  * section[outcomeDefinition].code.coding = https://fevir.net/resources/CodeSystem/179423#outcome-measure "Outcome Measure"
  * section[outcomeDefinition]
    * entry 0..1 
    * entry only Reference(VariableDefinition)
  * section[outcomeDesirability].code.coding 1..1
  * section[outcomeDesirability].code.coding = https://fevir.net/resources/CodeSystem/179423#outcome-desirability "Outcome Desirability"
  * section[outcomeDesirability]
    * entry 0..1 
    * entry only Reference(OutcomeImportance)
  * section[relativeImportance].code.coding 1..1
  * section[relativeImportance].code.coding = https://fevir.net/resources/CodeSystem/179423#relative-importance "Relative Importance"
  * section[relativeImportance]
    * entry 0..1 
    * entry only Reference(OutcomeImportance)
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
  * section[netEffectContribution].code.coding 1..1
  * section[netEffectContribution].code.coding = https://fevir.net/resources/CodeSystem/179423#net-effect-contribution "Net Effect Contribution"
  * section[netEffectContribution]
    * entry 0..1 
    * entry only Reference(NetEffectContribution)
* section[netEffectEstimate].code.coding 1..1
* section[netEffectEstimate].code.coding = https://fevir.net/resources/CodeSystem/179423#net-effect-estimate "Net Effect Estimate"
* section[netEffectEstimate]
  * entry 0..1 
  * entry only Reference(NetEffectEstimate)
 