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
* useContext contains population 0..* and intervention 0..* and comparator 0..* and outcome 0..* and picoSpecification 0..*
* useContext[population]
  * code = https://fevir.net/resources/CodeSystem/179423#population "Population"
* useContext[intervention]
  * code = https://fevir.net/resources/CodeSystem/179423#intervention "Intervention"
* useContext[comparator]
  * code = https://fevir.net/resources/CodeSystem/179423#comparator "Comparator"
* useContext[outcome]
  * code = https://fevir.net/resources/CodeSystem/179423#outcome-measure "Outcome Measure"
* useContext[picoSpecification]
  * code = http://hl7.org/fhir/uv/ebm/CodeSystem/ebmonfhir-profile-name-code-system#PICOSpecification "PICOSpecification" 