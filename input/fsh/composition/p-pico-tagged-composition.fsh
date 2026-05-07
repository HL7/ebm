Profile: PICOTaggedComposition
Parent: EvidenceReport
Id: pico-tagged-composition
Description: "Profile of Composition for Evidence Based Medicine IG. The PICOTaggedComposition Profile is used to classify the Composition with respect to a clinical question defined with Population, Intervention, Comparator, and Outcome components."
* ^extension[$ext-fmm].valueInteger = 1
* ^extension[$ext-wg].valueCode = #cds
* ^extension[$ext-standards-status].valueCode = #trial-use
* useContext ^slicing.discriminator.type = #value
* useContext ^slicing.discriminator.path = "code"
* useContext ^slicing.rules = #open
* useContext contains population 0..* and intervention 0..* and comparator 0..* and outcome 0..* and ageRange 0..* and gender 0..* and picoSpecification 0..*
* useContext[population]
  * code = https://fevir.net/resources/CodeSystem/179423#population "Population"
  * ^definition = "A population (e.g. disease or condition) that this Composition is about. This Composition includes evidence or a recommendation that is derived from or applies to this population."
  * ^short = "A population (e.g. disease or condition) this Composition is about"
  * ^comment = "For situations in which the goal is to support search for relevant populations, the suggested approach to completing Population useContext values is to use valueCodeableConcept with a concept describing a disease or condition. Where the population includes a combination of conditions, one may provide multiple useContext entries. An alternative for situations in which the goal is to associate the population with a defined group is to use valueReference with reference to a Group Resource."
* useContext[intervention]
  * code = https://fevir.net/resources/CodeSystem/179423#intervention "Intervention"
  * ^definition = "An intervention (e.g. medication or procedure) or exposure that this Composition is about. This Composition includes evidence that is about the effect(s) of this intervention or a recommendation that is for or against this intervention."
  * ^short = "An intervention (e.g. medication or procedure) or exposure this Composition is about"
  * ^comment = "For situations in which the goal is to support search for relevant interventions, the suggested approach to completing Intervention useContext values is to use valueCodeableConcept with a concept describing an intervention (such as a medication, procedure, or treatment protocol) or an exposure (for clinical questions about the effect of an exposure, such as alcohol intake or air pollution). Where the Composition includes multiple interventions, one may provide multiple useContext entries."
* useContext[comparator]
  * code = https://fevir.net/resources/CodeSystem/179423#comparator "Comparator"
  * ^definition = "A control intervention (e.g. placebo, medication or procedure) or control exposure (e.g. usual care or absence of a stated exposure) that this Composition is about. This Composition includes evidence that is about the effect(s) of an intervention compared to this control intervention or this control exposure or a recommendation that is for or against an intervention instead of this control intervention."
  * ^short = "A control intervention or exposure (e.g. placebo, usual care, or absence of a stated exposure) this Composition is about"
  * ^comment = "For situations in which the goal is to support search for relevant comparators, the suggested approach to completing Comparator useContext values is to use valueCodeableConcept with a concept describing a control intervention or exposure (such as placebo, standard care, usual care, absence of intervention, absence of an exposure, a medication, a procedure, or a treatment protocol)."
* useContext[outcome]
  * code = https://fevir.net/resources/CodeSystem/179423#outcome-measure "Outcome Measure"
  * ^definition = "A control intervention (e.g. placebo, medication or procedure) or control exposure (e.g. usual care or absence of a stated exposure) that this Composition is about. This Composition includes evidence that is about the effect(s) of an intervention compared to this control intervention or this control exposure or a recommendation that is for or against an intervention instead of this control intervention."
  * ^short = "A control intervention or exposure (e.g. placebo, usual care, or absence of a stated exposure) this Composition is about"
  * ^comment = "For situations in which the goal is to support search for relevant outcomes that are defined by concepts, the suggested approach to completing Outcome Measure useContext values is to use valueCodeableConcept with a concept describing an outcome measure (such as mortality, cure, headache, or adverse event). For situations in which the goal is to support search for relevant outcomes that are defined precisely, the suggested approach to completing Outcome Measure useContext values is to use valueReference with reference to an EvidenceVariable Resource. Where the Composition includes multiple outcomes, one may provide multiple useContext entries."
* useContext[ageRange]
  * code = http://terminology.hl7.org/CodeSystem/usage-context-type#age "Age Range"
  * ^definition = "A population grouping by age that this Composition is about. This Composition includes evidence or a recommendation that is derived from or applies to a population with the specified age range."
  * ^short = "A population grouping by age this Composition is about"
  * ^comment = "For situations in which the goal is to support search for relevant populations by age groups that are defined categorically, the suggested approach to completing Age Range useContext values is to use valueCodeableConcept with a concept describing an age range (e.g. Adult, Adolescent, or Older adult). Where the population includes a combination of age range groups, one may provide multiple useContext entries. For situations in which the goal is to support search for relevant populations by age groups that are defined precisely, the suggested approach to completing Age Range useContext values is to use valueRange or valueQuantity."
* useContext[gender]
  * code = http://terminology.hl7.org/CodeSystem/usage-context-type#gender "Gender"
  * ^definition = "A population grouping by gender that this Composition is about. This Composition includes evidence or a recommendation that is derived from or applies to a population with the specified gender."
  * ^short = "A population grouping by gender this Composition is about"
  * ^comment = "For situations in which the goal is to support search for relevant populations by gender and the classification of this Composition is limited to a subset by gender, the suggested approach to completing Gender useContext values is to use valueCodeableConcept with a concept describing a gender. Where the population includes a combination of genders, one may provide multiple useContext entries."
* useContext[picoSpecification]
  * code = http://hl7.org/fhir/uv/ebm/CodeSystem/ebmonfhir-profile-name-code-system#PICOSpecification "PICOSpecification" 