Profile: JournalArticleCitation
Parent: Citation
Id: journal-article-citation
Description: "Profile of Citation for Evidence Based Medicine IG. The JournalArticleCitation Profile is used for citations of an article published in a periodical venue classified as a journal."
* jurisdiction 0..0
* effectivePeriod 0..0
* classification 1..*
* classification ^slicing.discriminator.type = #pattern
* classification ^slicing.discriminator.path = "type"
* classification ^slicing.rules = #open
* classification contains journalArticle 1..1 MS
* classification[journalArticle].type = http://hl7.org/fhir/cited-artifact-classification-type#knowledge-artifact-type "Knowledge Artifact Type"
* classification[journalArticle]
  * classifier 1..*
  * classifier ^slicing.discriminator.type = #pattern
  * classifier ^slicing.discriminator.path = "coding"
  * classifier ^slicing.rules = #open
  * classifier contains journalArticle 1..1 MS
  * classifier[journalArticle].coding = http://hl7.org/fhir/citation-artifact-classifier#D016428 "Journal Article"
  