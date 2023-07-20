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
* section 3..*
* section ^slicing.discriminator.type = #pattern
* section ^slicing.discriminator.path = "code"
* section ^slicing.rules = #open
* section contains protocolSynopsis 1..1 MS and trialSchema 1..1 MS and scheduleOfActivities 1..1 MS
* section[protocolSynopsis].code.text = "1.1 Protocol Synopsis"
* section[protocolSynopsis]
  * section 6..*
  * section ^slicing.discriminator.type = #pattern
  * section ^slicing.discriminator.path = "code"
  * section ^slicing.rules = #open
  * section contains objectivesEndpoints 1..1 MS and overallDesign 1..1 and numberOfArms 1..1 and blinding 1..1 and numberOfParticipants 1..1 and committees 1..1
  * section[objectivesEndpoints].code.text = "Primary and Secondary Objectives and Endpoints"
  * section[objectivesEndpoints]
    * text 1..1
  * section[overallDesign].code.text = "Overall Design"
  * section[overallDesign]
    * text 1..1
  * section[numberOfArms].code.text = "Number of Arms"
  * section[numberOfArms]
    * text 1..1
  * section[blinding].code.text = "Blinding"
  * section[blinding]
    * text 1..1
  * section[numberOfParticipants].code.text = "Number of Participants"
  * section[numberOfParticipants]
    * text 1..1
  * section[committees].code.text = "Committees"
  * section[committees]
    * text 1..1
* section[trialSchema].code.text = "1.2 Trial Schema"
* section[trialSchema]
  * text 1..1
* section[scheduleOfActivities].code.text = "1.3 Schedule of Activities"
* section[scheduleOfActivities]
  * text 1..1
