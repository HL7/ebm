Extension: ResearchStudyStudyEligibilityCriteria
Id: research-study-study-eligibility-criteria
Description: "Link to criteria for inclusion of studies in the systematic review."
* ^extension[$ext-fmm].valueInteger = 1
* ^extension[$ext-wg].valueCode = #cds
* ^extension[$ext-standards-status].valueCode = #draft
* ^context.type = #element
* ^context.expression = "ResearchStudy"
* value[x] only Reference(StudyEligibilityCriteria)
* . ^short = "Link to inclusion and exclusion criteria for studies."
* . ^definition = "Link to criteria for inclusion of studies in the systematic review, using a Group Resource (StudyEligibilityCriteria Profile)."
