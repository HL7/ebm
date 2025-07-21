ValueSet: ResearchStudyDocumentTypes
Id: research-study-document-types
Title: "Research Study Document Types Value Set"
Description: "Codes for use in the DocumentReference.type element when referenced from ResearchStudy.relatesTo.targetReference."
* ^extension[$ext-fmm].valueInteger = 1
* ^extension[$ext-wg].valueCode = #brr
* ^extension[$ext-standards-status].valueCode = #trial-use
* ^experimental = false
* include codes from system ResearchStudyDocumentTypesCodeSystem