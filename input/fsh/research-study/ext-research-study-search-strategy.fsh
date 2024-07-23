Extension: ResearchStudySearchStrategy
Id: research-study-search-strategy
Description: "Link to search terms and sources for finding studies for inclusion."
* ^extension[$ext-fmm].valueInteger = 1
* ^extension[$ext-wg].valueCode = #cds
* ^extension[$ext-standards-status].valueCode = #draft
* ^context.type = #element
* ^context.expression = "ResearchStudy"
* value[x] only Reference(SearchStrategy)
* . ^short = "Link to search terms and sources."
* . ^definition = "Link to search terms and sources, using a Group Resource (SearchStrategy Profile)."
