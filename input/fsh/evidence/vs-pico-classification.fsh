ValueSet: PICOClassification
Id: pico-classification
Title: "PICO Classification Value Set"
Description: "Classifications by PICO (population, intervention, comparator, outcome) to represent clinical questions or the specification of focus of interest for evidence, evidence reports, and recommendations."
* ^extension[$ext-fmm].valueInteger = 1
* ^extension[$ext-wg].valueCode = #cds
* ^extension[$ext-standards-status].valueCode = #trial-use
* ^experimental = false
* include https://fevir.net/resources/CodeSystem/179423#population "Population"
* include https://fevir.net/resources/CodeSystem/179423#intervention "Intervention"
* include https://fevir.net/resources/CodeSystem/179423#comparator "Comparator"
* include https://fevir.net/resources/CodeSystem/179423#outcome-measure "Outcome Measure"
* include http://terminology.hl7.org/CodeSystem/usage-context-type#age "Age Range"
* include http://terminology.hl7.org/CodeSystem/usage-context-type#gender "Gender"