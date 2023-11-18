Profile: NetEffectContributions
Parent: GroupR6
Id: net-effect-contributions
Description: "Profile of Group for Evidence Based Medicine IG. The NetEffectContributions Profile is used to represent an enumerated group of participants in a net effect analysis where the participants are Evidence Resources (NetEffectContribution Profile) and the Group membership is conceptual."
* membership = #conceptual
* code.text = "Net Effect Contributions"
* characteristic 1..1
  * code.text = "Member of"
  * valueReference only Reference(NetEffectContributionList)
