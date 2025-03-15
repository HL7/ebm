Profile: GroupR6
Parent: Group
Id: group-r6
Description: "Profile of Group for Evidence Based Medicine IG. The GroupR6 Profile is used to add extensions to Group." 
* ^extension[$ext-fmm].valueInteger = 1
* ^extension[$ext-wg].valueCode = #cds
* ^extension[$ext-standards-status].valueCode = #draft
* extension contains $ext-author named author 0..*
* extension contains CiteAs named citeAs 0..1
* extension contains RelatesTo named relatesTo 0..*
* extension contains $ext-characteristic-expression named characteristicExpression 0..1

  
  