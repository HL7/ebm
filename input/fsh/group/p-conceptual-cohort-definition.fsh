Profile: ConceptualCohortDefinition
Parent: GroupR6
Id: conceptual-cohort-definition
Description: "Profile of Group for Evidence Based Medicine IG. The ConceptualCohortDefinition Profile is used to provide a conceptual representation of a Group. The membership = conceptual allows avoiding the required use of type."
* ^extension[$ext-fmm].valueInteger = 1
* ^extension[$ext-wg].valueCode = #cds
* ^extension[$ext-standards-status].valueCode = #trial-use
* membership = #conceptual
* quantity 0..0
* member 0..0 
