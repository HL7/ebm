Profile: SoftwareCitation
Parent: Citation
Id: software-citation
Description: "Profile of Citation for Evidence Based Medicine IG. The SoftwareCitation Profile is used for citations of executable code."
* ^extension[$ext-fmm].valueInteger = 1
* ^extension[$ext-wg].valueCode = #cds
* ^extension[$ext-standards-status].valueCode = #trial-use
* citedArtifact
  * identifier
    * ^definition = "A formal identifier that is used to identify the cited software when it is represented in other formats, or referenced in a specification, model, design or an instance." 
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
  * classification ^slicing.discriminator.path = "type.coding"
  * classification ^slicing.rules = #open
  * classification contains knowledgeArtifactType 1..1 MS and definedInText 0..*
  * classification[knowledgeArtifactType].type.coding 1..1
  * classification[knowledgeArtifactType].type.coding = http://hl7.org/fhir/cited-artifact-classification-type#knowledge-artifact-type "Knowledge Artifact Type"
  * classification[knowledgeArtifactType]
    * classifier 1..*
    * classifier ^slicing.discriminator.type = #value
    * classifier ^slicing.discriminator.path = "coding"
    * classifier ^slicing.rules = #open
    * classifier contains software 1..1 MS
    * classifier[software].coding 1..1
    * classifier[software].coding = http://hl7.org/fhir/citation-artifact-classifier#executable-app "Executable app"
  * classification[definedInText].type.coding 1..1
  * classification[definedInText].type.coding = https://fevir.net/resources/CodeSystem/179423#defined-in-text "Defined in text"
//TODO - create support for how to handle the file type (e.g. .js or .py) for the software, e.g. citedArtifact.classification or specific extension