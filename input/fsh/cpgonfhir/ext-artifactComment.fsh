// Workaround for CPGonFHIR snapshots being based on FHIR R4,
// By generating the profiles via sushi based on FHIR R5, the R5 resources are used,
// which is required for CPGonEBMonFHIR.
// Auto-generated using GoFSH v1.6.4 (via FSH Online)
// Actually required because sushi could not find this extension based on its URL
Alias: $artifact-comment-type = http://hl7.org/fhir/us/cqfmeasures/ValueSet/artifact-comment-type

Extension: CQFMArtifactComment
Id: cqfm-artifactComment
Title: "CQFM Artifact Comment"
Description: "A comment containing additional documentation, a review comment, usage guidance, or other relevant information from a particular user."
* ^url = "http://hl7.org/fhir/us/cqfmeasures/StructureDefinition/cqfm-artifactComment"
* ^version = "2.0.0"
* ^experimental = false
* ^date = "2019-02-13"
* ^publisher = "Clinical Quality Information WG"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.hl7.org/Special/committees/cqi"
* ^jurisdiction = urn:iso:std:iso:3166#US
* . 0..*
* . ^short = "Additional documentation, review, or usage guidance"
* . ^definition = "A comment containing additional documentation, a review comment, usage guidance, or other relevant information from a particular user."
* extension contains
    type 1..1 and
    text 1..1 and
    target 0..* and
    reference 0..* and
    user 0..1
* extension[type] only Extension
* extension[type] ^short = "documentation | review | guidance"
* extension[type] ^definition = "Indicates whether the comment is  providing additional documentation, a review comment that requires resolution, or providing usage guidance to an artifact consumer."
* extension[type].value[x] only code
* extension[type].value[x] from $artifact-comment-type (required)
* extension[type].value[x] ^binding.description = "The type of artifact comment (documentation, review, guidance)"
* extension[text] only Extension
* extension[text] ^short = "The comment"
* extension[text] ^definition = "The text content of the comment."
* extension[text].value[x] only markdown
* extension[target] only Extension
* extension[target] ^short = "What the comment is directed to"
* extension[target] ^definition = "A URI that points to what the comment is about, such as a line of text in the CQL, or a specific element in a resource."
* extension[target] ^comment = "The target element is used to point the comment to aspect of the artifact, typically a text range within a CQL library (e.g. Library/example#content?0:0-120:80)."
* extension[target].value[x] only uri
* extension[reference] only Extension
* extension[reference] ^short = "Supporting reference for the comment"
* extension[reference] ^definition = "Provides additional supporting information relevant to the comment."
* extension[reference] ^comment = "The reference element is used to reference other relevant information. For example, a comment may point to a citation in a relatedArtifact element (e.g. Library/example#relatedArtifact[ABC])."
* extension[reference].value[x] only uri
* extension[user] only Extension
* extension[user] ^short = "Who commented"
* extension[user] ^definition = "Specifies the user that authored the comment."
* extension[user].value[x] only string
* url only uri
* url = "http://hl7.org/fhir/us/cqfmeasures/StructureDefinition/cqfm-artifactComment" (exactly)
