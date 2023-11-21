Profile: StatisticalCalculator
Parent: EvidenceR6
Id: statistical-calculator
Description: "Profile of Evidence for Evidence Based Medicine IG. The StatisticalCalculator Profile is used for specification of the executable formula corresponding to an endpoint analysis plan or applied analysis." 
* useContext 1..*
* useContext ^slicing.discriminator.type = #value
* useContext ^slicing.discriminator.path = "valueCodeableConcept"
* useContext ^slicing.rules = #open
* useContext contains calculator 1..* MS
* useContext[calculator].code = https://fevir.net/resources/CodeSystem/179423#evidence-communication "Evidence Communication"
* useContext[calculator].valueCodeableConcept.coding = https://fevir.net/resources/CodeSystem/179423#StatisticalCalculator "StatisticalCalculator"
* statistic.numberOfEvents 0..0
* statistic.numberAffected 0..0
* statistic.sampleSize 0..0