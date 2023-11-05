Profile: WebPageCitation
Parent: Citation
Id: web-page-citation
Description: "Profile of Citation for Evidence Based Medicine IG. The WebPageCitation Profile is used for citations of a web page or website, typically when there is not another type being used to classify the cited artifact."
* jurisdiction 0..0
* citedArtifact
  * identifier
    * ^definition = "A formal identifier that is used to identify the cited web page when it is represented in other formats, or referenced in a specification, model, design or an instance." 
    * ^short = "Unique identifier. Typically the URL."
  * publicationForm
    * publishedIn
      * type.text = "Website"
      * identifier
        * ^definition = "A formal identifier that is used to identify the website when it is represented in other formats, or referenced in a specification, model, design or an instance." 
        * ^short = "Unique identifier."
      * title
        * ^short = "Title of the website"
  * webLocation 1..*
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
    * classifier contains webpage 1..1 MS
    * classifier[webpage].coding = http://hl7.org/fhir/citation-artifact-classifier#webpage "Webpage"
