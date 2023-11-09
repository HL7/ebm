Profile: M11Section07
Parent: EvidenceReport
Id: m11-section-07
Description: "Profile of Composition for Evidence Based Medicine IG. The M11Section07 Profile is used for summary of Section 7 Participant Discontinuation of Trial Intervention and Withdrawal from Trial for the International Council for Harmonisation of Technical Requirements for Pharmaceuticals for Human Use (ICH) Clinical Electronic Structured Harmonised Protocol (CeSHarP) M11 Technical Specification."
* category 1..*
* category ^slicing.discriminator.type = #value
* category ^slicing.discriminator.path = "text"
* category ^slicing.rules = #open
* category contains section07 1..1 MS
* category[section07].text = "Section 7 Participant Discontinuation of Trial Intervention and Withdrawal from Trial"
* section 1..*
* section ^slicing.discriminator.type = #value
* section ^slicing.discriminator.path = "code"
* section ^slicing.rules = #open
* section contains dropout 1..1 MS
* section[dropout].title = "Participant Discontinuation of Trial Intervention and Withdrawal from Trial"
* section[dropout].code.text = "section7-participant-discontinuation"
* section[dropout]
  * section 4..*
  * section ^slicing.discriminator.type = #value
  * section ^slicing.discriminator.path = "code"
  * section ^slicing.rules = #open
  * section contains discontinuation 1..1 MS and withdrawal 1..1 MS and lostToFollowUp 1..1 MS and trialStoppingRules 1..1 MS
  * section[discontinuation].title = "Discontinuation of Trial Intervention for Individual Participants"
  * section[discontinuation].code.text = "section7.1-discontinuation-of-trial-intervention"
  * section[discontinuation]
    * section 3..*
    * section ^slicing.discriminator.type = #value
    * section ^slicing.discriminator.path = "code"
    * section ^slicing.rules = #open
    * section contains permanent 1..1 MS and temporary 1..1 MS and rechallenge 1..1 MS
    * section[permanent].title = "Permanent Discontinuation of Trial Intervention"
    * section[permanent].code.text = "section7.1.1-permanent-discontinuation-of-trial-intervention"
    * section[permanent]
      * text 1..1
      * text ^comment = "Discontinuation of trial intervention for a participant occurs when trial intervention is stopped earlier than the protocol planned duration. Describe the criteria for discontinuation of a participant from any trial intervention, carefully evaluating which are appropriate for the trial population and therapy being studied. Specify whether participants who discontinue trial intervention can or cannot continue the trial (continue trial visits). Refer to the Section 1.3 Schedule of Activities for assessments to be performed at the time of and following discontinuation of trial intervention. Explain the process for collecting and recording the detailed reasons for discontinuing trial intervention(s)."
    * section[temporary].title = "Temporary Discontinuation of Trial Intervention"
    * section[temporary].code.text = "section7.1.2-temporary-discontinuation-of-trial-intervention"
    * section[temporary]
      * text 1..1
      * text ^comment = "Describe •	the criteria for temporary discontinuation or interruption of trial intervention for an individual participant •	what to do and which restrictions still apply if the participant needs to temporarily discontinue or interrupt trial intervention •	whether they will continue in the trial, and • whether all, or specify which, assessments will be performed for the stated duration of the trial. Details of any rechallenge or restart after a safety-related event should be included in Section 7.1.3, Rechallenge."
    * section[rechallenge].title = "Rechallenge"
    * section[rechallenge].code.text = "section7.1.3-rechallenge"
    * section[rechallenge]
      * text 1..1
      * text ^comment = "Describe the criteria for rechallenge/restarting trial intervention, how to perform rechallenge, number of rechallenges allowed during the trial, and whether all, or specify which, assessments will be performed for the stated duration of the trial. If rechallenge is not allowed, state this."
  * section[withdrawal].title = "Withdrawal from the Trial"
  * section[withdrawal].code.text = "section7.2-participant-withdrawal"
  * section[withdrawal]
    * text 1..1
    * text ^comment = "Describe the criteria for participant withdrawal from the trial. Describe the reason for withdrawal and the type and data to be collected for the final assessments with reference to the schedule of activities for the participant end of study visit unless provided in another section."
  * section[lostToFollowUp].title = "Lost to Follow-Up"
  * section[lostToFollowUp].code.text = "section7.3-lost-to-follow-Up"
  * section[lostToFollowUp]
    * text 1..1
    * text ^comment = "Describe the measures to be taken to reduce the frequency of participants lost to follow up. Describe how the trial will define and address participants who are lost to follow-up to help limit the amount and impact of missing data. Describe the nature and duration of follow-up, as appropriate."
  * section[trialStoppingRules].title = "Participant Stopping Rules"
  * section[trialStoppingRules].code.text = "section7.4-participant-stopping-rules"
  * section[trialStoppingRules]
    * text 1..1
    * text ^comment = "If applicable, describe any trial-specific stopping rules that would apply to individual participants such as treatment or study non-compliance or due to safety reasons. Address the procedure ensuring alignment with the intercurrent events and their handling strategies introduced in Section 3."
