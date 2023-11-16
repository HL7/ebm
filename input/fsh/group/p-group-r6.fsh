Profile: GroupR6
Parent: Group
Id: group-r6
Description: "Profile of Group for Evidence Based Medicine IG. The GroupR6 Profile is used to adjust the R5 Group base to match the structures in R6." 
* extension contains $ext-url named url 0..1
* extension contains $ext-version named version 0..1
* extension contains $ext-versionAlgorithm named versionAlgorithmString 0..1
* extension contains $ext-title named title 0..1
* extension contains $ext-experimental named experimental 0..1
* extension contains $ext-date named date 0..1
* extension contains $ext-publisher named 0..1
* extension contains $ext-contact named contact 0..*
* extension contains $ext-useContext named useContext 0..*
* extension contains $ext-purpose named purpose 0..1
* extension contains $ext-copyright named copyright 0..1
* extension contains $ext-copyrightLabel named copyrightLabel 0..1
* extension contains CombinationMethod named combinationMethod 0..1
* extension contains CombinationThreshold named combinationThreshold 0..1
* modifierExtension contains $ext-status named status 0..1
* characteristic
  * extension contains CharacteristicValueUri named valueUri 0..1
  * extension contains CharacteristicValueExpression named valueExpression 0..1
  * extension contains CharacteristicDescription named description 0..1
  * extension contains CharacteristicMethod named method 0..*