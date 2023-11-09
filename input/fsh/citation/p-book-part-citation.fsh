Profile: BookPartCitation
Parent: Citation
Id: book-part-citation
Description: "Profile of Citation for Evidence Based Medicine IG. The BookPartCitation Profile is used for citations of a part of a book." 
* jurisdiction 0..0
* citedArtifact
  * identifier
    * ^definition = "A formal identifier that is used to identify the cited book part when it is represented in other formats, or referenced in a specification, model, design or an instance." 
    * ^short = "Unique identifier. May include Bookshelf ID, DOI, etc"
  * publicationForm
    * publishedIn
      * type = http://hl7.org/fhir/published-in-type#D001877 "Book"
      * identifier
        * ^definition = "A formal identifier that is used to identify the book when it is represented in other formats, or referenced in a specification, model, design or an instance." 
        * ^short = "Unique identifier. May include ISBN, Bookshelf ID, GTIN, DOI, PMID, etc"
      * title
        * ^short = "Title of the book"
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
    * classifier contains bookPart 1..1 MS
    * classifier[bookPart].text = "Book Part"
  * contributorship.entry.role
    * ^comment = "Consider 'Book Editor' as an additional contributor role type."
  
