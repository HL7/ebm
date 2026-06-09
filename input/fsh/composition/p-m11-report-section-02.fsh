Profile: M11ReportSection02
Parent: EvidenceReport
Id: m11-report-section-02
Description: "Profile of Composition for Evidence Based Medicine IG. The M11ReportSection02 Profile is used for section 2 (Introduction) for the International Council for Harmonisation of Technical Requirements for Pharmaceuticals for Human Use (ICH) Clinical Electronic Structured Harmonised Protocol (CeSHarP) M11 Technical Specification."
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
* category contains introduction 0..1
* category[introduction].coding 1..1
* category[introduction].coding = http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C218520 "ICH M11 Protocol Section 2 INTRODUCTION"
* category[introduction].text = "section2-introduction"
* section 1..1
* section ^slicing.discriminator.type = #value
* section ^slicing.discriminator.path = "code.text"
* section ^slicing.rules = #open
* section contains introduction 1..1 MS
* section[introduction].title = "2 INTRODUCTION"
* section[introduction].code.coding 1..1
* section[introduction].code.coding = http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C218520 "ICH M11 Protocol Section 2 INTRODUCTION"
* section[introduction].code.text = "section2-introduction"
* section[introduction]
  * text ^comment = "No text is intended here (heading only)."
  * section 2..*
  * section ^slicing.discriminator.type = #value
  * section ^slicing.discriminator.path = "code.text"
  * section ^slicing.rules = #open
  * section contains purposeOfTrial 1..1 MS and benefitsAndRisks 1..1 MS
  * section[purposeOfTrial].title = "2.1 Purpose of Trial"
  * section[purposeOfTrial].code.coding 1..1
  * section[purposeOfTrial].code.coding = http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C218521 "ICH M11 Protocol Section 2.1 Purpose of Trial"
  * section[purposeOfTrial].code.text = "section2.1-trial-purpose"
  * section[purposeOfTrial]
    * text 1..1
    * text ^comment = "Explain why the trial is needed, and why the research questions being asked are important. Do not restate the objectives or estimands. Do not restate the IB; rather, cross reference to the IB as applicable to the description."
  * section[benefitsAndRisks].title = "2.2 Assessment of Risks and Benefits"
  * section[benefitsAndRisks].code.coding 1..1
  * section[benefitsAndRisks].code.coding = http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C218522 "ICH M11 Protocol Section 2.2 Assessment of Risks and Benefits"
  * section[benefitsAndRisks].code.text = "section2.2-benefits-risks"
  * section[benefitsAndRisks]
    * text 1..1
    * text ^comment = "Include an assessment of known and potential risks and benefits, if any, as a result of participating in the trial from the perspective of an individual participant, including the basis of the risk (e.g., nonclinical trials or prior clinical trials). This section may be structured under one single heading 2.2 Assessment of Risks and Benefits, or if applicable under 3 subheadings as 2.2.1 Risk Summary and Mitigation Strategy, 2.2.2 Benefit Assessment and 2.2.3 Overall Risk-Benefit Assessment"
  * section[benefitsAndRisks]
    * section 3..*
    * section ^slicing.discriminator.type = #value
    * section ^slicing.discriminator.path = "code.text"
    * section ^slicing.rules = #open
    * section contains riskSummary 0..1 and benefitSummary 0..1 MS and overallBenefitRisk 0..1
    * section[riskSummary].title = "2.2.1 Risk Summary and Mitigation Strategy"
    * section[riskSummary].code.coding 1..1
    * section[riskSummary].code.coding = http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C218523 "ICH M11 Protocol Section 2.2.1 Risk Summary and Mitigation Strategy"
    * section[riskSummary].code.text = "section2.2.1-risk-summary"
    * section[riskSummary]
      * text 0..1
      * text ^comment = "You may enter the entire risk summary here or use the subsections for Trial Intervention, Trial Procedures, and Other as noted below."
    * section[riskSummary]
      * section ^slicing.discriminator.type = #value
      * section ^slicing.discriminator.path = "code.text"
      * section ^slicing.rules = #open
      * section contains trialIntervention 0..1 MS and trialProcedures 0..1 and otherRisk 0..1
      * section[trialIntervention].title = "Trial-specific Intervention Risks and Mitigations"
      * section[trialIntervention].code.text = "section2.2.1.1-trial-intervention-risk-summary"
      * section[trialIntervention]
        * text 1..1
        * text ^comment = "Trial Intervention - Describe risks related to trial-specific treatments and interventions.  For the protocol, focus only on the relevant key risks for THIS trial.  Provide a brief description of strategies to mitigate identified risks or provide a cross-reference to the relevant protocol section."
      * section[trialProcedures].title = "Trial-specific Procedure Risks and Mitigations"
      * section[trialProcedures].code.text = "section2.2.1.2-trial-procedures-risk-summary"
      * section[trialProcedures]
        * text 1..1
        * text ^comment = "Trial Procedures - Describe risks associated with the design (e.g., placebo arm) and procedures specific to this trial (e.g., biopsies), and any measures to control or mitigate the risks. Provide a brief description of strategies to mitigate identified risks or provide a cross reference to the relevant protocol section. This is not intended to be an exhaustive list of all possible risks associated with trial procedures but should focus on the unique risks inherent in the design or less common or high-risk procedures. As above, provide a brief description of strategies to mitigate identified risks or provide a cross reference to the relevant protocol section."
      * section[otherRisk].title = "Trial-specific Other Risks and Mitigations"
      * section[otherRisk].code.text = "section2.2.1.3-trial-other-risk-summary"
      * section[otherRisk]
        * text 1..1
        * text ^comment = "Other - Consider risks associated with other items (for example, comparators, challenge agents, imaging agents, medical devices). This could include discussion of risk mitigation for special populations, if not described elsewhere. Insert a line for each, as needed."
    * section[benefitSummary].title = "2.2.2 Benefit Summary"
    * section[benefitSummary].code.coding 1..1
    * section[benefitSummary].code.coding = http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C218524 "ICH M11 Protocol Section 2.2.2 Benefit Summary"
    * section[benefitSummary].code.text = "section2.2.2-benefit-summary"
    * section[benefitSummary]
      * text 1..1
      * text ^comment = "The benefit summary should describe any physical, psychological, social, or any other potential benefits to individual participants as a result of participating in the trial, addressing immediate potential benefits and/or long-range potential benefits. Clearly state if no benefits to an individual participant can be anticipated, or if potential benefits are unknown. For early clinical trials such as Phase 1 or trials in healthy participants, benefits for an individual participant (other than those of altruism) are expected to be minimal. Benefits to society in general may also be included but should be described separately from the individual participant perspective."
    * section[overallBenefitRisk].title = "2.2.3 Overall Risk-Benefit Assessment"
    * section[overallBenefitRisk].code.coding 1..1
    * section[overallBenefitRisk].code.coding = http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C218525 "ICH M11 Protocol Section 2.2.3 Overall Risk-Benefit Assessment"
    * section[overallBenefitRisk].code.text = "section2.2.3-overall-risk-benefit-assessment"
    * section[overallBenefitRisk]
      * text 1..1
      * text ^comment = "Provide a succinct, concluding statement on the perceived balance between risks that have been identified from cumulative safety data, protocol procedures, and anticipated efficacy/benefits within the context of the proposed trial."
