Profile: OutcomeMeasureSynthesisReport
Parent: EvidenceSynthesisTableReportPackage
Id: outcome-measure-synthesis-report
Description: "Profile of Composition for Evidence Based Medicine IG. The OutcomeMeasureSynthesisReport Profile is used for an evidence report including the findings for any number of outcomes in a synthesis of research studies, where there may be a unique observed study group, observed exposure group, and observed comparator group for each outcome."
* ^extension[$ext-fmm].valueInteger = 1
* ^extension[$ext-wg].valueCode = #cds
* ^extension[$ext-standards-status].valueCode = #draft
* type.coding 1..1
* type.coding = https://fevir.net/resources/CodeSystem/179423#OutcomeMeasureSynthesisReport "OutcomeMeasureSynthesisReport"
* type.text = "Outcome Measure Synthesis Report"
* section[results] 1..1
  * section 1..*
  * section
    * focus 1..1
    * focus only Reference(VariableDefinition)
    * section ^slicing.discriminator.type = #value
    * section ^slicing.discriminator.path = "code.coding"
    * section ^slicing.rules = #open
    * section contains population 0..1 MS and intervention 0..1 MS and comparator 0..1 MS and groupAssignment 0..1 and comparatorEvidence 0..1 MS and interventionEvidence 0..1 MS and comparativeEvidence 0..1 MS
    * section[population].code.coding 1..1
    * section[population].code.coding = https://fevir.net/resources/CodeSystem/179423#population "Population"
    * section[population]
      * entry only Reference(Group)
    * section[intervention].code.coding 1..1
    * section[intervention].code.coding = https://fevir.net/resources/CodeSystem/179423#intervention-group "Intervention Group"
    * section[intervention]
      * entry only Reference(ExposureGroup or ComparatorGroup)
    * section[comparator].code.coding 1..1
    * section[comparator].code.coding = https://fevir.net/resources/CodeSystem/179423#comparator-group "Comparator Group"
    * section[comparator]
      * entry only Reference(ComparatorGroup or ExposureGroup)
    * section[groupAssignment].code.coding 1..1
    * section[groupAssignment].code.coding = https://fevir.net/resources/CodeSystem/179423#GroupAssignment "GroupAssignment"
    * section[groupAssignment]
      * entry only Reference(GroupAssignment)
    * section[comparatorEvidence].code.coding 1..1
    * section[comparatorEvidence].code.coding = https://fevir.net/resources/CodeSystem/179423#result-with-comparator-alone "Result with comparator alone"
    * section[comparatorEvidence]
      * entry only Reference(NonComparativeEvidence)
    * section[interventionEvidence].code.coding 1..1
    * section[interventionEvidence].code.coding = https://fevir.net/resources/CodeSystem/179423#result-with-intervention-alone "Result with intervention alone"
    * section[interventionEvidence]
      * entry only Reference(NonComparativeEvidence)
    * section[comparativeEvidence].code.coding 1..1
    * section[comparativeEvidence].code.coding = https://fevir.net/resources/CodeSystem/179423#result-with-intervention-vs-comparator "Result with intervention vs. comparator"
    * section[comparativeEvidence]
      * entry only Reference(ComparativeEvidence)
