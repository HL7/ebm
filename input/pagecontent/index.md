## EBMonFHIR Implementation Guide

Welcome to the EBMonFHIR Implementation Guide!

The FHIR Resources for Evidence Based Medicine Knowledge Assets ('EBMonFHIR') Implementation Guide defines profiles and value sets for the representation of scientific knowledge. This implementation guide is intended for developers of systems using FHIR for data exchange of scientific knowledge and for authors of more specialized implementation guides in this domain.

This implementation guide covers the broad scope of representation of scientific knowledge, including (1) citations to represent identification, location, classification, and attribution for knowledge artifacts; (2) research results including the statistic findings, definition of variables for which those findings apply, and the certainty of these findings; (3) assessments of research results; (4) aggregation and synthesis of research results; (5) judgments regarding evidence syntheses and contextual factors related to recommendations; (6) recommendations; and (7) compositions of combinations of these types of knowledge. The types of interoperability covered include syntactic (Resource StructureDefinitions) and semantic (value sets).

### To Learn About FHIR

This implementation guide is based on the HL7 [FHIR](https://hl7.org/fhir/R5/index.html) standard. It uses terminology, notations and design principles that are specific to FHIR. Before reading this implementation guide, it's important to be familiar with some of the basic principles of FHIR as well as general guidance on how to read FHIR specifications. Readers who are unfamiliar with FHIR are encouraged to review the following prior to reading the rest of this implementation guide.

[FHIR overview](http://hl7.org/fhir/R5/overview.html)
[Developer's introduction](http://hl7.org/fhir/R5/overview-dev.html)
(or [Clinical introduction](http://hl7.org/fhir/R5/overview-clinical.html))
[FHIR data types](http://hl7.org/fhir/R5/datatypes.html)
[Using codes](http://hl7.org/fhir/R5/terminologies.html)
[References between resources](http://hl7.org/fhir/R5/references.html)
[How to read resource & profile definitions](http://hl7.org/fhir/R5/formats.html)
[Base resource](http://hl7.org/fhir/R5/resource.html)
[FHIR Validation](http://hl7.org/fhir/R5/validation.html)

### Terminologies

To download related CodeSystem and ValueSet Resources:

Copy the JSON content from https://fevir.net/resources/CodeSystem/27270#json, https://fevir.net/resources/CodeSystem/27834#json, https://fevir.net/resources/CodeSystem/179423#json, https://fevir.net/resources/ValueSet/179424#json, and https://fevir.net/resources/ValueSet/179431#json, or use the [FEvIR API](https://fevir.net/apidoc).

### Understanding the Evidence Resource

The Evidence Resource is the central atomic component for the Evidence-related Resources. The Evidence Resource provides a machine-interpretable expression of an evidence concept including the evidence variables (e.g., population, exposures, outcomes, covariates), the statistics, and the certainty of this evidence.

The Evidence Resource enables the expression of the most granular form of scientific evidence, such as the actual quantitative results of a study or statistical analysis.

Human-readable summaries of the Evidence Resource may be expressed in description, assertion, and note elements. 

The description element is typically used for the primary expression, ideally the factual summary of the content in the structured Resource. 

The assertion element is less commonly used and is typically used for an interpretive expression (sometimes called the conclusion or bottom-line). 

For example, a description that includes a relative risk 0.8 and 95% confidence interval 0.7 to 0.9 for an outcome of mortality may be accompanied by an assertion that the intervention is associated with a reduction in mortality (or the assertion that the intervention reduces mortality). The concept that the intervention is associated with a reduction in mortality is an interpretation and not directly found in the content of the structured Resource. 

The note element may be used for any number of explanatory, variant, or related comments.

The variableDefinition BackboneElement is used to describe what the evidence is about. 

Each variable defined must be assigned a variable role which signals how that variable is used in the statistics within the Evidence Resource. In FHIR version R6, the variableDefinition.variableRole uses a code datatype and the options are population, exposure, outcome, or covariate. This limitation to 4 roles supports extensive combinations for different types of evidence. If subtyping of role is needed, in FHIR version R6 there isa variableDefinition.roleSubtype element with a CodeableConcept datatype. This EBMonFHIR IG uses the FHIR version R5 base, so in an EvidenceR6 Profile the variableDefinition.variableRole element is set to a CodeableConcept specifying use of extensions and extensions on variableDefinition are provided for variableRoleCode and roleSubtype. For comparative evidence, an extension on variableDefinition for comparatorCategory is used to express the categorical value serving as the reference value for the comparison.

The variable definition may be expressed in human-readable form (with a description element) and/or expressed in computable form by referencing Group or EvidenceVariable Resources. In general, Group Resources are used to define populations and EvidenceVariable Resources are used to define exposures, outcomes, and covariates. The variableDefinition elements allow expression of the observed variable and the intended variable. In many forms of expression the Evidence is interpreted for a specific context and recognition of both observed and intended variables is important for understanding the applicability and certainty of the evidence. A directnessMatch element may be used to express the similarity between the observed and intended variable.

Because a statistic can rarely be interpreted without knowing how it was obtained, the Evidence Resource enables expression of the study design. The studyDesign element uses a CodeableConcept datatype to describe any study design features. For evidence derived from synthesis of evidence, the Evidence Resource enables expression of the approach to combining the data. The synthesisType element uses a CodeableConcept datatype to describe the method for combining data from two or more studies.

The heart of the evidence is the statistic. The statistic BackboneElement provides a machine-interpretable expression of a statistic, including the quantity; unit of measure; classification of statistic type; sample size; attributes such as confidence intervals, p values, and heterogeneity estimates; and statistic model characteristics. An Evidence Resource may contain more than one statistic, in which case each statistic matches the same combination of variable definitions.

The certainty BackboneElement provides a machine-interpretable expression of certainty, confidence or quality of the evidence. The certainty BackboneElement can express overall certainty and certainty of any subcomponent concepts using codeable concepts from structured rating systems.

### Profiles of Evidence Resource

The EvidenceR6 Profile is a base for all other Evidence Profiles. The EvidenceR6 Profile adds 3 extensions to variableDefinition (variableRoleCode 1..1, roleSubtype 0..1, and comparatorCategory 0..1), 1 extension to statistic (modelExpression 0..1), 6 extensions to statistic.modelCharacteristic, and 1 extension to statistic.modelCharacteristic.variable

The SingleStudyEvidence Profile simply provide a "not applicable" value for the synthesisType element.

The EvidenceSynthesisEvidence Profile is used for evidence that is combined from two or more studies, and requires use of the synthesisType element to express the method by which evidence was synthesized.

The NonComparativeEvidence Profile requires at least 1 variableDefinition with the role of 'population' and at lease 1 variableDefinition with the role of 'outcome'. Because the variableRoleCode element is an extension in the EBMonFHIR IG and discriminating instances by extension is problematic, the Profile use the note element to identify the variableDefinition in the assigned role. If note are desired at the level of the variableDefinition, the desired content of the note should be added to the description element.

The ComparativeEvidence Profile requires the same structures as noted above for the NonComparativeEvidence Profile and also requires a single variableDefinition with the role of 'exposure'. For this variableDefinition with the role of 'exposure' the observed element may only reference Resources following the GroupAssignment Profile (which specifies the categories for the EvidenceVariable handling) and the comparatorCategory element (extension) must be used to specify the category used as reference point for the comparison.

The ComparatorOnlyEvidence is a Profile of NonComparativeEvidence with guidance on use of the variableDefinition structure: "To report comparator-only evidence for a research question defined by Population, Intervention, Comparator, and Outcome (PICO), one would use two variableDefinition instances. A group defined by a combination of Population and Comparator has the variableRole of population, the Intervention is not included in the ComparatorOnlyEvidence, and the Outcome has variableRole of outcome."

The InterventionOnlyEvidence is a Profile of NonComparativeEvidence with guidance on use of the variableDefinition structure: "To report intervention-only evidence for a research question defined by Population, Intervention, Comparator, and Outcome (PICO), one would use two variableDefinition instances. A group defined by a combination of Population and Intervention has the variableRole of population, the Comparator is not included in the InterventionOnlyEvidence, and the Outcome has variableRole of outcome."

The BaselineMeasureEvidence Profile is a Profile of NonComparativeEvidence which has the baseline measure in the variableDefinition with the role of 'outcome'.

The ComparativeBaselineMeasureEvidence Profile is a Profile of ComparativeEvidence which has the baseline measure in the variableDefinition with the role of 'outcome'.

The ParticipantFlow Profile is a Profile of NonComparativeEvidence which has the participant flow measure in the variableDefinition with the role of 'outcome'. The intended and directnessMatch elements in variableDefinition are not used. The statistic.numberAffected element is not used because the number counted is the statistic.quantity and the statistic.modelCharacteristic element is not used because simple counting does not require any statistical modeling.

The ComparativeParticipantFlow Profile is a Profile of ComparativeEvidence which has the participant flow measure in the variableDefinition with the role of 'outcome'. The intended and directnessMatch elements in variableDefinition are not used.

The EndpointAnalysisPlan Profile is used for specification of the planned statistical model for analysis of a single endpoint. The statistic.modelCharacteristic.intended element in FHIR version R6 and the statistic.modelCharacteristic.extension:intended element in FHIR version R5 is set to true.

The NetEffectEstimate Profile is used for the result of a net effect analysis. The variableDefinition with the role of 'exposure' is required. The exposure may be described in variableDefinition.description and/or referenced from variableDefinition.observed to a GroupAssignment Profile. Either way, the comparatorCategory needs to be expressed. The variableDefinition with the role of 'outcome' is not used because the statistical combination is functionally working with a 'population' of Evidence Resources (NetEffectContribution Profile) and not an outcome variable that is being processed across observations. The variableDefinition with the role of 'population' will reference a NetEffectContributions Profile of Group Resource. The statistic reported for the net effect estimate is set to use a statistic type of 'Risk Difference', an attribute estimate type of 'Confidence interval', and a model characteristic of 'Net effect analysis'.

The NetEffectContribution Profile is a Profile of ComparativeEvidence which is specialized for an effect estimate (risk difference) multiplied by a relative importance rating of the outcome. The value of the relative importance rating of the outcome is expressed in an OutcomeImportance Profile of ArtifactAssessment. Because the FHIR model does not support direct referencing of an ArtifactAssessment from the variableDefinition, the NetEffectContribution Profile uses a variableDefinition with the role of 'covariate' explicitly labeled as a 'Relative Importance Multiplier' and the OutcomeImportance Resource is referenced from a relatedArtifact element with a type of #amended-with as the multiplier is amending the effect estimate (risk difference). The statistic reported for the net effect contribution is set to use a statistic type of 'Risk Difference', an attribute estimate type of 'Confidence interval', and a model characteristic of 'Net effect contribution analysis'.

### Understanding the EvidenceVariable Resource

Replace with content.

### Understanding the Group Resource

Replace with content.

### Understanding the Citation Resource

Replace with content.
In many examples derived from the structured data in PubMed MEDLINE, the 'code system' referred to is an external URL that is not structured like a FHIR CodeSystem.  These examples include 'https://meshb.nlm.nih.gov/', 'https://www.nlm.nih.gov/bsd/licensee/elements_descriptions.html#citationsubset', 'https://www.nlm.nih.gov/bsd/licensee/elements_descriptions.html#owner_value', 'https://www.nlm.nih.gov/bsd/licensee/elements_descriptions.html#issn', 'https://www.cas.org/support/documentation/chemical-substances', and 'https://ncithesaurus.nci.nih.gov/ncitbrowser'. 

### Understanding the ArtifactAssessment Resource

Replace with content.

### Understanding the Composition Resource

Replace with content.

### Dependencies

{% include dependency-table-short.xhtml %}

### Cross Version Analysis

{% include cross-version-analysis.xhtml %}

### Global Profiles

{% include globals-table.xhtml %}

### IP Statements

{% include ip-statements.xhtml %}