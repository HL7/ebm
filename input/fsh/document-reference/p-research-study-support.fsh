Profile: ResearchStudySupport
Parent: DocumentReference
Id: research-study-support
Description: "Profile of DocumentReference for Evidence Based Medicine IG. The ResearchStudySupport Profile is used to classify the type of document used to support a research study."
* ^extension[$ext-fmm].valueInteger = 1
* ^extension[$ext-wg].valueCode = #cds
* ^extension[$ext-standards-status].valueCode = #trial-use
* type from ResearchStudyDocumentTypes (extensible)