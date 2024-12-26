Profile: NetEffectContributions
Parent: GroupR6
Id: net-effect-contributions
Description: "Profile of Group for Evidence Based Medicine IG. The NetEffectContributions Profile is used to represent an enumerated group of participants in a net effect analysis where the participants are Evidence Resources (NetEffectContribution Profile)."
* ^extension[$ext-fmm].valueInteger = 1
* ^extension[$ext-wg].valueCode = #cds
* ^extension[$ext-standards-status].valueCode = #draft
* membership = #conceptual
* type 0..0
* code.text = "Net Effect Contribution"
* characteristic 1..1
  * code.text = "Member of"
  * valueReference only Reference(NetEffectContributionList)
