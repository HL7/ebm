Profile: M11ReportSection09
Parent: EvidenceReport
Id: m11-report-section-09
Description: "Profile of Composition for Evidence Based Medicine IG. The M11ReportSection09 Profile is used for section 9 (Adverse Events) for the International Council for Harmonisation of Technical Requirements for Pharmaceuticals for Human Use (ICH) Clinical Electronic Structured Harmonised Protocol (CeSHarP) M11 Technical Specification."
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
* category contains adverseEvents 0..1
* category[adverseEvents].coding 1..1
* category[adverseEvents].coding = http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C218608 "ICH M11 Protocol Section 9 ADVERSE EVENTS, SERIOUS ADVERSE EVENTS, PRODUCT COMPLAINTS, PREGNANCY AND POSTPARTUM INFORMATION, AND SPECIAL SAFETY SITUATIONS"
* category[adverseEvents].text = "section9-adverse-events"
* section 1..1
* section ^slicing.discriminator.type = #value
* section ^slicing.discriminator.path = "code.text"
* section ^slicing.rules = #open
* section contains adverseEvents 1..1 MS
* section[adverseEvents].title = "9 ADVERSE EVENTS, SERIOUS ADVERSE EVENTS, PRODUCT COMPLAINTS, PREGNANCY AND POSTPARTUM INFORMATION, AND SPECIAL SAFETY SITUATIONS"
* section[adverseEvents].code.coding 1..1
* section[adverseEvents].code.coding = http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C218608 "ICH M11 Protocol Section 9 ADVERSE EVENTS, SERIOUS ADVERSE EVENTS, PRODUCT COMPLAINTS, PREGNANCY AND POSTPARTUM INFORMATION, AND SPECIAL SAFETY SITUATIONS"
* section[adverseEvents].code.text = "section9-adverse-events"
* section[adverseEvents]
  * text ^comment = "No text is intended here (heading only)."
  * section ^slicing.discriminator.type = #value
  * section ^slicing.discriminator.path = "code.text"
  * section ^slicing.rules = #open
  * section contains definitions 1..1 MS and collectionMethods 1..1 MS and pregnancy 1..1 MS and special 1..1 MS
  * section[definitions].title = "9.1 Definitions"
  * section[definitions].code.coding 1..1
  * section[definitions].code.coding = http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C218609 "ICH M11 Protocol Section 9.1 Definitions"
  * section[definitions].code.text = "section9.1-definitions"
  * section[definitions]
    * text ^comment = "No text is intended here (heading only)."
    * section 2..*
    * section ^slicing.discriminator.type = #value
    * section ^slicing.discriminator.path = "code.text"
    * section ^slicing.rules = #open
    * section contains adverseEventsDefinitions 1..1 MS and seriousAdverseEventsDefinitions 1..1 MS and productComplaintsDefinitions 0..1 MS
    * section[adverseEventsDefinitions].title = "9.1.1 Definitions of Adverse Events"
    * section[adverseEventsDefinitions].code.coding 1..1
    * section[adverseEventsDefinitions].code.coding = http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C218610 "ICH M11 Protocol Section 9.1.1 Definitions of Adverse Events"
    * section[adverseEventsDefinitions].code.text = "section9.1.1-definitions-adverse-events"
    * section[adverseEventsDefinitions]
      * text 1..1
      * text ^comment = "Specify the AE definitions, including: • any relevant regional AE requirements • any events that meet and do not meet the AE definition • any trial-specific AE clarifications • if applicable, any clarifications on the AE and SAE definitions for efficacy trials (e.g., lack of efficacy or failure of pharmacological actions reporting)"
    * section[seriousAdverseEventsDefinitions].title = "9.1.2 Definitions of Serious Adverse Events"
    * section[seriousAdverseEventsDefinitions].code.coding 1..1
    * section[seriousAdverseEventsDefinitions].code.coding = http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C218611 "ICH M11 Protocol Section 9.1.2 Definitions of Serious Adverse Events"
    * section[seriousAdverseEventsDefinitions].code.text = "section9.1.2-definitions-serious-adverse-events"
    * section[seriousAdverseEventsDefinitions]
      * text 1..1
      * text ^comment = "Specify the SAE definitions, including: • Any relevant regional SAE requirements. • Any events that meet and do not meet the SAE definition. • Any trial-specific SAE clarifications."
    * section[productComplaintsDefinitions].title = "9.1.3 Definitions of Product Complaints"
    * section[productComplaintsDefinitions].code.coding 1..1
    * section[productComplaintsDefinitions].code.coding = http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C218612 "ICH M11 Protocol Section 9.1.3 Definitions of Product Complaints"
    * section[productComplaintsDefinitions].code.text = "section9.1.3-definitions-product-complaints"
    * section[productComplaintsDefinitions]
      * text 1..1
      * text ^comment = "Specify the definitions of product complaints in the context of the trial. If appropriate, include section 9.1.3.1 Definition of Medical Device Product Complaints."
      * section ^slicing.discriminator.type = #value
      * section ^slicing.discriminator.path = "code.text"
      * section ^slicing.rules = #open
      * section contains deviceComplaints 0..1 MS
      * section[deviceComplaints].title = "9.1.3.1 Definitions of Medical Device Product Complaints"
      * section[deviceComplaints].code.coding 1..1
      * section[deviceComplaints].code.coding = http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C218613 "ICH M11 Protocol Section 9.1.3.1 Definitions of Medical Device Product Complaints"
      * section[deviceComplaints].code.text = "section9.1.3.1-definitions-device-complaints"
      * section[deviceComplaints]
        * text 1..1
        * text ^comment = "Enter Definitions of Medical Device Product Complaints"
  * section[collectionMethods].title = "9.2 Timing and Procedures for Collection and Reporting"
  * section[collectionMethods].code.coding 1..1
  * section[collectionMethods].code.coding = http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C218614 "ICH M11 Protocol Section 9.2 Timing and Procedures for Collection and Reporting"
  * section[collectionMethods].code.text = "section9.2-collection-methods"
  * section[collectionMethods]
    * text 1..1
    * text ^comment = "Specify timing and procedures for collection and reporting of AEs, SAEs, product complaints (including medical device product complaints if applicable) and pregnancy and postpartum information in the sections below. This information may be summarized in a tabular format with 7 columns: Event Type, Situational Scope, Reportable Period Start, Reportable Period End, Timing for Reporting to Sponsor or Designee, Method for Reporting, Back-up Method for Reporting."
    * section ^slicing.discriminator.type = #value
    * section ^slicing.discriminator.path = "code.text"
    * section ^slicing.rules = #open
    * section contains timing 1..1 and procedures 1..1 and reporting 1..1 and specialInterest 1..1 and diseaseRelatedEvents 1..1
    * section[timing].title = "9.2.1 Timing"
    * section[timing].code.coding 1..1
    * section[timing].code.coding = http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C218615 "ICH M11 Protocol Section 9.2.1 Timing"
    * section[timing].code.text = "section9.2.1-timing"
    * section[timing]
      * text 1..1
      * text ^comment = "Specify timing for collection and reporting, including: • start and end dates for collection and reporting • frequency of collection and reporting • cross reference to the Schedule of Assessments as appropriate"
    * section[procedures].title = "9.2.2 Collection Procedures"
    * section[procedures].code.coding 1..1
    * section[procedures].code.coding = http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C218616 "ICH M11 Protocol Section 9.2.2 Collection Procedures"
    * section[procedures].code.text = "section9.2.2-collection-procedures"
    * section[procedures]
      * text 1..1
      * text ^comment = "Specify procedures for collection and recording of AEs, SAEs, product complaints (including medical device product complaints if applicable) and pregnancy and postpartum information in the sections below."
      * section ^slicing.discriminator.type = #value
      * section ^slicing.discriminator.path = "code.text"
      * section ^slicing.rules = #open
      * section contains identifying 1..1 and intensity 1..1 and causality 1..1 and recording 1..1 and followup 1..1
      * section[identifying].title = "Identification"
      * section[identifying].code.text = "section9.2.2.1-identification"
      * section[identifying]
        * text 1..1
        * text ^comment = "Specify how information will be identified (e.g., spontaneous reporting, solicited questions)."
      * section[intensity].title = "Severity"
      * section[intensity].code.text = "section9.2.2.2-severity"
      * section[intensity]
        * text 1..1
        * text ^comment = "Specify the intensity rating categories/scale."     
      * section[causality].title = "Causality"
      * section[causality].code.text = "section9.2.2.3-causality"
      * section[causality]
        * text 1..1
        * text ^comment = "Specify the causality categories/scale and the procedures for assessing causality."
      * section[recording].title = "Recording"
      * section[recording].code.text = "section9.2.2.4-recording"
      * section[recording]
        * text 1..1
        * text ^comment = "Specify procedures for recording."
      * section[followup].title = "Follow-up"
      * section[followup].code.text = "section9.2.2.5-followup"
      * section[followup]
        * text 1..1
        * text ^comment = "Specify the procedures for follow-up. Include the assessment tools that will be used to monitor the events and the duration of follow-up after appearance of the events."
    * section[reporting].title = "9.2.3 Reporting"
    * section[reporting].code.coding 1..1
    * section[reporting].code.coding = http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C218617 "ICH M11 Protocol Section 9.2.3 Reporting"
    * section[reporting].code.text = "section9.2.3-reporting-events"
    * section[reporting]
      * text 1..1
      * text ^comment = "Specify the reporting method (e.g., an electronic data collection tool or a paper CRF), backup reporting method if applicable and reporting timeline to the Sponsor"
      * section ^slicing.discriminator.type = #value
      * section ^slicing.discriminator.path = "code.text"
      * section ^slicing.rules = #open
      * section contains regulatoryRequirements 1..1
      * section[regulatoryRequirements].title = "9.2.3.1 Regulatory Reporting Requirements"
      * section[regulatoryRequirements].code.coding 1..1
      * section[regulatoryRequirements].code.coding = http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C218618 "ICH M11 Protocol Section 9.2.3.1 Regulatory Reporting Requirements"
      * section[regulatoryRequirements].code.text = "section9.2.3.1-regulatory-requirements"
      * section[regulatoryRequirements]
        * text 1..1
        * text ^comment = "Specify: • the Investigator’s responsibilities for reporting to the Sponsor (and to Ethics Committees, where required), specifying timing of reporting to allow the Sponsor to meet their responsibilities • the Sponsor’s legal/regulatory responsibilities to report to regulatory authorities, ethics committees, and investigators • serious and unexpected adverse reaction reporting"     
    * section[specialInterest].title = "9.2.4 Adverse Events of Special Interest"
    * section[specialInterest].code.coding 1..1
    * section[specialInterest].code.coding = http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C218619 "ICH M11 Protocol Section 9.2.4 Adverse Events of Special Interest"
    * section[specialInterest].code.text = "section9.2.4-special-interest"
    * section[specialInterest]
      * text 1..1
      * text ^comment = "Specify any AESI: • any event (serious or nonserious) of scientific and medical concern relative to the trial intervention, for which ongoing monitoring and rapid communication by the investigator to the sponsor can be appropriate • other events that merit reporting to the Sponsor, trial leadership, IRB, and regulatory agencies. Include the following for each AESI: • the definition • the approach for ascertaining information • if applicable, any approach to confirm or adjudicate the occurrence"
    * section[diseaseRelatedEvents].title = "9.2.5 Disease-related Events or Outcomes Not Qualifying as AEs or SAEs"
    * section[diseaseRelatedEvents].code.coding 1..1
    * section[diseaseRelatedEvents].code.coding = http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C218620 "ICH M11 Protocol Section 9.2.5 Disease-related Events or Outcomes Not Qualifying as AEs or SAEs"
    * section[diseaseRelatedEvents].code.text = "section9.2.5-disease-related-events"
    * section[diseaseRelatedEvents]
      * text 1..1
      * text ^comment = "Specify any DREs, DROs, or both that will not be reported as AEs or SAEs (e.g., seizures in anticonvulsant trials) or state “Not applicable.”"
  * section[pregnancy].title = "9.3 Pregnancy and Postpartum Information"
  * section[pregnancy].code.coding 1..1
  * section[pregnancy].code.coding = http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C218621 "ICH M11 Protocol Section 9.3 Pregnancy and Postpartum Information"
  * section[pregnancy].code.text = "section9.3-pregnancy-postpartum"
  * section[pregnancy]
    * text ^comment = "No text is intended here (heading only)."
    * section 0..*
    * section ^slicing.discriminator.type = #value
    * section ^slicing.discriminator.path = "code.text"
    * section ^slicing.rules = #open
    * section contains pregnant 0..1 MS and pregnantPartner 0..1 MS
    * section[pregnant].title = "9.3.1 Participants Who Become Pregnant During the Trial"
    * section[pregnant].code.coding 1..1
    * section[pregnant].code.coding = http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C218622 "ICH M11 Protocol Section 9.3.1 Participants Who Become Pregnant During the Trial"
    * section[pregnant].code.text = "section9.3.1-pregnant"
    * section[pregnant]
      * text 1..1
      * text ^comment = "Specify: • the assessments to be performed • type and duration of monitoring • whether participants who become pregnant during the trial may continue with trial intervention or must be discontinued from trial intervention (refer to Section 7 Participant Discontinuation of Trial Intervention and Discontinuation or Withdrawal from Trial as applicable) • any trial modifications that need to be made for participants who become pregnant • what information will be collected about a participant who becomes pregnant during the trial (e.g., recording and reporting to the Sponsor, postpartum follow-up, trial intervention discontinuation or continuation, or trial withdrawal). For postpartum follow-up, include the time period (e.g., initial child development) with the justification. If exposure to trial intervention during breastfeeding is applicable, specify: • the assessments to be performed • type and duration of monitoring • what information will be collected for both the participant and child"
    * section[pregnantPartner].title = "9.3.2 Participants Whose Partners Become Pregnant"
    * section[pregnantPartner].code.coding 1..1
    * section[pregnantPartner].code.coding = http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C218623 "ICH M11 Protocol Section 9.3.2 Participants Whose Partners Become Pregnant During the Trial"
    * section[pregnantPartner].code.text = "section9.3.2-pregnant-partner"
    * section[pregnantPartner]
      * text 1..1
      * text ^comment = "Specify: • whether the investigator will attempt to collect pregnancy information about a participant’s partner who becomes pregnant during the specified period in the trial • whether the participant whose partner becomes pregnant should be discontinued from trial intervention (refer to Section 7 Participant Discontinuation of Trial Intervention and Discontinuation or Withdrawal from Trial as applicable) • the assessments to be performed, type and duration of monitoring, and the information to be collected"
  * section[special].title = "9.4Special Safety Situations"
  * section[special].code.coding 1..1
  * section[special].code.coding = http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C218624 "ICH M11 Protocol Section 9.4 Special Safety Situations"
  * section[special].code.text = "section9.4-special-safety-situations"
  * section[special]
    * text 1..1
    * text ^comment = "Specify special safety situations associated with the trial intervention(s) that do not qualify as an AE or SAE, but require regulatory reporting. Examples include: • misuse or abuse • off-label use (if applicable) • medication error (prescription or dispensing error) • occupational exposure • use outside of what is foreseen in the protocol • unintended exposure of embryo, foetus, or child via maternal exposure (pregnancy or breastfeeding) or via paternal exposure (semen) • lack of therapeutic efficacy; this is not applicable for studies that measure efficacy as a study endpoint • suspected transmission of an infectious agent; this is only applicable for injected or biologic medicinal products • product complaint, including falsified or counterfeit products • suspected drug-food or drug-drug interaction"
