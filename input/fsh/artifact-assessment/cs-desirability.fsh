CodeSystem: DesirabilityCodeSystem
Id: desirability-codesystem
Title: "Desirability Code System"
Description: "Codes for use with the OutcomeImportance Profile, to provide values for the content.classifier element where content.type is Outcome Desirability."
* ^extension[$ext-fmm].valueInteger = 1
* ^extension[$ext-wg].valueCode = #cds
* ^extension[$ext-standards-status].valueCode = #trial-use
* ^status = #active
* ^experimental = false
* ^caseSensitive = false
* ^content = #complete
* #desirable "Desirable"
    "Desirable"
* #undesirable "Undesirable"
    "Undesirable"