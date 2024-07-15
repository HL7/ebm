Profile: EvidenceMeasureReportPackage
Parent: EvidenceReport
Id: evidence-measure-report-package
Description: "Profile of Composition for Evidence Based Medicine IG. The EvidenceMeasureReportPackage Profile is used for a base structure to extend the EvidenceReport Profile with optional relatesTo slices for Total Group, Intervention Group, Comparator Group, and Group Assignment."
* ^extension[$ext-fmm].valueInteger = 1
* ^extension[$ext-wg].valueCode = #cds
* ^extension[$ext-standards-status].valueCode = #draft
* relatesTo 1..*
* relatesTo ^slicing.discriminator.type = #value
* relatesTo ^slicing.discriminator.path = "label"
* relatesTo ^slicing.rules = #open
* relatesTo contains interventionGroup 0..* MS and comparatorGroup 0..* MS and totalGroup 0..1 MS and groupAssignment 0..*
* relatesTo[interventionGroup].type = #depends-on
* relatesTo[interventionGroup].label = "Intervention Group"
* relatesTo[interventionGroup].resourceReference only Reference(ExposureGroup or ComparatorGroup)
* relatesTo[comparatorGroup].type = #depends-on
* relatesTo[comparatorGroup].label = "Comparator Group"
* relatesTo[comparatorGroup].resourceReference only Reference(ExposureGroup or ComparatorGroup)
* relatesTo[totalGroup].type = #depends-on
* relatesTo[totalGroup].label = "Total Group"
* relatesTo[totalGroup].resourceReference only Reference(StudyGroup)
* relatesTo[groupAssignment].type = #composed-of
* relatesTo[groupAssignment].label = "Group Assignment"
* relatesTo[groupAssignment].resourceReference only Reference(GroupAssignment)
