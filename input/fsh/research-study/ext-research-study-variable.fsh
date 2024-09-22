Extension: ResearchStudyVariable
Id: research-study-variable
Description: "A concept that is measured and how it is measured."
* ^extension[$ext-fmm].valueInteger = 1
* ^extension[$ext-wg].valueCode = #cds
* ^extension[$ext-standards-status].valueCode = #draft
* ^context.type = #element
* ^context.expression = "ResearchStudy"
* value[x] 0..0
* . ^short = "A concept that is measured and how it is measured"
* . ^definition = A concept that is measured in a research study, how it is measured, and its permissible values. A variable may be called a baseline measure, outcome measure, or endpoint."
* extension contains id 0..1 and label 0..1 and description 0..1 and outcomeType 0..1 and definition 1..1 and datatype 0..* and minimum 0..1 and maximum 0..1  and stringLength 0..1 and	expectedValueSet 0..1 and anyValueAllowed 0..1 and missingDataHandling 0..* and unacceptableDataHandling 0..* and	estimand 0..*
* extension[id].value[x] only id
  * ^short = "Key for data dictionary"
  * ^definition = "Identifier for internal referencing and key for data dictionary."
* extension[label].value[x] only string
  * ^short = "Short name or identifier"
  * ^definition = "Name or identifier for internal referencing."
* extension[description].value[x] only markdown
  * ^short = "Human-readable summary"
  * ^definition = "The human-readable summary of the variable."
* extension[outcomeType].value[x] only CodeableConcept
  * ^short = "Primary, secondary, or exploratory"
  * ^definition = "Classification of the outcome measure as a primary focus or not."
* extension[outcomeType].valueCodeableConcept from $research-study-objective-type (preferred)
* extension[definition].value[x] only Reference(EvidenceVariable)
  * ^short = "Formal definition of the variable"
  * ^definition = "Formal definition of the variable."
* extension[datatype].value[x] only CodeableConcept
  * ^short = "Type of data used to express value of the variable"
  * ^definition = "The type of data used to express value of the variable."
* extension[minimum].value[x] only Quantity
  * ^short = "The lowest permissible value of the variable"
  * ^definition = "The lowest permissible value of the variable, used with variables that have a number-based datatype."
* extension[maximum].value[x] only Quantity
  * ^short = "The highest permissible value of the variable"
  * ^definition = "The highest permissible value of the variable, used with variables that have a number-based datatype."
* extension[stringLength].value[x] only positiveInt
  * ^short = "The highest number of characters allowed for a value of the variable"
  * ^definition = "The highest number of characters allowed for a value of the variable, used with variables that have a string-based datatype."
* extension[expectedValueSet].value[x] only Reference(ValueSet)
  * ^short = "List of anticipated values used to express value of the variable"
  * ^definition = "List of anticipated values used to express value of the variable, used with variables that have a codeable concept-based datatype."
* extension[anyValueAllowed].value[x] only boolean
  * ^short = "Permissibility of unanticipated value used to express value of the variable"
  * ^definition = "Whether the value expressed for a variable is allowed to not be restricted to the expected value set."
* extension[missingDataHandling].value[x] only CodeableConcept
  * ^short = "How missing data is processed"
  * ^definition = "A method or transformation applied for missing data."
* extension[unacceptableDataHandling].value[x] only CodeableConcept
  * ^short = "How erroneous data is processed"
  * ^definition = "A method or transformation applied for data that does not match required patterns."
* extension[estimand]
  * value[x] 0..0
  * ^short = "Processing detail for how the outcome is used in the treatment effect definition"
  * ^definition = "Processing detail for how the outcome is used in the treatment effect definition."
  * extension contains population 0..1 and interventionGroup 0..1 and comparatorGroup 0..1 and summaryMeasure 0..1 and eventHandling 0..*
  * extension[population].value[x] only Reference(Group)
    * ^short = "Population"
    * ^definition = "Patients for whom researchers want to estimate the treatment effect."
    * ^comment = "List of key characteristics, such as demographic characteristics (e.g., age, sex) and clinical characteristics (e.g., prior therapies, symptoms, severity, biomarker status)"
  * extension[interventionGroup].value[x] only Reference(Group)
    * ^short = "Intervention"
    * ^definition = "One of the intervention strategies being compared in the treatment effect definition."
  * extension[comparatorGroup].value[x] only Reference(Group)
    * ^short = "Comparator"
    * ^definition = "One of the intervention strategies being compared in the treatment effect definition, in the role of comparator."
  * extension[summaryMeasure].value[x] only CodeableConcept
    * ^short = "Statistical measure for treatment effect estimate"
    * ^definition = "Method used to summarise and compare the endpoint between treatment conditions (eg, risk ratio, odds ratio)."
    * ^comment = "Description of the population-level summary (e.g., mean difference, relative risk)"
  * extension[summaryMeasure].valueCodeableConcept from $ebm-evidence-statistic-type (extensible)
  * extension[eventHandling]
    * value[x] 0..0
    * ^short = "Handling of intercurrent event"
    * ^definition = "Strategies used to handle each intercurrent event in the treatment effect definition; different strategies could be used for different types of intercurrent events."
    * extension contains event 0..1 and group 0..1 and handling 0..1 and description 0..1
    * extension[event].value[x] only CodeableConcept
      * ^short = "the event"
      * ^definition = "The situation that leads to a change in interpretation of the data."
      * ^comment = "For each intercurrent event, provide a Description of Intercurrent Event (e.g., permanent discontinuation of trial intervention)."
    * extension[group].value[x] only CodeableConcept
      * ^short = "the group that is affected by this event handling"
      * ^definition = "The group (intervention group, comparator group, both groups, a subgroup) that receives a change in interpretation of the data."
    * extension[handling].value[x] only CodeableConcept
      * ^short = "how the data is handled"
      * ^definition = "The method used for interpretation of the data."
      * ^comment = "For each intercurrent event, provide a Description of the strategy to address the intercurrent event (e.g., a treatment policy strategy)."
    * extension[description].value[x] only markdown
      * ^short = "text summary of event handling"
      * ^definition = "The human-readable summary of the handling of an intercurrent event."

