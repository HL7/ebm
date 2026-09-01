Profile: AdverseEventsReport
Parent: OutcomeMeasureReport
Id: adverse-events-report
Description: "Profile of Composition for Evidence Based Medicine IG. The AdverseEventsReport Profile is used for an evidence report including the findings for any number of outcome measures representing adverse events in a research study."
* ^extension[$ext-fmm].valueInteger = 1
* ^extension[$ext-wg].valueCode = #cds
* ^extension[$ext-standards-status].valueCode = #trial-use
* type.coding 1..1
* type.coding = https://fevir.net/resources/CodeSystem/179423#AdverseEventsReport "AdverseEventsReport"
* type.text = "Adverse Events Report"
* section ^slicing.discriminator.type = #value
* section ^slicing.discriminator.path = "code.coding"
* section ^slicing.rules = #open
* section contains frequencyThreshold 0..1 and timeFrame 0..1 and eventsDescription 0..1 and seriousEvents 0..1 and otherEvents 0..1
* section[frequencyThreshold].code.coding 1..1
* section[frequencyThreshold].code.coding = https://fevir.net/resources/CodeSystem/179423#eventsFrequencyThreshold "Events Frequency Threshold"
* section[timeFrame].code.coding 1..1
* section[timeFrame].code.coding = https://fevir.net/resources/CodeSystem/179423#eventsTimeFrame "Events Time Frame"
* section[eventsDescription].code.coding 1..1
* section[eventsDescription].code.coding = https://fevir.net/resources/CodeSystem/179423#eventsDescription "Events Description"
* section[seriousEvents].code.coding 1..1
* section[seriousEvents].code.coding = https://fevir.net/resources/CodeSystem/179423#seriousEvents "Serious Events"
* section[seriousEvents]
  * section ^slicing.discriminator.type = #value
  * section ^slicing.discriminator.path = "code.coding"
  * section ^slicing.rules = #open
  * section contains results-outcome 0..* MS
  * section[results-outcome].code.coding 1..1
  * section[results-outcome].code.coding = https://fevir.net/resources/CodeSystem/179423#results "Results"
  * section[results-outcome]
    * focus only Reference(VariableDefinition)
    * entry only Reference(NonComparativeEvidence or ComparativeEvidence)
* section[otherEvents].code.coding 1..1
* section[otherEvents].code.coding = https://fevir.net/resources/CodeSystem/179423#otherEvents "Other Events"
* section[otherEvents]
  * section ^slicing.discriminator.type = #value
  * section ^slicing.discriminator.path = "code.coding"
  * section ^slicing.rules = #open
  * section contains results-outcome 0..* MS
  * section[results-outcome].code.coding 1..1
  * section[results-outcome].code.coding = https://fevir.net/resources/CodeSystem/179423#results "Results"
  * section[results-outcome]
    * focus only Reference(VariableDefinition)
    * entry only Reference(NonComparativeEvidence or ComparativeEvidence)
