Extension: GuidelineRegistration
Id: guideline-registration
Description: "Dates for guideline registration activities."
* ^extension[$ext-fmm].valueInteger = 1
* ^extension[$ext-wg].valueCode = #cds
* ^extension[$ext-standards-status].valueCode = #trial-use
* ^context.type = #element
* ^context.expression = "Composition"
* value[x] 0..0
* . ^short = "Dates for a guideline registration activity"
* . ^definition = "Starting and/or ending dates for an activity related to inclusion of a guideline in a registry."
* extension contains activity 1..1 and actual 0..1 and period 0..1 and date 0..1
* extension[activity].value[x] only CodeableConcept
  * ^short = "The specific activity"
  * ^definition = "The specific registration activity."
* extension[activity].valueCodeableConcept from http://terminology.hl7.org/ValueSet/cited-artifact-status-type (preferred)
* extension[actual].value[x] only boolean
  * ^short = "Actual if true, else anticipated"
  * ^definition = "Actual if true, else anticipated."
* extension[period].value[x] only Period
  * ^short = "Date range"
  * ^definition = "Date range."
* extension[date].value[x] only date
  * ^short = "Date (when not a range)"
  * ^definition = "Date (when not a range)."