Profile: OutcomeList
Parent: List
Id: outcome-list
Description: "Profile of List for Evidence Based Medicine IG. The OutcomeList Profile is used to provide a list of outcomes. The OutcomeList Profile is referenced in the EvidenceReportSubject Profile as a way to define the set of outcomes that an EvidenceReport is about."
* ^extension[$ext-fmm].valueInteger = 1
* ^extension[$ext-wg].valueCode = #cds
* ^extension[$ext-standards-status].valueCode = #draft
* code.coding = https://fevir.net/resources/CodeSystem/179423#OutcomeList "OutcomeList"
* code.text = "Outcome List"
* encounter 0..0
* entry
  * item only Reference(OutcomeDefinition or OutcomeVariable)
