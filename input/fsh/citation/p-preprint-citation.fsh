Profile: PreprintCitation
Parent: Citation
Id: preprint-citation
Description: "Profile of Citation for Evidence Based Medicine IG. The PreprintCitation Profile is used for citations of an article published in a form prior to peer-reviewed publication in a journal, book, or other permanent record."
* citedArtifact
  * classification 1..*
  * classification ^slicing.discriminator.type = #value
  * classification ^slicing.discriminator.path = "type"
  * classification ^slicing.rules = #open
  * classification contains knowledgeArtifactType 1..1 MS
  * classification[knowledgeArtifactType].type = http://hl7.org/fhir/cited-artifact-classification-type#knowledge-artifact-type "Knowledge Artifact Type"
  * classification[knowledgeArtifactType]
    * classifier 1..*
    * classifier ^slicing.discriminator.type = #value
    * classifier ^slicing.discriminator.path = "coding"
    * classifier ^slicing.rules = #open
    * classifier contains preprint 1..1 MS
    * classifier[preprint].coding 1..1
    * classifier[preprint].coding = http://hl7.org/fhir/citation-artifact-classifier#D000076942 "Preprint"
    