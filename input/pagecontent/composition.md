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

The **[EvidenceReport Profile][EvidenceReport]** is used for a base structure (canonical resource management) for a report combining any number of <b>Citation</b>, <b>Evidence</b>, <b>EvidenceVariable</b>, **[EvidenceReport][EvidenceReport]**, and related Resources. The **[EvidenceReport Profile][EvidenceReport]** adds a number of extensions for metadata (<i>versionAlgorithm</i>, <i>experimental</i>, description, purpose,  copyrightLabel, approvalDate, lastReviewDate, and effectivePeriod). The EvidenceReport Profile limits the number of subject elements to 1 and limits the resource types that can be referenced as the subject to <b>Citation</b>, **[Classification][Classification]**, **[EvidenceReportSubject][EvidenceReportSubject]**, or <b>ResearchStudy</b>. The Composition.attester.mode element uses a CodeableConcept datatype and a Contributor Role Value Set is provided with preferred binding to include concepts for reviewer, editor, endorser, informant, and funder. An EvidenceReport Section Code Value Set is provided with extensible binding for the section.code elements.

### ComparativeEvidenceReport Profile of Composition Resource

The **[ComparativeEvidenceReport Profile][ComparativeEvidenceReport]** is a Profile of **[EvidenceReport][EvidenceReport]** and is used for an evidence report including the study group, exposure, comparator, and findings for any number of outcomes comparing the exposure to the comparator in the study group. 

The Composition.type value is set to a "Comparative Evidence Report".

..A 'Population' section is required with entries limited to reference **[StudyGroup Profile][StudyGroup]**.

..An 'Intervention' section is required with 2 contained sections. The 'Intervention' section may be repeated. An 'Intervention Description' section is required with entries limited to reference **[ExposureDefinition Profile][ExposureDefinition]**. An 'Intervention Group' section is required with entries limited to reference **[ExposureGroup Profile][ExposureGroup]**.

..A 'Comparator' section is required with 2 contained sections. A 'Comparator Description' section is required with entries limited to reference **[ComparatorDefinition Profile][ComparatorDefinition]** or **[ExposureDefinition Profile][ExposureDefinition]**. A 'Comparator Group' section is required with entries limited to reference **[ComparatorGroup Profile][ComparatorGroup]** or **[ExposureGroup Profile][ExposureGroup]**.

..A 'Study Design' section is required with entries limited to reference <b>ResearchStudy Resource</b> or **[Classification Profile][Classification]**.

..A 'Baseline Measures' section is optional. The 'Baseline Measures' section contains one or more sections with each of these sections identified by focus (Composition.section[baseline].section.focus) which references a **[VariableDefinition Profile][VariableDefinition]**. Each of these focused sections contain one or more of the following sections:

....Composition.section[baseline].section.section[comparatorEvidence] has a section.code value for 'Evidence with comparator alone' and entries limited to a single reference of a **[BaselineMeasureEvidence Profile][BaselineMeasureEvidence]**.

....Composition.section[baseline].section.section[interventionEvidence] has a section.code value for 'Evidence with intervention alone' and entries limited to a single reference of a **[BaselineMeasureEvidence Profile][BaselineMeasureEvidence]**.

....Composition.section[baseline].section.section[totalGroup] has a section.code value for 'Evidence with total group' and entries limited to a single reference of a **[BaselineMeasureEvidence Profile][BaselineMeasureEvidence]**.

....Composition.section[baseline].section.section[comparativeEvidence] has a section.code value for 'Evidence with intervention vs. comparator' and entries limited to a single reference of a **[ComparativeBaselineMeasureEvidence Profile][ComparativeBaselineMeasureEvidence]**.

..A 'Participant Flow' section is optional. The 'Participant Flow' section contains one or more sections with each of these sections identified by focus (Composition.section[flow].section.focus) which references a **[ParticipantFlowMEvidenceVariable Profile][ParticipantFlowEvidenceVariable]**. Each of these focused sections contain one or more of the following sections:

....Composition.section[flow].section.section[comparatorEvidence] has a section.code value for 'Evidence with comparator alone' and entries limited to a single reference of a **[ParticipantFlowEvidence Profile][ParticipantFlowEvidence]**.

....Composition.section[flow].section.section[interventionEvidence] has a section.code value for 'Evidence with intervention alone' and entries limited to a single reference of a **[ParticipantFlowEvidence Profile][ParticipantFlowEvidence]**.

....Composition.section[flow].section.section[totalGroup] has a section.code value for 'Evidence with total group' and entries limited to a single reference of a **[ParticipantFlowEvidence Profile][ParticipantFlowEvidence]**.

....Composition.section[flow].section.section[comparativeEvidence] has a section.code value for 'Evidence with intervention vs. comparator' and entries limited to a single reference of a **[ComparativeParticipantFlowEvidence Profile][ComparativeParticipantFlowEvidence]**.

..An 'Outcome Measures' section is required. The 'Outcome Measures' section contains one or more sections with each of these sections identified by focus (Composition.section[outcomes].section.focus) which references a **[VariableDefinition Profile][VariableDefinition]**. Each of these focused sections contain one or more of the following sections:

....Composition.section[outcomes].section.section[comparatorEvidence] has a section.code value for 'Evidence with comparator alone' and entries limited to a single reference of a **[ComparatorOnlyEvidence Profile][ComparatorOnlyEvidence]**.

....Composition.section[outcomes].section.section[interventionEvidence] has a section.code value for 'Evidence with intervention alone' and entries limited to a single reference of a **[InterventionOnlyEvidence Profile][InterventionOnlyEvidence]**.

....Composition.section[outcomes].section.section[comparativeEvidence] has a section.code value for 'Evidence with intervention vs. comparator' and entries limited to a single reference of a **[ComparativeEvidence Profile][ComparativeEvidence]**.

### BaselineMeasureReport Profile of Composition Resource

The **[BaselineMeasureReport Profile][BaselineMeasureReport]** is a Profile of **[EvidenceReport][EvidenceReport]** and is used for an evidence report including the findings for any number of baseline measures in a research study. 

The Composition.type value is set to a "Baseline Measure Report".

The relatesTo element may include instances with type values of "depends-on", label values to identify the contextual use of specific Group Resources (such as "Intervention Group", "Comparator Group", and "Total Group"), and resourceReference values which may be limited to reference **[StudyGroup][StudyGroup]**, **[ExposureGroup][ExposureGroup]**, or **[ComparatorGroup][ComparatorGroup]** Profiles.

The section element contains one or more instances (sections) with each of these sections identified by focus (Composition.section.focus) which references a **[VariableDefinition Profile][VariableDefinition]**. Each of these focused sections contain one or more of the following sections:

..Composition.section.section[comparatorEvidence] has a section.code value for 'Evidence with comparator alone' and entries limited to a single reference of a **[BaselineMeasureEvidence Profile][BaselineMeasureEvidence]**.

..Composition.section.section[interventionEvidence] has a section.code value for 'Evidence with intervention alone' and entries limited to a single reference of a **[BaselineMeasureEvidence Profile][BaselineMeasureEvidence]**.

..Composition.section.section[totalGroup] has a section.code value for 'Evidence with total group' and entries limited to a single reference of a **[BaselineMeasureEvidence Profile][BaselineMeasureEvidence]**.

..Composition.section.section[comparativeEvidence] has a section.code value for 'Evidence with intervention vs. comparator' and entries limited to a single reference of a **[ComparativeBaselineMeasureEvidence Profile][ComparativeBaselineMeasureEvidence]**.


### ParticipantFlowReport Profile of Composition Resource

The **[ParticipantFlowReport Profile][ParticipantFlowReport]** is a Profile of **[EvidenceReport][EvidenceReport]** and is used for an evidence report including the counts (and proportions) for any number of participant flow measures in a research study. For example, the ParticipantFlowReport may include the data for a CONSORT Participant Flow Diagram reported with a randomized controlled trial.

The Composition.type value is set to a "Participant Flow Report".

The relatesTo element may include instances with type values of "depends-on", label values to identify the contextual use of specific Group Resources (such as "Intervention Group", "Comparator Group", and "Total Group"), and resourceReference values which may be limited to reference **[StudyGroup][StudyGroup]**, **[ExposureGroup][ExposureGroup]**, or **[ComparatorGroup][ComparatorGroup]** Profiles.

The section element contains one or more instances (sections) with each of these sections identified by focus (Composition.section.focus) which references a **[VariableDefinition Profile][VariableDefinition]**. Each of these focused sections contain one or more of the following sections:

..Composition.section.section[comparatorEvidence] has a section.code value for 'Evidence with comparator alone' and entries limited to a single reference of a **[ParticipantFlowEvidence Profile][ParticipantFlowEvidence]**.

..Composition.section.section[interventionEvidence] has a section.code value for 'Evidence with intervention alone' and entries limited to a single reference of a **[ParticipantFlowEvidence Profile][ParticipantFlowEvidence]**.

..Composition.section.section[totalGroup] has a section.code value for 'Evidence with total group' and entries limited to a single reference of a **[ParticipantFlowEvidence Profile][ParticipantFlowEvidence]**.

..Composition.section.section[comparativeEvidence] has a section.code value for 'Evidence with intervention vs. comparator' and entries limited to a single reference of a **[ComparativeParticipantFlowEvidence Profile][ComparativeParticipantFlowEvidence]**.


### Guideline Profile of Composition Resource

The **[Guideline Profile][Guideline]** is a Profile of **[EvidenceReport][EvidenceReport]** and is used for the composition of a clinical practice guideline and may be tightly related to use of the **[Recommendation Profile][Recommendation]** for related content. 

The Composition.type value is set to a "Guideline".

The **[Guideline Profile][Guideline]** will have 1 to 6 section element instances with any of the following section.code concepts:  Introduction, Recommendations, Text, Methods, Acknowledgements, and Appendices. The Recommendations section will have entries which are constrained to reference the **[Recommendation Profile][Recommendation]**. 

### Recommendation Profile of Composition Resource

The **[Recommendation Profile][Recommendation]** is a Profile of **[EvidenceReport][EvidenceReport]** and is used for the composition of a recommendation (such as that from a clinical practice guideline) and may be tightly related to a **[RecommendationPlan Profile][RecommendationPlan]** of PlanDefinition and a **[RecommendationJustification Profile][RecommendationJustification]** of ArtifactAssessment. 

The Composition.type value is set to a "Recommendation".

The relatesTo element will have 1 or more instances with a type of "derived-from" which may reference **[RecommendationJustification Profile][RecommendationJustification]**, <b>PlanDefinition Resource</b>, or <b>Composition Resource</b> where the structured data for the source content of the composition is found.

The **[Recommendation Profile][Recommendation]** will have 1 to 5 section element instances with any of the following section.code concepts:  Recommendation Specification, Evidence, Net Effect, Judgments, and Considerations.

..The Recommendation Specification section is required and contains sections with section.code concepts for Recommendation Statement, Rating System, Strength of Recommendation, Direction of Recommendation, Ratings, Related Items, Discussion, Population, Action, Opposite Action, and Data Source.

..The Evidence section contains sections with section.code concepts for Summary of Findings, Desirable Effects, Undesirable Effects, Discussion, and Data Source. The Summary of Findings, Desirable Effects, and Undesirable Effects sections contain sections with section.code concepts for Ratings and Related Items.

..The Net Effect section contains sections with section.code concepts for Summary, Ratings, Related Items, Preferences, Discussion, and Data Source. The Preferences section contains sections with section.code concepts for Ratings and Related Items.

..The Judgments section contains sections with section.code concepts for Justification, Problem Importance, Costs, Cost-effectiveness, Equity, Acceptability, and Feasibility.  Each of these sections contain sections with section.code concepts for Ratings and Related Items.

..The Considerations section contains sections with section.code concepts for Summary, Ratings, Related Items, Subgroup Considerations, Implementation Considerations, Monitoring Considerations, Competing Interests, and Research Considerations. The Subgroup Considerations, Implementation Considerations, Monitoring Considerations, Competing Interests, and Research Considerations sections contain sections with section.code concepts for Ratings and Related Items.

### SummaryOfFindings Profile of Composition Resource

The **[SummaryOfFindings Profile][SummaryOfFindings]** is a Profile of **[EvidenceReport][EvidenceReport]** and is used for an evidence report combining <b>Evidence</b> and <b>EvidenceVariable Resources</b>, organized around **[VariableDefinition][VariableDefinition]** (Profile of EvidenceVariable), to represent the summary of findings of comparative evidence. 

The Composition.type value is set to a "Summary of Findings".

The **[SummaryOfFindings Profile][SummaryOfFindings]** has 1 'Column Headers' section and 1 or more 'Summary of findings entry for a single outcome' sections.  Each 'Summary of findings entry for a single outcome' section has a focus element (section.focus) which references a **[VariableDefinition Profile][VariableDefinition]**. Each of these sections has the same set of section.section.code patterns to provide the following contained sections:

1. An 'Outcome Measure' section is required for the 'Column Headers' section and optional for the 'Summary of findings entry for a single outcome' sections. If used in the 'Summary of findings entry for a single outcome' section, entries are limited to reference a single **[VariableDefinition Profile][VariableDefinition]**.

2. A 'Sample Size' section is optional.

3. A 'Result with comparator alone' section is optional. If used in the 'Summary of findings entry for a single outcome' section, entries are limited to reference a single **[ComparatorOnlyEvidence Profile][ComparatorOnlyEvidence]**.

4. A 'Result with intervention alone' section is optional. If used in the 'Summary of findings entry for a single outcome' section, entries are limited to reference a single **[InterventionOnlyEvidence Profile][InterventionOnlyEvidence]**.

5. A 'Result with intervention alone (calculated)' section is optional. If used in the 'Summary of findings entry for a single outcome' section, entries are limited to reference up to 2 Resources using **[ComparatorOnlyEvidence Profile][ComparatorOnlyEvidence]** or **[ComparativeEvidence Profile][ComparativeEvidence]**.

6. A 'Result with intervention vs. comparator' section is optional. If used in the 'Summary of findings entry for a single outcome' section, entries are limited to reference a single **[ComparativeEvidence Profile][ComparativeEvidence]**.

7. A 'Certainty of Evidence' section is optional. If used in the 'Summary of findings entry for a single outcome' section, entries may reference **[ComparativeEvidence Profile][ComparativeEvidence]** or **[CertaintyOfEvidence Profile][CertaintyOfEvidence]**.

8. An 'Assertion' section is optional. If used in the 'Summary of findings entry for a single outcome' section, entries are limited to reference a single **[ComparativeEvidence Profile][ComparativeEvidence]**.

### SummaryOfNetEffect Profile of Composition Resource

The **[SummaryOfNetEffect Profile][SummaryOfNetEffect]** is a Profile of **[EvidenceReport][EvidenceReport]** and is used for an evidence report combining <b>ArtifactAssessment</b>, <b>Evidence</b>, and <b>EvidenceVariable Resources</b>, organized around **[VariableDefinition][VariableDefinition]** (Profile of EvidenceVariable), to represent the summary of net effect contributions of comparative evidence, adjusted for the relative importance of outcomes. 

The Composition.type value is set to a "Summary of Net Effect Contributions".

The **[SummaryOfNetEffect Profile][SummaryOfNetEffect]** has 1 'Column Headers' section, 1 or more 'Summary of net effect contributions entry for a single outcome' sections, and may have a 'Net Effect Estimate' section.  Each 'Summary of net effect contributions entry for a single outcome' section has a focus element (section.focus) which references a **[VariableDefinition Profile][VariableDefinition]**. Each of these sections and the 'Column Headers' section has the same set of section.section.code patterns to provide the following contained sections:

1. An 'Outcome Measure' section is required for the 'Column Headers' section and optional for the 'Summary of net effect contributions entry for a single outcome' sections. If used in the 'Summary of net effect contributions entry for a single outcome' section, entries are limited to reference a single **[VariableDefinition Profile][VariableDefinition]**.

2. An 'Outcome Desirability' section is optional. If used in the 'Summary of net effect contributions entry for a single outcome' section, entries are limited to reference a single **[OutcomeImportance Profile][OutcomeImportance]**.

3. A 'Relative Importance' section is optional. If used in the 'Summary of net effect contributions entry for a single outcome' section, entries are limited to reference a single **[OutcomeImportance Profile][OutcomeImportance]**.

4. A 'Result with comparator alone' section is optional. If used in the 'Summary of net effect contributions entry for a single outcome' section, entries are limited to reference a single **[ComparatorOnlyEvidence Profile][ComparatorOnlyEvidence]**.

5. A 'Evidence Results for the intervention exposure only' section is optional. If used in the 'Summary of net effect contributions entry for a single outcome' section, entries are limited to reference a single **[InterventionOnlyEvidence Profile][InterventionOnlyEvidence]**.

6. A 'Result with intervention alone (calculated)' section is optional. If used in the 'Summary of net effect contributions entry for a single outcome' section, entries are limited to reference up to 2 Resources using **[ComparatorOnlyEvidence Profile][ComparatorOnlyEvidence]** or **[ComparativeEvidence Profile][ComparativeEvidence]**.

7. A 'Result with intervention vs. comparator' section is optional. If used in the 'Summary of net effect contributions entry for a single outcome' section, entries are limited to reference a single **[ComparativeEvidence Profile][ComparativeEvidence]**.

8. A 'Net Effect Contribution' section is required. In the 'Summary of net effect contributions entry for a single outcome' section, entries are limited to reference a single **[NetEffectContribution Profile][NetEffectContribution]**.

The 'Net Effect Estimate' section, if used, is limited to a single entry which references a **[NetEffectEstimate Profile][NetEffectEstimate]**.

 
### EvidenceMap Profile of Composition Resource

The **[EvidenceMap Profile][EvidenceMap]** is a Profile of **[EvidenceReport][EvidenceReport]** and is used for an organized listing of Resources used to generate **[EvidenceReport][EvidenceReport]** instances.

The Composition.type value is set to a "EvidenceMap".

The **[EvidenceMap Profile][EvidenceMap]** provides 11 optional sections with a suggested section.code.coding value and limitations of resource type for section.entry values. The 11 sections are:

1. Outcome Measure, limited to reference **[VariableDefinition Profile][VariableDefinition]**.
2. Evidence with comparator alone, limited to reference **[ComparatorOnlyEvidence Profile][ComparatorOnlyEvidence]**.
3. Evidence with intervention alone, limited to reference **[InterventionOnlyEvidence Profile][InterventionOnlyEvidence]**.
4. Evidence with intervention vs. comparator, limited to reference **[ComparativeEvidence Profile][ComparativeEvidence]**.
5. Certainty of Evidence, limited to reference **[CertaintyOfEvidence Profile][CertaintyOfEvidence]**.
6. Population, limited to reference <b>Group Resource</b>.
7. Intervention, limited to reference **[VariableDefinition Profile][VariableDefinition]**.
8. Intervention Description, limited to reference <b>Group Resource</b>.
9. Intervention Group, limited to reference <b>Group Resource</b>.
10. Classifier, limited to reference <b>ArtifactAssessment Resource</b>.
11. Relative Importance, limited to reference <b>ArtifactAssessment Resource</b>.

### M11Report Profile of Composition Resource

The **[M11Report Profile][M11Report]** is a Profile of **[EvidenceReport][EvidenceReport]** and is used for the International Council for Harmonisation of Technical Requirements for Pharmaceuticals for Human Use (ICH) Clinical Electronic Structured Harmonised Protocol (CeSHarP) M11 Technical Specification.

The Composition.type value is set to a "Clinical Trial Protocol" and "CeSHarP Report".

The **[M11Report Profile][M11Report]** contains 15 sections with highly detailed instructions and is shared in the EBMonFHIR Implementation Guide for initial development and coordination with the base structures in the EBMonFHIR Implementation Guide. There will likely be a future 'M11 Report' Implementation Guide developed by a different but coordinated group.

{% include link-list.md %}
