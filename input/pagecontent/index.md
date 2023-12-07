## EBMonFHIR Implementation Guide

Welcome to the EBMonFHIR Implementation Guide!

The FHIR Resources for Evidence Based Medicine Knowledge Assets ('EBMonFHIR') Implementation Guide defines profiles and value sets for the representation of scientific knowledge. This implementation guide is intended for developers of systems using FHIR for data exchange of scientific knowledge and for authors of more specialized implementation guides in this domain.

This implementation guide covers the broad scope of representation of scientific knowledge, including (1) citations to represent identification, location, classification, and attribution for knowledge artifacts; (2) components of research study design including study eligibility criteria and endpoint analysis plans; (3) research results including the statistic findings, definition of variables for which those findings apply, and the certainty of these findings; (4) assessments of research results; (5) aggregation and synthesis of research results; (6) judgments regarding evidence syntheses and contextual factors related to recommendations; (7) recommendations; and (8) compositions of combinations of these types of knowledge. The types of interoperability covered include syntactic (Resource StructureDefinitions) and semantic (value sets).

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

### Dependencies

{% include dependency-table-short.xhtml %}

### Cross Version Analysis

{% include cross-version-analysis.xhtml %}

### Global Profiles

{% include globals-table.xhtml %}

### IP Statements

{% include ip-statements.xhtml %}