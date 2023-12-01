Profile: M11Section11
Parent: EvidenceReport
Id: m11-section-11
Description: "Profile of Composition for Evidence Based Medicine IG. The M11Section11 Profile is used for summary of Section 11 General Considerations: Regulatory, Ethical, and Trial Oversight for the International Council for Harmonisation of Technical Requirements for Pharmaceuticals for Human Use (ICH) Clinical Electronic Structured Harmonised Protocol (CeSHarP) M11 Technical Specification."
* category 1..*
* category ^slicing.discriminator.type = #value
* category ^slicing.discriminator.path = "text"
* category ^slicing.rules = #open
* category contains section11 1..1 MS
* category[section11].text = "Section 11 General Considerations: Regulatory, Ethical, and Trial Oversight"
* section 1..*
* section ^slicing.discriminator.type = #value
* section ^slicing.discriminator.path = "code"
* section ^slicing.rules = #open
* section contains oversight 1..1 MS
* section[oversight].title = "General Considerations: Regulatory, Ethical, and Trial Oversight"
* section[oversight].code.text = "section11-oversight"
* section[oversight]
  * section 6..*
  * section ^slicing.discriminator.type = #value
  * section ^slicing.discriminator.path = "code"
  * section ^slicing.rules = #open
  * section contains regulatory 1..1 MS and trialOversight 1..1 MS and committees 1..1 MS and informedConsent 1..1 MS and insurance 1..1 MS and earlySiteClosure 1..1 MS
  * section[regulatory].title = "Regulatory and Ethical Considerations"
  * section[regulatory].code.text = "section11.1-regulatory-considerations"
  * section[regulatory]
    * text 1..1
    * text ^comment = "List the prevailing ethical, legal, and regulatory guidelines that will be applied throughout the trial."
  * section[trialOversight].title = "Trial Oversight"
  * section[trialOversight].code.text = "section11.2-trial-oversight"
  * section[trialOversight]
    * text 0..1
    * text ^comment = "Describe the trial oversight listing the investigator and sponsor responsibilities not covered in other sections of the protocol which are essential for the operations of the trial, specifying the ones related to quality assurance."
    * section 2..*
    * section ^slicing.discriminator.type = #value
    * section ^slicing.discriminator.path = "code"
    * section ^slicing.rules = #open
    * section contains investigatorResponsibilities 1..1 MS and sponsorResponsibilities 1..1 MS
    * section[investigatorResponsibilities].title = "Investigator Responsibilities"
    * section[investigatorResponsibilities].code.text = "section11.2.1-investigator-responsibilities"
    * section[investigatorResponsibilities]
      * text 1..1
    * section[sponsorResponsibilities].title = "Sponsor Responsibilities"
    * section[sponsorResponsibilities].code.text = "section11.2.2-sponsor-responsibilities"
    * section[sponsorResponsibilities]
      * text 1..1
      * text ^comment = "Describe the sponsor duties to be delegated to a third party that may impact the investigators sites, if applicable."
  * section[committees].title = "Committees"
  * section[committees].code.text = "section11.3-committees"
  * section[committees]
    * text 1..1
    * text ^comment = "Briefly describe the administrative structure of committees that will be reviewing data while the trial is ongoing, and the type of committee (for example, Dose Escalation Committee, Data Monitoring Committee or Data Safety Monitoring Board). Note that specific details may be required depending on local law or regulation.  If applicable, Committee Charters may be cross-referenced. If no committees are applicable, state Not Applicable."
  * section[informedConsent].title = "Informed Consent Process"
  * section[informedConsent].code.text = "section11.4-informed-consent-process"
  * section[informedConsent]
    * text 1..1
    * text ^comment = "Specify the key elements of the informed consent process, including any special needs and how these are addressed (for example, assent, capacity, legally acceptable representative, adolescents who may reach age of majority during the trial, pregnant participants and pregnant partners of participants)."
    * section 0..*
    * section ^slicing.discriminator.type = #value
    * section ^slicing.discriminator.path = "code"
    * section ^slicing.rules = #open
    * section contains assentProcess 0..1 MS and emergency 0..1 MS and rescreening 0..1 MS and remainingSamples 0..1 MS
    * section[assentProcess].title = "Assent Process"
    * section[assentProcess].code.text = "section11.4.0-assent-process"
    * section[assentProcess]
      * text 1..1
    * section[emergency].title = "Emergency Consent Process"
    * section[emergency].code.text = "section11.4.0-emergency-consent-process"
    * section[emergency]
      * text 1..1
      * text ^comment = "If enrollment in the trial may occur during an emergency in which the participant or their legally acceptable representative is not able or available to give consent, describe the consent process."
    * section[rescreening].title = "Informed Consent for Rescreening"
    * section[rescreening].code.text = "section11.4.1-rescreening-consent-process"
    * section[rescreening]
      * text 1..1
      * text ^comment = "If participants can be rescreened, add the text to state whether the participant needs to complete a new consent.  Screen failure and rescreening should be clearly defined in the protocol, with cross-reference to those definitions."
    * section[remainingSamples].title = "Informed Consent for Remaining Samples"
    * section[remainingSamples].code.text = "section11.4.2-remaining-samples"
    * section[remainingSamples]
      * text 1..1
      * text ^comment = "If any exploratory research is planned and additional written consent regarding the use of remaining samples for exploratory research will be obtained, describe the consent process." 
  * section[insurance].title = "Insurance and Indemnity"
  * section[insurance].code.text = "section11.5-insurance-and-indemnity"
  * section[insurance]
    * text 1..1
    * text ^comment = "Describe the arrangements for participants insurance and indemnity if not addressed in a separate agreement."
  * section[earlySiteClosure].title = "Early Site Closure"
  * section[earlySiteClosure].code.text = "section11.6-early-site-closure"
  * section[earlySiteClosure]
    * section 3..*
    * section ^slicing.discriminator.type = #value
    * section ^slicing.discriminator.path = "code"
    * section ^slicing.rules = #open
    * section contains decisionRights 1..1 MS and criteria 1..1 MS and responsibilities 1..1 MS
    * section[decisionRights].title = "Decision Rights for Site Closure"
    * section[decisionRights].code.text = "section11.6-early-site-closure#decisionRights"
    * section[decisionRights]
      * text 1..1
      * text ^comment = "List the sponsor's rights to close a site.  Likewise, list the investigator's rights to initiate early site closure."
    * section[criteria].title = "Crteria for Early Closure"
    * section[criteria].code.text = "section11.6-early-site-closure#criteria"
    * section[criteria]
      * text 1..1
      * text ^comment = "List the criteria for early closure of a site by the sponsor or investigator."
    * section[responsibilities].title = "Responsibilities Following Early Site Closure"
    * section[responsibilities].code.text = "section11.6-early-site-closure#responsibilities"
    * section[responsibilities]
      * text 1..1
      * text ^comment = "List the responsibilities of the sponsor and investigator following early site closure, such as informing the ethics committee(s), and prompt notification of the participant and transition to appropriate therapy and/or follow-up."