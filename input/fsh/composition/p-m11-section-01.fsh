Profile: M11Section01
Parent: EvidenceReport
Id: m11-section-01
Description: "Profile of Composition for Evidence Based Medicine IG. The M11Section01 Profile is used for summary of Section 1 Protocol Summary for the International Council for Harmonisation of Technical Requirements for Pharmaceuticals for Human Use (ICH) Clinical Electronic Structured Harmonised Protocol (CeSHarP) M11 Technical Specification."
* category 1..*
* category ^slicing.discriminator.type = #pattern
* category ^slicing.discriminator.path = "text"
* category ^slicing.rules = #open
* category contains section01 1..1 MS
* category[section01].text = "Section 1 Protocol Summary"
* section 1..*
* section ^slicing.discriminator.type = #pattern
* section ^slicing.discriminator.path = "code"
* section ^slicing.rules = #open
* section contains summary 1..1 MS
* section[summary].title = "Protocol Summary"
* section[summary].code.text = "section1-protocol-summary"
* section[summary]
  * section 3..*
  * section ^slicing.discriminator.type = #pattern
  * section ^slicing.discriminator.path = "code"
  * section ^slicing.rules = #open
  * section contains protocolSynopsis 1..1 MS and trialSchema 1..1 MS and scheduleOfActivities 1..1 MS
  * section[protocolSynopsis].title = "Protocol Synopsis"
  * section[protocolSynopsis].code.text = "section1.1-protocol-synopsis"
  * section[protocolSynopsis]
    * section 6..*
    * section ^slicing.discriminator.type = #pattern
    * section ^slicing.discriminator.path = "code"
    * section ^slicing.rules = #open
    * section contains objectivesEndpoints 1..1 MS and overallDesign 1..1 and numberOfArms 1..1 and blinding 1..1 and numberOfParticipants 1..1 and duration 0..1 and committees 1..1
    * section[objectivesEndpoints].title = "Primary and Secondary Objectives and Endpoints"
    * section[objectivesEndpoints].code.text = "section1.1.1-objectives-endpoints"
    * section[objectivesEndpoints]
      * text 1..1
      * text ^comment = "Include a copy of the Objectives/Endpoints Table including primary and secondary endpoints only from Section 3 of the protocol and follow all the same instructions.  Not all trials will have a complete estimand.  Do not include exploratory endpoints in the synopsis."
      * entry only Reference(M11Section03)
    * section[overallDesign].title = "Overall Design"
    * section[overallDesign].code.text = "section1.1.2-overall-design"
    * section[overallDesign]
      * text 1..1
      * text ^comment = "see Template instructions"
      * entry only Reference(M11Section04 or M11Section05 or ResearchStudy)
    * section[numberOfArms].code.text = "Number of Arms"
    * section[numberOfArms]
      * text 1..1
      * text ^comment = "Enter the numeric value for the number of arms in the trial. For trials with a different number of arms in different periods, populate this field based on the total number of arms."
    * section[blinding].code.text = "Blinding"
    * section[blinding]
      * text 1..1
      * text ^comment = "For designs in which these details may differ in one or more trial periods, answer according to the portion of the trial in which the highest number of blinded roles occurs.  More details can be provided in Section 6.6 of the protocol. Blinded roles: The following roles indicated will not be made aware of the treatment group assignment during the trial: [blinded roles] Not applicable (No blinding) indicates an open-label trial."
    * section[numberOfParticipants].code.text = "Number of Participants"
    * section[numberOfParticipants]
      * text 1..1
      * text ^comment = "State the expected number of participants to be assigned to trial intervention/enrolled.  Indicate whether the number provided is the target or maximum number of individuals to be randomly assigned to trial intervention/enrolled. A [Target/ Maximum] of <Enter Number of Participants> participants will be [randomly assigned to trial intervention/ enrolled]."
    * section[duration].code.text = "Arms and Duration"
    * section[duration]
      * text 1..1
      * text ^comment = "see Template instructions"
    * section[committees].code.text = "Committees"
    * section[committees]
      * text 1..1
      * text ^comment = "Indicate whether any committee(s) will be reviewing data while the trial is ongoing, and the type of committee.  Common examples include Data Monitoring Committee, Dose Escalation Committee, or Endpoint Adjudication Committee; describe others, if applicable.   List independent committees in the space indicated.  Other committees may be included at the Sponsor’s discretion in the separate space provided.  Committees listed here should be fully described in Section 11.3. Indicate N/A if no independent committees will be involved in the trial. Delete Other Committees if not applicable."
      * entry only Reference(M11Section11)
  * section[trialSchema].title = "Trial Schema"
  * section[trialSchema].code.text = "section1.2-trial-schema"
  * section[trialSchema]
    * text 1..1
    * text ^comment = "The purpose of this section is to provide a visual depiction of the trial design, orienting users of the protocol to the key features of the design.  The schema depicts the trial arms, the flow of individual participants through the progression of trial period(s)/epochs (such as screening, washout/run-in, intervention, and key milestones [for example, randomisation, cross-over, end of treatment]).  For complex trials, additional schemas may be added to describe activities or trial periods in greater detail."
    * entry only Reference(SoaPlanDefinition)
  * section[scheduleOfActivities].title = "Schedule of Activities"
  * section[scheduleOfActivities].code.text = "section1.3-schedule-of-activities"
  * section[scheduleOfActivities]
    * text 1..1
    * text ^comment = "The schedule of activities must capture the procedures that will be accomplished at each trial visit, and all contact with participants, for example, telephone contacts. This includes any tests that are used for eligibility, participant randomisation or stratification, or decisions on trial intervention discontinuation. Allowable windows should be stated for all visits and procedures. A tabular format is recommended."
    * entry only Reference(SoaPlanDefinition)
