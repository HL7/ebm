Profile: GroupR6
Parent: Group
Id: group-r6
Description: "Profile of Group for Evidence Based Medicine IG. The GroupR6 Profile is used to adjust the R5 Group base to match the structures in R6." 
* extension contains $ext-url named url 0..1 and
$ext-version named version 0..1 and
$ext-versionAlgorithm named versionAlgorithmString 0..1 and
$ext-title named title 0..1 and
$ext-status named status 0..1 and
$ext-experimental named experimental 0..1 and
$ext-date named date 0..1 and
$ext-publisher named 0..1 and
$ext-contact named contact 0..* and
$ext-useContext named useContext 0..* and
$ext-purpose named purpose 0..1 and
$ext-copyright named copyright 0..1 and
$ext-copyrightLabel named copyrightLabel 0..1 and
CombinationMethod named combinationMethod 0..1 and
CombinationThreshold named combinationThreshold 0..1
* characteristic
  * extension contains CharacteristicValueUri named valueUri 0..1 and
    CharacteristicValueExpression named valueExpression 0..1 and
    CharacteristicDescription named description 0..1 and
    CharacteristicMethod named method 0..*