Profile: M11Section12
Parent: EvidenceReport
Id: m11-section-12
Description: "Profile of Composition for Evidence Based Medicine IG. The M11Section12 Profile is used for summary of Section 12 General Considerations: Risk Management and Data Governance for the International Council for Harmonisation of Technical Requirements for Pharmaceuticals for Human Use (ICH) Clinical Electronic Structured Harmonised Protocol (CeSHarP) M11 Technical Specification."
* category 1..*
* category ^slicing.discriminator.type = #value
* category ^slicing.discriminator.path = "text"
* category ^slicing.rules = #open
* category contains section12 1..1 MS
* category[section12].text = "Section 12 General Considerations: Risk Management and Data Governance"
* section 1..*
* section ^slicing.discriminator.type = #value
* section ^slicing.discriminator.path = "code"
* section ^slicing.rules = #open
* section contains riskManagementAndData 1..1 MS
* section[riskManagementAndData].title = "General Considerations: Risk Management and Data Governance"
* section[riskManagementAndData].code.text = "section12-risk-management-and-data-governance"
* section[riskManagementAndData]
  * section 3..*
  * section ^slicing.discriminator.type = #value
  * section ^slicing.discriminator.path = "code"
  * section ^slicing.rules = #open
  * section contains riskManagement 1..1 MS and dataGovernance 1..1 MS and sourceData 1..1 MS
  * section[riskManagement].title = "Risk Management"
  * section[riskManagement].code.text = "section12.1-risk-management"
  * section[riskManagement]
    * text 1..1
    * text ^comment = "Describe how the critical to quality factors will be mitigated. It is important to determine the risks that threaten their integrity and decide whether they can be accepted or should be mitigated, based on their probability, detectability and impact. Where it is decided that risks should be mitigated, the necessary control processes should be put in place and communicated, and the necessary actions taken to mitigate the risks."
  * section[dataGovernance].title = "Data Governance"
  * section[dataGovernance].code.text = "section12.2-data-governance"
  * section[dataGovernance]
    * text 1..1
    * text ^comment = "Describe the key processes for critical trial integrity, traceability and security enabling accurate collection, reporting, monitoring, transfer, retention, access and publication if not addressed in separate agreement(s). Describe the measures to protect the privacy and confidentiality of personal information of trial participants in accordance with applicable regulatory requirements on personal data protection and any measures that should be taken in case of a data security breach."
  * section[sourceData].title = "Source Data"
  * section[sourceData].code.text = "section12.3-source-data"
  * section[sourceData]
    * text 1..1
    * text ^comment = "Establish the importance of source data and expectation for traceability of transcribed information back to source.  Delineate expectations for investigators (for example, maintain source data at the site, ensure availability of current records) and trial monitors (for example, verify CRF data relative to source, safety of participants is being protected, conduct is in accordance with GCP).  Define what constitutes source data and its origin or provide a reference to the location of these definitions, if contained in a separate document, such as a monitoring guideline or source data acknowledgement). Describe the provision for direct access to source data and documents enabling clinical trial-related monitoring, audits and regulatory inspections, if not included in separate agreement(s)."
