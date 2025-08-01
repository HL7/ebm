Extension: ResearchStudySystematicReviewEligibilityCriteria
Id: research-study-systematic-review-eligibility-criteria
Description: "Link to criteria for inclusion of studies in the systematic review."
* ^extension[$ext-fmm].valueInteger = 1
* ^extension[$ext-wg].valueCode = #cds
* ^extension[$ext-standards-status].valueCode = #trial-use
* ^context.type = #element
* ^context.expression = "ResearchStudy"
* value[x] only Reference(SystematicReviewEligibilityCriteria)
* . ^short = "Link to inclusion and exclusion criteria for studies."
* . ^definition = "Link to criteria for inclusion of studies in the systematic review, using a Group Resource (StudyEligibilityCriteria Profile)."
