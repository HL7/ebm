Extension: QuantitativeRating
Id: quantitative-rating
Description: "Provide a quantitative rating."
* ^context.type = #element
* ^context.expression = "ArtifactAssessment.content"
* value[x] only Quantity
* . ^short = "Quantitative rating"
* . ^definition = "A quantitative rating of the artifact."
* valueQuantity 1..1
* valueQuantity.value 1..1