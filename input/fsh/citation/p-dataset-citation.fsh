Profile: DatasetCitation
Parent: Citation
Id: dataset-citation
Description: "Profile of Citation for Evidence Based Medicine IG. The DatasetCitation Profile is used for citations of a dataset."
* jurisdiction 0..0
* citedArtifact
  * identifier
    * ^definition = "A formal identifier that is used to identify the cited dataset when it is represented in other formats, or referenced in a specification, model, design or an instance." 
    * ^short = "Unique identifier. May include DOI, FOI, Database Accession Number, etc"
  * publicationForm
    * publishedIn
      * type
        * ^comment = "often coded with system http://hl7.org/fhir/published-in-type, code D019991, and display Database"
      * identifier
        * ^definition = "A formal identifier that is used to identify the database when it is represented in other formats, or referenced in a specification, model, design or an instance." 
        * ^short = "Unique identifier."
      * title
        * ^short = "Title of the database"
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
    * classifier contains dataset 1..1 MS
    * classifier[dataset].coding = http://hl7.org/fhir/citation-artifact-classifier#D064886 "Dataset"
//TODO - create support for how to handle the file type (e.g. .csv or .xls) for the dataset, e.g. citedArtifact.classification or specific extension