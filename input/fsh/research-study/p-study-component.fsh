Profile: StudyComponent
Parent: StudyDesign
Id: study-component
Description: "Profile of ResearchStudy for Evidence Based Medicine IG. The StudyComponent Profile is used to report a part of a study that is conducted in multiple parts."
* ^extension[$ext-fmm].valueInteger = 1
* ^extension[$ext-wg].valueCode = #cds
* ^extension[$ext-standards-status].valueCode = #trial-use
* title ^comment = "The title should include the title of the parent ResearchStudy plus the name of the part represented."
* partOf 1..*