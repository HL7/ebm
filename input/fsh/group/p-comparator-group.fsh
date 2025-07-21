Profile: ComparatorGroup
Parent: GroupR6
Id: comparator-group
Description: "Profile of Group for Evidence Based Medicine IG. The ComparatorGroup Profile is used to represent a group (enumerated) used as a comparator in a ComparativeEvidence."
* ^extension[$ext-fmm].valueInteger = 1
* ^extension[$ext-wg].valueCode = #cds
* ^extension[$ext-standards-status].valueCode = #trial-use
* membership = #enumerated
