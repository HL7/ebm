Profile: BookPartCitation
Parent: Citation
Id: book-part-citation
Description: "Profile of Citation for Evidence Based Medicine IG. The BookPartCitation Profile is used for citations of a part of a book." 
* jurisdiction 0..0
* classification 1..*
* classification ^slicing.discriminator.type = #pattern
* classification ^slicing.discriminator.path = "type"
* classification ^slicing.rules = #open
* classification contains book 1..1 MS
* classification[book].type = http://hl7.org/fhir/cited-artifact-classification-type#knowledge-artifact-type "Knowledge Artifact Type"
* classification[book]
  * classifier 1..*
  * classifier ^slicing.discriminator.type = #pattern
  * classifier ^slicing.discriminator.path = "coding"
  * classifier ^slicing.rules = #open
  * classifier contains bookPart 1..1 MS
  * classifier[bookPart].text = "Book Part"
* citedArtifact
  * identifier
    * ^definition = "A formal identifier that is used to identify the cited book part when it is represented in other formats, or referenced in a specification, model, design or an instance." 
    * ^short = "Unique identifier. May include DOI, PMID, etc"
  * publicationForm
    * publishedIn
      * type
        * ^short = "TO BE EDITED TO REFER TO BOOK"
      * identifier
        * ^short = "TO BE EDITED TO REFER TO BOOK"
      * title
        * ^short = "TO BE EDITED TO REFER TO BOOK"
  
