Profile: TableConstructor
Parent: Composition
Id: table-constructor
Description: "Profile of Composition for Evidence Based Medicine IG. The TableConstructor Profile is used for specifying column headers and instructions for generating content values for table rows and table cells. For the Evidence Based Medicine IG, the TableConstructor Profile is intended to facilitate processing the input of an EvidenceMap instance and generating the output of an EvidenceReport instance." 
* category 1..*
* category ^slicing.discriminator.type = #pattern
* category ^slicing.discriminator.path = "text"
* category ^slicing.rules = #open
* category contains tableConstructor 1..1 MS
* category[tableConstructor].text = "Table Constructor"
* section 3..3
* section ^slicing.discriminator.type = #pattern
* section ^slicing.discriminator.path = "code"
* section ^slicing.rules = #closed
* section contains contentSelection 1..1 MS and tableRowSelection 1..1 MS and tableColumnDefinition 1..1 MS
* section[contentSelection].title = "Content Selection"
* section[contentSelection].code.text = "Content Selection"
* section[contentSelection].section 1..*
* section[tableRowSelection].title = "Table Row Selection"
* section[tableRowSelection].code.text = "Table Row Selection"
* section[tableRowSelection].section 1..1
* section[tableColumnDefinition].title = "Table Column Definition"
* section[tableColumnDefinition].code.text = "Table Column Definition"
* section[tableColumnDefinition].section 1..*
  * code 1..1
  * section 2..2
  * section ^slicing.discriminator.type = #pattern
  * section ^slicing.discriminator.path = "code"
  * section ^slicing.rules = #closed
  * section contains columnHeader 1..1 MS and contentGenerationRule 1..1 MS
  * section[columnHeader].title = "Column Header"
  * section[columnHeader].code.text = "column-header"
  * section[columnHeader].text 1..1
  * section[contentGenerationRule].title = "Content Generation Rule"
  * section[contentGenerationRule].code.text = "content-generation-rule"
