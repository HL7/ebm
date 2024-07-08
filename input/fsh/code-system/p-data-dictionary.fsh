Profile: DataDictionary
Parent: CodeSystem
Id: data-dictionary
Description: "Profile of CodeSystem for Evidence Based Medicine IG. The DataDictionary Profile is used for a code key for variable names in a dataset." 
* ^extension[$ext-fmm].valueInteger = 1
* ^extension[$ext-wg].valueCode = #cds
* ^extension[$ext-standards-status].valueCode = #draft
* url 1..1
* topic 0..0
* property ^slicing.discriminator.type = #value
* property ^slicing.discriminator.path = "code"
* property ^slicing.rules = #open
* property contains datatype 0..1 MS and unitsOfMeasure 0..1 MS
* property[datatype].code = #Datatype
* property[datatype].uri = "http://hl7.org/fhir/uv/ebm/StructureDefinition/data-dictionary"
* property[datatype].type = #string
* property[unitsOfMeasure].code = #Units
* property[unitsOfMeasure].uri = "http://hl7.org/fhir/uv/ebm/StructureDefinition/data-dictionary"
* property[unitsOfMeasure].type = #string