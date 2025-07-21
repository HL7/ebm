Extension: ResearchStudySponsorConfidentialityStatement
Id: research-study-sponsor-confidentiality-statement
Description: "Sponsor Confidentiality Statement."
* ^extension[$ext-fmm].valueInteger = 1
* ^extension[$ext-wg].valueCode = #cds
* ^extension[$ext-standards-status].valueCode = #trial-use
* ^context.type = #element
* ^context.expression = "ResearchStudy"
* value[x] only string
* . ^short = "Sponsor Confidentiality Statement, if applicable."
* . ^definition = "Sponsor Confidentiality Statement, if applicable."
