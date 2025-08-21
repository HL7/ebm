Profile: NetEffectContributionList
Parent: List
Id: net-effect-contribution-list
Description: "Profile of List for Evidence Based Medicine IG. The NetEffectContributionList Profile is used to provide a list of Evidence Resources (NetEffectContribution Profile). The NetEffectContributionList Profile is used to represent a Group of Evidence for the population for a NetEffectEstimate (Profile of Evidence) using a net effect analysis approach and is referenced from a NetEffectContributions (Profile of Group)."
* ^extension[$ext-fmm].valueInteger = 1
* ^extension[$ext-wg].valueCode = #cds
* ^extension[$ext-standards-status].valueCode = #trial-use
* extension contains ArtifactPublicationStatus named publicationStatus 0..1
* code.coding 1..1
* code.coding = EBMonFHIRProfileNameCodeSystem#NetEffectContributionList "NetEffectContributionList"
* code.text = "Net Effect Contributions List"
* encounter 0..0
* entry
  * item only Reference(NetEffectContribution)
