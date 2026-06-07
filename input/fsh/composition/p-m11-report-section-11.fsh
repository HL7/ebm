Profile: M11ReportSection11
Parent: EvidenceReport
Id: m11-report-section-11
Description: "Profile of Composition for Evidence Based Medicine IG. The M11ReportSection11 Profile is used for section 11 (Oversight) for the International Council for Harmonisation of Technical Requirements for Pharmaceuticals for Human Use (ICH) Clinical Electronic Structured Harmonised Protocol (CeSHarP) M11 Technical Specification."
* ^extension[$ext-fmm].valueInteger = 1
* ^extension[$ext-wg].valueCode = #cds
* ^extension[$ext-standards-status].valueCode = #trial-use
* ^copyright = "This Profile is developed to support the M11 Template. The ICH is the copyright holder for the M11 template and has not endorsed or sponsored this Profile."
* type.coding 1..1
* type.coding = http://loinc.org#35528-9 "Clinical trial protocol Clinical trial protocol"
* type.text = "CeSHarP Report"
* category ^slicing.discriminator.type = #value
* category ^slicing.discriminator.path = "text"
* category ^slicing.rules = #open
* category contains oversight 0..1
* category[oversight].coding 1..1
* category[oversight].coding = http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C218649 "ICH M11 Protocol Section 11 TRIAL OVERSIGHT AND OTHER GENERAL CONSIDERATIONS"
* category[oversight].text = "section11-oversight"
* section 1..1
* section ^slicing.discriminator.type = #value
* section ^slicing.discriminator.path = "code.text"
* section ^slicing.rules = #open
* section contains oversight 1..1 MS
* section[oversight].title = "11 TRIAL OVERSIGHT AND OTHER GENERAL CONSIDERATIONS"
* section[oversight].code.coding 1..1
* section[oversight].code.coding = http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C218649 "ICH M11 Protocol Section 11 TRIAL OVERSIGHT AND OTHER GENERAL CONSIDERATIONS"
* section[oversight].code.text = "section11-oversight"
* section[oversight]
  * section 10..*
  * section ^slicing.discriminator.type = #value
  * section ^slicing.discriminator.path = "code.text"
  * section ^slicing.rules = #open
  * section contains regulatory 1..1 MS and trialOversight 1..1 MS and committees 1..1 MS and informedConsent 1..1 MS and insurance 1..1 MS and riskManagement 1..1 MS and dataGovernance 1..1 MS and dataProtection 1..1 MS and sourceData 1..1 MS and protcolDeviations 1..1 MS and earlySiteClosure 1..1 MS and dataDissemination 1..1 MS
  * section[regulatory].title = "11.1 Regulatory and Ethical Considerations"
  * section[regulatory].code.coding 1..1
  * section[regulatory].code.coding = http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C218650 "ICH M11 Protocol Section 11.1 Regulatory and Ethical Considerations"
  * section[regulatory].code.text = "section11.1-regulatory-considerations"
  * section[regulatory]
    * text 1..1
    * text ^comment = "Provide a high-level statement on the prevailing ethical, legal, and regulatory guidelines that will be applied throughout the trial. For example, This trial will be conducted in accordance with the protocol and with the following: • Ethical principles that have their origin in the Declaration of Helsinki for medical research involving human subjects • Consensus ethical principles derived from international guidelines including the Declaration of Helsinki and the Council for International Organisations of Medical Sciences (CIOMS) International Ethical Guidelines • ICH Good Clinical Practice (GCP) Guidelines • Applicable laws and regulations"
  * section[trialOversight].title = "11.2 Trial Oversight"
  * section[trialOversight].code.coding 1..1
  * section[trialOversight].code.coding = http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C218651 "ICH M11 Protocol Section 11.2 Trial Oversight"
  * section[trialOversight].code.text = "section11.2-trial-oversight"
  * section[trialOversight]
    * text 0..1
    * text ^comment = "Concisely summarize the trial oversight listing the investigator and sponsor responsibilities not covered in other sections of the protocol which are essential for the operations of the trial, specifying the ones related to quality assurance."
    * section 2..*
    * section ^slicing.discriminator.type = #value
    * section ^slicing.discriminator.path = "code.text"
    * section ^slicing.rules = #open
    * section contains investigatorResponsibilities 1..1 MS and sponsorResponsibilities 1..1 MS
    * section[investigatorResponsibilities].title = "11.2.1 Investigator Responsibilities"
    * section[investigatorResponsibilities].code.coding 1..1
    * section[investigatorResponsibilities].code.coding = http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C218652 "ICH M11 Protocol Section 11.2.1 Investigator Responsibilities"
    * section[investigatorResponsibilities].code.text = "section11.2.1-investigator-responsibilities"
    * section[investigatorResponsibilities]
      * text 1..1
      * text ^comment = "Describe the investigator duties, including the oversight of duties delegated to a third party that may impact the trial conduct at sites, if applicable and if not addressed elsewhere."
    * section[sponsorResponsibilities].title = "11.2.2 Sponsor Responsibilities"
    * section[sponsorResponsibilities].code.coding 1..1
    * section[sponsorResponsibilities].code.coding = http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C218653 "ICH M11 Protocol Section 11.2.2 Sponsor Responsibilities"
    * section[sponsorResponsibilities].code.text = "section11.2.2-sponsor-responsibilities"
    * section[sponsorResponsibilities]
      * text 1..1
      * text ^comment = "Describe the sponsor duties, including those to be transferred to a third party that may impact the investigators sites, if applicable."
  * section[informedConsent].title = "11.3 Informed Consent Process"
  * section[informedConsent].code.coding 1..1
  * section[informedConsent].code.coding = http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C218654 "ICH M11 Protocol Section 11.3 Informed Consent Process"
  * section[informedConsent].code.text = "section11.3-informed-consent-process"
  * section[informedConsent]
    * text 1..1
    * text ^comment = "Specify the key elements of the informed consent process, including any special needs and how these are addressed (for example, assent, capacity, legally acceptable representative, adolescents who may reach age of majority during the trial, pregnant participants and pregnant partners of participants)"
    * section 0..*
    * section ^slicing.discriminator.type = #value
    * section ^slicing.discriminator.path = "code.text"
    * section ^slicing.rules = #open
    * section contains assentProcess 0..1 MS and emergency 0..1 MS and rescreening 0..1 MS and remainingSamples 0..1 MS
    * section[assentProcess].title = "Assent Process"
    * section[assentProcess].code.text = "section11.3.0-assent-process"
    * section[assentProcess]
      * text 1..1
      * text ^comment = "Enter Description of Assent Process."
    * section[emergency].title = "Emergency Consent Process"
    * section[emergency].code.text = "section11.3.0-emergency-consent-process"
    * section[emergency]
      * text 1..1
      * text ^comment = "If enrollment in the trial may occur during an emergency in which the participant or their legally acceptable representative is not able or available to give consent, describe the consent process."
    * section[rescreening].title = "11.3.1 Informed Consent for Rescreening"
    * section[rescreening].code.coding 1..1
    * section[rescreening].code.coding = http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C218655 "ICH M11 Protocol Section 11.3.1 Informed Consent for Rescreening"
    * section[rescreening].code.text = "section11.3.1-rescreening-consent-process"
    * section[rescreening]
      * text 1..1
      * text ^comment = "If participants can be rescreened as described in Section 5.6, state whether the participant needs to complete a new consent. Screen failure and rescreening should be clearly defined in the protocol, with cross reference to those definitions."
    * section[remainingSamples].title = "11.3.2 Informed Consent for Use of Remaining Samples in Exploratory Research"
    * section[remainingSamples].code.coding 1..1
    * section[remainingSamples].code.coding = http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C218656 "ICH M11 Protocol Section 11.3.2 Informed Consent for Use of Remaining Samples in Exploratory Research"
    * section[remainingSamples].code.text = "section11.3.2-remaining-samples"
    * section[remainingSamples]
      * text 1..1
      * text ^comment = "If participants will be asked to consent to optional exploratory research using the remainder of mandatory samples, describe the use of remaining samples for optional exploratory research. If any exploratory research is planned and additional written consent regarding the use of remaining samples for exploratory research will be obtained, describe the consent process." 
  * section[committees].title = "11.4 Committees"
  * section[committees].code.coding 1..1
  * section[committees].code.coding = http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C218657 "ICH M11 Protocol Section 11.4 Committees"
  * section[committees].code.text = "section11.4-committees"
  * section[committees]
    * text 1..1
    * text ^comment = "Briefly describe the administrative structure of committees that will be reviewing data while the trial is ongoing, and the type of committee (e.g., Dose Escalation Committee, Data Monitoring Committee or Data Safety Monitoring Board). Note that specific details may be required depending on local law or regulation. If applicable, Committee Charters may be cross referenced. If no committees are involved, state “Not applicable.”"
  * section[insurance].title = "11.5 Insurance and Indemnity"
  * section[insurance].code.coding 1..1
  * section[insurance].code.coding = http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C218658 "ICH M11 Protocol Section 11.5 Insurance and Indemnity"
  * section[insurance].code.text = "section11.5-insurance-and-indemnity"
  * section[insurance]
    * text 1..1
    * text ^comment = "Concisely summarize the arrangements for participants insurance and indemnity if not addressed in a separate agreement, if required by the applicable regulatory requirements."
  * section[riskManagement].title = "11.6 Risk-Based Quality Management"
  * section[riskManagement].code.coding 1..1
  * section[riskManagement].code.coding = http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C218659 "ICH M11 Protocol Section 11.6 Risk-Based Quality Management"
  * section[riskManagement].code.text = "section11.6-risk-management"
  * section[riskManagement]
    * text 1..1
    * text ^comment = "Describe the identified critical to quality factors, associated risks and risk mitigation strategies in the trial or refer to a separate document where this is described."
  * section[dataGovernance].title = "11.7 Data Governance"
  * section[dataGovernance].code.coding 1..1
  * section[dataGovernance].code.coding = http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C218660 "ICH M11 Protocol Section 11.7 Data Governance"
  * section[dataGovernance].code.text = "section11.7-data-governance"
  * section[dataGovernance]
    * text 1..1
    * text ^comment = "Describe the key systems and processes for critical trial integrity, traceability and security including a summary of the monitoring approaches enabling accurate collection, reporting, monitoring, transfer, retention, and access if not addressed in separate agreement(s)."
  * section[dataProtection].title = "11.8 Data Protection"
  * section[dataProtection].code.coding 1..1
  * section[dataProtection].code.coding = http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C218661 "ICH M11 Protocol Section 11.8 Data Protection"
  * section[dataProtection].code.text = "section11.8-data-protection"
  * section[dataProtection]
    * text 1..1
    * text ^comment = "Describe the measures to protect the privacy and confidentiality of personal information of trial participants in accordance with applicable regulatory requirements on personal data protection and any measures that should be taken in case of a data security breach."
  * section[sourceData].title = "11.9 Source Records"
  * section[sourceData].code.coding 1..1
  * section[sourceData].code.coding = http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C218662 "ICH M11 Protocol Section 11.9 Source Records"
  * section[sourceData].code.text = "section11.9-source-data"
  * section[sourceData]
    * text 1..1
    * text ^comment = "State the importance of source records and expectation for traceability. Delineate expectations for investigators (e.g., maintain source data at the site, ensure availability of current records) and trial monitors (e.g., ensure participant protections, ensure that the trial is conducted according to GCP). Identify what constitutes source data and its origin or provide a reference to the location of this information, if contained in a separate document. Describe the provision for direct access to source data and documents enabling clinical trial-related monitoring, audits and regulatory inspections, if not included in separate agreement(s)."
  * section[protcolDeviations].title = "11.10 Protocol Deviations"
  * section[protcolDeviations].code.coding 1..1
  * section[protcolDeviations].code.coding = http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C218663 "ICH M11 Protocol Section 11.10 Protocol Deviations"
  * section[protcolDeviations].code.text = "section11.10-protocol-deviations"
  * section[protcolDeviations]
    * text 1..1
    * text ^comment = "Describe plans for detecting, reviewing, and reporting any deviations from the protocol or include reference to a separate document."
  * section[earlySiteClosure].title = "11.11 Early Site Closure"
  * section[earlySiteClosure].code.coding 1..1
  * section[earlySiteClosure].code.coding = http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C218664 "ICH M11 Protocol Section 11.11 Early Site Closure"
  * section[earlySiteClosure].code.text = "section11.11-early-site-closure"
  * section[earlySiteClosure]
    * section 3..*
    * section ^slicing.discriminator.type = #value
    * section ^slicing.discriminator.path = "code.text"
    * section ^slicing.rules = #open
    * section contains decisionRights 1..1 MS and criteria 1..1 MS and responsibilities 1..1 MS
    * section[decisionRights].title = "Decision Rights for Site Closure"
    * section[decisionRights].code.text = "section11.11-early-site-closure#decisionRights"
    * section[decisionRights]
      * text 1..1
      * text ^comment = "List the sponsor's rights to close a site.  Likewise, list the investigator's rights to initiate early site closure."
    * section[criteria].title = "Crteria for Early Closure"
    * section[criteria].code.text = "section11.11-early-site-closure#criteria"
    * section[criteria]
      * text 1..1
      * text ^comment = "List the criteria for early closure of a site by the sponsor or investigator."
    * section[responsibilities].title = "Responsibilities Following Early Site Closure"
    * section[responsibilities].code.text = "section11.11-early-site-closure#responsibilities"
    * section[responsibilities]
      * text 1..1
      * text ^comment = "List the responsibilities of the sponsor and investigator following early site closure, such as informing the ethics committee(s), and prompt notification of the participant and transition to appropriate therapy and/or follow-up."
  * section[dataDissemination].title = "11.12 Data Dissemination"
  * section[dataDissemination].code.coding 1..1
  * section[dataDissemination].code.coding = http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C218665 "ICH M11 Protocol Section 11.12 Data Dissemination"
  * section[dataDissemination].code.text = "section11.12-data-dissemination"
  * section[dataDissemination]
    * text 1..1
    * text ^comment = "Describe whether the clinical trial will be registered in public databases, including reporting of results, if applicable."
