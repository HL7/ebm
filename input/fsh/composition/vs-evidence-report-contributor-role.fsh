ValueSet: EvidenceReportContributorRole
Id: evidence-report-contributor-role
Title: "Evidence Report Contributor Role Value Set"
Description: "The role in influencing the content of the Resource."
* ^extension[$ext-fmm].valueInteger = 1
* ^extension[$ext-wg].valueCode = #cds
* ^extension[$ext-standards-status].valueCode = #draft
* ^experimental = false
* include codes from system http://hl7.org/fhir/contributor-role
* include https://fevir.net/resources/CodeSystem/179423#recorder "Recorder"