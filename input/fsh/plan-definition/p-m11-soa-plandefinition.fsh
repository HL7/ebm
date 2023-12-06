Profile: SoaPlanDefinition
Parent: PlanDefinition
Id: soa-plandefinition
Description: "Profile of PlanDefinition for temporary testing to coordination with M11 use."
* ^extension[$ext-fmm].valueInteger = 1
* ^extension[$ext-wg].valueCode = #cds
* ^extension[$ext-standards-status].valueCode = #draft
* topic 0..0
* action
  * extension contains CharacteristicTiming named timingRelativeTime 0..1
