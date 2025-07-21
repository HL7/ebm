Profile: CohortDefinition
Parent: GroupR6
Id: cohort-definition
Description: "Profile of Group for Evidence Based Medicine IG. The CohortDefinition Profile is used to provide a definitional representation of a Group. The type element is required. (Alternatively, the ConceptualCohortDefinition Profile uses membership = conceptual and allows avoiding the required use of type.)"
* ^extension[$ext-fmm].valueInteger = 1
* ^extension[$ext-wg].valueCode = #cds
* ^extension[$ext-standards-status].valueCode = #trial-use
* membership = #definitional
* quantity 0..0
* member 0..0 
