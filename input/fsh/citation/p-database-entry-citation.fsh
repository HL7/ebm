Profile: DatabaseEntryCitation
Parent: Citation
Id: database-entry-citation
Description: "Profile of Citation for Evidence Based Medicine IG. The DatabaseEntryCitation Profile is used for citations of a record within a database."
* jurisdiction 0..0
* citedArtifact
  * identifier
    * ^definition = "A formal identifier that is used to identify the cited database record when it is represented in other formats, or referenced in a specification, model, design or an instance." 
    * ^short = "Unique identifier. May include DOI, FOI, Database Accession Number, etc"
  * publicationForm
    * publishedIn
      * type = http://hl7.org/fhir/published-in-type#D019991 "Database"
      * identifier
        * ^definition = "A formal identifier that is used to identify the database when it is represented in other formats, or referenced in a specification, model, design or an instance." 
        * ^short = "Unique identifier."
      * title
        * ^short = "Title of the database"
  * classification 1..*
  * classification ^slicing.discriminator.type = #pattern
  * classification ^slicing.discriminator.path = "type"
  * classification ^slicing.rules = #open
  * classification contains knowledgeArtifactType 1..1 MS
  * classification[knowledgeArtifactType].type = http://hl7.org/fhir/cited-artifact-classification-type#knowledge-artifact-type "Knowledge Artifact Type"
  * classification[knowledgeArtifactType]
    * classifier 1..*
    * classifier ^slicing.discriminator.type = #pattern
    * classifier ^slicing.discriminator.path = "coding"
    * classifier ^slicing.rules = #open
    * classifier contains databaseEntry 1..1 MS
    * classifier[databaseEntry].text = "Database Entry"
  
