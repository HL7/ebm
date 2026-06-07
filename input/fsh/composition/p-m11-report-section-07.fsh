Profile: M11ReportSection07
Parent: EvidenceReport
Id: m11-report-section-07
Description: "Profile of Composition for Evidence Based Medicine IG. The M11ReportSection07 Profile is used for section 7 (Participant Discontinuation) for the International Council for Harmonisation of Technical Requirements for Pharmaceuticals for Human Use (ICH) Clinical Electronic Structured Harmonised Protocol (CeSHarP) M11 Technical Specification."
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
* category contains dropout 0..1
* category[dropout].coding 1..1
* category[dropout].coding = http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C218583 "ICH M11 Protocol Section 7 PARTICIPANT DISCONTINUATION OF TRIAL INTERVENTION AND DISCONTINUATION OR WITHDRAWAL FROM TRIAL"
* category[dropout].text = "section7-participant-discontinuation"
* section 1..1
* section ^slicing.discriminator.type = #value
* section ^slicing.discriminator.path = "code.text"
* section ^slicing.rules = #open
* section contains dropout 1..1 MS
* section[dropout].title = "7 PARTICIPANT DISCONTINUATION OF TRIAL INTERVENTION AND DISCONTINUATION OR WITHDRAWAL FROM TRIAL"
* section[dropout].code.coding 1..1
* section[dropout].code.coding = http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C218583 "ICH M11 Protocol Section 7 PARTICIPANT DISCONTINUATION OF TRIAL INTERVENTION AND DISCONTINUATION OR WITHDRAWAL FROM TRIAL"
* section[dropout].code.text = "section7-participant-discontinuation"
* section[dropout]
  * text ^comment = "No text is intended here (heading only)."
  * section 3..*
  * section ^slicing.discriminator.type = #value
  * section ^slicing.discriminator.path = "code.text"
  * section ^slicing.rules = #open
  * section contains discontinuation 1..1 MS and withdrawal 1..1 MS and lostToFollowUp 1..1 MS
  * section[discontinuation].title = "7.1 Discontinuation of Trial Intervention for Individual Participants"
  * section[discontinuation].code.coding 1..1
  * section[discontinuation].code.coding = http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C218584 "ICH M11 Protocol Section 7.1 Discontinuation of Trial Intervention for Individual Participants"
  * section[discontinuation].code.text = "section7.1-discontinuation-of-trial-intervention"
  * section[discontinuation]
    * text ^comment = "No text is intended here (heading only)."
    * section 3..*
    * section ^slicing.discriminator.type = #value
    * section ^slicing.discriminator.path = "code.text"
    * section ^slicing.rules = #open
    * section contains permanent 1..1 MS and temporary 1..1 MS and rechallenge 1..1 MS
    * section[permanent].title = "7.1.1 Permanent Discontinuation of Trial Intervention"
    * section[permanent].code.coding 1..1
    * section[permanent].code.coding = http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C218585 "ICH M11 Protocol Section 7.1.1 Permanent Discontinuation of Trial Intervention"
    * section[permanent].code.text = "section7.1.1-permanent-discontinuation-of-trial-intervention"
    * section[permanent]
      * text 1..1
      * text ^comment = "Describe: • the criteria for discontinuation of a participant from any trial intervention, carefully evaluating which are appropriate for the trial population and therapy being studied • how participants who discontinue trial intervention will be followed after discontinuation. Depending on the chosen intercurrent event handling strategy, it will be important to continue to follow and ascertain outcomes in participants who discontinue treatment through the end of the trial to prevent missing data in important analyses. Refer to Section 1.3 Schedule of Activities for assessments to be performed at the time of and following discontinuation of trial intervention • the process for collecting and recording the detailed reasons for discontinuing trial intervention if not described elsewhere"
    * section[temporary].title = "7.1.2 Temporary Discontinuation of Trial Intervention"
    * section[temporary].code.coding 1..1
    * section[temporary].code.coding = http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C218586 "ICH M11 Protocol Section 7.1.2 Temporary Discontinuation of Trial Intervention"
    * section[temporary].code.text = "section7.1.2-temporary-discontinuation-of-trial-intervention"
    * section[temporary]
      * text 1..1
      * text ^comment = "Describe: • the criteria for temporary discontinuation or interruption of trial intervention for an individual participant • what to do and which restrictions still apply if the participant has to temporarily discontinue or interrupt trial intervention • whether the participant will continue in the trial • which assessments will be performed for the stated duration of the trial. Details of any rechallenge or restart after a safety-related event should be included in Section 7.1.3 Rechallenge."
    * section[rechallenge].title = "7.1.3 Rechallenge"
    * section[rechallenge].code.coding 1..1
    * section[rechallenge].code.coding = http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C218587 "ICH M11 Protocol Section 7.1.3 Rechallenge"
    * section[rechallenge].code.text = "section7.1.3-rechallenge"
    * section[rechallenge]
      * text 1..1
      * text ^comment = "Describe the criteria for rechallenge/restarting trial intervention, how and when to perform rechallenge, number of rechallenges allowed during the trial, and whether all, or specify which, assessments will be performed for the stated duration of the trial. If rechallenge is not allowed, state this."
  * section[withdrawal].title = "7.2 Participant Discontinuation or Withdrawal from the Trial"
  * section[withdrawal].code.coding 1..1
  * section[withdrawal].code.coding = http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C218588 "ICH M11 Protocol Section 7.2 Participant Discontinuation or Withdrawal from the Trial"
  * section[withdrawal].code.text = "section7.2-participant-withdrawal"
  * section[withdrawal]
    * text 1..1
    * text ^comment = "Describe the criteria for participant discontinuation or withdrawal from the trial. Describe the reason for withdrawal and the type of data to be collected for the final assessments with reference to the schedule of activities for the participant’s end of study visit unless provided in another section. In many cases, the only reason for a participant being considered withdrawn from the trial should be a participant’s withdrawal of consent to continue to participate in the trial. All other participants, including those who discontinue treatment, should remain in the trial and continue to be followed to prevent missing data in important analyses. Refer to Section 10 Statistical Considerations for the data that must be collected for the trial estimands."
  * section[lostToFollowUp].title = "7.3 Management of Loss to Follow-Up"
  * section[lostToFollowUp].code.coding 1..1
  * section[lostToFollowUp].code.coding = http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C218589 "ICH M11 Protocol Section 7.3 Management of Loss to Follow-Up"
  * section[lostToFollowUp].code.text = "section7.3-lost-to-follow-up"
  * section[lostToFollowUp]
    * text 1..1
    * text ^comment = "Describe how the trial will define how participants are lost to follow-up. In general, participants should be considered lost to follow-up only if they cannot be reached despite multiple attempts to contact. Also describe approaches that will be used to minimise loss to follow-up, such as multiple, diverse methods to remain in contact with participants (e.g., telephone calls, texts, and emails to the participant) and how contacts will be recorded."
