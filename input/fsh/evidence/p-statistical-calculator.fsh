Profile: StatisticalCalculator
Parent: EvidenceR6
Id: statistical-calculator
Description: "Profile of Evidence for Evidence Based Medicine IG. The StatisticalCalculator Profile is used for specification of the executable formula corresponding to an endpoint analysis plan or applied analysis." 
* useContext 1..*
* useContext ^slicing.discriminator.type = #value
* useContext ^slicing.discriminator.path = "valueCodeableConcept"
* useContext ^slicing.rules = #open
* useContext contains calculator 1..* MS
* useContext[calculator].code.system = "http://terminology.hl7.org/CodeSystem/usage-context-type"
* useContext[calculator].code.code = #program
* useContext[calculator].code.display = "Program"
* useContext[calculator].valueCodeableConcept.text = "statistical-calculator"
* statistic.numberOfEvents 0..0
* statistic.numberAffected 0..0
* statistic.sampleSize 0..0