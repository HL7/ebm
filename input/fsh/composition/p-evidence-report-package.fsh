Profile: EvidenceReportPackage
Parent: EvidenceReport
Id: evidence-report-package
Description: "Profile of Composition for Evidence Based Medicine IG. The EvidenceReportPackage Profile is used for a base structure to extend the EvidenceReport Profile with optional sections for Introduction, Discussion, Methods, References, Competing Interests, Acknowledgements, and Appendices."
* ^extension[$ext-fmm].valueInteger = 1
* ^extension[$ext-wg].valueCode = #cds
* ^extension[$ext-standards-status].valueCode = #draft
* section ^slicing.discriminator.type = #value
* section ^slicing.discriminator.path = "code.coding"
* section ^slicing.rules = #open
* section contains introduction 0..1 MS and discussion 0..1 MS and methods 0..1 MS and references 0..1 MS and competingInterests 0..1 MS and acknowledgements 0..1 MS and appendices 0..1 MS
* section[introduction].code.coding 1..1
* section[introduction].code.coding = https://fevir.net/resources/CodeSystem/179423#introduction "Introduction"
* section[discussion].code.coding 1..1
* section[discussion].code.coding = https://fevir.net/resources/CodeSystem/179423#discussion "Discussion"
* section[methods].code.coding 1..1
* section[methods].code.coding = https://fevir.net/resources/CodeSystem/179423#methods "Methods"
* section[references].code.coding 1..1
* section[references].code.coding = https://fevir.net/resources/CodeSystem/179423#references "References"
* section[references]
  * entry only Reference(Citation)
* section[competingInterests].code.coding 1..1
* section[competingInterests].code.coding = https://fevir.net/resources/CodeSystem/179423#competing-interests "Competing Interests"
* section[acknowledgements].code.coding 1..1
* section[acknowledgements].code.coding = https://fevir.net/resources/CodeSystem/179423#acknowledgements "Acknowledgements"
* section[appendices].code.coding 1..1
* section[appendices].code.coding = https://fevir.net/resources/CodeSystem/179423#appendices "Appendices"
