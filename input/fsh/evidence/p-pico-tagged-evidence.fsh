Profile: PICOTaggedEvidence
Parent: Evidence
Id: pico-tagged-evidence
Description: "Profile of Evidence for Evidence Based Medicine IG. The PICOTaggedEvidence Profile is used to classify the Evidence with respect to a clinical question defined with Population, Intervention, Comparator, and Outcome components." 
* ^extension[$ext-fmm].valueInteger = 1
* ^extension[$ext-wg].valueCode = #cds
* ^extension[$ext-standards-status].valueCode = #trial-use
* extension contains ArtifactPublicationStatus named publicationStatus 0..1
* useContext ^slicing.discriminator.type = #value
* useContext ^slicing.discriminator.path = "code"
* useContext ^slicing.rules = #open
* useContext contains picoSpecification 0..1
* useContext[picoSpecification]
  * code = http://hl7.org/fhir/uv/ebm/CodeSystem/ebmonfhir-profile-name-code-system#PICOSpecification "PICOSpecification" 
* classification ^slicing.discriminator.type = #value
* classification ^slicing.discriminator.path = "type"
* classification ^slicing.rules = #open
* classification contains population 0..* and intervention 0..* and comparator 0..* and outcome 0..*
* classification[population]
  * type = https://fevir.net/resources/CodeSystem/179423#population "Population"
  * ^definition = "A population (e.g. disease or condition) that this Evidence is about. This Evidence is derived from or applies to this population."
  * ^short = "A population (e.g. disease or condition) this Evidence is about"
* classification[intervention]
  * type = https://fevir.net/resources/CodeSystem/179423#intervention "Intervention"
  * ^definition = "An intervention (e.g. medication or procedure) or exposure that this Evidence is about. This Evidence is about the effect(s) of this intervention."
  * ^short = "An intervention (e.g. medication or procedure) or exposure this Evidence is about"
* classification[comparator]
  * type = https://fevir.net/resources/CodeSystem/179423#comparator "Comparator"
  * ^definition = "A control intervention (e.g. placebo, medication or procedure) or control exposure (e.g. usual care or absence of a stated exposure) that this Evidence is about. This Evidence is about the effect(s) of an intervention compared to this control intervention or this control exposure."
  * ^short = "A control intervention or exposure (e.g. placebo, usual care, or absence of a stated exposure) this Evidence is about"
* classification[outcome]
  * type = https://fevir.net/resources/CodeSystem/179423#outcome-measure "Outcome Measure"
  * ^definition = "A control intervention (e.g. placebo, medication or procedure) or control exposure (e.g. usual care or absence of a stated exposure) that this Evidence is about. This Evidence is about the effect(s) of an intervention compared to this control intervention or this control exposure."
  * ^short = "A control intervention or exposure (e.g. placebo, usual care, or absence of a stated exposure) this Evidence is about"
