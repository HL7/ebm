### Understanding the ArtifactAssessment Resource

The <b>ArtifactAssessment Resource</b> provides one or more comments, classifiers or ratings about a Resource and supports attribution and rights management metadata for the added content.

The <b>ArtifactAssessment Resource</b> represents one or more assessments of another record or resource. The resource captures metadata about the assessment, as well as the data for the results of the assessment which might include comments, classifications, ratings, questions, and responses.

The <b>ArtifactAssessment Resource</b> provides a structure to communicate judgments or qualitative data about a record (a resource or other set of data with a known identity or URL by which it can be accessed), including comments, corrections, classifications, and ratings. The <b>ArtifactAssessment Resource</b> is used when the content attribution and management rights differ from the record being commented upon, or the commenter desires to separate the comments from the target record. The scope is intended to cover assessments (added information) regarding clinical records about individual human subjects, assessments (added information) regarding healthcare provision for individual persons (such as care plans), and assessments (added information) regarding records related to community knowledge such as scientific evidence and group-oriented guidance.

The artifact[x] element is required and uses a Reference, canonical, or uri datatype to express the single artifact that the assessment is about.

The content element is a BackboneElement and repeatable recursively with a component element. Each content element may contain any of summary (a markdown comment), type (a CodeableConcept to classify the type of content), classifier (an array of CodeableConcept for the classifier values), quantity (a Quantity for the classifier value), author (a Reference to the creator of the content), path (an array of uri values if the content is about a part of the artifact[x]), relatedArtifact* (an array of RelatedArtifact*), freeToShare (a boolean), and component (an array of BackBoneElement using the content structure).

- NOTE: As of March 17, 2025, the relatedArtifact element in ArtifactAssessment was changed to a relatesTo element and no longer uses the RelatedArtifact datatype.  Extensions were added to the Implementation Guide for some areas for temporary use of the relatesTo element until the Implementation Guide is built on a later version of R6.

<b>ArtifactAssessment</b> is about the content of a Resource and not about the provenance of the Resource so should not be confused with <b>Provenance</b>.

<b>ArtifactAssessment</b> is not used for communications that are not about a Resource so should not be confused with <b>Communication</b> or <b>Composition</b> (or profiles of Composition) which may be used for the primary communication about the subject matter.

<b>Observation Resource</b> is used extensively for observations about people, groups, devices, locations, substances, and procedures – not about the record describing these entities. <b>ArtifiactAssessment</b> is used for observations where the subject is the artifact or record, not the entity described by the artifact. Simple "assessments" about an <b>Observation</b> such as status, dataAbsentReason, interpretation and note would use the <b>Observation Resource</b> where this is already structured. <b>ArtifactAssessment Resource</b> may be used for complex assessments of an Observation such as justifications for reasons to correct the record.

Across healthcare communities, there are an extensive number of comments and corrections regarding resources where the commenter is not able or permitted to modify the resource content, and there are many situations in which assessments with classifications and ratings of medical record content are made by parties who would not include the assessments in the medical record. Across the academic, scientific, quality measurement development, and clinical decision support communities there is an extensive need to report assessments and feedback about resources and records. These artifact assessments may take multiple forms (including text, classifications, ratings or measurements) and might or might not be created, queried and maintained independently from the artifact being rated or commented upon.

### Profiles of ArtifactAssessment Resource

All Profiles of <b>ArtifactAssessment</b> include extensions for url, description, and author.

### Comment Profile of ArtifactAssessment Resource

The **[Comment Profile][Comment]** is used for comments about a Resource that may be created independently from Resource creators. **[Comment][Comment]** content will most commonly be expressed in ArtifactAssessment.content.summary elements.

### Classification Profile of ArtifactAssessment Resource

The **[Classification Profile][Classification]** is used for classifier tags that may be created independently from Resource creators and may be used for search indexes. **[Classification][Classification]** content will most commonly be expressed using ArtifactAssessment.content.type and ArtifactAssessment.content.classifier elements.

### Rating Profile of ArtifactAssessment Resource

The **[Rating Profile][Rating]** is used for classifier tags that may include quantitative ratings and may be created independently from Resource creators. **[Rating][Rating]** content will most commonly be expressed using ArtifactAssessment.content.type and ArtifactAssessment.content.classifier or ArtifactAssessment.content.quantity elements.

### DateAsRating Profile of ArtifactAssessment Resource

The **[DateAsRating Profile][DateAsRating]** is a Profile of **[Classification][Classification]** that is used for representing a date or dateTime as a classifier value. An extension to ArtifactAssessment.content provides the dateAsRating value with a dateTime datatype.

### EvidenceAssessment Profile of ArtifactAssessment Resource

The **[EvidenceAssessment Profile][EvidenceAssessment]** is used for expression of any aspect of the certainty or quality of an Evidence artifact.

### CertaintyOfEvidence Profile of ArtifactAssessment Resource

The **[CertaintyOfEvidence Profile][CertaintyOfEvidence]** is a Profile of **[EvidenceAssessment][EvidenceAssessment]** that is used for expression of the certainty (also called quality or confidence in the estimates) of an Evidence artifact.

### RiskOfBias Profile of ArtifactAssessment Resource

The **[RiskOfBias Profile][RiskOfBias]** is a Profile of **[EvidenceAssessment][EvidenceAssessment]** that is used for expression of the assessment of the threats to validity (or risk of bias) of an Evidence artifact or an artifact consisting of Evidence or the plan to create Evidence.

### RecommendationRating Profile of ArtifactAssessment Resource

The **[RecommendationRating Profile][RecommendationRating]** is a Profile of **[EvidenceAssessment][EvidenceAssessment]** that is used for expressing the classifications of a recommendation, such as from a clinical practice guideline. Common classifications include strength of recommendation, direction of recommendation, and certainty of evidence.

### RecommendationJustification Profile of ArtifactAssessment Resource

The **[RecommendationJustification Profile][RecommendationJustification]** is a Profile of **[RecommendationRating][RecommendationRating]** that is used for expressing the rationale, evidence, and judgments supporting a recommendation, such as from a clinical practice guideline.

### OutcomeImportance Profile of ArtifactAssessment Resource

The **[OutcomeImportance Profile][OutcomeImportance]** is used for expression of the relative importance of an outcome. The outcome is typically expressed with an <b>EvidenceVariable Resource</b> and may use the **[VariableDefinition Profile][VariableDefinition]** of EvidenceVariable (or **[OutcomeDefinition Profile][OutcomeDefinition]** of Group). The ArtifactAssessment.content may be used for Outcome Desirability (with a classifier of Desirable or Undesirable), for Relative Importance (in which case the ArtifactAssessment.content.quantity.value element is described with "The value must be 0 (no importance) or a positive decimal. The value of 100 represents the importance of the reference outcome. A value greater than 100 represents exceptionally high importance that is higher than the importance of the reference outcome." and the ArtifactAssessment.content.quantity.unit element is set to "%"), or for ForWhom (in which case the ArtifactAssessment.content.relatesTo.targetReference may reference the group or person that this OutcomeImportance supports).

### CompositeRating Profile of ArtifactAssessment Resource

The **[CompositeRating Profile][CompositeRating]** is used for a composite rating or classification of a Resource that may be created following ratings or classifications by two or more parties.

### Adaptation Profile of ArtifactAssessment Resource

The **[Adaptation Profile][Adaptation]** is used for assessments of a knowledge artifact that are used to create a new knowledge artifact through acceptance, rejection or modification of the assessed artifact.

### Comparison Profile of ArtifactAssessment Resource

The **[Comparison Profile][Comparison]** is a Profile of **[Adaptation][Adaptation]** that is used for assessments of similarities and differences between knowledge artifacts.

{& lang-fragment link-list.md %}