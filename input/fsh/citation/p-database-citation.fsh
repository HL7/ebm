Profile: DatabaseCitation
Parent: Citation
Id: database-citation
Description: "Profile of Citation for Evidence Based Medicine IG. The DatabaseCitation Profile is used for citations of a database." 
* ^extension[$ext-fmm].valueInteger = 1
* ^extension[$ext-wg].valueCode = #cds
* ^extension[$ext-standards-status].valueCode = #draft
* citedArtifact
  * identifier
    * ^definition = "A formal identifier that is used to identify the cited database when it is represented in other formats, or referenced in a specification, model, design or an instance." 
    * ^short = "Unique identifier."
  * publicationForm
    * publishedIn
      * type
        * ^short = "Not typically used when citing a database itself"
      * identifier
        * ^short = "Not typically used when citing a database itself"
      * title
        * ^short = "Not typically used when citing a database itself"
  * classification 1..*
  * classification ^slicing.discriminator.type = #value
  * classification ^slicing.discriminator.path = "type.coding"
  * classification ^slicing.rules = #open
  * classification contains knowledgeArtifactType 1..1 MS and definedInText 0..*
  * classification[knowledgeArtifactType].type.coding = http://hl7.org/fhir/cited-artifact-classification-type#knowledge-artifact-type "Knowledge Artifact Type"
  * classification[knowledgeArtifactType]
    * classifier 1..*
    * classifier ^slicing.discriminator.type = #value
    * classifier ^slicing.discriminator.path = "coding"
    * classifier ^slicing.rules = #open
    * classifier contains database 1..1 MS
    * classifier[database].coding 1..1
    * classifier[database].coding = http://hl7.org/fhir/citation-artifact-classifier#D019991 "Database"
  * classification[definedInText].type.coding = https://fevir.net/resources/CodeSystem/179423#defined-in-text "Defined in text"

