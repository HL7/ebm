Profile: DatabaseEntryCitation
Parent: Citation
Id: database-entry-citation
Description: "Profile of Citation for Evidence Based Medicine IG. The DatabaseEntryCitation Profile is used for citations of a record within a database."
* ^extension[$ext-fmm].valueInteger = 1
* ^extension[$ext-wg].valueCode = #cds
* ^extension[$ext-standards-status].valueCode = #trial-use
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
  * classification ^slicing.discriminator.type = #value
  * classification ^slicing.discriminator.path = "type.coding"
  * classification ^slicing.rules = #open
  * classification contains knowledgeArtifactType 1..1 MS and definedInText 0..* and fhirResourceType 0..1
  * classification[knowledgeArtifactType].type.coding 1..1
  * classification[knowledgeArtifactType].type.coding = http://hl7.org/fhir/cited-artifact-classification-type#knowledge-artifact-type "Knowledge Artifact Type"
  * classification[knowledgeArtifactType]
    * classifier 1..*
    * classifier ^slicing.discriminator.type = #value
    * classifier ^slicing.discriminator.path = "coding"
    * classifier ^slicing.rules = #open
    * classifier contains databaseEntry 1..1 MS and fhirResource 0..1
    * classifier[databaseEntry].coding 1..1
    * classifier[databaseEntry].coding = https://fevir.net/resources/CodeSystem/179423#classified-as-database-entry "Database Entry"
    * classifier[fhirResource].coding 1..1
    * classifier[fhirResource].coding = http://hl7.org/fhir/citation-artifact-classifier#fhir-resource "FHIR Resource"
  * classification[definedInText].type.coding 1..1
  * classification[definedInText].type.coding = https://fevir.net/resources/CodeSystem/179423#defined-in-text "Defined in text"
  * classification[fhirResourceType].type.coding 1..1
  * classification[fhirResourceType].type.coding = http://hl7.org/fhir/citation-artifact-classifier#fhir-resource "FHIR Resource"
