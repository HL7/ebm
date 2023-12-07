### Understanding the Citation Resource

The <b>Citation Resource</b> enables reference to any knowledge artifact for purposes of identification and attribution. The <b>Citation Resource</b> supports existing reference structures and developing publication practices such as versioning, expressing complex contributorship roles, and referencing computable resources.

The scope of the <b>Citation Resource</b> is to describe any aspect of identification, location, authorship, and contributorship to a journal article, report, document, resource, or other knowledge artifact. Citations are used extensively in scholarly communication and important for documenting the evidence or source behind statements of fact, opinion, and interpretation. Citations are also used for acknowledgement of the contributions of individuals and groups to the creation and advancement of knowledge.

Across the academic and scientific community citations are used extensively to reference the knowledge artifacts contributing to current work. For any community searching for reports of research or scholarly publications (such as searching MEDLINE) the citations contain the metadata used for such searches. Standardization of citations supports interoperability across citation managers and adaptation to current needs, such as reports being available on preprint servers before 'final' peer-reviewed published form, need to cite datasets or other alternative forms of expression, or the ability to support citation of FHIR Resources where the FHIR Resource represents research or scholarly publication.

Although citations as a concept are certainly not unique to healthcare, their use within healthcare contexts is ubiquitous, especially as part of the need to cite literature references and scientific knowledge as part of supporting evidence. This need is already manifest in references to the <b>Citation Resource</b> from other FHIR resources including <b>ResearchStudy</b>, <b>SubstanceDefinition</b>, and <b>DiagnosticReport</b>. In addition, citations of evidence are a critical aspect of evidence-based medicine and structures to represent citation information are a necessary modeling component in the EBM-on-FHIR project. Without a resource dedicated to this concept, evidence-based medicine concepts and approaches would need to rely on extensions and/or non-FHIR-based solutions to exchange citation information, resulting in more complex and difficult to implement and maintain resource types to support evidence-based medicine.

The <b>Citation Resource</b> can accommodate both human and machine readers. The summary element provides human-readable information.

The <b>Citation Resource</b> has multiple elements containing metadata that describe the citation resource itself, and a citedArtifact element containing metadata that describe the article or artifact being cited.

Attribution of scholarly contributions is expressed in the citedArtifact.contributorship element, which has grown more complex as the nature of authorship and the concerns for credit and acknowledgement are increasingly complex. If an individualized attribution structure is not required, the citedArtifact.contributorship.summary element will do.

"Publication" must now cover books, books series, article series, database registries, database updates, and the like. The citedArtifact.publicationForm element enables this description. Within citedArtifact.publicationForm, the publishedIn element identifies the largest container (journal, book, database, or newspaper) and the remaining elements (covering volume, issue, dates, language, and pagination) are specific to the artifact being cited.

Any resource may have common metadata including publisher, authors, reviewers, editors, endorsers, identifiers and location concepts for the resource. The <b>Citation Resource</b> is expected to be used primarily for citing things that are not FHIR Resources. There is NOT an expectation to provide Citations for most FHIR Resources. However, FHIR Resources can be the subject of <b>Citation Resources</b> when there are additional needs beyond common metadata to use the FHIR Resource as the cited source in other contexts or to support scholarly and scientific contribution attribution to the FHIR Resource content.

The <b>Provenance Resource</b> is used to track the contributions to a resource as it occurs, especially for purposes of confirming authenticity and trust. Citation.citedArtifact.contributorship is used to report the attribution of contributions to the cited artifact, especially for purposes of recognition and acknowledgement, but is not directly reporting the data to support authenticity of the contributions.

The <b>DocumentReference Resource</b> is described as a reference to a document of any kind for any purpose. As the <b>DocumentReference Resource</b> was developed for healthcare data exchange it is modeled to support individualized provenance, security, and artifact relationships as often needed in this context. The <b>Citation Resource</b> was developed for the reference to knowledge artifacts commonly used in scientific and scholarly communication so is modeled to support identification, attribution, classification, status tracking, and representation (summary) of the citation.

Approaches to a citation standard external to FHIR are not well suited for integration with FHIR-based approaches to Evidence and related resources. The MEDLINE citation format is widely used but not extensible for many types of knowledge artifacts that may be cited and not open to community development through open standards development methods. The RIS citation format is widely used but is not a singularly maintained standard and multiple implementations using RIS in different ways leads to confusion and inefficiency.

In many examples derived from the structured data in PubMed MEDLINE, the 'code system' referred to is an external URL that is not structured like a FHIR <b>CodeSystem Resource</b>.  These examples include 'https://meshb.nlm.nih.gov/', 'https://www.nlm.nih.gov/bsd/licensee/elements_descriptions.html#citationsubset', 'https://www.nlm.nih.gov/bsd/licensee/elements_descriptions.html#owner_value', 'https://www.nlm.nih.gov/bsd/licensee/elements_descriptions.html#issn', 'https://www.cas.org/support/documentation/chemical-substances', and 'https://ncithesaurus.nci.nih.gov/ncitbrowser'. 

### Profiles of Citation Resource

The <b>JournalArticleCitation Profile</b> includes a citedArtifact.classification with a type value of "Knowledge Artifact Type" and a classifier value of "Journal Article"

The <b>BookCitation Profile</b> includes a citedArtifact.classification with a type value of "Knowledge Artifact Type" and a classifier value of "Book".

The <b>BookPartCitation</b> includes a citedArtifact.publicationForm.publishedIn.type value of "Book" and a citedArtifact.classification with a type value of "Knowledge Artifact Type" and a classifier value of "Book Part".

The <b>DatabaseCitation Profile</b> includes a citedArtifact.classification with a type value of "Knowledge Artifact Type" and a classifier value of "Database".
  
The <b>DatabaseEntryCitation</b> includes a citedArtifact.publicationForm.publishedIn.type value of "Database" and a citedArtifact.classification with a type value of "Knowledge Artifact Type" and a classifier value of "Database Entry".

The <b>DatasetCitation Profile</b> includes a citedArtifact.classification with a type value of "Knowledge Artifact Type" and a classifier value of "Dataset".

The <b>PreprintCitation Profile</b> includes a citedArtifact.classification with a type value of "Knowledge Artifact Type" and a classifier value of "Preprint".

The <b>SoftwareCitation Profile</b> includes a citedArtifact.classification with a type value of "Knowledge Artifact Type" and a classifier value of "Executable app".

The <b>WebPageCitation Profile</b> includes a citedArtifact.classification with a type value of "Knowledge Artifact Type" and a classifier value of "Webpage".

