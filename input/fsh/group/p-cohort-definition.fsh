Profile: CohortDefinition
Parent: GroupR6
Id: cohort-definition
Title: "Cohort Definition"
Description: "Profile of Group for Evidence Based Medicine IG. The CohortDefinition Profile is used to provide a conceptual or definitional representation of a Group. In R6, membership = conceptual allows avoiding the required use of type. In R5, membership will be definitional and type value can be ignored for resource content processing."
* ^extension[$ext-fmm].valueInteger = 1
* ^extension[$ext-wg].valueCode = #cds
* ^extension[$ext-standards-status].valueCode = #draft
* membership = #definitional
* quantity 0..0
* member 0..0 
