Profile: DatasetCitation
Parent: Citation
Id: dataset-citation
Description: "Profile of Citation for Evidence Based Medicine IG. The DatasetCitation Profile is used for citations of a dataset."
* ^extension[$ext-fmm].valueInteger = 1
* ^extension[$ext-wg].valueCode = #cds
* ^extension[$ext-standards-status].valueCode = #draft
* citedArtifact
  * identifier
    * ^definition = "A formal identifier that is used to identify the cited dataset when it is represented in other formats, or referenced in a specification, model, design or an instance." 
    * ^short = "Unique identifier. May include DOI, FOI, Database Accession Number, etc"
  * relatesTo
    * extension contains TargetUri named targetUri 0..1
    * extension contains TargetCanonical named targetCanonical 0..1
    * extension contains TargetReference named targetReference 0..1
    * extension contains TargetAttachment named targetAttachment 0..1
    * extension contains TargetMarkdown named targetMarkdown 0..1
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
  * classification ^slicing.discriminator.path = "type.coding"
  * classification ^slicing.rules = #open
  * classification contains knowledgeArtifactType 1..1 MS and studyDesign 0..1 and definedInText 0..*
  * classification[knowledgeArtifactType].type.coding 1..1
  * classification[knowledgeArtifactType].type.coding = http://hl7.org/fhir/cited-artifact-classification-type#knowledge-artifact-type "Knowledge Artifact Type"
  * classification[knowledgeArtifactType]
    * classifier 1..*
    * classifier ^slicing.discriminator.type = #value
    * classifier ^slicing.discriminator.path = "coding"
    * classifier ^slicing.rules = #open
    * classifier contains dataset 1..1 MS
    * classifier[dataset].coding 1..1
    * classifier[dataset].coding = http://hl7.org/fhir/citation-artifact-classifier#D064886 "Dataset"
  * classification[studyDesign].type.coding 1..1
  * classification[studyDesign].type.coding = https://fevir.net/resources/CodeSystem/179423#study-design "Study Design"
  * classification[definedInText].type.coding 1..1
  * classification[definedInText].type.coding = https://fevir.net/resources/CodeSystem/179423#defined-in-text "Defined in text"
//TODO - create support for how to handle the file type (e.g. .csv or .xls) for the dataset, e.g. citedArtifact.classification or specific extension