Extension: ResearchStudyEstimand
Id: research-study-estimand
Description: "An outcome measure described with the estimand framework."
* ^extension[$ext-fmm].valueInteger = 1
* ^extension[$ext-wg].valueCode = #cds
* ^extension[$ext-standards-status].valueCode = #draft
* ^context.type = #element
* ^context.expression = "ResearchStudy.objective"
* value[x] 0..0
* . ^short = "An outcome measure described with the estimand framework"
* . ^definition = "An outcome measure described with the estimand framework."
* extension contains label 0..1 and type 0..1 and endpoint 1..1 and population 0..1 and interventionGroup 0..1 and comparatorGroup 0..1 and summaryMeasure 0..1 and eventHandling 0..*
* extension[label].value[x] only string
  * ^short = "Short name or identifier"
  * ^definition = "Name or identiifer for internal referencing."
* extension[type].value[x] only CodeableConcept
  * ^short = "Primary, secondary, or exploratory"
  * ^definition = "Classification of the estimand/outcome measure as a primary focus or not."
* extension[type].valueCodeableConcept from $research-study-objective-type (preferred)
* extension[endpoint].value[x] only Reference(EvidenceVariable or ObservationDefinition or PlanDefinition)
  * ^short = "Outcome measure/Endpoint"
  * ^definition = "Outcome for each participant that is used in the treatment effect definition."
* extension[population].value[x] only Reference(Group)
  * ^short = "Population"
  * ^definition = "Patients for whom researchers want to estimate the treatment effect."
  * ^comment = "List of key characteristics, such as demographic characteristics (e.g., age, sex) and clinical characteristics (e.g., prior therapies, symptoms, severity, biomarker status)"
* extension[interventionGroup].value[x] only id
  * ^short = "Intervention"
  * ^definition = "One of the intervention strategies being compared in the treatment effect definition."
  * ^comment = "The valueId value should match a ResearchStudy.comparisonGroup.linkId value. List of key aspects of treatment regimens in each study group, including at least investigational agents, dosage, and administration route"
* extension[comparatorGroup].value[x] only id
  * ^short = "Comparator"
  * ^definition = "One of the intervention strategies being compared in the treatment effect definition, in the role of comparator."
  * ^comment = "The valueId value should match a ResearchStudy.comparisonGroup.linkId value. List of key aspects of treatment regimens in each study group, including at least investigational agents, dosage, and administration route"
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

