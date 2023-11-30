Profile: M11Section02
Parent: EvidenceReport
Id: m11-section-02
Description: "Profile of Composition for Evidence Based Medicine IG. The M11Section02 Profile is used for summary of Section 2 Introduction for the International Council for Harmonisation of Technical Requirements for Pharmaceuticals for Human Use (ICH) Clinical Electronic Structured Harmonised Protocol (CeSHarP) M11 Technical Specification."
* category 1..*
* category ^slicing.discriminator.type = #value
* category ^slicing.discriminator.path = "text"
* category ^slicing.rules = #open
* category contains section02 1..1 MS
* category[section02].text = "Section 2 Introduction"
* section 1..*
* section ^slicing.discriminator.type = #value
* section ^slicing.discriminator.path = "code"
* section ^slicing.rules = #open
* section contains introduction 1..1 MS
* section[introduction].title = "Introduction"
* section[introduction].code.text = "section2-introduction"
* section[introduction]
  * section 2..*
  * section ^slicing.discriminator.type = #value
  * section ^slicing.discriminator.path = "code"
  * section ^slicing.rules = #open
  * section contains purposeOfTrial 1..1 MS and benefitsAndRisks 1..1 MS
  * section[purposeOfTrial].title = "Purpose of Trial"
  * section[purposeOfTrial].code.text = "section2.1-trial-purpose"
  * section[purposeOfTrial]
    * text 1..1
    * text ^comment = "Explain why the trial is needed, why the research questions being asked are important.  Do not restate the IB."
  * section[benefitsAndRisks].title = "Summary of Benefits and Risks"
  * section[benefitsAndRisks].code.text = "section2.2-benefits-risks"
  * section[benefitsAndRisks]
    * section 3..*
    * section ^slicing.discriminator.type = #value
    * section ^slicing.discriminator.path = "code"
    * section ^slicing.rules = #open
    * section contains benefitSummary 1..1 MS and riskSummary 1..1 and overallBenefitRisk 1..1
    * section[benefitSummary].title = "Benefit Summary"
    * section[benefitSummary].code.text = "section2.2.1-benefit-summary"
    * section[benefitSummary]
      * text 1..1
      * text ^comment = "The benefit summary should be written from the perspective of an individual participant, and should describe any physical, psychological, social, legal, or any other potential benefits to individual participants as a result of participating in the trial, addressing immediate potential benefits and/or long-range potential benefits.  Clearly state if no benefits to an individual participant can be anticipated, or if potential benefits are unknown.  For early clinical trials such as Phase 1, benefits for an individual participant (other than those of altruism) are expected to be minimal. Benefits to society in general may also be included but should be described separately."
    * section[riskSummary].title = "Risk Summary and Mitigation Strategy"
    * section[riskSummary].code.text = "section2.2.2-risk-summary"
    * section[riskSummary]
      * section 3..*
      * section ^slicing.discriminator.type = #value
      * section ^slicing.discriminator.path = "code"
      * section ^slicing.rules = #open
      * section contains trialIntervention 1..1 MS and trialProcedures 1..1 and otherRisk 1..1
      * section[trialIntervention].title = "Trial-specific Intervention Risks and Mitigations"
      * section[trialIntervention].code.text = "section2.2.2.1-trial-intervention-risk-summary"
      * section[trialIntervention]
        * text 1..1
        * text ^comment = "Trial Intervention - Describe risks related to trial-specific treatments and interventions.  For the protocol, focus only on the relevant key risks for THIS trial.  Provide a brief description of strategies to mitigate identified risks or provide a cross-reference to the relevant protocol section."
      * section[trialProcedures].title = "Trial-specific Procedure Risks and Mitigations"
      * section[trialProcedures].code.text = "section2.2.2.2-trial-procedures-risk-summary"
      * section[trialProcedures]
        * text 1..1
        * text ^comment = "Trial Procedures - Consider risks associated with the design (for example, placebo arm) and procedures specific to THIS trial (for example, biopsies), and any measures to control the risks. Provide a brief description of strategies to mitigate identified risks or provide a cross-reference to the relevant protocol section.  This is not intended to be an exhaustive list of all possible risks associated with trial procedures but should focus on the unique risks inherent in the design or less common or high-risk procedures.  As above, provide a brief description of strategies to mitigate identified risks or provide a cross-reference to the relevant protocol section."
      * section[otherRisk].title = "Trial-specific Other Risks and Mitigations"
      * section[otherRisk].code.text = "section2.2.2.3-trial-other-risk-summary"
      * section[otherRisk]
        * text 1..1
        * text ^comment = "Other - Consider risks associated with other items (for example, comparators, challenge agents, imaging agents, medical devices).  Insert a line for each, as needed."
    * section[overallBenefitRisk].title = "Overall Benefit:Risk Conclusion"
    * section[overallBenefitRisk].code.text = "section2.2.3-overall-benefit-risk-conclusion"
    * section[overallBenefitRisk]
      * text 1..1
      * text ^comment = "Provide a succinct, concluding statement on the perceived balance between risks that have been identified from cumulative safety data, protocol procedures, and anticipated efficacy/benefits within the context of the proposed trial. Risks need to be assessed against the benefits for the individual participant at least once a year."
 