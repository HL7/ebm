Extension: ResearchStudySaeReportingMethod
Id: research-study-sae-reporting-method
Description: "Method for reporting Serious Adverse Events."
* ^extension[$ext-fmm].valueInteger = 1
* ^extension[$ext-wg].valueCode = #cds
* ^extension[$ext-standards-status].valueCode = #trial-use
* ^context.type = #element
* ^context.expression = "ResearchStudy"
* value[x] only string
* . ^short = "Method for reporting Serious Adverse Events."
* . ^definition = "Method for reporting Serious Adverse Events."
* . ^comment = "Report Serious Adverse Events to the sponsor. Enter SAE reporting method(s). Refer to Section 9.4 for detailed reporting instructions."
