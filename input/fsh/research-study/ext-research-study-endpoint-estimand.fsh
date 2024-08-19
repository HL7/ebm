Extension: ResearchStudyEndpointEstimand
Id: research-study-endpoint-estimand
Description: "An outcome measure described with the estimand framework."
* ^extension[$ext-fmm].valueInteger = 1
* ^extension[$ext-wg].valueCode = #cds
* ^extension[$ext-standards-status].valueCode = #draft
* ^context.type = #element
* ^context.expression = "ResearchStudy.objective"
* value[x] 0..0
* . ^short = "An outcome measure described with the estimand framework"
* . ^definition = "An outcome measure described with the estimand framework."
* extension contains linkId 0..1 and endpoint 1..1 and population 0..1 and intervention 0..1 and comparator 0..1 and summaryMeasure 0..1 and eventHandling 0..*
* extension[linkId].value[x] only id
  * ^short = "Short identifier"
  * ^definition = "Identiifer for internal referencing."
* extension[endpoint].value[x] only Reference(EvidenceVariable or ObservationDefinition or PlanDefinition)
  * ^short = "Outcome measure"
  * ^definition = "Outcome for each participant that is used in the treatment effect definition."
* extension[population].value[x] only Reference(Group)
  * ^short = "Population"
  * ^definition = "Patients for whom researchers want to estimate the treatment effect."
* extension[intervention].value[x] only Reference(Group or EvidenceVariable) //consider replacing with only id (to reference comparisonGroup.linkId)
  * ^short = "Intervention"
  * ^definition = "One of the intervention strategies being compared in the treatment effect definition."
* extension[comparator].value[x] only Reference(Group or EvidenceVariable) //consider replacing with only id (to reference comparisonGroup.linkId)
  * ^short = "Comparator"
  * ^definition = "One of the intervention strategies being compared in the treatment effect definition, in the role of comparator."
* extension[summaryMeasure].value[x] only CodeableConcept
  * ^short = "Statistical measure for treatment effect estimate"
  * ^definition = "Method used to summarise and compare the endpoint between treatment conditions (eg, risk ratio, odds ratio)."
* extension[summaryMeasure].valueCodeableConcept from $ebm-evidence-statistic-type (extensible)
* extension[eventHandling]
  * value[x] 0..0
  * ^short = "Handling of intercurrent event"
  * ^definition = "Strategies used to handle each intercurrent event in the treatment effect definition; different strategies could be used for different types of intercurrent events."
  * extension contains event 0..1 and group 0..1 and handling 0..1 and description 0..1
  * extension[event].value[x] only CodeableConcept
    * ^short = "the event"
    * ^definition = "The situation that leads to a change in interpretation of the data."
  * extension[group].value[x] only CodeableConcept
    * ^short = "the group that is affected by this event handling"
    * ^definition = "The group (intervention group, comparator group, both groups, a subgroup) that receives a change in interpretation of the data."
  * extension[handling].value[x] only CodeableConcept
    * ^short = "how the data is handled"
    * ^definition = "The method used for interpretation of the data."
  * extension[description].value[x] only markdown
    * ^short = "text summary of event handling"
    * ^definition = "The human-readable summary of the handling of an intercurrent event."

