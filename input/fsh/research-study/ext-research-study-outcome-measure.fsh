Extension: ResearchStudyOutcomeMeasure
Id: research-study-outcome-measure
Description: "A variable measured during the study."
* ^extension[$ext-fmm].valueInteger = 1
* ^extension[$ext-wg].valueCode = #cds
* ^extension[$ext-standards-status].valueCode = #draft
* ^context.type = #element
* ^context.expression = "ResearchStudy.objective"
* value[x] 0..0
* . ^short = "A variable measured during the study"
* . ^definition = "An outcome measure, endpoint, effect measure or measure of effect is a specific measurement or observation used to quantify the effect of experimental variables on the participants in a study, or for observational studies, to describe patterns of diseases or traits or associations with exposures, risk factors or treatment."
* extension contains name 0..1 and type 0..1 and description 0..1 and endpoint 1..1 and population 0..1 and intervention 0..1 and comparator 0..1 and summaryMeasure 0..1 and eventHandling 0..*
* extension[name].value[x] only string
  * ^short = "Label for the outcome measure"
  * ^definition = "Label for the outcome measure."
* extension[type].value[x] only CodeableConcept
  * ^short = "Primary, secondary, or exploratory"
  * ^definition = "The kind of outcome measure."
* extension[type].valueCodeableConcept from $research-study-objective-type (preferred)
* extension[description].value[x] only markdown
  * ^short = "Description of the outcome measure"
  * ^definition = "Description of the outcome measure."
* extension[endpoint].value[x] only Reference(EvidenceVariable)
  * ^short = "Definition of the outcome measure"
  * ^definition = "Definition of the outcome measure."
* extension[population].value[x] only Reference(Group)
  * ^short = "Population for this estimand"
  * ^definition = "Patients for whom researchers want to estimate the treatment effect."
  * ^comment = "List of key characteristics, such as demographic characteristics (e.g., age, sex) and clinical characteristics (e.g., prior therapies, symptoms, severity, biomarker status)"
* extension[intervention].value[x] only Reference(Group)
  * ^short = "Intervention is the Comparison group of interest"
  * ^definition = "One of the intervention strategies being compared in the treatment effect definition."
  * ^comment = "To do: How to reference internally to the comparisonGroup.id"
* extension[comparator].value[x] only Reference(Group)
  * ^short = "Comparator is the Comparison group for comparison"
  * ^definition = "One of the intervention strategies being compared in the treatment effect definition, in the role of comparator."
  * ^comment = "To do: How to reference internally to the comparisonGroup.id"
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

