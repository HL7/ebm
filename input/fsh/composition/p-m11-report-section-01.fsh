Profile: M11ReportSection01
Parent: EvidenceReport
Id: m11-report-section-01
Description: "Profile of Composition for Evidence Based Medicine IG. The M11ReportSection01 Profile is used for section 1 (Protocol Summary) for the International Council for Harmonisation of Technical Requirements for Pharmaceuticals for Human Use (ICH) Clinical Electronic Structured Harmonised Protocol (CeSHarP) M11 Technical Specification."
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
* category contains summary 0..1
* category[summary].coding 1..1
* category[summary].coding = http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C218514 "ICH M11 Protocol Section 1 PROTOCOL SUMMARY"
* category[summary].text = "section1-protocol-summary"
* section 1..1
* section ^slicing.discriminator.type = #value
* section ^slicing.discriminator.path = "code.text"
* section ^slicing.rules = #open
* section contains summary 1..1 MS
* section[summary].title = "1 PROTOCOL SUMMARY"
* section[summary].code.coding 1..1
* section[summary].code.coding = http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C218514 "ICH M11 Protocol Section 1 PROTOCOL SUMMARY"
* section[summary].code.text = "section1-protocol-summary"
* section[summary]
  * text ^comment = "No text is intended here (heading only)."
  * section 3..*
  * section ^slicing.discriminator.type = #value
  * section ^slicing.discriminator.path = "code.text"
  * section ^slicing.rules = #open
  * section contains protocolSynopsis 1..1 MS and trialSchema 1..1 MS and scheduleOfActivities 1..1 MS
  * section[protocolSynopsis].title = "1.1 Protocol Synopsis"
  * section[protocolSynopsis].code.coding 1..1
  * section[protocolSynopsis].code.coding = http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C218515 "ICH M11 Protocol Section 1.1 Protocol Synopsis"
  * section[protocolSynopsis].code.text = "section1.1-protocol-synopsis"
  * section[protocolSynopsis]
    * text ^comment = "No text is intended here (heading only)."
    * section 6..*
    * section ^slicing.discriminator.type = #value
    * section ^slicing.discriminator.path = "code.text"
    * section ^slicing.rules = #open
    * section contains objectivesEndpoints 1..1 MS and overallDesign 1..1 and numberOfArms 1..1 and blinding 1..1 and blindedRoles 1..1 and numberOfParticipants 1..1 and duration 1..1 and committees 1..1
    * section[objectivesEndpoints].title = "1.1.1 Primary and Secondary Objectives and Estimands"
    * section[objectivesEndpoints].code.coding 1..1
    * section[objectivesEndpoints].code.coding = http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C218516 "ICH M11 Protocol Section 1.1.1 Primary and Secondary Objectives and Estimands"
    * section[objectivesEndpoints].code.text = "section1.1.1-objectives-estimands"
    * section[objectivesEndpoints]
      * text 1..1
      * text ^comment = "Summarise the primary and secondary objectives and any associated estimands in natural, nontechnical (layperson) language. For trials intended to estimate a treatment effect or test a hypothesis related to a treatment effect, include the primary and secondary objectives and any associated estimands using a nontechnical summary describing the objective and treatment effect of interest (estimand). For other types of trials not intended to estimate a treatment effect or test a hypothesis related to a treatment effect, define trial objectives and describe additional information relevant to the clinical question(s) of interest (e.g., the endpoint(s) associated with each objective). For trials with numerous objectives in which the description of objectives will exceed half a page, consider including the most important objectives and estimands in the synopsis and refer to Section 3 Trial Objectives and Associated Estimands, which covers the objectives and estimands in technical detail. For considerations on estimands, refer to ICH E9(R1)."
      * entry only Reference(Composition)
    * section[overallDesign].title = "1.1.2 Overall Design"
    * section[overallDesign].code.coding 1..1
    * section[overallDesign].code.coding = http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C218517 "ICH M11 Protocol Section 1.1.2 Overall Design"
    * section[overallDesign].code.text = "section1.1.2-overall-design"
    * section[overallDesign]
      * text 1..1
      * text ^comment = "Key aspects of the trial design include Intervention, Intervention Model, Control Type, Control Description, Intervention Assignment Method, Drug/Device Combination Product Indicator, Population Type, Population Diagnosis or Condition, Population Age (Minimum, Maximum), Site Distribution and Geographic Scope, Master Protocol, and Adaptive Trial Design. Entries should Reference Composition Resource or ResearchStudy Resource."
      * entry only Reference(Composition or ResearchStudy)
    * section[numberOfArms].code.text = "Number of Arms"
    * section[numberOfArms]
      * text 1..1
      * text ^comment = "Enter the numeric value for the number of arms in the trial. For trials with a different number of arms in different periods, populate this field based on the total number of arms."
    * section[blinding].code.text = "Trial Blind Schema"
    * section[blinding]
      * text 1..1
      * text ^comment = "For designs in which these details may differ in one or more trial periods, answer according to the portion of the trial in which the highest number of blinded roles occurs.  Additional details can be provided in Section 6.7.3 Measures to Maintain Blinding."
    * section[blindedRoles].code.text = "Blinded Roles"
    * section[blindedRoles]
      * text 1..1
      * text ^comment = "State 'The following roles indictated will not be made aware of the treatment group assignment during the trial:' [Blinded Roles] --OR-- 'Not applicable (No blinding)' indicates an open-label trial."
    * section[numberOfParticipants].code.text = "Number of Participants"
    * section[numberOfParticipants]
      * text 1..1
      * text ^comment = "State the expected number of participants to be assigned to trial intervention/enrolled.  Indicate whether the number provided is the target or maximum number of individuals to be randomly assigned to trial intervention/enrolled. A [Target/ Maximum] of [[Enter Number of Participants]] participants will be [randomly assigned to trial intervention/enrolled]."
    * section[duration].code.text = "Duration"
    * section[duration]
      * text 1..1
      * text ^comment = "See Template instructions. Select one of the two options for total planned duration of trial intervention and trial participation for each participant. Note that the total duration of trial participation should include any washout and any follow-up periods in which the participant is not receiving trial intervention. When duration will vary, provide a short explanation (for example, “event-driven” or “adaptive design”."
    * section[committees].code.text = "Committees"
    * section[committees]
      * text 1..1
      * text ^comment = "Indicate whether any committee(s) will be reviewing data while the trial is ongoing, and the type of committee. Common examples include Data Monitoring Committee, Dose Escalation Committee, or Endpoint Adjudication Committee; describe others, if applicable. List independent committees in the space indicated. Other committees may be included at the Sponsor’s discretion in the separate space provided. Committees listed here should be fully described in Section 11.4 Committees."
  * section[trialSchema].title = "1.2 Trial Schema"
  * section[trialSchema].code.coding 1..1
  * section[trialSchema].code.coding = http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C218518 "ICH M11 Protocol Section 1.2 Trial Schema"
  * section[trialSchema].code.text = "section1.2-trial-schema"
  * section[trialSchema]
    * text 1..1
    * text ^comment = "The purpose of this section is to provide a visual depiction of the trial design, orienting users of the protocol to the key features of the design. The schema depicts the trial arms, the flow of individual participant through the progression of trial period(s)/epochs (such as screening, washout/run-in, intervention, and key milestones [e.g., randomisation, cross-over, end of treatment, end of study, post-treatment follow-up]). For complex trials, additional schemas may be added to describe activities or trial periods in greater detail. Entries should Reference SoaPlanDefinition Profile of PlanDefinition Resource."
    * entry only Reference(SoaPlanDefinition)
  * section[scheduleOfActivities].title = "1.3 Schedule of Activities"
  * section[scheduleOfActivities].code.coding 1..1
  * section[scheduleOfActivities].code.coding = http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C218519 "ICH M11 Protocol Section 1.3 Schedule of Activities"
  * section[scheduleOfActivities].code.text = "section1.3-schedule-of-activities"
  * section[scheduleOfActivities]
    * text 1..1
    * text ^comment = "The schedule of activities must capture the procedures that will be accomplished at each trial visit, and all contact with participants, for example, telephone contacts. This includes any tests that are used for eligibility, participant randomisation or stratification, or decisions on trial intervention discontinuation. Allowable windows should be stated for all visits and procedures. A tabular format is recommended. When applicable for studies with extensive sampling (e.g., serial PK sampling) a separate table may be added. Entries should Reference SoaPlanDefinition Profile of PlanDefinition Resource."
    * entry only Reference(SoaPlanDefinition)
