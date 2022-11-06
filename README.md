# ebm
**Evidence Based Medicine FHIR implementation guide repository**

Implementation guidance for base usage of FHIR Resources (and base Profiles) for representation of scientific knowledge, including Citation, Evidence, EvidenceVariable, and ArtifactAssessment Resources (developed by the EBMonFHIR project) as well as ResearchStudy, Composition, and other FHIR Resources.
This implementation guide defines profiles and value sets for the representation of scientific knowledge. This implementation guide is intended for developers of systems using FHIR for data exchange of scientific knowledge and for authors of more specialized implementation guides in this domain.

**Description:**
This implementation guide covers the broad scope of representation of scientific knowledge, including 
1. citations to represent identification, location, classification, and attribution for knowledge artifacts; 
2. research results including the statistic findings, definition of variables for which those findings apply, and the certainty of these findings; 
3. assessments of research results; 
4. aggregation and synthesis of research results; 
5. justification of recommendations; and 
6. compositions of combinations of these types of knowledge. The types of interoperability covered include syntactic (Resource StructureDefinitions) and semantic (value sets).

**Scope:**
This implementation guide will provide concrete guidance for different uses of the EBM Resources. An estimated 25 Profiles will be developed for 9 Resources. For example, the ArtifactAssessment Resource is generic in supporting any classifications, ratings or comments about any other Resource. Expected Profiles of ArtifactAssessment in the EBM IG include:
-	**CertaintyOfEvidence** (to provide detailed expression of certainty for findings from evidence synthesis and explicit justification and rationale for these certainty judgments)
-	**RiskOfBias** (to provide detailed expression of the likelihood of distortions in the findings of evidence from single studies or reports and explicit justification and rationale for these judgments which could include hundreds of reasons for bias)
-	**RecommendationJustification** (to provide detailed expression of the strength of recommendation, rationale, supporting evidence, and judgments along the evidence-to-decision pathway for a single recommendation)
-	**OutcomeImportanceRating** (to provide an assessment of an outcome, defined with an OutcomeDefinition Profile of EvidenceVariable, with respect to its relative importance as determined by an individual or group)
The core resource (ArtifactAssessment) may have a value set with Example binding strength but it would be unwieldy to create one value set in the core resource for all these different profiles.


