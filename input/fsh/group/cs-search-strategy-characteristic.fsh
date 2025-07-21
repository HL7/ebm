CodeSystem: SearchStrategyCharacteristicCodeSystem
Id: search-strategy-characteristic-code-system
Title: "Search Strategy Characteristic Code System"
Description: "Codes for use in the Group.characteristic.code element in a SearchStrategy Profile."
* ^extension[$ext-fmm].valueInteger = 1
* ^extension[$ext-wg].valueCode = #cds
* ^extension[$ext-standards-status].valueCode = #trial-use
* ^experimental = false
* ^caseSensitive = true
* ^concept[0].code = #pubmed-search
* ^concept[0].display = "PubMed search string"
* ^concept[0].definition = "The search string used for the PubMed database."
* ^concept[1].code = #embase-search
* ^concept[1].display = "Embase search string"
* ^concept[1].definition = "The search string used for the Embase database."
* ^concept[2].code = #ovid-medline-search
* ^concept[2].display = "Ovid MEDLINE search string"
* ^concept[2].definition = "The search string used for the Ovid MEDLINE database."
* ^concept[3].code = #ovid-embase-search
* ^concept[3].display = "Ovid Embase search string"
* ^concept[3].definition = "The search string used for the Ovid Embase database."
* ^concept[4].code = #ovid-cochrane-library-search
* ^concept[4].display = "Ovid Cochrane Library search string"
* ^concept[4].definition = "The search string used for the Ovid Cochrane Library database."
