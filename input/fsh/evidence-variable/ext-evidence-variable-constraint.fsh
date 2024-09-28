Extension: EvidenceVariableConstraint
Id: evidence-variable-constraint
Description: "Limit on acceptability of data used to express value of the variable."
* ^extension[$ext-fmm].valueInteger = 1
* ^extension[$ext-wg].valueCode = #cds
* ^extension[$ext-standards-status].valueCode = #draft
* ^context.type = #element
* ^context.expression = "EvidenceVariable"
* value[x] 0..0
* . ^short = "Limit on acceptability of data value"
* . ^definition = "Limit on acceptability of data used to express value of the variable."
* extension contains conditional 0..1 and minimumQuantity 0..1 and maximumQuantity 0..1 and earliestDateTime 0..1 and latestDateTime 0..1 and minimumStringLength 0..1 and maximumStringLength 0..1 and code 0..1 and expression 0..1 and expectedValueSet 0..1 and expectedUnitsValueSet 0..1 and anyValueAllowed 0..1
* extension[conditional].value[x] only CodeableConcept
  * ^short = "When this constraint applies"
  * ^definition = "When this constraint applies."
* extension[minimumQuantity].value[x] only Quantity
  * ^short = "The lowest permissible value of the variable"
  * ^definition = "The lowest permissible value of the variable, used with variables that have a number-based datatype (with or without units)."
* extension[maximumQuantity].value[x] only Quantity
  * ^short = "The highest permissible value of the variable"
  * ^definition = "The highest permissible value of the variable, used with variables that have a number-based datatype (with or without units)."
* extension[earliestDateTime].value[x] only dateTime
  * ^short = "The earliest permissible value of the variable"
  * ^definition = "The earliest permissible value of the variable, used with variables that have a date/time-based datatype."
* extension[latestDateTime].value[x] only dateTime
  * ^short = "The latest permissible value of the variable"
  * ^definition = "The latest permissible value of the variable, used with variables that have a date/time-based datatype."
* extension[minimumStringLength].value[x] only integer
  * ^short = "The lowest number of characters allowed for a value of the variable"
  * ^definition = "The lowest number of characters allowed for a value of the variable, used with variables that have a string-based datatype."
* extension[maximumStringLength].value[x] only positiveInt
  * ^short = "The highest number of characters allowed for a value of the variable"
  * ^definition = "The highest number of characters allowed for a value of the variable, used with variables that have a string-based datatype."
* extension[code].value[x] only CodeableConcept
  * ^short = "Rule for acceptable data values"
  * ^definition = "A rule, such as a format or other expectation, for the data values."
* extension[expression].value[x] only Expression
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

