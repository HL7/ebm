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
* subject 1..1
  * ^comment = "Reference a single EvidenceVariable Resource (EvidenceReportSubject Profile) to define the subject of this EvidenceReport."