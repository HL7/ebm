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

The **[EvidenceReport Profile][EvidenceReport]** is used for a base structure (canonical resource management) for a report combining any number of <b>Citation</b>, <b>Evidence</b>, <b>EvidenceVariable</b>, <b>Composition</b>, and related Resources. The **[EvidenceReport Profile][EvidenceReport]** adds a number of extensions for metadata (versionAlgorithm, experimental, description, purpose, copyright, copyrightLabel, approvalDate, lastReviewDate, and effectivePeriod). The Composition.attester.mode element uses a CodeableConcept datatype and a Contributor Role Value Set is provided with preferred binding to include concepts for reviewer, editor, endorser, informant, recorder, and funder. An EvidenceReport Section Code Value Set is provided with extensible binding for the section.code elements.

### ResearchStudyDataDictionary Profile of Composition Resource

The **[ResearchStudyDataDictionary Profile][ResearchStudyDataDictionary]** is a Profile of **[EvidenceReport Profile][EvidenceReport]** and is used for a code key for variable names in a dataset containing the observations collected in a research study. Each variable is included in a section.entry instance which references **[VariableDefinition Profile][VariableDefinition]**.

### EvidenceReportPackage Profile of Composition Resource

The **[EvidenceReportPackage Profile][EvidenceReportPackage]** is used for a base structure to extend the **[EvidenceReport Profile][EvidenceReport]** with optional sections for Summary, Introduction, Discussion, Methods, References, Competing Interests, Acknowledgements, and Appendices.

### ComparativeEvidenceReport Profile of Composition Resource

The **[ComparativeEvidenceReport Profile][ComparativeEvidenceReport]** is a Profile of **[EvidenceReportPackage][EvidenceReportPackage]** and is used for an evidence report including the study group, exposure, comparator, and findings for any number of outcomes comparing the exposure to the comparator in the study group. 

The Composition.type value is set to a "Comparative Evidence Report".

..A 'Population' section is required with entries limited to reference **[StudyGroup Profile][StudyGroup]**.

..An 'Intervention' section is required with 2 contained sections. The 'Intervention' section may be repeated. An 'Intervention Description' section is required with entries limited to reference **[ExposureDefinition Profile][ExposureDefinition]** or **[ConceptualExposureDefinition Profile][ConceptualExposureDefinition]**. An 'Intervention Group' section is required with entries limited to reference **[ExposureGroup Profile][ExposureGroup]**.

..A 'Comparator' section is required with 2 contained sections. A 'Comparator Description' section is required with entries limited to reference **[ComparatorDefinition Profile][ComparatorDefinition]** or **[ExposureDefinition Profile][ExposureDefinition]** or **[ConceptualComparatorDefinition Profile][ConceptualComparatorDefinition]** or **[ConceptualExposureDefinition Profile][ConceptualExposureDefinition]**. A 'Comparator Group' section is required with entries limited to reference **[ComparatorGroup Profile][ComparatorGroup]** or **[ExposureGroup Profile][ExposureGroup]**.

..A 'Research Study' section is required with entries limited to reference <b>ResearchStudy Resource</b> or <b>Citation Resource</b> or <b>Composition Resource</b>.

..A 'Baseline Measures' section is optional. The 'Baseline Measures' section entry element is limited to a single instance that references **[BaselineMeasureReport Profile][BaselineMeasureReport]**. 

..A 'Participant Flow' section is optional. The 'Participant Flow' section entry element is limited to a single instance that references **[ParticipantFlowReport Profile][ParticipantFlowReport]**. 

..An 'Outcome Measures' section is optional. The 'Outcome Measures' section entry element is limited to reference **[OutcomeMeasureReport Profile][OutcomeMeasureReport]**.

..A 'Summary of Findings' section is optional. The 'Summary of Findings' section entry element is limited to reference **[SummaryOfFindings Profile][SummaryOfFindings]**.

### ComparativeEvidenceSynthesisReport Profile of Composition Resource

The **[ComparativeEvidenceSynthesisReport Profile][ComparativeEvidenceSynthesisReport]** is a Profile of **[EvidenceReportPackage][EvidenceReportPackage]** and is used for an evidence report including the intended population, intended exposure, intended comparator, and findings for any number of outcomes comparing the exposure to the comparator with observed study group, observed exposure group, and observed comparator group unique for each outcome.

The Composition.type value is set to a "Comparative Evidence Synthesis Report".

..A 'Population' section is required with entries limited to reference **[CohortDefinition Profile][CohortDefinition]** or **[ConceptualCohortDefinition Profile][ConceptualCohortDefinition]**.

..One or more 'Intervention description' sections are required with entries limited to reference **[CohortDefinition Profile][CohortDefinition]** or **[ConceptualCohortDefinition Profile][ConceptualCohortDefinition]**.

..A 'Comparator' section is required with entries limited to reference **[CohortDefinition Profile][CohortDefinition]** or **[ConceptualCohortDefinition Profile][ConceptualCohortDefinition]**.

..A 'Research Study' section is required with entries limited to reference <b>ResearchStudy Resource</b> or <b>Citation Resource</b> or <b>Composition Resource</b>.

..An 'Outcome Variables' section is optional with entries limited to reference **[VariableDefinition Profile][VariableDefinition]**.

..A 'Results' section is optional. The 'Results' section entry element is limited to reference **[OutcomeMeasureSynthesisReport Profile][OutcomeMeasureSynthesisReport]**.

..A 'Summary of Findings' section is optional. The 'Summary of Findings' section entry element is limited to reference **[SummaryOfSynthesisFindings Profile][SummaryOfSynthesisFindings]**.


### EvidenceTableReportPackage Profile of Composition Resource

The **[EvidenceTableReportPackage Profile][EvidenceTableReportPackage]** is used for a base structure to extend the **[EvidenceReport Profile][EvidenceReport]** with sections for Groups, Group Assignment, Evidence Variables, and Results.

The Groups section includes sections for Screened Group, Enrolled Group, Population Definition, Intervention Group, Intervention Definition, Comparator Group, and Comparator Definition. These sections have limits to the reference types for their entry content: **[StudyGroup Profile][StudyGroup]** is used for Screened Group and Enrolled Group sections; **[ExposureGroup][ExposureGroup]** or **[ComparatorGroup][ComparatorGroup]** Profile is used for Intervention Group and Comparator Group sections; and **[CohortDefinition][CohortDefinition]** or **[ConceptualCohortDefinition][ConceptualCohortDefinition]** Profile is used for Population Description, Intervention Description, and Comparator Description sections.

The Group Assignment section limits the reference type for its entry content to **[GroupAssignment Profile][GroupAssignment]**.

The Evidence Variables section limits the reference type for its entry content to **[VariableDefinition Profile][VariableDefinition]**.

The Results section (Composition.section[results]) is organized with two contained sections: Enrollment (Composition.section[results].section[enrollment]) and ComparativeResults (Composition.section[results].section[comparativeResults]). 

The Enrollment section may have a focus element (referencing a **[GroupAssignment Profile][GroupAssignment]**) if comparative evidence is reported for the screened group vs. the enrolled group. The Enrollment section may have sections where each section instance may have a focus element (referencing a **[VariableDefinition Profile][VariableDefinition]**) for the measured evidence variable and section elements for the noncomparative evidence for that variable in the screened group, the noncomparative evidence for that variable in the enrolled group, and the comparative evidence for that variable comparing the screened group vs. the enrolled group.

The ComparativeResults section may have repeated (multiple) instances to support evidence reports with multiple comparisons. The ComparativeResults section may have a focus element (referencing a **[GroupAssignment Profile][GroupAssignment]**) if comparative evidence is reported for the intervention group vs. the comparator group. 

The ComparativeResults section (Composition.section[results].section[comparativeResults]) contains one or more instances (sections) with each of these sections identified by focus (Composition.section[results].section[comparativeResults].section.focus) which references a **[VariableDefinition Profile][VariableDefinition]**. Each of these focused sections contain one or more of the following sections:

..Composition.section.section.section.section[comparatorEvidence] has a section.code value for 'Evidence with comparator alone' and entries limited to a single reference of a **[NonComparativeEvidence Profile][NonComparativeEvidence]**.

..Composition.section.section.section.section[interventionEvidence] has a section.code value for 'Evidence with intervention alone' and entries limited to a single reference of a **[NonComparativeEvidence Profile][NonComparativeEvidence]**.

..Composition.section.section.section.section[enrolledGroupEvidence] has a section.code value for 'Evidence with enrolled group' and entries limited to a single reference of a **[NonComparativeEvidence Profile][NonComparativeEvidence]**.

..Composition.section.section.section.section[comparativeEvidence] has a section.code value for 'Evidence with intervention vs. comparator' and entries limited to a single reference of a **[ComparativeEvidence Profile][ComparativeEvidence]**.


### BaselineMeasureReport Profile of Composition Resource

The **[BaselineMeasureReport Profile][BaselineMeasureReport]** is a Profile of **[EvidenceTableReportPackage][EvidenceTableReportPackage]** and is used for an evidence report including the findings for any number of baseline measures in a research study. This is often represented as "Table 1" in a journal article reporting research study results.

The Composition.type value is set to a "Baseline Measure Report".


### ParticipantFlowReport Profile of Composition Resource

The **[ParticipantFlowReport Profile][ParticipantFlowReport]** is a Profile of **[EvidenceTableReportPackage][EvidenceTableReportPackage]** and is used for an evidence report including the counts (and proportions) for any number of participant flow measures in a research study. For example, the ParticipantFlowReport may include the data for a CONSORT Participant Flow Diagram reported with a randomized controlled trial.

The Composition.type value is set to a "Participant Flow Report".

The section element (Variables slice) is limited to reference **[ParticipantFlowEvidenceVariable Profile][ParticipantFlowEvidenceVariable]** for entry values.

The section element (Results section slice) applies constraints to the **[EvidenceTableReportPackage][EvidenceTableReportPackage]** in which any references to **[VariableDefinition Profile][VariableDefinition]** are further constrained to **[ParticipantFlowEvidenceVariable Profile][ParticipantFlowEvidenceVariable]**, any references to **[NonComparativeEvidence Profile][NonComparativeEvidence]** are further constrained to **[ParticipantFlowEvidence Profile][ParticipantFlowEvidence]**, and any references to **[ComparativeEvidence Profile][ComparativeEvidence]** are further constrained to **[ComparativeParticipantFlowEvidence Profile][ComparativeParticipantFlowEvidence]**.



### OutcomeMeasureReport Profile of Composition Resource

The **[OutcomeMeasureReport Profile][OutcomeMeasureReport]** is a Profile of **[EvidenceTableReportPackage][EvidenceTableReportPackage]** and is used for an evidence report including the findings for any number of outcome measures in a research study. 

The Composition.type value is set to an "Outcome Measure Report".


### SummaryOfFindings Profile of Composition Resource

The **[SummaryOfFindings Profile][SummaryOfFindings]** is a Profile of **[EvidenceTableReportPackage][EvidenceTableReportPackage]** and is used for an evidence report combining <b>Evidence</b> and <b>EvidenceVariable Resources</b>, organized around **[VariableDefinition][VariableDefinition]** (Profile of EvidenceVariable), to represent the summary of findings of comparative evidence.

The Composition.type value is set to a "Summary of Findings".

The **[SummaryOfFindings Profile][SummaryOfFindings]** has 1 'Column Headers' section and 1 'Summary of Findings' section. The 'Summary of Findings' section contains 1 or more 'Summary of findings entry for a single outcome' sections.  Each 'Summary of findings entry for a single outcome' section has a focus element (section.focus) which references a **[VariableDefinition Profile][VariableDefinition]**. Each of these sections has the same set of section.section.code patterns to provide the following contained sections:

1. An 'Outcome Measure' section is required for the 'Column Headers' section and optional for the 'Summary of findings entry for a single outcome' sections. If used in the 'Summary of findings entry for a single outcome' section, entries are limited to reference a single **[VariableDefinition Profile][VariableDefinition]**.

2. A 'Sample Size' section is optional.

3. A 'Result with comparator alone' section is optional. If used in the 'Summary of findings entry for a single outcome' section, entries are limited to reference a single **[ComparatorOnlyEvidence Profile][ComparatorOnlyEvidence]**.

4. A 'Result with intervention alone' section is optional. If used in the 'Summary of findings entry for a single outcome' section, entries are limited to reference a single **[InterventionOnlyEvidence Profile][InterventionOnlyEvidence]**.

5. A 'Result with intervention alone (calculated)' section is optional. If used in the 'Summary of findings entry for a single outcome' section, entries are limited to reference up to 2 Resources using **[ComparatorOnlyEvidence Profile][ComparatorOnlyEvidence]** or **[ComparativeEvidence Profile][ComparativeEvidence]**.

6. A 'Result with intervention vs. comparator' section is optional. If used in the 'Summary of findings entry for a single outcome' section, entries are limited to reference a single **[ComparativeEvidence Profile][ComparativeEvidence]**.

7. A 'Certainty of Evidence' section is optional. If used in the 'Summary of findings entry for a single outcome' section, entries may reference **[ComparativeEvidence Profile][ComparativeEvidence]** or **[CertaintyOfEvidence Profile][CertaintyOfEvidence]**.

8. An 'Assertion' section is optional. If used in the 'Summary of findings entry for a single outcome' section, entries are limited to reference a single **[ComparativeEvidence Profile][ComparativeEvidence]**.

### EvidenceSynthesisTableReportPackage Profile of Composition Resource

The **[EvidenceSynthesisTableReportPackage Profile][EvidenceSynthesisTableReportPackage]** is used for a base structure to extend the **[EvidenceReport Profile][EvidenceReport]** with sections for Groups (Total Group, Intervention Group, Comparator Group, and Group Assignment; which reference conceptual or definitional Groups), Evidence Variables, and Results.

The Groups and Evidence Variables sections have limits to the reference types for their entry content: **[CohortDefinition][CohortDefinition]** or **[ConceptualCohortDefinition][ConceptualCohortDefinition]** for Total Group, **[CohortDefinition][CohortDefinition]** or **[ConceptualCohortDefinition][ConceptualCohortDefinition]** Profile for Intervention Group, **[CohortDefinition][CohortDefinition]** or **[ConceptualCohortDefinition][ConceptualCohortDefinition]** Profile for Comparator Group, **[GroupAssignment Profile][GroupAssignment]** for Group Assignment, and **[VariableDefinition Profile][VariableDefinition]** for Evidence Variables.


### OutcomeMeasureSynthesisReport Profile of Composition Resource

The **[OutcomeMeasureSynthesisReport Profile][OutcomeMeasureSynthesisReport]** is a Profile of **[EvidenceSynthesisTableReportPackage][EvidenceSynthesisTableReportPackage]** and is used for an evidence report including the findings for any number of outcomes in a synthesis of research studies, where there may be a unique observed study group, observed exposure group, and observed comparator group for each outcome.

The Composition.type value is set to an "Outcome Measure Synthesis Report".

The section element (Results section slice) contains one or more instances (sections) with each of these sections identified by focus (Composition.section.section.focus) which references a **[VariableDefinition Profile][VariableDefinition]**. Each of these focused sections contain one or more of the following sections:

..TO BE ADDED..Note the sections for observed groups...

..Composition.section.section.section[comparatorEvidence] has a section.code value for 'Evidence with comparator alone' and entries limited to a single reference of a **[NoncomparativeEvidence Profile][NoncomparativeEvidence]**.

..Composition.section.section.section[interventionEvidence] has a section.code value for 'Evidence with intervention alone' and entries limited to a single reference of a **[NoncomparativeEvidence Profile][NoncomparativeEvidence]**.

..Composition.section.section.section[totalGroup] has a section.code value for 'Evidence with total group' and entries limited to a single reference of a **[NoncomparativeEvidence Profile][NoncomparativeEvidence]**.

..Composition.section.section.section[comparativeEvidence] has a section.code value for 'Evidence with intervention vs. comparator' and entries limited to a single reference of a **[ComparativeEvidence Profile][ComparativeEvidence]**.


### SummaryOfSynthesisFindings Profile of Composition Resource

The **[SummaryOfSynthesisFindings Profile][SummaryOfSynthesisFindings]** is a Profile of **[EvidenceSynthesisTableReportPackage][EvidenceSynthesisTableReportPackage]** and is used for an evidence report combining <b>Evidence</b> and <b>EvidenceVariable Resources</b>, organized around **[VariableDefinition][VariableDefinition]** (Profile of EvidenceVariable), to represent the summary of findings of comparative evidence from an evidence synthesis.

The Composition.type value is set to a "Summary of Synthesis Findings". The underlying structure is otherwise similar to the **[SummaryOfFindings Profile][SummaryOfFindings]** used for summarizing evidence from a single study.

### Guideline Profile of Composition Resource

The **[Guideline Profile][Guideline]** is a Profile of **[EvidenceReportPackage][EvidenceReportPackage]** and is used for the composition of a clinical practice guideline and may be tightly related to use of the **[Recommendation Profile][Recommendation]** for related content. 

The Composition.type value is set to a "Guideline".

The **[Guideline Profile][Guideline]** will have a Recommendations section which will have entries which are constrained to reference the **[Recommendation Profile][Recommendation]**. 

### Recommendation Profile of Composition Resource

The **[Recommendation Profile][Recommendation]** is a Profile of **[EvidenceReportPackage][EvidenceReportPackage]** and is used for the composition of a recommendation (such as that from a clinical practice guideline) and may be tightly related to a **[RecommendationPlan Profile][RecommendationPlan]** of PlanDefinition and a **[RecommendationJustification Profile][RecommendationJustification]** of ArtifactAssessment. 

The Composition.type value is set to a "Recommendation".

The **[Recommendation Profile][Recommendation]** will have 1 or more section element instances with any of the following section.code concepts:  Recommendation Specification (required), Evidence (optional), Justification (optional), and Considerations (optional).

..The Recommendation Specification section is required and contains sections with section.code concepts for Recommendation Statement, Ratings, Population, Action, and Opposite Action.

..The Evidence section may contain sections for text-based summaries and may contain entries referencing other Resources.

..The Justification section may contain sections for text-based summaries and may contain entries referencing **[RecommendationJustification Profile][RecommendationJustification]** of ArtifactAssessment.

..The Considerations section may contain sections for text-based summaries and may contain entries referencing other Resources.

### SummaryOfNetEffect Profile of Composition Resource

The **[SummaryOfNetEffect Profile][SummaryOfNetEffect]** is a Profile of **[EvidenceReportPackage][EvidenceReportPackage]** and is used for an evidence report combining <b>ArtifactAssessment</b>, <b>Evidence</b>, and <b>EvidenceVariable Resources</b>, organized around **[VariableDefinition][VariableDefinition]** (Profile of EvidenceVariable), to represent the summary of net effect contributions of comparative evidence, adjusted for the relative importance of outcomes. 

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

 
### M11Report Profile of Composition Resource

The **[M11Report Profile][M11Report]** is a Profile of **[EvidenceReport][EvidenceReport]** and is used for the International Council for Harmonisation of Technical Requirements for Pharmaceuticals for Human Use (ICH) Clinical Electronic Structured Harmonised Protocol (CeSHarP) M11 Technical Specification.

The Composition.type value is set to a "Clinical Trial Protocol" and "CeSHarP Report".

The **[M11Report Profile][M11Report]** contains 15 sections with highly detailed instructions and is shared in the EBMonFHIR Implementation Guide for initial development and coordination with the base structures in the EBMonFHIR Implementation Guide. There will likely be a future 'M11 Report' Implementation Guide developed by a different but coordinated group. 

{% include link-list.md %}
