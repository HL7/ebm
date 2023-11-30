Profile: BookCitation
Parent: Citation
Id: book-citation
Description: "Profile of Citation for Evidence Based Medicine IG. The BookCitation Profile is used for citations of a book." 
* citedArtifact
  * identifier
    * ^definition = "A formal identifier that is used to identify the cited book when it is represented in other formats, or referenced in a specification, model, design or an instance." 
    * ^short = "Unique identifier. May include ISBN, Bookshelf ID, GTIN, DOI, PMID, etc"
  * publicationForm
    * publishedIn
      * type
        * ^short = "Not typically used when citing a book itself"
      * identifier
        * ^short = "Not typically used when citing a book itself"
      * title
        * ^short = "Not typically used when citing a book itself" 
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
    * classifier contains book 1..1 MS
    * classifier[book].coding = http://hl7.org/fhir/citation-artifact-classifier#D001877 "Book"
  
