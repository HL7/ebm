Profile: M11Section09
Parent: EvidenceReport
Id: m11-section-09
Description: "Profile of Composition for Evidence Based Medicine IG. The M11Section09 Profile is used for summary of Section 9 Adverse Events, Serious Adverse Events, and Product Complaints for the International Council for Harmonisation of Technical Requirements for Pharmaceuticals for Human Use (ICH) Clinical Electronic Structured Harmonised Protocol (CeSHarP) M11 Technical Specification."
* category 1..*
* category ^slicing.discriminator.type = #value
* category ^slicing.discriminator.path = "text"
* category ^slicing.rules = #open
* category contains section09 1..1 MS
* category[section09].text = "Section 9 Adverse Events, Serious Adverse Events, and Product Complaints"
* section 1..*
* section ^slicing.discriminator.type = #value
* section ^slicing.discriminator.path = "code"
* section ^slicing.rules = #open
* section contains adverseEvents 1..1 MS
* section[adverseEvents].title = "Adverse Events, Serious Adverse Events, and Product Complaints"
* section[adverseEvents].code.text = "section9-adverse-events"
* section[adverseEvents]
  * section 5..*
  * section ^slicing.discriminator.type = #value
  * section ^slicing.discriminator.path = "code"
  * section ^slicing.rules = #open
  * section contains definitions 1..1 MS and collectionMethods 1..1 MS and recording 1..1 MS and reporting 1..1 MS and pregnancy 1..1 MS
  * section[definitions].title = "Definitions"
  * section[definitions].code.text = "section9.1-definitions"
  * section[definitions]
    * section 2..*
    * section ^slicing.discriminator.type = #value
    * section ^slicing.discriminator.path = "code"
    * section ^slicing.rules = #open
    * section contains adverseEventsDefinitions 1..1 MS and seriousAdverseEventsDefinitions 1..1 MS and productComplaintsDefinitions 0..1 MS
    * section[adverseEventsDefinitions].title = "Definitions of Adverse Events"
    * section[adverseEventsDefinitions].code.text = "section9.1.1-definitions-adverse-events"
    * section[adverseEventsDefinitions]
      * text 1..1
      * text ^comment = "Specify the AE definitions, including: •	Any relevant regional AE requirements. •	Any events that meet and do not meet the AE definition. •	Any trial-specific AE clarifications. •	The trial-specific definition for an overdose. •	If applicable, any clarifications on the AE and SAE definitions for efficacy trials (for example, lack of efficacy or failure of pharmacological actions reporting)."
    * section[seriousAdverseEventsDefinitions].title = "Definitions of Serious Adverse Events"
    * section[seriousAdverseEventsDefinitions].code.text = "section9.1.2-definitions-serious-adverse-events"
    * section[seriousAdverseEventsDefinitions]
      * text 1..1
      * text ^comment = "Specify the SAE definitions, including: •	Any relevant regional SAE requirements. •	Any events that meet and do not meet the SAE definition. •	Any trial-specific SAE clarifications."
    * section[productComplaintsDefinitions].title = "Definitions of Medical Device Product Complaints"
    * section[productComplaintsDefinitions].code.text = "section9.1.3-definitions-product-complaints"
    * section[productComplaintsDefinitions]
      * text 1..1
      * text ^comment = "Specify the definitions of medical device product complaints."
  * section[collectionMethods].title = "Timing and Mechanism for Collection and Reporting of AEs, SAEs, Pregnancy, and Product Complaints"
  * section[collectionMethods].code.text = "section9.2-collection-methods"
  * section[collectionMethods]
    * text 1..1
    * text ^comment = "Specify the starting and ending time periods for and frequency of collecting AEs and SAEs. Cross refer to the Schedule of Assessments as appropriate."
  * section[recording].title = "Recording and Follow-Up of AEs, SAEs, Pregnancy, and Product Complaints"
  * section[recording].code.text = "section9.3-recording-and-follow-up"
  * section[recording]
    * section 5..*
    * section ^slicing.discriminator.type = #value
    * section ^slicing.discriminator.path = "code"
    * section ^slicing.rules = #open
    * section contains identifying 1..1 MS and intensity 1..1 MS and causality 1..1 MS and recordingEvents 1..1 MS and followup 1..1 MS
    * section[identifying].title = "Identifying AEs, SAEs and Product Complaints"
    * section[identifying].code.text = "section9.3.1-identifying-events"
    * section[identifying]
      * text 1..1
      * text ^comment = "Specify how AEs and SAEs will be identified (for example, spontaneous reporting, solicited questions)."
    * section[intensity].title = "Intensity"
    * section[intensity].code.text = "section9.3.2-intensity"
    * section[intensity]
      * text 1..1
      * text ^comment = "Specify the intensity rating categories/scale."     
    * section[causality].title = "Causality"
    * section[causality].code.text = "section9.3.3-causality"
    * section[causality]
      * text 1..1
      * text ^comment = "Specify: •	The causality categories/scale. •	Procedures for assessing causality."
    * section[recordingEvents].title = "Recording of AEs, SAEs, Pregnancy and Product Complaints"
    * section[recordingEvents].code.text = "section9.3.4-recording-events"
    * section[recordingEvents]
      * text 1..1
      * text ^comment = "Specify the Investigator's actions for recording AEs and SAEs, including severity, causality, and the final outcome."
    * section[followup].title = "Follow-up"
    * section[followup].code.text = "section9.3.5-followup"
    * section[followup]
      * text 1..1
      * text ^comment = "Specify the procedures for follow-up of AEs, SAEs, pregnancy and product complaints.  Include the assessment tools that will be used to monitor the events and the duration of follow-up after appearance of the events.  Specify any procedures to be used for trials in which death is not an endpoint."
  * section[reporting].title = "Reporting of AEs, SAEs, Pregnancy, and Product Complaints"
  * section[reporting].code.text = "section9.4-reporting-events"
  * section[reporting]
    * section 4..*
    * section ^slicing.discriminator.type = #value
    * section ^slicing.discriminator.path = "code"
    * section ^slicing.rules = #open
    * section contains reportingSAEs 1..1 MS and regulatoryRequirements 1..1 MS and specialInterest 1..1 MS and diseaseRelatedEvents 1..1 MS
    * section[reportingSAEs].title = "Reporting of SAEs"
    * section[reportingSAEs].code.text = "section9.4.1-reporting-serious-events"
    * section[reportingSAEs]
      * text 1..1
      * text ^comment = "Specify the SAE reporting method (for example, an electronic data collection tool or a paper CRF) and reporting timeline to the Sponsor."
    * section[regulatoryRequirements].title = "Regulatory Reporting Requirements for SAEs and Product Complaints"
    * section[regulatoryRequirements].code.text = "section9.4.2-regulatory-requirements"
    * section[regulatoryRequirements]
      * text 1..1
      * text ^comment = "Specify: •	The investigators’ responsibilities for reporting SAEs and Medical Device Product Complaints to the Sponsor (and to Ethics Committees, where required), specifying timing of reporting to allow the Sponsor to meet their responsibilities •	The Sponsor’s legal/regulatory responsibilities to report SAEs to regulatory authorities, ethics committees, and investigators •	Serious and unexpected adverse reaction reporting"     
    * section[specialInterest].title = "Adverse Events of Special Interest"
    * section[specialInterest].code.text = "section9.4.3-special-interest"
    * section[specialInterest]
      * text 1..1
      * text ^comment = "Specify any Adverse Events of Special Interest (AESI): •	Other events that merit reporting to the Sponsor, trial leadership, IRB, and regulatory agencies (for example, secondary malignancies in oncology trials). •	Other reportable events not already included in the previous sections, such as cardiovascular events, medical device incidents (including malfunctions), laboratory test abnormalities, and trial intervention overdose.   Include the following for each AESI: •	The definition of the event. Specify the MedDRA preferred terms to use to report the AESI. •	If it is a measurable quantity, specify how will the measurement be done. •	If it is a clinical event, specify how will it be confirmed."
    * section[diseaseRelatedEvents].title = "Disease-related Events or Outcomes Not Qualifying as AEs or SAEs"
    * section[diseaseRelatedEvents].code.text = "section9.4.4-disease-related-events"
    * section[diseaseRelatedEvents]
      * text 1..1
      * text ^comment = "Specify any Disease-Related Events (DREs), disease-related outcomes (DROs), or both that will not be reported as AEs or SAEs (for example, seizures in anticonvulsant trials) or state not applicable."

  * section[pregnancy].title = "Timing and Mechanism for Collection and Reporting of AEs, SAEs, Pregnancy, and Product Complaints"
  * section[pregnancy].code.text = "section9.5-collection-methods"
  * section[pregnancy]
    * section 0..*
    * section ^slicing.discriminator.type = #value
    * section ^slicing.discriminator.path = "code"
    * section ^slicing.rules = #open
    * section contains pregnant 0..1 MS and pregnantPartner 0..1 MS
    * section[pregnant].title = "Participants Who Become Pregnant During the Trial"
    * section[pregnant].code.text = "section9.5.1-pregnant"
    * section[pregnant]
      * text 1..1
      * text ^comment = "See Template for instructions."
    * section[pregnantPartner].title = "Participants Whose Partners Become Pregnant"
    * section[pregnantPartner].code.text = "section9.5.2-pregnant-partner"
    * section[pregnantPartner]
      * text 1..1
      * text ^comment = "See Template for instructions."
