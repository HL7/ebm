Extension: ImportancePercentageRating
Id: importance-percentage-rating
Description: "Provide a quantitative rating of an importance using a percentage of a reference importance."
* ^context.type = #element
* ^context.expression = "ArtifactAssessment.content"
* value[x] only Quantity
* . ^short = "Percentage of importance of reference outcome"
* . ^definition = "A quantitative rating of the relative importance of the outcome."
* valueQuantity 1..1
* valueQuantity.value 1..1
  * ^comment = "The value must be 0 (no importance) or a positive decimal. The value of 100 represents the importance of the reference outcome. A value greater than 100 represents exceptionally high importance that is higher than the importance of the reference outcome."
* valueQuantity.comparator 0..0
* valueQuantity.unit 1..1
* valueQuantity.unit = "%"
* valueQuantity.system 1..1
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code 1..1
* valueQuantity.code = "%"