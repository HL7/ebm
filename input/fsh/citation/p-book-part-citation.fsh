Profile: BookPartCitation
Parent: Citation
Id: book-part-citation
Description: "Profile of Citation for Evidence Based Medicine IG. The BookPartCitation Profile is used for citations of a part of a book." 
* ^extension[$ext-fmm].valueInteger = 1
* ^extension[$ext-wg].valueCode = #cds
* ^extension[$ext-standards-status].valueCode = #trial-use
* citedArtifact
  * identifier
    * ^definition = "A formal identifier that is used to identify the cited book part when it is represented in other formats, or referenced in a specification, model, design or an instance." 
    * ^short = "Unique identifier. May include Bookshelf ID, DOI, etc"
  * publicationForm
    * publishedIn
      * type = http://terminology.hl7.org/CodeSystem/published-in-type#D001877 "Book"
      * identifier
        * ^definition = "A formal identifier that is used to identify the book when it is represented in other formats, or referenced in a specification, model, design or an instance." 
        * ^short = "Unique identifier. May include ISBN, Bookshelf ID, GTIN, DOI, PMID, etc"
      * title
        * ^short = "Title of the book"
  * classification 1..*
  * classification ^slicing.discriminator.type = #value
  * classification ^slicing.discriminator.path = "type.coding"
  * classification ^slicing.rules = #open
  * classification contains knowledgeArtifactType 1..1 MS and publishingModel 0..1 and publicationType 0..1 and definedInText 0..*
  * classification[knowledgeArtifactType].type.coding 1..1
  * classification[knowledgeArtifactType].type.coding = http://terminology.hl7.org/CodeSystem/cited-artifact-classification-type#knowledge-artifact-type "Knowledge Artifact Type"
  * classification[knowledgeArtifactType]
    * classifier 1..*
    * classifier ^slicing.discriminator.type = #value
    * classifier ^slicing.discriminator.path = "coding"
    * classifier ^slicing.rules = #open
    * classifier contains bookPart 1..1 MS
    * classifier[bookPart].coding 1..1
    * classifier[bookPart].coding = https://fevir.net/resources/CodeSystem/179423#classified-as-book-part "Book Part"
  * classification[publishingModel].type.coding 1..1
  * classification[publishingModel].type.coding = http://terminology.hl7.org/CodeSystem/cited-artifact-classification-type#publishing-model "Publishing Model"
  * classification[publicationType].type.coding 1..1
  * classification[publicationType].type.coding = http://terminology.hl7.org/CodeSystem/cited-artifact-classification-type#publication-type "Publication type"
  * classification[definedInText].type.coding 1..1
  * classification[definedInText].type.coding = https://fevir.net/resources/CodeSystem/179423#defined-in-text "Defined in text"
  * contributorship.entry.role
    * ^comment = "Consider 'Book Editor' as an additional contributor role type."
  
