Profile: PICOTaggedEvidence
Parent: Evidence
Id: pico-tagged-evidence
Description: "Profile of Evidence for Evidence Based Medicine IG. The PICOTaggedEvidence Profile is used to classify the Evidence with respect to a clinical question defined with Population, Intervention, Comparator, and Outcome components." 
* ^extension[$ext-fmm].valueInteger = 1
* ^extension[$ext-wg].valueCode = #cds
* ^extension[$ext-standards-status].valueCode = #trial-use
* extension contains ArtifactPublicationStatus named publicationStatus 0..1
* classification ^slicing.discriminator.type = #value
* classification ^slicing.discriminator.path = "type"
* classification ^slicing.rules = #open
* classification contains population 0..1 and intervention 0..1 and comparator 0..1 and outcome 0..1 and ageRange 0..1 and gender 0..1 and picoSpecification 0..1
* classification[population]
  * ^short = "A population (e.g. disease or condition) this Evidence is about"
  * ^definition = "A population (e.g. disease or condition) that this Evidence is about. This Evidence is derived from or applies to this population."
  * ^comment = "For situations in which the goal is to support search for relevant populations, the suggested approach to completing Population classification values is to use classifier.concept with a concept describing a disease or condition. Where the population includes a combination of conditions, one may provide multiple classifier entries within this classification. An alternative for situations in which the goal is to associate the population with a defined group is to use classifier.reference with reference to a Group Resource."
  * type 1..1
  * type = http://hl7.org/fhir/evidence-classifier-type-example#population "Population"
  * classifier 1..*
* classification[intervention]
  * ^short = "An intervention (e.g. medication or procedure) or exposure this Evidence is about"
  * ^definition = "An intervention (e.g. medication or procedure) or exposure that this Evidence is about. This Evidence is about the effect(s) of this intervention."
  * ^comment = "For situations in which the goal is to support search for relevant interventions, the suggested approach to completing Intervention classification values is to use classifier.concept with a concept describing an intervention (such as a medication, procedure, or treatment protocol) or an exposure (for clinical questions about the effect of an exposure, such as alcohol intake or air pollution). Where the Evidence includes multiple interventions, one may provide multiple classifier entries within this classification. For interventions that are defined precisely, one may use classifier.reference with reference to an EvidenceVariable Resource."
  * type 1..1
  * type = http://hl7.org/fhir/evidence-classifier-type-example#intervention "Intervention"
  * classifier 1..*
* classification[comparator]
  * ^short = "A control intervention or exposure (e.g. placebo, usual care, or absence of a stated exposure) this Evidence is about"
  * ^definition = "A control intervention (e.g. placebo, medication or procedure) or control exposure (e.g. usual care or absence of a stated exposure) that this Evidence is about. This Evidence is about the effect(s) of an intervention compared to this control intervention or this control exposure."
  * ^comment = "For situations in which the goal is to support search for relevant comparators, the suggested approach to completing Comparator classification values is to use classifier.concept with a concept describing a control intervention or exposure (such as placebo, standard care, usual care, absence of intervention, absence of an exposure, a medication, a procedure, or a treatment protocol). For comparators that are defined precisely, one may use classifier.reference with reference to an EvidenceVariable Resource."
  * type 1..1
  * type = http://hl7.org/fhir/evidence-classifier-type-example#comparator "Comparator"
  * classifier 1..*
* classification[outcome]
  * ^short = "An outcome measure (e.g. mortality, cure, or adverse event) this Evidence is about"
  * ^definition = "An outcome measure (e.g. mortality, cure, or adverse event) that this Evidence is about. This Evidence reports the frequency or risk of, or the effect of an intervention on, this outcome measure."
  * ^comment = "For situations in which the goal is to support search for relevant outcomes that are defined by concepts, the suggested approach to completing Outcome Measure classification values is to use classifier.concept with a concept describing an outcome measure (such as mortality, cure, headache, or adverse event). For situations in which the goal is to support search for relevant outcomes that are defined precisely, the suggested approach is to use classifier.reference with reference to an EvidenceVariable Resource."
  * type 1..1
  * type = http://hl7.org/fhir/evidence-classifier-type-example#outcome-measure "Outcome Measure"
  * classifier 1..*
* classification[ageRange]
  * ^short = "A population grouping by age this Evidence is about"
  * ^definition = "A population grouping by age that this Evidence is about. This Evidence is derived from or applies to a population with the specified age range."
  * ^comment = "For situations in which the goal is to support search for relevant populations by age groups that are defined categorically, the suggested approach to completing Age Range classification values is to use classifier.concept with a concept describing an age range (e.g. Adult, Adolescent, or Older adult). Where the population includes a combination of age range groups, one may provide multiple classifier entries within this classification. Note that classification.classifier is a CodeableReference and cannot carry a Range or Quantity; for age groups that are defined precisely, use classifier.reference with reference to a Group or EvidenceVariable Resource that specifies the age criterion, or express the age range in Evidence.useContext."
  * type 1..1
  * type = http://terminology.hl7.org/CodeSystem/usage-context-type#age "Age Range"
  * classifier 1..*
* classification[gender]
  * ^short = "A population grouping by gender this Evidence is about"
  * ^definition = "A population grouping by gender that this Evidence is about. This Evidence is derived from or applies to a population with the specified gender."
  * ^comment = "For situations in which the goal is to support search for relevant populations by gender and the classification of this Evidence is limited to a subset by gender, the suggested approach to completing Gender classification values is to use classifier.concept with a concept describing a gender. Where the population includes a combination of genders, one may provide multiple classifier entries within this classification."
  * type 1..1
  * type = http://terminology.hl7.org/CodeSystem/usage-context-type#gender "Gender"
  * classifier 1..*
* classification[picoSpecification]
  * ^short = "The clinical question (PICO) this Evidence is about"
  * ^definition = "A specification of the clinical question, with the population, intervention, comparator, and outcome taken together, that this Evidence is about."
  * ^comment = "Where the individual components are tagged separately in the population, intervention, comparator, and outcome classifications, this classification identifies the clinical question as a whole. The suggested approach is to use classifier.reference with reference to the Resource that specifies the PICO question."
  * type 1..1
  * type = http://hl7.org/fhir/evidence-classifier-type-example#pico-specification "PICO Specification"
  * classifier 1..*
