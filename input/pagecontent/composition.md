### Understanding the Composition Resource

The <b>Composition Resource</b> is a structure for grouping information for purposes of persistence and attestability. The <b>Composition Resource</b> provides the basic structure for a FHIR document. The full content of the document is expressed using a <b>Bundle Resource</b> containing the Composition and its entries (which are references to other FHIR Resources).

Metadata elements in the <b>Composition Resource</b> that are similar to other Resources include url, identifier, version, status (which has different codes than the status used in other Resources), date, useContext, author (which uses a Reference datatype), name, title, and note.

Composition.type is required and uses a CodeableConcept datatype. Composition.category is optional and uses an array of CodeableConcept datatype.

Composition.subject is optional and uses an array of Reference to express what the composition is about. Composition.encounter is optional and uses a single Reference to an Encounter Resource (this is common in health data exchange and uncommon in science data exchange).

Composition.attester is a repeatable BackboneElement that is similar conceptually to reviewer, editor, and endorser elements used in other Resources.

Composition.custodian is optional and references an <b>Organization Resource</b> to represent the 'publisher' of the composition.

Composition.relatesTo is similar to Resource.relatedArtifact used in other Resources. In compositions used for scientific knowledge exchange, there is often a desire to inform the reader how to cite the composition. The relatesTo element may have an instance with a type of "cite-as" to represent how to cite the composition.

Composition.event is a repeatable BackboneElement to represent the clinical service(s) being documented and is not expected to be used commonly in the EBMonFHIR Implementation Guide.

Composition.section is a repeatable and recursive BackboneElement that contains all the content of the composition.

Identifiers of a composition section include section.title (string datatype), section.code (CodeableConcept datatype), and section.focus (Reference datatype).

Metadata about the composition section include section.author (repeatable Reference datatype) and emptyReason (CodeableConcept datatype).

The content of a section may be found in text, entry, and/or section elements.

section.entry is a repeatable Reference.

section.section is a repeatable BackboneElement and section.orderedBy is a CodeableConcept to specify the order of section entries.

section.text is a Narrative datatype used for a text summary of the section. A Narrative datatype contains 2 required elements: section.text.status coded as generated, extensions, additional, or empty and section.text.div with xhtml content.

### EvidenceReport Profile of Composition Resource

The <b>EvidenceReport Profile</b> is used for a base structure (canonical resource management) for a report combining any number of <b>Citation</b>, <b>Evidence</b>, <b>EvidenceVariable</b>, <b>EvidenceReport</b>, and related Resources. The <b>EvidenceReport Profile</b> adds a number of extensions for metadata (<i>versionAlgorithm</i>, <i>experimental</i>, description, purpose,  copyrightLabel, approvalDate, lastReviewDate, and effectivePeriod). The <b>EvidenceReport Profile</b> sets the Composition.type.coding value to an "EvidenceReport" coding. The EvidenceReport Profile limits the number of subject elements to 1 and limits the resource types that can be referenced as the subject to <b>Citation</b>, <b>Classification</b>, <b>EvidenceReportSubject</b>, or <b>ResearchStudy</b>. The Composition.attester.mode element uses a CodeableConcept datatype and a Contributor Role Value Set is provided with preferred binding to include concepts for reviewer, editor, endorser, informant, and funder. An EvidenceReport Section Code Value Set is provided with extensible binding for the section.code elements.

### ComparativeEvidenceReport Profile of Composition Resource

The <b>ComparativeEvidenceReport Profile</b> is a Profile of <b>EvidenceReport</b> and is used for an evidence report including the study group, exposure, comparator, and findings for any number of outcomes comparing the exposure to the comparator in the study group. A category element instance expresses that the composition is a "Comparative Evidence Report" and additional category element instances may be used.

..A 'Population' section is required with entries limited to reference <b>StudyGroup Profile</b>.

..An 'Intervention' section is required with 2 contained sections. The 'Intervention' section may be repeated. An 'Intervention Description' section is required with entries limited to reference <b>ExposureDefinition Profile</b>. An 'Intervention Group' section is required with entries limited to reference <b>ExposureGroup Profile</b>.

..A 'Comparator' section is required with 2 contained sections. A 'Comparator Description' section is required with entries limited to reference <b>ComparatorDefinition Profile</b> or <b>ExposureDefinition Profile</b>. A 'Comparator Group' section is required with entries limited to reference <b>ComparatorGroup Profile</b> or <b>ExposureGroup Profile</b>.

..A 'Study Design' section is required with entries limited to reference <b>ResearchStudy Resource</b> or <b>Classification Profile</b>.

..A 'Baseline Measures' section is optional. The 'Baseline Measures' section contains one or more sections with each of these sections identified by focus (Composition.section[baseline].section.focus) which references a <b>VariableDefinition Profile</b>. Each of these focused sections contain one or more of the following sections:

....Composition.section[baseline].section.section[comparatorEvidence] has a section.code value for 'Evidence with comparator alone' and entries limited to a single reference of a <b>BaselineMeasureEvidence Profile</b>.

....Composition.section[baseline].section.section[interventionEvidence] has a section.code value for 'Evidence with intervention alone' and entries limited to a single reference of a <b>BaselineMeasureEvidence Profile</b>.

....Composition.section[baseline].section.section[totalGroup] has a section.code value for 'Evidence with total group' and entries limited to a single reference of a <b>BaselineMeasureEvidence Profile</b>.

....Composition.section[baseline].section.section[comparativeEvidence] has a section.code value for 'Evidence with intervention vs. comparator' and entries limited to a single reference of a <b>ComparativeBaselineMeasureEvidence Profile</b>.

..A 'Participant Flow' section is optional. The 'Participant Flow' section contains one or more sections with each of these sections identified by focus (Composition.section[flow].section.focus) which references a <b>ParticipantFlowMeasure Profile</b>. Each of these focused sections contain one or more of the following sections:

....Composition.section[flow].section.section[comparatorEvidence] has a section.code value for 'Evidence with comparator alone' and entries limited to a single reference of a <b>ParticipantFlow Profile</b>.

....Composition.section[flow].section.section[interventionEvidence] has a section.code value for 'Evidence with intervention alone' and entries limited to a single reference of a <b>ParticipantFlow Profile</b>.

....Composition.section[flow].section.section[totalGroup] has a section.code value for 'Evidence with total group' and entries limited to a single reference of a <b>ParticipantFlow Profile</b>.

....Composition.section[flow].section.section[comparativeEvidence] has a section.code value for 'Evidence with intervention vs. comparator' and entries limited to a single reference of a <b>ComparativeParticipantFlow Profile</b>.

..An 'Outcome Measures' section is required. The 'Outcome Measures' section contains one or more sections with each of these sections identified by focus (Composition.section[outcomes].section.focus) which references a <b>VariableDefinition Profile</b>. Each of these focused sections contain one or more of the following sections:

....Composition.section[outcomes].section.section[comparatorEvidence] has a section.code value for 'Evidence with comparator alone' and entries limited to a single reference of a <b>ComparatorOnlyEvidence Profile</b>.

....Composition.section[outcomes].section.section[interventionEvidence] has a section.code value for 'Evidence with intervention alone' and entries limited to a single reference of a <b>InterventionOnlyEvidence Profile</b>.

....Composition.section[outcomes].section.section[comparativeEvidence] has a section.code value for 'Evidence with intervention vs. comparator' and entries limited to a single reference of a <b>ComparativeEvidence Profile</b>.

### Guideline Profile of Composition Resource

The <b>Guideline Profile</b> is a Profile of <b>EvidenceReport</b> and is used for the composition of a clinical practice guideline and may be tightly related to use of the <b>Recommendation Profile</b> for related content. A category element instance expresses that the composition is a "Guideline" and additional category element instances may be used.

The <b>Guideline Profile</b> will have 1 to 6 section element instances with any of the following section.code concepts:  Introduction, Recommendations, Text, Methods, Acknowledgements, and Appendices. The Recommendations section will have entries which are constrained to reference the <b>Recommendation Profile</b>. 

### Recommendation Profile of Composition Resource

The <b>Recommendation Profile</b> is a Profile of <b>EvidenceReport</b> and is used for the composition of a recommendation (such as that from a clinical practice guideline) and may be tightly related to a <b>RecommendationPlan Profile</b> of PlanDefinition and a <b>RecommendationJustification Profile</b> of ArtifactAssessment. A category element instance expresses that the composition is a "Recommendation" and additional category element instances may be used.

The relatesTo element will have 1 or more instances with a type of "derived-from" which may reference <b>RecommendationJustification Profile</b>, <b>PlanDefinition Resource</b>, or <b>Composition Resource</b> where the structured data for the source content of the composition is found.

The <b>Recommendation Profile</b> will have 1 to 5 section element instances with any of the following section.code concepts:  Recommendation Specification, Evidence, Net Effect, Judgments, and Considerations.

..The Recommendation Specification section is required and contains sections with section.code concepts for Recommendation Statement, Rating System, Strength of Recommendation, Direction of Recommendation, Ratings, Related Items, Discussion, Population, Action, Opposite Action, and Data Source.

..The Evidence section contains sections with section.code concepts for Summary of Findings, Desirable Effects, Undesirable Effects, Discussion, and Data Source. The Summary of Findings, Desirable Effects, and Undesirable Effects sections contain sections with section.code concepts for Ratings and Related Items.

..The Net Effect section contains sections with section.code concepts for Summary, Ratings, Related Items, Preferences, Discussion, and Data Source. The Preferences section contains sections with section.code concepts for Ratings and Related Items.

..The Judgments section contains sections with section.code concepts for Justification, Problem Importance, Costs, Cost-effectiveness, Equity, Acceptability, and Feasibility.  Each of these sections contain sections with section.code concepts for Ratings and Related Items.

..The Considerations section contains sections with section.code concepts for Summary, Ratings, Related Items, Subgroup Considerations, Implementation Considerations, Monitoring Considerations, Competing Interests, and Research Considerations. The Subgroup Considerations, Implementation Considerations, Monitoring Considerations, Competing Interests, and Research Considerations sections contain sections with section.code concepts for Ratings and Related Items.