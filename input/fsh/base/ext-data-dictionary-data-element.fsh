Extension: DataDictionaryDataElement
Id: data-dictionary-data-element
Description: "A catalog entry outlining the structure, content, and meaning of a data element in a dataset. In the context of a research study: A concept that is measured in a research study, how it is measured, and its permissible values. A variable may be called a baseline measure, outcome measure, or endpoint."
* ^extension[$ext-fmm].valueInteger = 1
* ^extension[$ext-wg].valueCode = #cds
* ^extension[$ext-standards-status].valueCode = #draft
* ^context.type = #element
* ^context.expression = "Base"
* value[x] 0..0
* . ^short = "A concept that is measured and how it is measured"
* . ^definition = "A concept that is measured and how it is measured."
* extension contains id 0..1 and label 0..1 and description 0..1 and classifier 0..* and definition 1..1 and datatype 0..* and minimumQuantity 0..1 and maximumQuantity 0..1 and earliestDateTime 0..1 and latestDateTime 0..1 and minimumStringLength 0..1 and maximumStringLength 0..1 and dataConstraint 0..* and dataConstraintExpression 0..1 and expectedValueSet 0..1 and expectedUnitsValueSet 0..1 and anyValueAllowed 0..1 and missingDataMeaning 0..1 and unacceptableDataHandling 0..*
* extension[id].value[x] only id
  * ^short = "Key for data dictionary"
  * ^definition = "Identifier for internal referencing and key for data dictionary."
* extension[label].value[x] only string
  * ^short = "Short name or identifier"
  * ^definition = "Name or identifier for human readability."
* extension[description].value[x] only markdown
  * ^short = "Human-readable summary"
  * ^definition = "The human-readable summary of the data element."
* extension[classifier].value[x] only CodeableConcept
  * ^short = "Classification of the data element"
  * ^definition = "Classification of the data element."
* extension[definition].value[x] only Reference(EvidenceVariable or StructureDefinition)
  * ^short = "Formal definition of the variable or element structure"
  * ^definition = "Formal definition of the variable or element structure."
* extension[datatype].value[x] only CodeableConcept
  * ^short = "Type of data used to express value of the variable or data element"
  * ^definition = "The type of data used to express value of the variable or data element."
* extension[minimumQuantity].value[x] only Quantity
  * ^short = "The lowest permissible value of the variable"
  * ^definition = "The lowest permissible value of the variable, used with variables that have a number-based datatype (with or without units)."
* extension[maximumQuantity].value[x] only Quantity
  * ^short = "The highest permissible value of the variable"
  * ^definition = "The highest permissible value of the variable, used with variables that have a number-based datatype (with or without units)."
* extension[earliestDateTime].value[x] only DateTime
  * ^short = "The earliest permissible value of the variable"
  * ^definition = "The earliest permissible value of the variable, used with variables that have a date/time-based datatype."
* extension[latestDateTime].value[x] only DateTime
  * ^short = "The latest permissible value of the variable"
  * ^definition = "The latest permissible value of the variable, used with variables that have a date/time-based datatype."
* extension[minimumStringLength].value[x] only integer
  * ^short = "The lowest number of characters allowed for a value of the variable"
  * ^definition = "The lowest number of characters allowed for a value of the variable, used with variables that have a string-based datatype."
* extension[maximumStringLength].value[x] only positiveInt
  * ^short = "The highest number of characters allowed for a value of the variable"
  * ^definition = "The highest number of characters allowed for a value of the variable, used with variables that have a string-based datatype."
* extension[dataConstraint].value[x] only CodeableConcept
  * ^short = "Rule for acceptable data values"
  * ^definition = "A rule, such as a format or other expectation, for the data values."
* extension[dataConstraintExpression].value[x] only Expression
  * ^short = "Rule for acceptable data values, as an Expression"
  * ^definition = "A rule, such as a format or other expectation, for the data values, expressed as an Expression."
* extension[expectedValueSet].value[x] only Reference(ValueSet)
  * ^short = "List of anticipated values used to express value of the variable"
  * ^definition = "List of anticipated values used to express value of the variable, used with variables that have a codeable concept-based datatype."
* extension[expectedUnitsValueSet].value[x] only Reference(ValueSet)
  * ^short = "List of anticipated values used to express units for the value of the variable"
  * ^definition = "List of anticipated values used to express units for the value of the variable, used with variables that have a Quantity-based datatype."
* extension[anyValueAllowed].value[x] only boolean
  * ^short = "Permissibility of unanticipated value used to express value of the variable"
  * ^definition = "Whether the value expressed for a variable is allowed to not be restricted to the expected value set."
* extension[missingDataMeaning].value[x] only CodeableConcept
  * ^short = "How missing data is interpreted"
  * ^definition = "A method or transformation applied for missing data."
* extension[unacceptableDataHandling].value[x] only CodeableConcept
  * ^short = "How erroneous data is processed"
  * ^definition = "A method or transformation applied for data that does not match required patterns."
