Profile: DataDictionary
Parent: Base
Id: data-dictionary
Description: "Profile of Base for Evidence Based Medicine IG. The DataDictionary Profile is used for a code key for variable names in a dataset."
* ^extension[$ext-fmm].valueInteger = 1
* ^extension[$ext-wg].valueCode = #cds
* ^extension[$ext-standards-status].valueCode = #draft
* extension contains $ext-author named author 0..*
* extension contains DataDictionaryDataElement named dataElement 0..*

