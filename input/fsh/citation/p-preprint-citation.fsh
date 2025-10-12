Profile: PreprintCitation
Parent: Citation
Id: preprint-citation
Description: "Profile of Citation for Evidence Based Medicine IG. The PreprintCitation Profile is used for citations of an article published in a form prior to peer-reviewed publication in a journal, book, or other permanent record."
* ^extension[$ext-fmm].valueInteger = 1
* ^extension[$ext-wg].valueCode = #cds
* ^extension[$ext-standards-status].valueCode = #trial-use
* citedArtifact
  * classification 1..*
  * classification ^slicing.discriminator.type = #value
  * classification ^slicing.discriminator.path = "type.coding"
  * classification ^slicing.rules = #open
  * classification contains knowledgeArtifactType 1..1 MS and studyDesign 0..1 and definedInText 0..*
  * classification[knowledgeArtifactType].type.coding 1..1
  * classification[knowledgeArtifactType].type.coding = http://terminology.hl7.org/CodeSystem/cited-artifact-classification-type#knowledge-artifact-type "Knowledge Artifact Type"
  * classification[knowledgeArtifactType]
    * classifier 1..*
    * classifier ^slicing.discriminator.type = #value
    * classifier ^slicing.discriminator.path = "coding"
    * classifier ^slicing.rules = #open
    * classifier contains preprint 1..1 MS
    * classifier[preprint].coding 1..1
    * classifier[preprint].coding = http://terminology.hl7.org/CodeSystem/citation-artifact-classifier#D000076942 "Preprint"
  * classification[studyDesign].type.coding 1..1
  * classification[studyDesign].type.coding = https://fevir.net/resources/CodeSystem/179423#study-design "Study Design"
  * classification[definedInText].type.coding 1..1
  * classification[definedInText].type.coding = https://fevir.net/resources/CodeSystem/179423#defined-in-text "Defined in text"
  