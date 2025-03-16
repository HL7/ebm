Profile: VariableDefinition
Parent: EvidenceVariable
Id: variable-definition
Description: "Profile of EvidenceVariable for Evidence Based Medicine IG. The VariableDefinition Profile uses a CodeableReference Datatype to provide a concept (e.g. coding in a code system) and/or a reference to a Group Resource for structured data to define the variable." 
* ^extension[$ext-fmm].valueInteger = 1
* ^extension[$ext-wg].valueCode = #cds
* ^extension[$ext-standards-status].valueCode = #draft
* extension contains CiteAs named citeAs 0..1
* extension contains RelatesTo named relatesTo 0..*
* extension contains RelatesToWithQuotation named RelatesToWithQuotation 0..*
* extension contains EvidenceVariableClassifier named classifier 0..*
* extension contains EvidenceVariableDefinitionModifier named definitionModifier 0..*
* extension contains EvidenceVariableHandlingDetail named handlingDetail 0..*
* extension contains EvidenceVariableConditional named conditional 0..1
* extension contains EvidenceVariableDataStorage named dataStorage 0..*
* extension contains CharacteristicTiming named timing 0..1
* extension contains EvidenceVariablePeriod named period 0..1
* extension contains EvidenceVariableConstraint named constraint 0..*
* extension contains EvidenceVariableMissingData named missingDataMeaning 0..*
* extension contains EvidenceVariableDataCleaning named unacceptableDataHandling 0..*
* handling 1..1