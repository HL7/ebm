Profile: JournalArticleCitation
Parent: Citation
Id: journal-article-citation
Description: "Profile of Citation for Evidence Based Medicine IG. The JournalArticleCitation Profile is used for citations of an article published in a periodical venue classified as a journal."
* ^extension[$ext-fmm].valueInteger = 1
* ^extension[$ext-wg].valueCode = #cds
* ^extension[$ext-standards-status].valueCode = #draft
* effectivePeriod 0..0
* citedArtifact
  * classification 1..*
  * classification ^slicing.discriminator.type = #value
  * classification ^slicing.discriminator.path = "type.coding"
  * classification ^slicing.rules = #open
  * classification contains knowledgeArtifactType 1..1 MS and publishingModel 0..1 and publicationType 0..1 and citationSubset 0..1 and studyDesign 0..1 and definedInText 0..* and meshHeading 0..1 and chemical 0..1
  * classification[knowledgeArtifactType].type.coding 1..1
  * classification[knowledgeArtifactType].type.coding = http://hl7.org/fhir/cited-artifact-classification-type#knowledge-artifact-type "Knowledge Artifact Type"
  * classification[knowledgeArtifactType]
    * classifier 1..*
    * classifier ^slicing.discriminator.type = #value
    * classifier ^slicing.discriminator.path = "coding"
    * classifier ^slicing.rules = #open
    * classifier contains journalArticle 1..1 MS
    * classifier[journalArticle].coding 1..1
    * classifier[journalArticle].coding = http://hl7.org/fhir/citation-artifact-classifier#D016428 "Journal Article"
  * classification[publishingModel].type.coding 1..1
  * classification[publishingModel].type.coding = http://hl7.org/fhir/cited-artifact-classification-type#publishing-model "Publishing Model"
  * classification[publicationType].type.coding 1..1
  * classification[publicationType].type.coding = http://hl7.org/fhir/cited-artifact-classification-type#publication-type "Publication type"
  * classification[citationSubset].type.coding 1..1
  * classification[citationSubset].type.coding = http://hl7.org/fhir/cited-artifact-classification-type#citation-subset "Citation subset" 
  * classification[studyDesign].type.coding 1..1
  * classification[studyDesign].type.coding = https://fevir.net/resources/CodeSystem/179423#study-design "Study Design"
  * classification[definedInText].type.coding 1..1
  * classification[definedInText].type.coding = https://fevir.net/resources/CodeSystem/179423#defined-in-text "Defined in text"
  * classification[meshHeading].type.coding 1..1
  * classification[meshHeading].type.coding = http://hl7.org/fhir/cited-artifact-classification-type#mesh-heading "MeSH Heading"
  * classification[chemical].type.coding 1..1
  * classification[chemical].type.coding = http://hl7.org/fhir/cited-artifact-classification-type#chemical "Chemical"