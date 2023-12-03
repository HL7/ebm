Profile: M11Report
Parent: EvidenceReport
Id: m11-report
Description: "Profile of Composition for Evidence Based Medicine IG. The M11Report Profile is used for the International Council for Harmonisation of Technical Requirements for Pharmaceuticals for Human Use (ICH) Clinical Electronic Structured Harmonised Protocol (CeSHarP) M11 Technical Specification."
* category 1..*
* category ^slicing.discriminator.type = #value
* category ^slicing.discriminator.path = "text"
* category ^slicing.rules = #open
* category contains m11report 1..1 MS
* category[m11report].text = "CeSHarP Report"
* section 15..*
* section ^slicing.discriminator.type = #value
* section ^slicing.discriminator.path = "code"
* section ^slicing.rules = #open
* section contains summary 1..1 MS and introduction 1..1 MS and endpoints 1..* MS and design 1..1 MS and population 1..1 MS and intervention 1..1 MS and dropout 1..1 MS and assessments 1..1 MS and adverseEvents 1..1 MS and statistics 1..1 MS and oversight 1..1 MS and riskManagementAndData 1..1 MS and definitions 1..1 MS and glossary 1..1 MS and references 1..1 MS
* section[summary].title = "Protocol Summary"
* section[summary].code.text = "section1-protocol-summary"
* section[summary]
  * section 3..*
  * section ^slicing.discriminator.type = #value
  * section ^slicing.discriminator.path = "code"
  * section ^slicing.rules = #open
  * section contains protocolSynopsis 1..1 MS and trialSchema 1..1 MS and scheduleOfActivities 1..1 MS
  * section[protocolSynopsis].title = "Protocol Synopsis"
  * section[protocolSynopsis].code.text = "section1.1-protocol-synopsis"
  * section[protocolSynopsis]
    * section 6..*
    * section ^slicing.discriminator.type = #value
    * section ^slicing.discriminator.path = "code"
    * section ^slicing.rules = #open
    * section contains objectivesEndpoints 1..1 MS and overallDesign 1..1 and numberOfArms 1..1 and blinding 1..1 and numberOfParticipants 1..1 and duration 0..1 and committees 1..1
    * section[objectivesEndpoints].title = "Primary and Secondary Objectives and Endpoints"
    * section[objectivesEndpoints].code.text = "section1.1.1-objectives-endpoints"
    * section[objectivesEndpoints]
      * text 1..1
      * text ^comment = "Include a copy of the Objectives/Endpoints Table including primary and secondary endpoints only from Section 3 of the protocol and follow all the same instructions.  Not all trials will have a complete estimand.  Do not include exploratory endpoints in the synopsis."
      * entry only Reference(Composition)
    * section[overallDesign].title = "Overall Design"
    * section[overallDesign].code.text = "section1.1.2-overall-design"
    * section[overallDesign]
      * text 1..1
      * text ^comment = "see Template instructions"
      * entry only Reference(Composition or ResearchStudy)
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
      * text ^comment = "State the expected number of participants to be assigned to trial intervention/enrolled.  Indicate whether the number provided is the target or maximum number of individuals to be randomly assigned to trial intervention/enrolled. A [Target/ Maximum] of [[Enter Number of Participants]] participants will be [randomly assigned to trial intervention/ enrolled]."
    * section[duration].code.text = "Arms and Duration"
    * section[duration]
      * text 1..1
      * text ^comment = "see Template instructions"
    * section[committees].code.text = "Committees"
    * section[committees]
      * text 1..1
      * text ^comment = "Indicate whether any committee(s) will be reviewing data while the trial is ongoing, and the type of committee.  Common examples include Data Monitoring Committee, Dose Escalation Committee, or Endpoint Adjudication Committee; describe others, if applicable.   List independent committees in the space indicated.  Other committees may be included at the Sponsor’s discretion in the separate space provided.  Committees listed here should be fully described in Section 11.3. Indicate N/A if no independent committees will be involved in the trial. Delete Other Committees if not applicable."
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
* section[endpoints].title = "Trial Objectives, Endpoints and Estimands"
* section[endpoints].code.text = "section3-endpoints"
* section[endpoints]
  * section 1..*
  * section ^slicing.discriminator.type = #value
  * section ^slicing.discriminator.path = "code"
  * section ^slicing.rules = #open
  * section contains objectiveEndpoint 1..* MS
  * section[objectiveEndpoint].title = "Objective + Associated Endpoint (and Estimand)"
  * section[objectiveEndpoint].code.text = "section3.1-objective-endpoint-estimand"
  * section[objectiveEndpoint]
    * focus 1..1
    * focus only Reference(OutcomeVariable)
    * section 4..*
    * section ^slicing.discriminator.type = #value
    * section ^slicing.discriminator.path = "code"
    * section ^slicing.rules = #open
    * section contains primarySecondaryExploratory 1..1 MS and objective 1..1 MS and endpoint 1..1 MS and estimand 1..1 MS
    * section[primarySecondaryExploratory].title = "Primary/Secondary/Exploratory Classification"
    * section[primarySecondaryExploratory].code.text = "Primary/Secondary/Exploratory"
    * section[primarySecondaryExploratory]
      * text 1..1
      * text ^comment = "Enter 'Primary' or 'Secondary' or 'Exploratory' as the data value."
    * section[objective].title = "Objective"
    * section[objective].code.text = "Objective"
    * section[objective]
      * text 1..1
      * text ^comment = "Precisely define each clinical question of interest by stating each trial objective."
    * section[endpoint].title = "Endpoint"
    * section[endpoint].code.text = "Endpoint"
    * section[endpoint]
      * text 1..1
      * text ^comment = "Enter the description of the Endpoint (measured variable)."
    * section[estimand].title = "Estimand"
    * section[estimand].code.text = "Estimand"
    * section[estimand]
      * text 1..1
      * text ^comment = "Describe the attributes that construct the estimand: the treatment condition of interest, the population of participants targeted by the clinical question of interest, other intercurrent events (if applicable), a population level summary, and the endpoint (or variable) specified in the table above."
 
* section[design].title = "Trial Design"
* section[design].code.text = "section4-trial-design"
* section[design]
  * section 4..*
  * section ^slicing.discriminator.type = #value
  * section ^slicing.discriminator.path = "code"
  * section ^slicing.rules = #open
  * section contains description 1..1 MS and rationale 1..1 MS and trialStoppingRules 1..1 MS and startEnd 1..1 MS and access 0..1 MS
  * section[description].title = "Description of Trial Design"
  * section[description].code.text = "section4.1-description-of-trial-design"
  * section[description]
    * text 1..1
    * text ^comment = "see Template instructions"
    * section 0..*
    * section ^slicing.discriminator.type = #value
    * section ^slicing.discriminator.path = "code"
    * section ^slicing.rules = #open
    * section contains stakeholderInput 0..1 MS
    * section[stakeholderInput].title = "Stakeholder Input into Design"
    * section[stakeholderInput].code.text = "section4.1.1-stakeholder-input-into-design"
    * section[stakeholderInput]
      * text 1..1
      * text ^comment = "If applicable, describe any stakeholder (for example, patient, healthcare professional and patient advocacy groups) involvement in the design of the trial and any suggestions implemented."
  * section[rationale].title = "Rationale for Trial Design"
  * section[rationale].code.text = "section4.2-rationale-for-trial-design"
  * section[rationale]
    * section 0..*
    * section ^slicing.discriminator.type = #value
    * section ^slicing.discriminator.path = "code"
    * section ^slicing.rules = #open
    * section contains model 0..1 MS and duration 0..1 MS and endpoints 0..1 MS and interim 0..1 MS and comparator 0..1 MS and adaptive 0..1 MS and otherAspects 0..1 MS
    * section[model].title = "Rationale for Intervention Model"
    * section[model].code.text = "section4.2.1-rationale-intervention-model"
    * section[model]
      * text 1..1
      * text ^comment = "Provide a rationale for the trial intervention model selected in Section 4.1, Description of Trial Design with a cross-reference to Section 6.2, Rationale for Investigational Intervention(s). Rationale for choice of comparator, if applicable, should be described separately in Section 4.2.5, Rationale for Comparator. A rationale for the choice of trial population should be described separately in Section 5.1, Description of Trial Population and Rationale."
    * section[duration].title = "Rationale for Duration"
    * section[duration].code.text = "section4.2.2-rationale-duration"
    * section[duration]
      * text 1..1
      * text ^comment = "Provide a rationale that the trial duration is appropriate for a reliable and relevant evaluation of the trial intervention per the trial objective(s)."
    * section[endpoints].title = "Rationale for Endpoints"
    * section[endpoints].code.text = "section4.2.3-rationale-endpoints"
    * section[endpoints]
      * text 1..1
      * text ^comment = "Provide a rationale that the trial endpoint(s) described in Section 3, Trial Objectives, Endpoints, and Estimands, are clinically relevant and provide a reliable and valid measurement of the intended intervention effect."  
    * section[interim].title = "Rationale for Interim Analysis"
    * section[interim].code.text = "section4.2.4-rationale-interim-analysis"
    * section[interim]
      * text 1..1
      * text ^comment = "If applicable, provide a rationale for any interim analysis planned with respect to its purpose (for example, stopping the trial early for efficacy or futility) and timing."  
    * section[comparator].title = "Rationale for Comparator"
    * section[comparator].code.text = "section4.2.5-rationale-comparator"
    * section[comparator]
      * text 1..1
      * text ^comment = "If applicable, provide a rationale for the type of control selected for the trial (for example, placebo, active drug, combination, historical). Describe any known or potential problems associated with the control group selected in light of the specific disease and intervention(s) being studied.  If comparators will differ by region, describe."  
    * section[adaptive].title = "Rationale for Adaptive or Novel Trial Design"
    * section[adaptive].code.text = "section4.2.6-rationale-adaptive"
    * section[adaptive]
      * text 1..1
      * text ^comment = "If applicable, provide a rationale for the use of an adaptive or novel design."  
    * section[otherAspects].title = "Rationale for Other Trial Design Aspects"
    * section[otherAspects].code.text = "section4.2.7-rationale-other-aspects"
    * section[otherAspects]
      * text 1..1
      * text ^comment = "Discuss rationale for any additional aspects of the design not addressed above."
  * section[trialStoppingRules].title = "Trial Stopping Rules"
  * section[trialStoppingRules].code.text = "section4.3-trial-stopping-rules"
  * section[trialStoppingRules]
    * text 1..1
    * text ^comment = "If applicable, describe any trial-specific stopping rules, including guidance on when the trial should be stopped for safety reasons, when a cohort or dose escalation should be terminated, and/or when a given treatment arm should be terminated."
    * section 0..*
    * section ^slicing.discriminator.type = #value
    * section ^slicing.discriminator.path = "code"
    * section ^slicing.rules = #open
    * section contains temporaryHalt 0..1 MS
    * section[temporaryHalt].title = "Temporary Trial Halt"
    * section[temporaryHalt].code.text = "section4.3.1-temporary-trial-halt"
    * section[temporaryHalt]
      * text 1..1
      * text ^comment = "If applicable, describe when any of the stopping rules may result in a temporary halt of enrollment into the trial and criteria for restarting enrollment."
  * section[startEnd].title = "Start of Trial and End of Trial"
  * section[startEnd].code.text = "section4.4-start-and-end"
  * section[startEnd]
    * text 1..1
    * text ^comment = "Define key timepoints in the trial, including trial start and end dates. For example, a key timepoint definition for start of trial might be when the informed consent is signed by the first participant and a key timepoint definition for end of trial might be when participants are no longer being examined or the last participant’s last study assessment has occurred.   If applicable, consider local regulatory requirements for these and other definitions (for example, the first act of recruitment). If appropriate, provide a cross-reference to Section 11.6"
  * section[access].title = "Access to Trial Intervention After End of Trial"
  * section[access].code.text = "section4.5-access-after-trial"
  * section[access]
    * text 1..1
    * text ^comment = "If applicable, describe any possibilities for access to trial intervention, if any, beyond completion of the trial.  Planned extension trials, if described above in Section 4.1 do not need to be repeated."

  
* section[population].title = "Trial Population"
* section[population].code.text = "section5-trial-population"
* section[population]
  * section 5..*
  * section ^slicing.discriminator.type = #value
  * section ^slicing.discriminator.path = "code"
  * section ^slicing.rules = #open
  * section contains description 1..1 MS and inclusionCriteria 1..1 MS and exclusionCriteria 1..1 MS and lifestyle 0..1 MS and screenFailures 0..1 MS
  * section[description].title = "5.1	Description of Trial Population and Rationale"
  * section[description].code.text = "section5.1-population-description"
  * section[description]
    * text 1..1
    * text ^comment = "Describe the population selected (for example, healthy participants, adult participants, paediatric participants) and how the enrollment criteria reflect the populations that are likely to use the drug if approved.  Specify the population age range (for example, ≤3 months, ≥18 to ≤80 years old) including the time point at which qualification for age criteria is determined (for example, at time of screening vs randomization for paediatric trials). Specify any key diagnostic criteria for the population (for example, “acute lung injury”, or a specific biomarker profile).  If applicable, describe similar conditions or diseases and their differential diagnosis. Provide a rationale for the trial population ensuring that the population selected is well defined and clinically recognisable. Describe how the selected population can meet the trial objectives and how the enrollment criteria reflects the targeted populations. Justify whether the trial intervention is to be evaluated in paediatric participants, in adults unable to consent for themselves, other vulnerable participant populations, or those that may respond to the trial intervention differently (for example, elderly, hepatic or renally impaired, or immunocompromised participants)."
    * entry only Reference(CohortDefinition)
  * section[inclusionCriteria].title = "Inclusion Criteria"
  * section[inclusionCriteria].code.text = "section5.2-inclusion-criteria"
  * section[inclusionCriteria]
    * text 1..1
    * text ^comment = "Inclusion criteria are characteristics that define the trial population, for example, those criteria that every potential participant must satisfy, to qualify for trial entry."
    * entry only Reference(CohortDefinition)
  * section[exclusionCriteria].title = "Exclusion Criteria"
  * section[exclusionCriteria].code.text = "section5.3-exclusion-criteria"
  * section[exclusionCriteria]
    * text 1..1
    * text ^comment = "Exclusion criteria are characteristics that make an individual ineligible for participation."
    * entry only Reference(CohortDefinition)
  * section[lifestyle].title = "Lifestyle Restrictions"
  * section[lifestyle].code.text = "section5.4-lifestyle-restrictions"
  * section[lifestyle]
    * text 1..1
    * text ^comment = "In the following subsections, describe any restrictions during the trial pertaining to lifestyle and/or diet, intake of caffeine, alcohol, or tobacco, or physical and other activities. If not applicable, include a statement that no restrictions are required."
    * section 0..*
    * section ^slicing.discriminator.type = #value
    * section ^slicing.discriminator.path = "code"
    * section ^slicing.rules = #open
    * section contains dietary 0..1 MS and substances 0..1 MS and activity 0..1 MS and other 0..1 MS
    * section[dietary].title = "Meals and Dietary Restrictions"
    * section[dietary].code.text = "section5.4.1-dietary-restrictions"
    * section[dietary]
      * text 1..1
      * text ^comment = "If applicable, describe any restrictions on diet (for example, food and drink restrictions, timing of meals relative to dosing)."
    * section[substances].title = "Caffeine, Alcohol, Tobacco, and Other Restrictions"
    * section[substances].code.text = "section5.4.2-substances-restrictions"
    * section[substances]
      * text 1..1
      * text ^comment = "If applicable, describe any restrictions on the intake of caffeine, alcohol, tobacco, or other restrictions."
    * section[activity].title = "Physical Activity Restrictions"
    * section[activity].code.text = "section5.4.3-activity-restrictions"
    * section[activity]
      * text 1..1
      * text ^comment = "If applicable, describe any restrictions on activity (for example, in first-in-human trials, activity may be restricted by ensuring participants remain in bed for 4 to 6 hours after dosing)."
    * section[other].title = "Other Activity Restrictions"
    * section[other].code.text = "section5.4.4-other-restrictions"
    * section[other]
      * text 1..1
      * text ^comment = "If applicable, describe restrictions on any other activity (for example, blood or tissue donation); or any other activity restrictions, such as on driving, heavy machinery use, or sun exposure."  
  * section[screenFailures].title = "Screen Failure and Rescreening" 
  * section[screenFailures].code.text = "section5.5-screen-failure"
  * section[screenFailures]
    * text 1..1
    * text ^comment = "Indicate how screen failure will be handled in the trial, including conditions and criteria upon which rescreening is acceptable. If applicable, indicate the circumstances and time window under which a repeat procedure is allowed for screen failure relating to specific inclusion/exclusion criteria for the trial."
  

* section[intervention].title = "Trial Intervention"
* section[intervention].code.text = "section6-trial-intervention"
* section[intervention]
  * section 8..*
  * section ^slicing.discriminator.type = #value
  * section ^slicing.discriminator.path = "code"
  * section ^slicing.rules = #open
  * section contains description 1..1 MS and rationale 1..1 MS and dosingAdministration 1..1 MS and treatmentOfOverdose 1..1 MS and preparation 1..1 MS and assignmentAndBlinding 1..1 MS and compliance 1..1 MS and noninvestigationalTherapy 0..1 MS and concomitantTherapy 1..1 MS
  * section[description].title = "Description of Investigational Trial Intervention"
  * section[description].code.text = "section6.1-description-of-trial-intervention"
  * section[description]
    * text 1..1
    * text ^comment = "The investigational trial intervention(s) should be described concisely in a table. Describe the investigational trial intervention to be administered in each arm of the trial and for each period of the trial including route and mode of administration, dose, dosage regimen, duration of intervention, use, packaging and labelling. Refer to approved regional labelling, as appropriate. For drug/device combination products, include details on the configuration and use of the device and device manufacturer. A device user manual may be referenced in this section."
    * entry only Reference(ExposureDefinition)
  * section[rationale].title = "Rationale for Investigational Trial Intervention Dose and Regimen"
  * section[rationale].code.text = "section6.2-rationale-for-trial-intervention-regimen"
  * section[rationale]
    * text 1..1
    * text ^comment = "Provide a rationale for the selection of the dose(s) or dose range, the route of administration, and dosing regimen of the investigational trial intervention. This rationale should include relevant results from previous preclinical studies and clinical trials that support selection of the dose and regimen.  Discuss impact of differences in study population characteristics (for example, age, sex and/or race) which could lead to differences in pharmacokinetics and pharmacodynamics in this study as compared to previous studies. If applicable, justify any differences in dose regimen or therapeutic use relative to approved labelling. Describe prior trials and other information that support the dose and/or dose regimen of the investigational intervention. Include a rationale for prospective dose adjustments incorporated in the trial, if any."
    * entry only Reference(ExposureDefinition)
  * section[dosingAdministration].title = "Investigational Trial Intervention Administration"
  * section[dosingAdministration].code.text = "section6.3-dosing-and-administration"
  * section[dosingAdministration]
    * text 1..1
    * text ^comment = "Describe the detailed procedures for administration of each participant's dose of investigational trial intervention. This may include the timing of dosing (for example, time of day, interval), the duration (for example, the length of time participants will be administered the investigational trial intervention), the planned route of administration (for example, oral, nasal, intramuscular), and the timing of dosing relative to meals. Include any specific instructions to trial participants about when or how to prepare and take the dose(s) and how delayed or missed doses should be handled. Dose escalation or cohort expansion as part of the overall design should be covered in Section 4.1 (Description of Trial Design)."
    * entry only Reference(ActivityDefinition)
    * section 0..*
    * section ^slicing.discriminator.type = #value
    * section ^slicing.discriminator.path = "code"
    * section ^slicing.rules = #open
    * section contains doseModification 0..1 MS
    * section[doseModification].title = "Investigational Trial Intervention Dose Modification"
    * section[doseModification].code.text = "section6.3.1-dose-modification"
    * section[doseModification]
      * text 1..1
      * text ^comment = "For each participant, describe any dose modifications allowed, including conditions for such dose modifications, particularly regarding failure to respond or safety concerns. State any minimum period required before a participant’s dose might be raised to the next higher dose or dose range. Include whether it is permissible to start and stop treatment and how dose reductions (if permitted) are to be managed. Information on stopping investigational trial intervention for an individua participant due to safety/other reasons should be detailed in Section 7, Participant Discontinuation of Trial Intervention and Withdrawal from Trial."
      * entry only Reference(ActivityDefinition)
  * section[treatmentOfOverdose].title = "Management of Investigational Trial Intervention Overdose"
  * section[treatmentOfOverdose].code.text = "section6.4-management-of-overdose"
  * section[treatmentOfOverdose]
    * text 1..1
    * text ^comment = "Describe what is meant by investigational trial intervention overdose. Provide any available information on managing the overdose and ensure it is consistent with the Investigator’s Brochure or product labelling, cross-references these documents as applicable."
    * entry only Reference(ActivityDefinition or PlanDefinition)
  * section[preparation].title = "Preparation, Storage, Handling and Accountability of Investigational Trial Intervention(s)"
  * section[preparation].code.text = "section6.5-preparation-storage-handling"
  * section[preparation]
    * section 3..*
    * section ^slicing.discriminator.type = #value
    * section ^slicing.discriminator.path = "code"
    * section ^slicing.rules = #open
    * section contains preparationIntervention 1..1 MS and storageHandling 1..1 MS and accountability 1..1 MS
    * section[preparationIntervention].title = "Preparation of Investigational Trial Intervention(s)"
    * section[preparationIntervention].code.text = "section6.5.1-preparation"
    * section[preparationIntervention]
      * text 1..1
      * text ^comment = "Describe any preparation of the investigational trial intervention, and when necessary, by whom. When applicable, describe the maximum hold time once thawed/mixed before administration. Include thawing, diluting, mixing, and reconstitution/preparation instructions in this section. For drug/device combination products, include any relevant assembly or use instructions and reference the package insert that is provided separately. If the instructions are lengthy or complicated, it is acceptable to reference the package insert (if applicable) or include instructions in a separate document(s) provided to the site (for example, a pharmacy manual). If the latter, reference the separate documents."
    * section[storageHandling].title = "Storage and Handling of Investigational Trial Intervention"
    * section[storageHandling].code.text = "section6.5.2-storage-handling"
    * section[storageHandling]
      * text 1..1
      * text ^comment = "Describe storage and handling requirements (for example, protection from light, temperature, humidity) for the investigational trial intervention(s).  For trials in which multi-dose vials are utilised, provide additional information regarding stability and expiration time after initial use (for example, the seal is broken). State how the investigational trial intervention(s) will be provided to the Investigator. If applicable, describe the kits, packaging, or other material of the investigational trial intervention for blinding purposes. If the instructions are lengthy or complicated, it is acceptable to reference the package insert (if applicable) or include instructions in a separate document(s) provided to the site (for example, a pharmacy manual). If the latter, reference the separate documents."
    * section[accountability].title = "Accountability of Investigational Trial Intervention"
    * section[accountability].code.text = "section6.5.3-accountability"
    * section[accountability]
      * text 1..1
      * text ^comment = "Describe the accountability method, including how the investigational trial intervention will be distributed and related details, including: •	how and by whom the investigational trial intervention will be distributed •	participation of a drug storage repository or pharmacy, if applicable, •	plans for disposal or return of unused product, •	if applicable, plans for reconciliation of investigational trial intervention."
  * section[assignmentAndBlinding].title = "Investigational Trial Intervention Assignment, Randomisation and Blinding"
  * section[assignmentAndBlinding].code.text = "section6.6-assignment-randomisation-blinding"
  * section[assignmentAndBlinding]
    * section 4..*
    * section ^slicing.discriminator.type = #value
    * section ^slicing.discriminator.path = "code"
    * section ^slicing.rules = #open
    * section contains assignment 1..1 MS and randomisation 1..1 MS and blinding 1..1 MS and unblinding 1..1 MS
    * section[assignment].title = "Participant Assignment to Investigational Trial Intervention"
    * section[assignment].code.text = "section6.6.1-assignment"
    * section[assignment]
      * text 1..1
      * text ^comment = "Describe the method of assigning participants to investigational trial intervention without being so specific that blinding or randomisation might be compromised. If assignment to investigational trial intervention is by randomisation, describe when randomisation occurs relative to screening. State that at enrollment, participant identification codes should be assigned. If adaptive randomisation or other methods of covariate balancing/minimisation are employed, include a cross-reference to the methods of analysis in Section 10, Statistical Considerations. As applicable, details regarding the implementation of procedures to minimise bias should be described."
    * section[randomisation].title = "Randomisation"
    * section[randomisation].code.text = "section6.6.2-randomisation"
    * section[randomisation]
      * text 1..1
      * text ^comment = "Describe the randomisation procedures (for example, central randomisation procedures), the method used to generate the randomisation schedule (for example, computer generated), the source of the randomisation schedule (for example, sponsor, investigator, or other), and whether or not IxRS will be used. To maintain the integrity of the blinding, do not include the block size. Describe the use and validation of any computer systems and programmes used for randomisation."
    * section[blinding].title = "Blinding"
    * section[blinding].code.text = "section6.6.3-blinding"
    * section[blinding]
      * text 1..1
      * text ^comment = "Describe efforts to ensure that the investigational trial intervention(s) are as indistinguishable as possible. Plans for the maintenance of randomisation codes and appropriate blinding for the trial should be described. Procedures for planned and unplanned (for example, safety events) breaking of randomisation codes should be provided. If the trial allows for some investigators or other designated staff to remain unblinded (for example, to allow them to adjust investigational trial intervention), the means of maintaining the blinding for other investigators or staff should be explained. Measures to prevent unblinding by laboratory measurements or while performing study assessments, if used, should be described."
    * section[unblinding].title = "Emergency Unblinding at the Site"
    * section[unblinding].code.text = "section6.6.4-unblinding"
    * section[unblinding]
      * text 1..1
      * text ^comment = "Describe the criteria for breaking the trial blind or participant code. Describe the circumstances in which the blinding would be broken for an individual or for all participants and who has responsibility. Include the procedure for emergency unblinding such as via IxRS or code envelopes as well as documentation of unblinding. Indicate to whom the intentional and unintentional unblinding should be reported."
  * section[compliance].title = "Investigational Trial Intervention Compliance"
  * section[compliance].code.text = "section6.7-intervention-compliance"
  * section[compliance]
    * text 1..1
    * text ^comment = "Describe measures employed to ensure and document dosing information and investigational trial intervention compliance (for example, accountability records, diary cards, or concentration measurements). Include a description of what documents are mandatory to complete (for example, participant drug log) and what source data/records will be used to document investigational trial intervention compliance."
  * section[noninvestigationalTherapy].title = "Non-Investigational Trial Intervention(s)"
  * section[noninvestigationalTherapy].code.text = "section6.8-noninvestigational-interventions"
  * section[noninvestigationalTherapy]
    * section 0..*
    * section ^slicing.discriminator.type = #value
    * section ^slicing.discriminator.path = "code"
    * section ^slicing.rules = #open
    * section contains background 0..1 MS and rescue 0..1 MS and other 0..1 MS
    * section[background].title = "Background Intervention"
    * section[background].code.text = "section6.8.1-background-intervention"
    * section[background]
      * text 1..1
      * text ^comment = "Non-investigational interventions are products used in the context of the trial but are not part of trial objectives and are not investigational trial intervention. Describe background interventions, including administration and any conditions for use."
    * section[rescue].title = "Rescue Therapy"
    * section[rescue].code.text = "section6.8.2-rescue-therapy"
    * section[rescue]
      * text 1..1
      * text ^comment = "List all rescue medications, treatments, and/or procedures, including any relevant instructions about their administration and any conditions for their use. If administration of rescue therapy leads to the temporary discontinuation of trial intervention or a participant’s withdrawal from the trial, refer to Section 7, Participant Discontinuation of Trial Intervention and Withdrawal from Trial."
    * section[other].title = "Other Therapy"
    * section[other].code.text = "section6.8.3-other-therapy"
    * section[other]
      * text 1..1
      * text ^comment = "If applicable, describe the use of other non-investigational or auxiliary therapy, for example, challenge agents or diagnostics."
  * section[concomitantTherapy].title = "Concomitant Therapy"
  * section[concomitantTherapy].code.text = "section6.9-concomitant-therapy"
  * section[concomitantTherapy]
    * text 1..1
    * text ^comment = "Describe the concomitant medications, supplements, complementary and alternative therapies, treatments, and/or procedures which are allowed or prohibited during the trial, and include details about when the information will be collected (for example, screening, all visits). This section should be consistent with the medication restrictions in the inclusion/exclusion criteria previously listed."
    * section 0..*
    * section ^slicing.discriminator.type = #value
    * section ^slicing.discriminator.path = "code"
    * section ^slicing.rules = #open
    * section contains prohibited 0..1 MS and permitted 0..1 MS
    * section[prohibited].title = "Prohibited Concomitant Therapy"
    * section[prohibited].code.text = "section6.9.1-prohibited-concomitant-therapy"
    * section[prohibited]
      * text 1..1
      * text ^comment = "If applicable, describe any prohibited concomitant therapy."
    * section[permitted].title = "Permitted Concomitant Therapy"
    * section[permitted].code.text = "section6.9.2-permitted-concomitant-therapy"
    * section[permitted]
      * text 1..1
      * text ^comment = "If applicable, describe any permitted concomitant therapy."


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
  * section[lostToFollowUp].code.text = "section7.3-lost-to-follow-up"
  * section[lostToFollowUp]
    * text 1..1
    * text ^comment = "Describe the measures to be taken to reduce the frequency of participants lost to follow up. Describe how the trial will define and address participants who are lost to follow-up to help limit the amount and impact of missing data. Describe the nature and duration of follow-up, as appropriate."
  * section[trialStoppingRules].title = "Participant Stopping Rules"
  * section[trialStoppingRules].code.text = "section7.4-participant-stopping-rules"
  * section[trialStoppingRules]
    * text 1..1
    * text ^comment = "If applicable, describe any trial-specific stopping rules that would apply to individual participants such as treatment or study non-compliance or due to safety reasons. Address the procedure ensuring alignment with the intercurrent events and their handling strategies introduced in Section 3."
  

* section[assessments].title = "Trial Assessments and Procedures"
* section[assessments].code.text = "section8-assessments"
* section[assessments]
  * text 0..1
  * text ^comment = "• Describe the assessments and procedures required during each phase of the trial. Provide details that are not already presented in the SoA, taking care not to duplicate information. •	Describe methods, training, tools, instruments/questionnaires, calibration methods, etc. that will be used to record and assess data and ensure consistency across centres and participants. Include instructions on timing/conditions of assessments and if a specifically qualified person should be performing these assessments. Describe whether centralised readings and measurements will be utilised. •	Reference the literature for the validation of scales/instruments/questionnaires/assays. •	Instructions or protocols for specialised tests and scales/instruments/questionnaires/assays may be presented in an appendix or a separate document and cross-referenced. •	If the trial includes qualitative interviews, describe these evaluations. •	If COA measures are utilised, include instructions for the investigators per local guidance. All descriptions related to COA parameters should be fully integrated into the appropriate sections of the protocol; separate COA sections should not be created in the protocol. •	Include minimums and limits for procedures (for example, number of imaging procedures/biopsies, radiation exposure, etc.) if appropriate to the trial."
  * section 8..*
  * section ^slicing.discriminator.type = #value
  * section ^slicing.discriminator.path = "code"
  * section ^slicing.rules = #open
  * section contains screeningBaseline 1..1 MS and efficacy 1..1 MS and safety 1..1 MS and pharmacokinetics 1..1 MS and genetics 1..1 MS and biomarkers 1..1 MS and immunogenicity 1..1 MS and economics 0..1 MS
  * section[screeningBaseline].title = "Screening/Baseline Assessments and Procedures"
  * section[screeningBaseline].code.text = "section8.1-screening-baseline-assessments"
  * section[screeningBaseline]
    * text 1..1
    * text ^comment = "Describe any assessments and procedures that are unique to screening/baseline (for example, collection of data on participant characteristics, assessments/procedures performed for the purpose of determining eligibility or for stratification) in this section. Describe screening and baseline assessments and procedures separately if screening and baseline are performed at different visits."
  * section[efficacy].title = "Efficacy Assessments and Procedures"
  * section[efficacy].code.text = "section8.2-efficacy-assessments"
  * section[efficacy]
    * text 1..1
    * text ^comment = "Describe efficacy assessments and procedures in this section. Cross-refer to Section 8.7 if immunogenicity assessments are used in efficacy determination."
  * section[safety].title = "Safety Assessments and Procedures"
  * section[safety].code.text = "section8.3-safety-assessments"
  * section[safety]
    * section 0..*
    * section ^slicing.discriminator.type = #value
    * section ^slicing.discriminator.path = "code"
    * section ^slicing.rules = #open
    * section contains physical 0..1 MS and vitals 0..1 MS and ecg 0..1 MS and laboratory 0..1 MS and pregnancy 0..1 MS and suicidal 0..1 MS
    * section[physical].title = "Physical Examination"
    * section[physical].code.text = "section8.3.1-physical-examination"
    * section[physical] 
      * text 1..1
      * text ^comment = "Include any specific instructions for the collection and interpretation of physical examinations."
    * section[vitals].title = "Vital Signs"
    * section[vitals].code.text = "section8.3.2-vital-signs"
    * section[vitals] 
      * text 1..1
      * text ^comment = "Include any specific instructions for the collection and interpretation of vital signs."
    * section[ecg].title = "Electrocardiograms"
    * section[ecg].code.text = "section8.3.3-electrocardiograms"
    * section[ecg] 
      * text 1..1
      * text ^comment = "Include any specific instructions for the collection, interpretation, and archiving of ECGs."      
    * section[laboratory].title = "Clinical Laboratory Assessments"
    * section[laboratory].code.text = "section8.3.4-clinical-laboratory-assessments"
    * section[laboratory] 
      * text 1..1
      * text ^comment = "Include any specific instructions for the collection and interpretation of clinical laboratory assessments. •	Type of laboratory (central/local/hybrid) •	acceptability of additional tests deemed necessary by the investigator or local regulations •	instructions for situations in which central laboratory results are not available in time for trial intervention and/or response evaluation, or in the event of a severe disruption (for example, a pandemic or natural disaster) •	treatment algorithms for results out of normal range •	Cross-refer to Section 13.2 for lab assessment panels"
    * section[pregnancy].title = "Pregnancy Testing"
    * section[pregnancy].code.text = "section8.3.5-pregnancy-testing"
    * section[pregnancy] 
      * text 1..1
      * text ^comment = "Optional section to specify pregnancy testing requirements."
    * section[suicidal].title = "Suicidal Ideation and Behaviour Risk Monitoring"
    * section[suicidal].code.text = "section8.3.6-suicidal-ideation"
    * section[suicidal] 
      * text 1..1
      * text ^comment = "If the trial meets any of the criteria requiring suicidal ideation and behaviour risk monitoring by the guidance/guideline in each region, include justification for the need for suicidal ideation and behaviour risk monitoring in the study and add any specific instructions for the collection and interpretation of the assessment. In case this is an AESI in the study, justification will also need to be provided in the appropriate subsection of Section 9.4."
  * section[pharmacokinetics].title = "Pharmacokinetics"
  * section[pharmacokinetics].code.text = "section8.4-pharmacokinetics"
  * section[pharmacokinetics]
    * text 1..1
    * text ^comment = "Include any specific instructions for the collection and assay of samples and interpretation of PK assessments. If pharmacokinetic testing is not included in the study, state Not Applicable. •	Describe the biological sample(s) collected, the handling of samples, and the assay method. o	Specific sample collection and processing instructions can be described in an appendix or a separate document and cross-referenced. •	Describe the retention time for the samples (ensuring alignment with the ICF). •	Indicate the types of analyses that may be studied for each sample."
  * section[genetics].title = "Genetic Testing"
  * section[genetics].code.text = "section8.5-genetic-testing"
  * section[genetics]
    * text 1..1
    * text ^comment = "Include any specific instructions for the collection and assay of samples for genetic analysis. If genetic testing is not included in the study, state Not Applicable. •	Describe the biological samples that will be collected (for example, tissue, serum, plasma, etc.), handling of samples, and the assay method. o	Specific sample collection and processing instructions can be described in an appendix or a separate document and cross-referenced. •	Describe the retention time for the samples (ensuring alignment with the ICF). •	Indicate the types of analyses that may be studied for each sample."
  * section[biomarkers].title = "Biomarkers"
  * section[biomarkers].code.text = "section8.6-biomarkers"
  * section[biomarkers]
    * text 1..1
    * text ^comment = "Include any specific instructions for the collection of samples and assessment of biomarkers, including pharmacodynamics. If biomarker or pharmacodynamic testing is not included in the study, state Not Applicable. •	Describe the biological samples that will be collected (for example, tissue, serum, plasma, etc.). o	Specific sample collection and processing instructions can be described in an appendix or a separate document and cross-referenced. •	Describe the retention time for the samples (ensuring alignment with the ICF). •	Indicate the types of biomarkers that will be studied for each sample. •	Specify whether each sample is optional or required. Required samples must be based on a protocol objective."
  * section[immunogenicity].title = "Immunogenicity Assessments"
  * section[immunogenicity].code.text = "section8.7-immunogenicity-assessments"
  * section[immunogenicity]
    * text 1..1
    * text ^comment = "Include any specific instructions for the collection of samples and interpretation of immunogenicity. If immunogenicity assessments are included within Efficacy Assessments or Safety Assessments, cross-reference to that section. If immunogenicity testing is not included in the study, state Not Applicable."
  * section[economics].title = "Medical Resource Utilisation and Health Economics"
  * section[economics].code.text = "section8.8-economics"
  * section[economics]
    * text 1..1
    * text ^comment = "This section does not apply to COAs.  Include this section only for any value evidence and outcomes assessments not included in either the efficacy or safety sections. If medical resource utilization and health economics assessment is not included in the study, state Not Applicable. Describe the health outcome measures, collection method (for example, diary, physician interview), and participant burden."


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


* section[statistics].title = "Statistical Considerations"
* section[statistics].code.text = "section10-statistics"
* section[statistics]
  * text 1..1
  * text ^comment = "Ensure that the data analysis complies with ICH E9 Guideline and ICH E9(R1) Guideline. In general, all relevant data collected in the trial should be considered in this statistical considerations section. Provide a statement with regard to when the primary analyses will be conducted. For example: The analysis will be conducted on all participant data at the time the trial ends."
  * section 4..*
  * section ^slicing.discriminator.type = #value
  * section ^slicing.discriminator.path = "code"
  * section ^slicing.rules = #open
  * section contains analysisSets 1..1 MS and analysisPrimaryObjective 1..* MS and secondaryAnalysis 0..* MS and exploratoryAnalysis 0..* MS and safetyAnalyses 0..1 MS and otherAnalyses 0..1 MS and interimAnalyses 0..1 MS and sampleSize 1..1 MS and protocolDeviations 1..1 MS
  * section[analysisSets].title = "Analysis Sets"
  * section[analysisSets].code.text = "section10.1-analysis-sets"
  * section[analysisSets]
    * text 1..1
    * text ^comment = "Analysis sets to support each analysis will be specified here and described in the Statistical Analysis Plan."
  * section[analysisPrimaryObjective].title = "Analysis Supporting Primary Objective"
  * section[analysisPrimaryObjective].code.text = "section10.2-analysis-primary-objective"
  * section[analysisPrimaryObjective]
    * focus only Reference(OutcomeVariable)
    * text 1..1
    * text ^comment = "This section introduces the Statistical Analysis Plan, with the detail to be provided in the subsequent subsections. This includes describing the methods of estimation (analytic approach) in alignment with how the estimands are defined. Sensitivity analyses should be aligned with how the estimands and estimators are defined."
    * section 3..*
    * section ^slicing.discriminator.type = #value
    * section ^slicing.discriminator.path = "code"
    * section ^slicing.rules = #open
    * section contains statisticalModel 1..1 MS and intercurrentEventHandling 0..1 MS and missingData 1..1 MS and sensitvityAnalysis 1..1 MS and supplementaryAnalysis 0..1 MS
    * section[statisticalModel].title = "Statistical Model, Hypothesis, and Method of Analysis"
    * section[statisticalModel].code.text = "section10.2.1-statistical-model"
    * section[statisticalModel]
      * text 1..1
      * text ^comment = "Ensure that the statistical hypothesis/model (and corresponding assumptions)/analysis is aligned with the primary estimand(s). For all applicable objectives (for example, primary, secondary), under the appropriate header, state the null and alternative hypotheses, including the pre-planned type 1 error, or alternative criteria to define trial success and relevant operating characteristics if appropriate. Describe the statistical model used and the factors that will be included (covariates and interactions) and any rules for handling these factors (for example, pooling of centres). If applicable, state and describe any adjustments to account for multiplicity. If modelling and simulation methods are to be used, please describe the model (inputs and outputs), the underlying assumptions, and the method of model fitting."
      * entry only Reference(EndpointAnalysisPlan)
    * section[intercurrentEventHandling].title = "Handling of Intercurrent Events of Primary Estimand"
    * section[intercurrentEventHandling].code.text = "section10.2.2-intercurrent-events-handling"
    * section[intercurrentEventHandling]
      * text 1..1
      * text ^comment = "For each intercurrent event of the primary estimand(s) (Section 3.1, Estimand[s] for the Primary Objective[s]), explain how data will be handled for the statistical analysis in line with the primary estimand. The handling of intercurrent events in statistical analysis should be aligned with the specific estimand strategies being used. This section should describe with more detail the rationale and handling of the data rather than repeating the guidance from the preceding sections."
    * section[missingData].title = "Handling of Missing Data"
    * section[missingData].code.text = "section10.2.3-missing-data-handling"
    * section[missingData]
      * text 1..1
      * text ^comment = "This section should describe how missing data will be dealt with. Refer to the E9(R1) addendum when estimand framework is used. The protocol should describe how missing data will be handled (for example, type of imputation technique, if any, and provide justification). In cases where the Primary Objective is related to safety, this section should also be completed. It may also be helpful to include additional statements regarding handling of missing data in general for other important efficacy or safety endpoints or this information can be included in the analysis of secondary endpoint section below."
    * section[sensitvityAnalysis].title = "Sensitivity Analysis"
    * section[sensitvityAnalysis].code.text = "section10.2.4-sensitivity-analysis"
    * section[sensitvityAnalysis]
      * text 1..1
      * text ^comment = "Sensitivity analyses are a series of analyses conducted with the intent to explore the robustness of inferences from the main estimator to deviations from its underlying modelling assumptions and limitations in the data."
      * entry only Reference(EndpointAnalysisPlan)
    * section[supplementaryAnalysis].title = "Supplementary Analysis"
    * section[supplementaryAnalysis].code.text = "section10.2.5-supplementary-analysis"
    * section[supplementaryAnalysis]
      * text 1..1
      * text ^comment = "Describe any supplementary analysis if applicable."
  * section[secondaryAnalysis].title = "Analysis Supporting Secondary Objective"
  * section[secondaryAnalysis].code.text = "section10.3-analysis-secondary-objective"
  * section[secondaryAnalysis]
    * focus only Reference(OutcomeVariable)
    * text 1..1
    * text ^comment = "This section introduces the Statistical Analysis Plan, with the detail to be provided in the subsequent subsections. This includes describing the methods of estimation (analytic approach) in alignment with how the estimands are defined. Sensitivity analyses should be aligned with how the estimands and estimators are defined."
    * section 0..*
    * section ^slicing.discriminator.type = #value
    * section ^slicing.discriminator.path = "code"
    * section ^slicing.rules = #open
    * section contains statisticalModel 0..1 MS and intercurrentEventHandling 0..1 MS and missingData 0..1 MS and sensitvityAnalysis 0..1 MS and supplementaryAnalysis 0..1 MS
    * section[statisticalModel].title = "Statistical Model, Hypothesis, and Method of Analysis"
    * section[statisticalModel].code.text = "section10.3.1-statistical-model"
    * section[statisticalModel]
      * text 1..1
      * text ^comment = "Ensure that the statistical hypothesis/model (and corresponding assumptions)/analysis is aligned with the primary estimand(s). For all applicable objectives (for example, primary, secondary), under the appropriate header, state the null and alternative hypotheses, including the pre-planned type 1 error, or alternative criteria to define trial success and relevant operating characteristics if appropriate. Describe the statistical model used and the factors that will be included (covariates and interactions) and any rules for handling these factors (for example, pooling of centres). If applicable, state and describe any adjustments to account for multiplicity. If modelling and simulation methods are to be used, please describe the model (inputs and outputs), the underlying assumptions, and the method of model fitting."
      * entry only Reference(EndpointAnalysisPlan)
    * section[intercurrentEventHandling].title = "Handling of Intercurrent Events of Secondary Estimand"
    * section[intercurrentEventHandling].code.text = "section10.3.2-intercurrent-events-handling"
    * section[intercurrentEventHandling]
      * text 1..1
      * text ^comment = "For each intercurrent event of the secondary estimand(s), explain how data will be handled for the statistical analysis in line with the secondary estimand. The handling of intercurrent events in statistical analysis should be aligned with the specific estimand strategies being used. This section should describe with more detail the rationale and handling of the data rather than repeating the guidance from the preceding sections."
    * section[missingData].title = "Handling of Missing Data"
    * section[missingData].code.text = "section10.3.3-missing-data-handling"
    * section[missingData]
      * text 1..1
      * text ^comment = "This section should describe how missing data will be dealt with. Refer to the E9(R1) addendum when estimand framework is used. The protocol should describe how missing data will be handled (for example, type of imputation technique, if any, and provide justification)."
    * section[sensitvityAnalysis].title = "Sensitivity Analysis"
    * section[sensitvityAnalysis].code.text = "section10.3.4-sensitivity-analysis"
    * section[sensitvityAnalysis]
      * text 1..1
      * text ^comment = "Sensitivity analyses are a series of analyses conducted with the intent to explore the robustness of inferences from the main estimator to deviations from its underlying modelling assumptions and limitations in the data."
      * entry only Reference(EndpointAnalysisPlan)
    * section[supplementaryAnalysis].title = "Supplementary Analysis"
    * section[supplementaryAnalysis].code.text = "section10.3.5-supplementary-analysis"
    * section[supplementaryAnalysis]
      * text 1..1
      * text ^comment = "Describe any supplementary analysis if applicable."


  * section[exploratoryAnalysis].title = "Analysis of Exploratory Objective"
  * section[exploratoryAnalysis].code.text = "section10.4-analysis-exploratory-objective"
  * section[exploratoryAnalysis]
    * focus only Reference(OutcomeVariable)
    * text 1..1
    * text ^comment = "This section introduces the Statistical Analysis Plan, with the detail to be provided in the subsequent subsections. This includes describing the methods of estimation (analytic approach) in alignment with how the estimands are defined. Sensitivity analyses should be aligned with how the estimands and estimators are defined."
    * section 0..*
    * section ^slicing.discriminator.type = #value
    * section ^slicing.discriminator.path = "code"
    * section ^slicing.rules = #open
    * section contains statisticalModel 0..1 MS and intercurrentEventHandling 0..1 MS and missingData 0..1 MS and sensitvityAnalysis 0..1 MS and supplementaryAnalysis 0..1 MS
    * section[statisticalModel].title = "Statistical Model, Hypothesis, and Method of Analysis"
    * section[statisticalModel].code.text = "section10.4.1-statistical-model"
    * section[statisticalModel]
      * text 1..1
      * text ^comment = "Ensure that the statistical hypothesis/model (and corresponding assumptions)/analysis is aligned with the primary estimand(s). For all applicable objectives (for example, primary, secondary), under the appropriate header, state the null and alternative hypotheses, including the pre-planned type 1 error, or alternative criteria to define trial success and relevant operating characteristics if appropriate. Describe the statistical model used and the factors that will be included (covariates and interactions) and any rules for handling these factors (for example, pooling of centres). If applicable, state and describe any adjustments to account for multiplicity. If modelling and simulation methods are to be used, please describe the model (inputs and outputs), the underlying assumptions, and the method of model fitting."
      * entry only Reference(EndpointAnalysisPlan)
    * section[intercurrentEventHandling].title = "Handling of Intercurrent Events of Exploratory Estimand"
    * section[intercurrentEventHandling].code.text = "section10.4.2-intercurrent-events-handling"
    * section[intercurrentEventHandling]
      * text 1..1
      * text ^comment = "For each intercurrent event of the exploratory estimand(s), explain how data will be handled for the statistical analysis in line with the exploratory estimand. The handling of intercurrent events in statistical analysis should be aligned with the specific estimand strategies being used. This section should describe with more detail the rationale and handling of the data rather than repeating the guidance from the preceding sections."
    * section[missingData].title = "Handling of Missing Data"
    * section[missingData].code.text = "section10.4.3-missing-data-handling"
    * section[missingData]
      * text 1..1
      * text ^comment = "This section should describe how missing data will be dealt with. Refer to the E9(R1) addendum when estimand framework is used. The protocol should describe how missing data will be handled (for example, type of imputation technique, if any, and provide justification)."
    * section[sensitvityAnalysis].title = "Sensitivity Analysis"
    * section[sensitvityAnalysis].code.text = "section10.4.4-sensitivity-analysis"
    * section[sensitvityAnalysis]
      * text 1..1
      * text ^comment = "Sensitivity analyses are a series of analyses conducted with the intent to explore the robustness of inferences from the main estimator to deviations from its underlying modelling assumptions and limitations in the data."
      * entry only Reference(EndpointAnalysisPlan)
    * section[supplementaryAnalysis].title = "Supplementary Analysis"
    * section[supplementaryAnalysis].code.text = "section10.4.5-supplementary-analysis"
    * section[supplementaryAnalysis]
      * text 1..1
      * text ^comment = "Describe any supplementary analysis if applicable."
  * section[safetyAnalyses].title = "Safety Analyses"
  * section[safetyAnalyses].code.text = "section10.5-safety-analyses"
  * section[safetyAnalyses]
    * text 1..1
    * text ^comment = "If safety is a primary and/or secondary objective, describe the corresponding safety analyses in the appropriate section above (Section 10.2 or Section 10.3)."
  * section[otherAnalyses].title = "Other Analyses"
  * section[otherAnalyses].code.text = "section10.6-other-analyses"
  * section[otherAnalyses]
    * text 1..1
    * text ^comment = "Describe Other Analyses such as Subgroup analyses, Adjusted analysis if needed."
  * section[interimAnalyses].title = "Interim Analyses"
  * section[interimAnalyses].code.text = "section10.7-interim-analyses"
  * section[interimAnalyses]
    * text 1..1
    * text ^comment = "Describe any interim analysis and criteria for stopping or adapting the trial. The description should include, but is not limited to, the following: {See Template for full list}"
  * section[sampleSize].title = "Sample Size Determination"
  * section[sampleSize].code.text = "section10.8-sample-size-determination"
  * section[sampleSize]
    * text 1..1
    * text ^comment = "This section should detail the methods used for the determination of the sample size and a reference to tables or statistical software used to carry out the calculation. Sufficient information should be provided so that the sample size calculation can be reproduced or described. If the planned sample size is not derived statistically, then this should be explicitly stated along with a rationale for the intended sample size (for example, exploratory nature of pilot trials; pragmatic considerations for trials in rare diseases)."
    * entry only Reference(EndpointAnalysisPlan)
  * section[protocolDeviations].title = "Protocol Deviations"
  * section[protocolDeviations].code.text = "section10.9-protocol-deviations"
  * section[protocolDeviations]
    * text 1..1
    * text ^comment = "Plans for detecting, reviewing, and reporting any deviations from the protocol should be described."
  

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


* section[riskManagementAndData].title = "General Considerations: Risk Management and Data Governance"
* section[riskManagementAndData].code.text = "section12-risk-management-and-data-governance"
* section[riskManagementAndData]
  * section 3..*
  * section ^slicing.discriminator.type = #value
  * section ^slicing.discriminator.path = "code"
  * section ^slicing.rules = #open
  * section contains riskManagement 1..1 MS and dataGovernance 1..1 MS and sourceData 1..1 MS
  * section[riskManagement].title = "Risk Management"
  * section[riskManagement].code.text = "section12.1-risk-management"
  * section[riskManagement]
    * text 1..1
    * text ^comment = "Describe how the critical to quality factors will be mitigated. It is important to determine the risks that threaten their integrity and decide whether they can be accepted or should be mitigated, based on their probability, detectability and impact. Where it is decided that risks should be mitigated, the necessary control processes should be put in place and communicated, and the necessary actions taken to mitigate the risks."
  * section[dataGovernance].title = "Data Governance"
  * section[dataGovernance].code.text = "section12.2-data-governance"
  * section[dataGovernance]
    * text 1..1
    * text ^comment = "Describe the key processes for critical trial integrity, traceability and security enabling accurate collection, reporting, monitoring, transfer, retention, access and publication if not addressed in separate agreement(s). Describe the measures to protect the privacy and confidentiality of personal information of trial participants in accordance with applicable regulatory requirements on personal data protection and any measures that should be taken in case of a data security breach."
  * section[sourceData].title = "Source Data"
  * section[sourceData].code.text = "section12.3-source-data"
  * section[sourceData]
    * text 1..1
    * text ^comment = "Establish the importance of source data and expectation for traceability of transcribed information back to source.  Delineate expectations for investigators (for example, maintain source data at the site, ensure availability of current records) and trial monitors (for example, verify CRF data relative to source, safety of participants is being protected, conduct is in accordance with GCP).  Define what constitutes source data and its origin or provide a reference to the location of these definitions, if contained in a separate document, such as a monitoring guideline or source data acknowledgement). Describe the provision for direct access to source data and documents enabling clinical trial-related monitoring, audits and regulatory inspections, if not included in separate agreement(s)."


* section[definitions].title = "Appendix: Definitions and Supporting Operational Details"
* section[definitions].code.text = "section13-definitions"
* section[definitions]
  * section 4..*
  * section ^slicing.discriminator.type = #value
  * section ^slicing.discriminator.path = "code"
  * section ^slicing.rules = #open
  * section contains contraception 1..1 MS and clinicalLaboratoryTests 1..1 MS and regional 1..1 MS and priorAmendments 1..1 MS
  * section[contraception].title = "Contraception"
  * section[contraception].code.text = "section13.1-contraception"
  * section[contraception]
    * section 2..*
    * section ^slicing.discriminator.type = #value
    * section ^slicing.discriminator.path = "code"
    * section ^slicing.rules = #open
    * section contains contraceptionDefinitions 1..1 MS and contraceptionDetails 1..1 MS
    * section[contraceptionDefinitions].title = "Definitions Related to Childbearing Potential"
    * section[contraceptionDefinitions].code.text = "section13.1.1-contraception-definitions"
    * section[contraceptionDefinitions]
      * text 1..1
      * text ^comment = "Specify the definitions of Participant of childbearing potential and Participant of non-childbearing potential, or state Not Applicable."
    * section[contraceptionDetails].title = "Contraception"
    * section[contraceptionDetails].code.text = "section13.1.2-contraception-details"
    * section[contraceptionDetails]
      * text 1..1
      * text ^comment = "Specify the contraceptive methods required and duration of use, or state Not Applicable."
  * section[clinicalLaboratoryTests].title = "Clinical Laboratory Tests"
  * section[clinicalLaboratoryTests].code.text = "section13.2-clinical-laboratory-tests"
  * section[clinicalLaboratoryTests]
    * text 1..1
    * text ^comment = "Specify which laboratory parameters should be included in each clinical laboratory assessment panel (for example, for haematology, chemistry, urinalysis). A tabular presentation for such information is common. If applicable, include equations and references for locally calculated laboratory results. If not applicable, retain header and enter Not Applicable."
  * section[regional].title = "Country/Region-Specific Differences"
  * section[regional].code.text = "section13.3-country-specific-differences"
  * section[regional]
    * text 1..1
    * text ^comment = "Although global clinical trial practices are increasingly harmonised, some country/ region-specific differences in requirements do exist (for example, document retention periods, contraception requirements).  Where differences in requirements cannot be reconciled, sponsors should explain how they will document and communicate country/region-specific differences (for example, by country/region-specific amendments or addenda). An alternative to country/region-specific amendments is to list the specific differences by country or countries in this section, including a reference to the relevant section of the protocol where the differing requirement applies. If not applicable, retain header and enter Not Applicable."
  * section[priorAmendments].title = "Prior Protocol Amendment(s)"
  * section[priorAmendments].code.text = "section13.4-prior-protocol-amendments"
  * section[priorAmendments]
    * text 1..1
    * text ^comment = "Either enter value of {Not applicable. The protocol has not been amended.} or {Not applicable. This is the first protocol amendment.} or SEE TEMPLATE INSTRUCTIONS."


* section[glossary].title = "Appendix: Glossary of Terms and Abbreviations"
* section[glossary].code.text = "section14-glossary"
* section[glossary]
  * text 1..1
  * text ^comment = "Define abbreviations and other terms used in the protocol. A tabular presentation is common and may serve as the definition at first use."
  * entry only Reference(ValueSet or CodeSystem)
* section[references].title = "Appendix: References"
* section[references].code.text = "section15-references"
* section[references]
  * text 1..1
  * text ^comment = "References should be listed in a common format that includes all relevant information to identify the source and date published.  If not published, this should be clearly indicated."
  * entry only Reference(Citation)
