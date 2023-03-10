Profile: CohortDefinition
Parent: EvidenceVariable
Id: cohort-definition
Title: "Cohort Definition"
Description: "Profile of EvidenceVariable for Evidence Based Medicine IG. The CohortDefinition Profile is used to replace the complex characteristic BackboneElement with a single characteristicDefinition element which references a Characteristic Resource that is being used to model characteristic definitions."
* effectivePeriod ^definition = "For the CohortDefinition Profile, the effectivePeriod element may be used when there is a change in the cohort definition during the course of its use."
* characteristic 0..0
* extension contains CharacteristicDefinition named characteristicDefinition 1..1