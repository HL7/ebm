Extension: CharacteristicTiming
Id: characteristic-timing
Description: "Timing in which the characteristic is determined."
* ^context.type = #element
* ^context.expression = "Group.characteristic"
* value[x] 0..0
* . ^short = "Timing in which the characteristic is determined"
* . ^definition = "Timing in which the characteristic is determined."
* extension contains contextReference 0..1 and contextDefinition 0..1 and contextPath 0..1 and contextCode 0..1 and offset 0..1 and text 0..1
* extension[contextReference].value[x] only Reference
  * ^short = "The specific event occurrence or resource context used as a base point (reference point) in time"
  * ^definition = "The specific event occurrence or resource context used as a base point (reference point) in time. This establishes the context in which the path is evaluated."
* extension[contextDefinition].value[x] only canonical
  * ^short = "The type of event used as a base point"
  * ^definition = "The type of event used as a base point. Instances of this definition will establish the context for evaluating the path to determine the base time for the offset."
* extension[contextPath].value[x] only string
  * ^short = "Path to the element defining the point in time"
  * ^definition = "Path to the element defining the point in time. Any valid FHIRPath expression."
* extension[contextCode].value[x] only CodeableConcept
  * ^short = "Coded representation of the event used as a base point (reference point) in time"
  * ^definition = "Coded representation of the event used as a base point (reference point) in time."
* extension[offset].value[x] only Duration or Range
  * ^short = "An offset or offset range before (negative values) or after (positive values) the event"
  * ^definition = "An offset or offset range before (negative values) or after (positive values) the event. Range is limited to time-valued quantities (Durations)."
* extension[text].value[x] only string
  * ^short = "aFree-text description"
  * ^definition = "Free-text (human-readable) description." 