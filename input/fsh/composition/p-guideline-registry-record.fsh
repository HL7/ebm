Profile: GuidelineRegistryRecord
Parent: Guideline
Id: guideline-registry-record
Description: "Profile of Composition for Evidence Based Medicine IG. The GuidelineRegistryRecord Profile is used for the addition of extensions to the Guideline Profile to support metadata regarding the record of the guideline in a registry."
* ^extension[$ext-fmm].valueInteger = 1
* ^extension[$ext-wg].valueCode = #cds
* ^extension[$ext-standards-status].valueCode = #trial-use
* extension contains GuidelineRegistration named registrationStatus 0..*
