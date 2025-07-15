Profile: M11Report
Parent: EvidenceReport
Id: m11-report
Description: "Profile of Composition for Evidence Based Medicine IG. The M11Report Profile is used for the International Council for Harmonisation of Technical Requirements for Pharmaceuticals for Human Use (ICH) Clinical Electronic Structured Harmonised Protocol (CeSHarP) M11 Technical Specification."
* ^extension[$ext-fmm].valueInteger = 1
* ^extension[$ext-wg].valueCode = #cds
* ^extension[$ext-standards-status].valueCode = #draft
* ^copyright = "This Profile is developed to support the evolving draft of the M11 Template. The ICH is the copyright holder for the M11 template and has not endorsed or sponsored this Profile."
* type.coding 1..1
* type.coding = http://loinc.org#35528-9 "Clinical trial protocol Clinical trial protocol"
* type.text = "CeSHarP Report"
* section 15..*
* section ^slicing.discriminator.type = #value
* section ^slicing.discriminator.path = "code.text"
* section ^slicing.rules = #open
* section contains titlepage 1..1 MS and summary 1..1 MS and introduction 1..1 MS and estimands 1..1 MS and design 1..1 MS and population 1..1 MS and intervention 1..1 MS and dropout 1..1 MS and assessments 1..1 MS and adverseEvents 1..1 MS and statistics 1..1 MS and oversight 1..1 MS and definitions 1..1 MS and glossary 1..1 MS and references 1..1 MS
* section[titlepage].title = "Title Page"
* section[titlepage].code.text = "section0-title-page"
* section[titlepage]
  * entry only Reference(StudyDesign)
* section[summary].title = "Protocol Summary"
* section[summary].code.text = "section1-protocol-summary"
* section[summary]
  * section 3..*
  * section ^slicing.discriminator.type = #value
  * section ^slicing.discriminator.path = "code.text"
  * section ^slicing.rules = #open
  * section contains protocolSynopsis 1..1 MS and trialSchema 1..1 MS and scheduleOfActivities 1..1 MS
  * section[protocolSynopsis].title = "Protocol Synopsis"
  * section[protocolSynopsis].code.text = "section1.1-protocol-synopsis"
  * section[protocolSynopsis]
    * section 6..*
    * section ^slicing.discriminator.type = #value
    * section ^slicing.discriminator.path = "code.text"
    * section ^slicing.rules = #open
    * section contains objectivesEndpoints 1..1 MS and overallDesign 1..1 and numberOfArms 1..1 and blinding 1..1 and numberOfParticipants 1..1 and duration 0..1 and committees 1..1
    * section[objectivesEndpoints].title = "Primary and Secondary Objectives and Estimands"
    * section[objectivesEndpoints].code.text = "section1.1.1-objectives-estimands"
    * section[objectivesEndpoints]
      * text 1..1
      * text ^comment = "Summarise the primary and secondary objectives and any associated estimands in natural, nontechnical (layperson) language. For trials intended to estimate a treatment effect or test a hypothesis related to a treatment effect, include the primary and secondary objectives and any associated estimands using a nontechnical summary describing the objective and treatment effect of interest (estimand). For other types of trials not intended to estimate a treatment effect or test a hypothesis related to a treatment effect, define trial objectives and describe additional information relevant to the clinical question(s) of interest (e.g., the endpoint(s) associated with each objective). For trials with numerous objectives in which the description of objectives will exceed half a page, consider including the most important objectives and estimands in the synopsis and refer to Section 3 Trial Objectives and Associated Estimands, which covers the objectives and estimands in technical detail. For considerations on estimands, refer to ICH E9(R1)."
      * entry only Reference(Composition)
    * section[overallDesign].title = "Overall Design"
    * section[overallDesign].code.text = "section1.1.2-overall-design"
    * section[overallDesign]
      * text 1..1
      * text ^comment = "Key aspects of the trial design include Intervention, Intervention Model, Control Type, Control Description, Intervention Assignment Method, Drug/Device Combination Product Indicator, Population Type, Population Diagnosis or Condition, Population Age (Minimum, Maximum), Site Distribution and Geographic Scope, Master Protocol, and Adaptive Trial Design. Entries should Reference Composition Resource or ResearchStudy Resource."
      * entry only Reference(Composition or ResearchStudy)
    * section[numberOfArms].code.text = "Number of Arms"
    * section[numberOfArms]
      * text 1..1
      * text ^comment = "Enter the numeric value for the number of arms in the trial. For trials with a different number of arms in different periods, populate this field based on the total number of arms."
    * section[blinding].code.text = "Blinding"
    * section[blinding]
      * text 1..1
      * text ^comment = "For designs in which these details may differ in one or more trial periods, answer according to the portion of the trial in which the highest number of blinded roles occurs.  More details can be provided in Section 6.6 of the protocol. State: Blinded roles: The following roles indicated will not be made aware of the treatment group assignment during the trial: [blinded roles]. Not applicable (No blinding) indicates an open-label trial."
    * section[numberOfParticipants].code.text = "Number of Participants"
    * section[numberOfParticipants]
      * text 1..1
      * text ^comment = "State the expected number of participants to be assigned to trial intervention/enrolled.  Indicate whether the number provided is the target or maximum number of individuals to be randomly assigned to trial intervention/enrolled. A [Target/ Maximum] of [[Enter Number of Participants]] participants will be [randomly assigned to trial intervention/ enrolled]."
    * section[duration].code.text = "Duration"
    * section[duration]
      * text 1..1
      * text ^comment = "See Template instructions. Select one of the two options for total planned duration of trial intervention and trial participation for each participant. Note that the total duration of trial participation should include any washout and any follow-up periods in which the participant is not receiving trial intervention. When duration will vary, provide a short explanation (for example, “event-driven” or “adaptive design”."
    * section[committees].code.text = "Committees"
    * section[committees]
      * text 1..1
      * text ^comment = "Indicate whether any committee(s) will be reviewing data while the trial is ongoing, and the type of committee. Common examples include Data Monitoring Committee, Dose Escalation Committee, or Endpoint Adjudication Committee; describe others, if applicable. List independent committees in the space indicated. Other committees may be included at the Sponsor’s discretion in the separate space provided. Committees listed here should be fully described in Section 11.4 Committees."
  * section[trialSchema].title = "Trial Schema"
  * section[trialSchema].code.text = "section1.2-trial-schema"
  * section[trialSchema]
    * text 1..1
    * text ^comment = "The purpose of this section is to provide a visual depiction of the trial design, orienting users of the protocol to the key features of the design. The schema depicts the trial arms, the flow of individual participant through the progression of trial period(s)/epochs (such as screening, washout/run-in, intervention, and key milestones [e.g., randomisation, cross-over, end of treatment, end of study, post-treatment follow-up]). For complex trials, additional schemas may be added to describe activities or trial periods in greater detail. Entries should Reference SoaPlanDefinition Profile of PlanDefinition Resource."
    * entry only Reference(SoaPlanDefinition)
  * section[scheduleOfActivities].title = "Schedule of Activities"
  * section[scheduleOfActivities].code.text = "section1.3-schedule-of-activities"
  * section[scheduleOfActivities]
    * text 1..1
    * text ^comment = "The schedule of activities must capture the procedures that will be accomplished at each trial visit, and all contact with participants, for example, telephone contacts. This includes any tests that are used for eligibility, participant randomisation or stratification, or decisions on trial intervention discontinuation. Allowable windows should be stated for all visits and procedures. A tabular format is recommended. When applicable for studies with extensive sampling (e.g., serial PK sampling) a separate table may be added. Entries should Reference SoaPlanDefinition Profile of PlanDefinition Resource."
    * entry only Reference(SoaPlanDefinition)
* section[introduction].title = "Introduction"
* section[introduction].code.text = "section2-introduction"
* section[introduction]
  * section 2..*
  * section ^slicing.discriminator.type = #value
  * section ^slicing.discriminator.path = "code.text"
  * section ^slicing.rules = #open
  * section contains purposeOfTrial 1..1 MS and benefitsAndRisks 1..1 MS
  * section[purposeOfTrial].title = "Purpose of Trial"
  * section[purposeOfTrial].code.text = "section2.1-trial-purpose"
  * section[purposeOfTrial]
    * text 1..1
    * text ^comment = "Explain why the trial is needed, and why the research questions being asked are important. Do not restate the objectives or estimands. Do not restate the IB; rather, cross reference to the IB as applicable to the description."
  * section[benefitsAndRisks].title = "Assessment of Risks and Benefits"
  * section[benefitsAndRisks].code.text = "section2.2-benefits-risks"
  * section[benefitsAndRisks]
    * text 1..1
    * text ^comment = "Include an assessment of known and potential risks and benefits, if any, as a result of participating in the trial from the perspective of an individual participant, including the basis of the risk (e.g., nonclinical trials or prior clinical trials). This section may be structured under one single heading 2.2 Assessment of Risks and Benefits, or if applicable under 3 subheadings as 2.2.1 Risk Summary and Mitigation Strategy, 2.2.2 Benefit Assessment and 2.2.3 Overall Risk-Benefit Assessment"
  * section[benefitsAndRisks]
    * section 3..*
    * section ^slicing.discriminator.type = #value
    * section ^slicing.discriminator.path = "code.text"
    * section ^slicing.rules = #open
    * section contains riskSummary 1..1 and benefitSummary 1..1 MS and overallBenefitRisk 1..1
    * section[riskSummary].title = "Risk Summary and Mitigation Strategy"
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
    * section[benefitSummary].title = "Benefit Summary"
    * section[benefitSummary].code.text = "section2.2.2-benefit-summary"
    * section[benefitSummary]
      * text 1..1
      * text ^comment = "The benefit summary should describe any physical, psychological, social, or any other potential benefits to individual participants as a result of participating in the trial, addressing immediate potential benefits and/or long-range potential benefits. Clearly state if no benefits to an individual participant can be anticipated, or if potential benefits are unknown. For early clinical trials such as Phase 1 or trials in healthy participants, benefits for an individual participant (other than those of altruism) are expected to be minimal. Benefits to society in general may also be included but should be described separately from the individual participant perspective."
    * section[overallBenefitRisk].title = "Overall Risk-Benefit Assessment"
    * section[overallBenefitRisk].code.text = "section2.2.3-overall-benefit-risk-conclusion"
    * section[overallBenefitRisk]
      * text 1..1
      * text ^comment = "Provide a succinct, concluding statement on the perceived balance between risks that have been identified from cumulative safety data, protocol procedures, and anticipated efficacy/benefits within the context of the proposed trial."
* section[estimands].title = "Trial Objectives and Associated Estimands"
* section[estimands].code.text = "section3-estimands"
* section[estimands]
  * entry only Reference(StudyDesign)
* section[design].title = "Trial Design"
* section[design].code.text = "section4-trial-design"
* section[design]
  * section 4..*
  * section ^slicing.discriminator.type = #value
  * section ^slicing.discriminator.path = "code.text"
  * section ^slicing.rules = #open
  * section contains description 1..1 MS and rationale 1..1 MS and trialStoppingRules 1..1 MS and startEnd 1..1 MS and access 0..1 MS
  * section[description].title = "Description of Trial Design"
  * section[description].code.text = "section4.1-description-of-trial-design"
  * section[description]
    * text 1..1
    * text ^comment = "Describe the overall trial design and intervention model (e.g., single group, parallel group, cross-over, factorial, sequential), the expected number of participants, and the control method (e.g., placebo, active comparator, low dose, external, standard of care, sham procedure, or none [uncontrolled]). If there are any key aspects of the investigational trial intervention that inform the selection of the intervention model, this should be described. If applicable, indicate other design characteristics (e.g., superiority, noninferiority, dose escalation, or equivalence). If the trial will have an adaptive or novel design (e.g., the trial will be conducted under a master protocol), provide a summary of these design aspects. If applicable, describe within-trial transition rules, e.g., transitions involving cohorts or trial parts. Dose escalation or dose-ranging details should also be described. Describe the trial duration with reference to Section 1.2 Trial Schema. Explain what the overall duration for an individual participant is anticipated to be and why, including the sequence and duration of trial periods (e.g., screening, run-in, randomisation, treatment [fixed dose/titration], follow-up/washout periods). Where applicable, include discussion of sentinel dosing (or lack thereof), dose escalation, and cohort expansion. If dose modification decisions are dependent upon review by a committee, include details in Section 11.4 Committees. State the method of assignment to trial intervention the level and method of blinding that will be used with reference to Section 6.7 Investigational Trial Intervention Assignment, Randomisation and Blinding. Describe any other important aspects of the design, e.g.: • geographic scope of trial (e.g., single-centre, multi-centre, or multi-centre and multi-national) • use of decentralised processes, tools, or features in the trial • planned use of a Data Monitoring Committee, or similar review group and cross reference Section 11.4 Committees, for details • whether an interim analysis is planned; if so, refer to details in Section 10.9 Interim Analyses • any planned extension trial, long-term follow-up/registry, planned future use of samples or data, or post-trial sample analysis or other data-related activities"
    * section 0..*
    * section ^slicing.discriminator.type = #value
    * section ^slicing.discriminator.path = "code.text"
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
    * text ^comment = "Enter Overall Rationale for Trial Design if not using below optional subheadings."
    * section 0..*
    * section ^slicing.discriminator.type = #value
    * section ^slicing.discriminator.path = "code.text"
    * section ^slicing.rules = #open
    * section contains endpoints 0..1 MS and model 0..1 MS and comparator 0..1 MS and duration 0..1 MS and adaptive 0..1 MS and interim 0..1 MS and otherAspects 0..1 MS
    * section[endpoints].title = "Rationale for Estimand(s)"
    * section[endpoints].code.text = "section4.2.1-rationale-estimands"
    * section[endpoints]
      * text 1..1
      * text ^comment = "When estimands are associated with the Primary and Secondary Objectives described in Section 3 Trial Objectives and Associated Estimands, provide a rationale for the estimand(s) not described elsewhere in the document. This should include a rationale that the selected endpoint(s) are clinically relevant and provide a reliable and valid measurement of the intended intervention effect. It should also include a rationale for the selected strategies for handling intercurrent events."  
    * section[model].title = "Rationale for Intervention Model"
    * section[model].code.text = "section4.2.2-rationale-intervention-model"
    * section[model]
      * text 1..1
      * text ^comment = "Provide a rationale for the trial intervention model described in Section 4.1 Description of Trial Design with a cross reference to Section 6.2 Rationale for Investigational Intervention Dose and Regimen. Rationale for choice of comparator, if applicable, should be described separately in Section 4.2.5 Rationale for Control Type. A rationale for the choice of trial population should be described separately in Section 5.1 Description of Trial Population and Rationale."
    * section[comparator].title = "Rationale for Control Type"
    * section[comparator].code.text = "section4.2.3-rationale-comparator"
    * section[comparator]
      * text 1..1
      * text ^comment = "If applicable, provide a rationale for the type and choice of control selected for the trial (e.g., placebo, active drug, combination, external). Describe any known or potential problems associated with the control group selected in light of the specific disease and intervention(s) being studied. If comparators will differ by region, describe. The rationale for dose/dose regimen is explained in Section 6.2 Rationale for Investigational Trial Intervention Dose and Regimen."  
    * section[duration].title = "Rationale for Duration"
    * section[duration].code.text = "section4.2.4-rationale-duration"
    * section[duration]
      * text 1..1
      * text ^comment = "Provide a rationale that the trial duration is appropriate for a reliable and relevant evaluation of the trial intervention per the trial objective(s)."
    * section[adaptive].title = "Rationale for Adaptive or Novel Trial Design"
    * section[adaptive].code.text = "section4.2.5-rationale-adaptive"
    * section[adaptive]
      * text 1..1
      * text ^comment = "If applicable, provide a rationale for the use of an adaptive or novel design."  
    * section[interim].title = "Rationale for Interim Analysis"
    * section[interim].code.text = "section4.2.6-rationale-interim-analysis"
    * section[interim]
      * text 1..1
      * text ^comment = "If applicable, provide a rationale for any interim analysis planned with respect to its purpose (for example, stopping the trial early for efficacy or futility) and timing."  
    * section[otherAspects].title = "Rationale for Other Trial Design Aspects"
    * section[otherAspects].code.text = "section4.2.7-rationale-other-aspects"
    * section[otherAspects]
      * text 1..1
      * text ^comment = "Discuss rationale for any additional aspects of the design not addressed above."
  * section[trialStoppingRules].title = "Trial Stopping Rules"
  * section[trialStoppingRules].code.text = "section4.3-trial-stopping-rules"
  * section[trialStoppingRules]
    * text 1..1
    * text ^comment = "If applicable, describe any trial-specific stopping rules, including guidance on when the trial should be stopped for safety reasons, when a cohort or dose escalation should be terminated, and/or when a given treatment arm should be terminated. If applicable, describe any rules that may result in a temporary pause of dosing and/or enrollment into the trial and criteria for restarting enrollment. Ensure that the trials stopping rules are aligned with the specifications that are described in Section 10.9 for Interim Analyses."
  * section[startEnd].title = "Start of Trial and End of Trial"
  * section[startEnd].code.text = "section4.4-start-and-end"
  * section[startEnd]
    * text 1..1
    * text ^comment = "Define key timepoints in the trial, including trial start and end definitions (e.g., a key timepoint definition for start of trial might be when the informed consent is signed by the first participant and a key timepoint definition for end of trial might be when participants are no longer being examined or the last participant’s last trial assessment has occurred). Consider local regulatory requirements for these and other definitions (e.g., the first act of recruitment). If appropriate, provide a cross reference to Section 11.11 Early Site Closure."
  * section[access].title = "Access to Trial Intervention After End of Trial"
  * section[access].code.text = "section4.5-access-after-trial"
  * section[access]
    * text 1..1
    * text ^comment = "If applicable, describe any possibilities for access to trial intervention, if any, beyond completion of the trial. Planned extension trials, if described in Section 4.1 Description of Trial Design, do not need to be repeated in this section." 
* section[population].title = "Trial Population"
* section[population].code.text = "section5-trial-population"
* section[population]
  * section 6..*
  * section ^slicing.discriminator.type = #value
  * section ^slicing.discriminator.path = "code.text"
  * section ^slicing.rules = #open
  * section contains description 1..1 MS and inclusionCriteria 1..1 MS and exclusionCriteria 1..1 MS and contraception 1..1 MS and lifestyle 0..1 MS and screenFailures 0..1 MS
  * section[description].title = "Description of Trial Population and Rationale"
  * section[description].code.text = "section5.1-population-description"
  * section[description]
    * text 1..1
    * text ^comment = "Describe the population selected (e.g., healthy participants, adult participants, paediatric participants, pregnant participants, or breastfeeding participants) and how the enrollment criteria reflect the populations that are likely to use the drug if approved. Specify the population age range (e.g., ≤3 months, ≥18 to ≤80 years old) including the time point at which qualification for age criteria is determined (e.g., at time of screening vs randomisation for paediatric trials). Specify any key diagnostic criteria for the population (e.g., “acute lung injury”, or a specific biomarker profile). If applicable, describe similar conditions or diseases and their differential diagnosis. Provide a rationale for the trial population ensuring that the population selected is well defined and clinically recognisable. Describe how the selected population can meet the trial objectives and how the enrollment criteria reflect the population of interest. If the population targeted by a clinical question is based on a subset of the entire trial population, e.g., defined by a particular characteristic measured at baseline (e.g., a specific biomarker), this subset should be justified in this section. Justify whether the trial intervention is to be evaluated in paediatric participants, in adults unable to consent for themselves, other vulnerable participant populations, or those that may respond to the trial intervention differently (e.g., elderly, hepatic or renally impaired, or immunocompromised participants). Entries should Reference CohortDefinition (or StudyEligibilityCriteria) Profile of Group Resource."
    * entry only Reference(CohortDefinition)
  * section[inclusionCriteria].title = "Inclusion Criteria"
  * section[inclusionCriteria].code.text = "section5.2-inclusion-criteria"
  * section[inclusionCriteria]
    * text 1..1
    * text ^comment = "Inclusion criteria are characteristics that define the trial population, for example, those criteria that every potential participant must satisfy to qualify for trial enrollment. Entries should Reference CohortDefinition (or StudyEligibilityCriteria) Profile of Group Resource."
    * entry only Reference(CohortDefinition)
  * section[exclusionCriteria].title = "Exclusion Criteria"
  * section[exclusionCriteria].code.text = "section5.3-exclusion-criteria"
  * section[exclusionCriteria]
    * text 1..1
    * text ^comment = "Exclusion criteria are characteristics that make an individual ineligible for participation. Entries should Reference CohortDefinition (or StudyEligibilityCriteria) Profile of Group Resource."
    * entry only Reference(CohortDefinition)
  * section[contraception].title = "Contraception"
  * section[contraception].code.text = "section5.4-contraception"
  * section[contraception]
    * section 2..*
    * section ^slicing.discriminator.type = #value
    * section ^slicing.discriminator.path = "code.text"
    * section ^slicing.rules = #open
    * section contains contraceptionDefinitions 1..1 MS and contraceptionDetails 1..1 MS
    * section[contraceptionDefinitions].title = "Definitions Related to Childbearing Potential"
    * section[contraceptionDefinitions].code.text = "section5.4.1-contraception-definitions"
    * section[contraceptionDefinitions]
      * text 1..1
      * text ^comment = "Specify the definitions of: • participant of childbearing potential, and • participant of nonchildbearing potential."
    * section[contraceptionDetails].title = "Contraception Requirements"
    * section[contraceptionDetails].code.text = "section5.4.2-contraception-details"
    * section[contraceptionDetails]
      * text 1..1
      * text ^comment = "Specify the: • contraceptive methods required, and • duration of use."
  * section[lifestyle].title = "Lifestyle Restrictions"
  * section[lifestyle].code.text = "section5.5-lifestyle-restrictions"
  * section[lifestyle]
    * text 1..1
    * text ^comment = "In the following subsections, describe any restrictions during the trial pertaining to lifestyle and/or diet, intake of caffeine, alcohol, or tobacco, or physical and other activities. If not applicable, include a statement that no restrictions are required."
    * section 0..*
    * section ^slicing.discriminator.type = #value
    * section ^slicing.discriminator.path = "code.text"
    * section ^slicing.rules = #open
    * section contains dietary 0..1 MS and substances 0..1 MS and activity 0..1 MS and other 0..1 MS
    * section[dietary].title = "Meals and Dietary Restrictions"
    * section[dietary].code.text = "section5.5.1-dietary-restrictions"
    * section[dietary]
      * text 1..1
      * text ^comment = "If applicable, describe any restrictions on diet (for example, food and drink restrictions, timing of meals relative to dosing)."
    * section[substances].title = "Caffeine, Alcohol, Tobacco, and Other Restrictions"
    * section[substances].code.text = "section5.5.2-substances-restrictions"
    * section[substances]
      * text 1..1
      * text ^comment = "If applicable, describe any restrictions on the intake of caffeine, alcohol, tobacco, or other restrictions."
    * section[activity].title = "Physical Activity Restrictions"
    * section[activity].code.text = "section5.5.3-activity-restrictions"
    * section[activity]
      * text 1..1
      * text ^comment = "If applicable, describe any restrictions on activity (for example, in first-in-human trials, activity may be restricted by ensuring participants remain in bed for 4 to 6 hours after dosing)."
    * section[other].title = "Other Activity Restrictions"
    * section[other].code.text = "section5.5.4-other-restrictions"
    * section[other]
      * text 1..1
      * text ^comment = "If applicable, describe restrictions on any other activity (for example, blood or tissue donation); or any other activity restrictions, such as on driving, heavy machinery use, or sun exposure."  
  * section[screenFailures].title = "Screen Failure and Rescreening" 
  * section[screenFailures].code.text = "section5.6-screen-failure"
  * section[screenFailures]
    * text 1..1
    * text ^comment = "Describe screen failure and indicate how screen failure will be handled in the trial, including conditions and criteria upon which rescreening is acceptable. If applicable, indicate the circumstances and time window under which a repeat procedure is allowed for screen failure relating to specific inclusion/exclusion criteria for the trial."
* section[intervention].title = "Trial Intervention and Concomitant Therapy"
* section[intervention].code.text = "section6-trial-intervention"
* section[intervention]
  * text ^comment = "Trial interventions are all pre-specified investigational and noninvestigational medicinal products, medical devices or other interventions intended for the participants during the trial. The investigational trial intervention is the product used in the trial as part of trial objectives. Description of the investigational trial intervention is provided in Section 6.1 Description of Trial Intervention. Other trial interventions that are not part of trial objectives or do not have an investigational role in this trial are described in Section 6.9 Description of Noninvestigational Trial Interventions. Any regional requirements should be noted in the appropriate subsections. Provide an overview of investigational and noninvestigational trial interventions. Classify the trial intervention as IMP, NIMP/AxMP designations based on trial design and regional requirements. Consider an optional table with 12 columns (Arm Name, Arm Type, Intervention Name, Intervention Type, Pharmaceutical Dose Form, Dosage Strength(s), Dosage Level(s), Route of Administration, Regimen/Treatment Period/Vaccination Regimen, Use, IMP/NIMP, Sourcing)."
  * section 9..*
  * section ^slicing.discriminator.type = #value
  * section ^slicing.discriminator.path = "code.text"
  * section ^slicing.rules = #open
  * section contains description 1..1 MS and rationale 1..1 MS and dosingAdministration 1..1 MS and doseModification 0..1 MS and treatmentOfOverdose 1..1 MS and preparation 1..1 MS and assignmentAndBlinding 1..1 MS and adherence 1..1 MS and noninvestigationalTherapy 0..1 MS and concomitantTherapy 1..1 MS
  * section[description].title = "Description of Investigational Trial Intervention"
  * section[description].code.text = "section6.1-description-of-trial-intervention"
  * section[description]
    * text 1..1
    * text ^comment = "Describe the investigational trial intervention to be administered in each arm of the trial and for each period of the trial including route and mode of administration, dose, dosage regimen, duration of intervention, use, packaging and labelling. Refer to approved regional labelling, as appropriate. For investigational drug/device combination products, include details on the configuration and use of the device and device manufacturer. A device user manual may be referenced in this section. Entries should Reference ConceptualExposureDefinition Profile of Group Resource."
    * entry only Reference(ConceptualExposureDefinition)
  * section[rationale].title = "Rationale for Investigational Trial Intervention Dose and Regimen"
  * section[rationale].code.text = "section6.2-rationale-for-trial-intervention-regimen"
  * section[rationale]
    * text 1..1
    * text ^comment = "Provide a rationale for the selection of the dose(s) or dose range, pharmaceutical dose form, route of administration, and dosing regimen of the investigational trial intervention, as applicable. This rationale should include relevant results from nonclinical studies and clinical trials that support selection of the dose and regimen. Discuss impact of differences in trial population characteristics (e.g., age, sex, race) which could lead to differences in pharmacokinetics and pharmacodynamics in this trial as compared to previous trials. If applicable, justify any differences in dose regimen or therapeutic use relative to approved labelling. Describe prior trials and other information that support the dose and/or dose regimen of the investigational trial intervention. Include a rationale for prospective dose adjustments incorporated in the trial, if any. Entries should Reference ConceptualExposureDefinition Profile of Group Resource."
    * entry only Reference(ConceptualExposureDefinition)
  * section[dosingAdministration].title = "Investigational Trial Intervention Administration"
  * section[dosingAdministration].code.text = "section6.3-dosing-and-administration"
  * section[dosingAdministration]
    * text 1..1
    * text ^comment = "Describe the detailed procedures for administration of each participant’s dose of each investigational trial intervention. This may include the timing of dosing (e.g., time of day, interval), the duration (e.g., the length of time participants will be administered the investigational trial intervention), and the timing of dosing relative to meals. Include any specific instructions on who, when or how to prepare and take the dose(s) and how to handle any delayed or missed doses. Dose escalation or cohort expansion as part of the overall design should be covered in Section 4.1 Description of Trial Design. Entries should Reference ActivityDefinition Resource."
    * entry only Reference(ActivityDefinition)
  * section[doseModification].title = "Investigational Trial Intervention Dose Modification"
  * section[doseModification].code.text = "section6.4-dose-modification"
  * section[doseModification]
    * text 1..1
    * text ^comment = "For each participant, describe any dose modifications allowed, including conditions for such dose modifications, particularly regarding failure to respond or safety concerns. State any minimum period required before a participant’s dose might be raised to the next higher dose or dose range. Include whether it is permissible to start and stop treatment and how dose reductions (if permitted) are to be managed. Information on stopping investigational trial intervention for participants due to safety/other reasons should be described in Section 7 Participant Discontinuation of Trial Intervention and Discontinuation or Withdrawal from Trial. Entries should Reference ActivityDefinition Resource."
    * entry only Reference(ActivityDefinition)
  * section[treatmentOfOverdose].title = "Management of Investigational Trial Intervention Overdose"
  * section[treatmentOfOverdose].code.text = "section6.5-management-of-overdose"
  * section[treatmentOfOverdose]
    * text 1..1
    * text ^comment = "Describe what is meant by investigational trial intervention overdose. Provide any available information on managing the overdose and ensure it is consistent with the Investigator’s Brochure or product labelling. Cross reference these documents as applicable. Entries should Reference ActivityDefinition Resource or PlanDefinition Resource."
    * entry only Reference(ActivityDefinition or PlanDefinition)
  * section[preparation].title = "Preparation, Storage, Handling and Accountability of Investigational Trial Intervention"
  * section[preparation].code.text = "section6.6-preparation-storage-handling"
  * section[preparation]
    * section 3..*
    * section ^slicing.discriminator.type = #value
    * section ^slicing.discriminator.path = "code.text"
    * section ^slicing.rules = #open
    * section contains preparationIntervention 1..1 MS and storageHandling 1..1 MS and accountability 1..1 MS
    * section[preparationIntervention].title = "Preparation of Investigational Trial Intervention"
    * section[preparationIntervention].code.text = "section6.6.1-preparation"
    * section[preparationIntervention]
      * text 1..1
      * text ^comment = "Describe any preparation of the investigational trial intervention, and when necessary, who should prepare it. When applicable, describe the maximum hold time once thawed/mixed before administration. Include thawing, diluting, mixing, and reconstitution/preparation instructions. For drug/device combination products, include any relevant assembly or use instructions and reference the package insert that is provided separately. If the instructions are lengthy or complicated, it is acceptable to reference the package insert (if applicable) or include instructions in separate documents provided to the site (e.g., a pharmacy manual and reference the separate documents."
    * section[storageHandling].title = "Storage and Handling of Investigational Trial Intervention"
    * section[storageHandling].code.text = "section6.6.2-storage-handling"
    * section[storageHandling]
      * text 1..1
      * text ^comment = "Describe storage and handling requirements (e.g., protection from light, temperature, humidity) for the investigational trial intervention(s). For trials in which multi-dose vials are utilised, provide additional information regarding stability and expiration time after initial use (e.g., if the seal is broken). Explain how the investigational trial intervention will be provided to the Investigator. If applicable, include details about kits, packaging, or other material of the investigational trial intervention for blinding purposes. If the instructions are lengthy or complicated, it is acceptable to reference the package insert (if applicable) or include instructions in separate documents provided to the site (e.g., a pharmacy manual) and reference the separate documents."
    * section[accountability].title = "Accountability of Investigational Trial Intervention"
    * section[accountability].code.text = "section6.6.3-accountability"
    * section[accountability]
      * text 1..1
      * text ^comment = "Describe the accountability method, including: • how the investigational trial intervention will be distributed • who will distribute the investigational trial intervention • participation of a drug storage repository or pharmacy, if applicable • plans for disposal or return of unused product • if applicable, plans for reconciliation of investigational trial intervention"
  * section[assignmentAndBlinding].title = "Investigational Trial Intervention Assignment, Randomisation and Blinding"
  * section[assignmentAndBlinding].code.text = "section6.7-assignment-randomisation-blinding"
  * section[assignmentAndBlinding]
    * section 4..*
    * section ^slicing.discriminator.type = #value
    * section ^slicing.discriminator.path = "code.text"
    * section ^slicing.rules = #open
    * section contains assignment 1..1 MS and randomisation 1..1 MS and blinding 1..1 MS and unblinding 1..1 MS
    * section[assignment].title = "Participant Assignment to Investigational Trial Intervention"
    * section[assignment].code.text = "section6.7.1-assignment"
    * section[assignment]
      * text 1..1
      * text ^comment = "State that at enrollment, participant identification codes should be assigned. Describe the method of assigning participants to investigational trial intervention without being so specific that blinding or randomisation might be compromised. If assignment to investigational trial intervention is by randomisation, describe when randomisation occurs relative to screening. If adaptive randomisation or other methods of covariate balancing/minimisation are employed, include a cross reference to the methods of analysis in Section 10 Statistical Considerations. As applicable, details regarding the implementation of procedures to minimise bias should be described."
    * section[randomisation].title = "Randomisation"
    * section[randomisation].code.text = "section6.7.2-randomisation"
    * section[randomisation]
      * text 1..1
      * text ^comment = "Describe the randomisation procedures (e.g., central randomisation procedures), the method used to generate the randomisation schedule (e.g., computer generated), the source of the randomisation schedule (e.g., sponsor, investigator, or other), and whether IxRS will be used. To maintain the integrity of the blinding, do not include the block size."
    * section[blinding].title = "Measures to Maintain Blinding"
    * section[blinding].code.text = "section6.7.3-blinding"
    * section[blinding]
      * text 1..1
      * text ^comment = "Describe efforts to maintain blinding: • The investigational trial interventions are as indistinguishable as possible • Plans for the maintenance of randomisation codes and appropriate blinding for the trial • Procedures for planned (e.g., interim analysis), and unintentional (e.g., breach of procedure) breaking of randomisation codes. For unplanned but intentional actions (e.g., safety events), refer to Section 6.7.4 Emergency Unblinding at the Site. If the trial allows for some investigators or other designated staff to remain unblinded (e.g., to allow them to adjust investigational trial intervention), the means of maintaining the blinding for other investigators or staff should be explained. Measures to prevent unblinding by laboratory measurements or while performing study assessments, if used, should be described."
    * section[unblinding].title = "Emergency Unblinding at the Site"
    * section[unblinding].code.text = "section6.7.4-unblinding"
    * section[unblinding]
      * text 1..1
      * text ^comment = "Describe the criteria for breaking the trial blind or participant code. Describe the circumstances in which the blinding would be broken for an individual or for all participants and who has responsibility. Include the procedure for emergency unblinding such as via IxRS or code envelopes as well as documentation of unblinding. Indicate to whom the intentional and unintentional unblinding should be reported."
  * section[adherence].title = "Investigational Trial Intervention Adherence"
  * section[adherence].code.text = "section6.8-intervention-adherence"
  * section[adherence]
    * text 1..1
    * text ^comment = "Describe the measures to monitor and document participants’ adherence with investigational trial intervention (e.g., trial intervention accountability records, diary cards, or investigational trial intervention concentration measurements). List what documents are mandatory to complete (e.g., participant drug log) and what source data/records will be used to document investigational trial intervention adherence."
  * section[noninvestigationalTherapy].title = "Non-Investigational Trial Intervention"
  * section[noninvestigationalTherapy].code.text = "section6.9-noninvestigational-interventions"
  * section[noninvestigationalTherapy]
    * text 1..1
    * text ^comment = "As stated in Section 6 Trial Intervention and Concomitant Therapy, noninvestigational interventions are pre-specified products used in the trial but are not part of trial objectives and hence, are not investigational trial interventions."
  * section[noninvestigationalTherapy]
    * section 0..*
    * section ^slicing.discriminator.type = #value
    * section ^slicing.discriminator.path = "code.text"
    * section ^slicing.rules = #open
    * section contains background 0..1 MS and rescue 0..1 MS and other 0..1 MS
    * section[background].title = "Background Trial Intervention"
    * section[background].code.text = "section6.9.1-background-intervention"
    * section[background]
      * text 1..1
      * text ^comment = "Describe any background intervention(s), including administration and any conditions for use."
    * section[rescue].title = "Rescue Therapy"
    * section[rescue].code.text = "section6.9.2-rescue-therapy"
    * section[rescue]
      * text 1..1
      * text ^comment = "List all permitted rescue medications, treatments, and/or procedures, including any relevant instructions on administration and any conditions of use. If administration of rescue therapy leads to the temporary discontinuation of trial intervention or a participant’s withdrawal from the trial, refer to Section 7 Participant Discontinuation of Trial Intervention and Discontinuation or Withdrawal from Trial."
    * section[other].title = "Other Noninvestigational Trial Intervention"
    * section[other].code.text = "section6.9.3-other-therapy"
    * section[other]
      * text 1..1
      * text ^comment = "If applicable, describe the use of any other noninvestigational trial intervention, e.g., challenge agents or diagnostics."
  * section[concomitantTherapy].title = "Concomitant Therapy"
  * section[concomitantTherapy].code.text = "section6.10-concomitant-therapy"
  * section[concomitantTherapy]
    * text 1..1
    * text ^comment = "Specify the concomitant medications, supplements, complementary and alternative therapies, treatments, and/or procedures which are prohibited or permitted during the trial and include details about when the information will be collected (e.g., during screening, at each visit). When appropriate to separate the content, subheadings may be used."
    * section 0..*
    * section ^slicing.discriminator.type = #value
    * section ^slicing.discriminator.path = "code.text"
    * section ^slicing.rules = #open
    * section contains prohibited 0..1 MS and permitted 0..1 MS
    * section[prohibited].title = "Prohibited Concomitant Therapy"
    * section[prohibited].code.text = "section6.10.1-prohibited-concomitant-therapy"
    * section[prohibited]
      * text 1..1
      * text ^comment = "If applicable, describe any prohibited concomitant therapy."
    * section[permitted].title = "Permitted Concomitant Therapy"
    * section[permitted].code.text = "section6.10.2-permitted-concomitant-therapy"
    * section[permitted]
      * text 1..1
      * text ^comment = "If applicable, describe any permitted concomitant therapy."
* section[dropout].title = "Participant Discontinuation of Trial Intervention and Discontinuation or Withdrawal from Trial"
* section[dropout].code.text = "section7-participant-discontinuation"
* section[dropout]
  * section 3..*
  * section ^slicing.discriminator.type = #value
  * section ^slicing.discriminator.path = "code.text"
  * section ^slicing.rules = #open
  * section contains discontinuation 1..1 MS and withdrawal 1..1 MS and lostToFollowUp 1..1 MS
  * section[discontinuation].title = "Discontinuation of Trial Intervention for Individual Participants"
  * section[discontinuation].code.text = "section7.1-discontinuation-of-trial-intervention"
  * section[discontinuation]
    * section 3..*
    * section ^slicing.discriminator.type = #value
    * section ^slicing.discriminator.path = "code.text"
    * section ^slicing.rules = #open
    * section contains permanent 1..1 MS and temporary 1..1 MS and rechallenge 1..1 MS
    * section[permanent].title = "Permanent Discontinuation of Trial Intervention"
    * section[permanent].code.text = "section7.1.1-permanent-discontinuation-of-trial-intervention"
    * section[permanent]
      * text 1..1
      * text ^comment = "Describe: • the criteria for discontinuation of a participant from any trial intervention, carefully evaluating which are appropriate for the trial population and therapy being studied • how participants who discontinue trial intervention will be followed after discontinuation. Depending on the chosen intercurrent event handling strategy, it will be important to continue to follow and ascertain outcomes in participants who discontinue treatment through the end of the trial to prevent missing data in important analyses. Refer to Section 1.3 Schedule of Activities for assessments to be performed at the time of and following discontinuation of trial intervention • the process for collecting and recording the detailed reasons for discontinuing trial intervention if not described elsewhere"
    * section[temporary].title = "Temporary Discontinuation of Trial Intervention"
    * section[temporary].code.text = "section7.1.2-temporary-discontinuation-of-trial-intervention"
    * section[temporary]
      * text 1..1
      * text ^comment = "Describe: • the criteria for temporary discontinuation or interruption of trial intervention for an individual participant • what to do and which restrictions still apply if the participant has to temporarily discontinue or interrupt trial intervention • whether the participant will continue in the trial • which assessments will be performed for the stated duration of the trial. Details of any rechallenge or restart after a safety-related event should be included in Section 7.1.3 Rechallenge."
    * section[rechallenge].title = "Rechallenge"
    * section[rechallenge].code.text = "section7.1.3-rechallenge"
    * section[rechallenge]
      * text 1..1
      * text ^comment = "Describe the criteria for rechallenge/restarting trial intervention, how and when to perform rechallenge, number of rechallenges allowed during the trial, and whether all, or specify which, assessments will be performed for the stated duration of the trial. If rechallenge is not allowed, state this."
  * section[withdrawal].title = "Discontinuation or Withdrawal from the Trial"
  * section[withdrawal].code.text = "section7.2-participant-withdrawal"
  * section[withdrawal]
    * text 1..1
    * text ^comment = "Describe the criteria for participant discontinuation or withdrawal from the trial. Describe the reason for withdrawal and the type of data to be collected for the final assessments with reference to the schedule of activities for the participant’s end of study visit unless provided in another section. In many cases, the only reason for a participant being considered withdrawn from the trial should be a participant’s withdrawal of consent to continue to participate in the trial. All other participants, including those who discontinue treatment, should remain in the trial and continue to be followed to prevent missing data in important analyses. Refer to Section 10 Statistical Considerations for the data that must be collected for the trial estimands."
  * section[lostToFollowUp].title = "Management of Loss to Follow-Up"
  * section[lostToFollowUp].code.text = "section7.3-lost-to-follow-up"
  * section[lostToFollowUp]
    * text 1..1
    * text ^comment = "Describe how the trial will define how participants are lost to follow-up. In general, participants should be considered lost to follow-up only if they cannot be reached despite multiple attempts to contact. Also describe approaches that will be used to minimise loss to follow-up, such as multiple, diverse methods to remain in contact with participants (e.g., telephone calls, texts, and emails to the participant) and how contacts will be recorded."
* section[assessments].title = "Trial Assessments and Procedures"
* section[assessments].code.text = "section8-assessments"
* section[assessments]
  * section 8..*
  * section ^slicing.discriminator.type = #value
  * section ^slicing.discriminator.path = "code.text"
  * section ^slicing.rules = #open
  * section contains considerations 0..1 MS and screeningBaseline 1..1 MS and efficacy 1..1 MS and safety 1..1 MS and pharmacokinetics 1..1 MS and biomarkers 1..1 MS and immunogenicity 1..1 MS and economics 0..1 MS
  * section[considerations].title = "Trial Assessments and Procedures Considerations"
  * section[considerations].code.text = "section8.1-assessments-procedures"
  * section[considerations]
    * text 1..1
    * text ^comment = "Describe general considerations applicable across trial assessments and procedures."
  * section[screeningBaseline].title = "Screening/Baseline Assessments and Procedures"
  * section[screeningBaseline].code.text = "section8.2-screening-baseline-assessments"
  * section[screeningBaseline]
    * text 1..1
    * text ^comment = "Describe any assessments and procedures that are unique to screening/baseline (e.g., collection of data on participant characteristics, assessments/procedures performed for the purpose of determining eligibility or for stratification) in this section. Describe screening and baseline assessments and procedures separately when screening and baseline are different or performed at different visits."
  * section[efficacy].title = "Efficacy Assessments and Procedures"
  * section[efficacy].code.text = "section8.3-efficacy-assessments"
  * section[efficacy]
    * text 1..1
    * text ^comment = "Describe efficacy assessments and procedures in this section. Cross reference Section 8.7 Immunogenicity Assessments if immunogenicity assessments are used in efficacy determination."
  * section[safety].title = "Safety Assessments and Procedures"
  * section[safety].code.text = "section8.4-safety-assessments"
  * section[safety]
    * text ^comment = "Describe safety assessments and procedures utilizing the following subsections as applicable. Add level 3 headings as needed. • Identify any noninvestigator party responsible for evaluation of laboratory or other safety assessments (e.g., Sponsor or external Independent Data Monitoring Committee; cross refer to Section 11.4 Committees for details as applicable). • Include guidelines for the medical management of relevant laboratory or other safety assessment abnormalities."
    * section 0..*
    * section ^slicing.discriminator.type = #value
    * section ^slicing.discriminator.path = "code.text"
    * section ^slicing.rules = #open
    * section contains physical 0..1 MS and vitals 0..1 MS and ecg 0..1 MS and laboratory 0..1 MS and pregnancy 0..1 MS and suicidal 0..1 MS
    * section[physical].title = "Physical Examination"
    * section[physical].code.text = "section8.4.1-physical-examination"
    * section[physical] 
      * text 1..1
      * text ^comment = "Include any specific instructions for the collection and interpretation of physical examinations."
    * section[vitals].title = "Vital Signs"
    * section[vitals].code.text = "section8.4.2-vital-signs"
    * section[vitals] 
      * text 1..1
      * text ^comment = "Include any specific instructions for the collection and interpretation of vital signs."
    * section[ecg].title = "Electrocardiograms"
    * section[ecg].code.text = "section8.4.3-electrocardiograms"
    * section[ecg] 
      * text 1..1
      * text ^comment = "Include any specific instructions for the collection, interpretation, and archiving of ECGs."      
    * section[laboratory].title = "Clinical Laboratory Assessments"
    * section[laboratory].code.text = "section8.4.4-clinical-laboratory-assessments"
    * section[laboratory] 
      * text 1..1
      * text ^comment = "Describe any specific instructions for the collection and interpretation of clinical laboratory assessments, including: • type of laboratory (central/local/hybrid) • acceptability of additional tests deemed necessary by the investigator or local regulations • instructions for situations in which central laboratory results are not available in time for trial intervention and/or response evaluation, or in the event of a severe disruption (e.g., a pandemic or natural disaster) • treatment algorithms for results out of normal range • cross reference Section 12.1 Clinical Laboratory Tests for laboratory assessment panels"
    * section[pregnancy].title = "Pregnancy Testing"
    * section[pregnancy].code.text = "section8.4.5-pregnancy-testing"
    * section[pregnancy] 
      * text 1..1
      * text ^comment = "Include any specific instructions for the collection and interpretation of pregnancy testing."
    * section[suicidal].title = "Suicidal Ideation and Behaviour Risk Monitoring"
    * section[suicidal].code.text = "section8.4.6-suicidal-ideation"
    * section[suicidal] 
      * text 1..1
      * text ^comment = "If the trial meets any of the criteria requiring suicidal ideation and behaviour risk monitoring by the guidance/guideline in each region, include justification for the need for suicidal ideation and behaviour risk monitoring in the study and add any specific instructions for the collection and interpretation of the assessment. In case this is an AESI in the study, justification should also be provided in Section 9.2.4 Adverse Events of Special Interest."
  * section[pharmacokinetics].title = "Pharmacokinetics"
  * section[pharmacokinetics].code.text = "section8.5-pharmacokinetics"
  * section[pharmacokinetics]
    * text 1..1
    * text ^comment = "Include any specific instructions for the collection and assay of samples and interpretation of PK assessments. • Describe the biological samples collected, the handling of samples, and the assay method. o Specific sample collection and processing instructions can be described in an appendix or a separate document and cross referenced. • Describe the retention time for the samples (ensuring alignment with the ICF). • Indicate the types of analyses for each sample. • Define the PK parameters to be calculated and the calculation methods."
  * section[biomarkers].title = "Biomarkers"
  * section[biomarkers].code.text = "section8.6-biomarkers"
  * section[biomarkers]
    * text 0..1
    * text ^comment = "No text is intended here (header only). Include any specific instructions for the collection of samples and assessment of biomarkers, including pharmacodynamics. If biomarker or pharmacodynamic testing is not included in the study, state “Not Applicable.” • Describe the biological samples that will be collected (for example, tissue, serum, plasma, etc.). o Specific sample collection and processing instructions can be described in an appendix or a separate document and cross-referenced. • Describe the retention time for the samples (ensuring alignment with the ICF). • Indicate the types of biomarkers that will be studied for each sample. • Specify whether each sample is optional or required. Required samples must be based on a protocol objective."
    * section 2..*
    * section ^slicing.discriminator.type = #value
    * section ^slicing.discriminator.path = "code.text"
    * section ^slicing.rules = #open
    * section contains genetics 1..1 MS and pharmacodynamics 1..1 MS and other 0..1 MS
    * section[genetics].title = "Genetics and Pharmacogenomics"
    * section[genetics].code.text = "section8.6.1-genetics-pharmacogenomics"
    * section[genetics]
      * text 1..1
      * text ^comment = "Include any specific instructions for the collection and assay of samples for genetic and/or pharmacogenomic analysis. • Describe the biological samples that will be collected (for example, tissue, serum, plasma, etc.), handling of samples, and the assay method. o Specific sample collection and processing instructions can be described in an appendix or a separate document and cross-referenced. • Describe the retention time for the samples (ensuring alignment with the ICF). • Indicate the types of analyses that may be studied for each sample."
    * section[pharmacodynamics].title = "Pharmacodynamic Biomarkers"
    * section[pharmacodynamics].code.text = "section8.6.2-pharmacodynamics"
    * section[pharmacodynamics]
      * text 1..1
      * text ^comment = "Include any specific instructions for the collection of samples and assessment of pharmacodynamic biomarkers. • Describe the biological samples that will be collected (for example, tissue, serum, plasma, etc.). o Specific sample collection and processing instructions can be described in an appendix or a separate document and cross-referenced. • Describe the retention time for the samples (ensuring alignment with the ICF). • Indicate the types of biomarkers that will be studied for each sample. • Specify whether each sample is optional or required. Required samples must be based on a protocol objective."
    * section[other].title = "Other Biomarkers"
    * section[other].code.text = "section8.6.3-other-biomarkers"
    * section[other]
      * text 1..1
      * text ^comment = "Include any specific instructions for the collection of samples and assessment of other biomarkers. • Describe the biological samples that will be collected (for example, tissue, serum, plasma, etc.). o Specific sample collection and processing instructions can be described in an appendix or a separate document and cross-referenced. • Describe the retention time for the samples (ensuring alignment with the ICF). • Indicate the types of biomarkers that will be studied for each sample. • Specify whether each sample is optional or required. Required samples must be based on a protocol objective."
  * section[immunogenicity].title = "Immunogenicity Assessments"
  * section[immunogenicity].code.text = "section8.7-immunogenicity-assessments"
  * section[immunogenicity]
    * text 1..1
    * text ^comment = "Include any specific instructions for the collection of samples and interpretation of immunogenicity. If immunogenicity assessments are included within Efficacy Assessments or Safety Assessments, cross-reference to that section. • Describe the biological samples that will be collected (e.g., tissue, serum, plasma). o Specific sample collection and processing instructions can be described in an appendix or a separate document and cross referenced. • Describe the retention time for the samples (ensuring alignment with the ICF). • Indicate the types of biomarkers that will be studied for each sample. • Specify whether each sample is optional or required. Required samples must be based on a protocol objective."
  * section[economics].title = "Medical Resource Utilisation and Health Economics"
  * section[economics].code.text = "section8.8-economics"
  * section[economics]
    * text 1..1
    * text ^comment = "This section does not apply to COAs. Include this section only for any value evidence and outcomes assessments not included in either the efficacy or safety sections. Describe the health outcome measures, collection method (e.g., diary, physician interview), and participant burden."
* section[adverseEvents].title = "Adverse Events, Serious Adverse Events, Product Complaints, Pregnancy and Postpartum Information, and Special Safety Situations"
* section[adverseEvents].code.text = "section9-adverse-events"
* section[adverseEvents]
  * section ^slicing.discriminator.type = #value
  * section ^slicing.discriminator.path = "code.text"
  * section ^slicing.rules = #open
  * section contains definitions 1..1 MS and collectionMethods 1..1 MS and pregnancy 1..1 MS and special 1..1 MS
  * section[definitions].title = "Definitions"
  * section[definitions].code.text = "section9.1-definitions"
  * section[definitions]
    * section 2..*
    * section ^slicing.discriminator.type = #value
    * section ^slicing.discriminator.path = "code.text"
    * section ^slicing.rules = #open
    * section contains adverseEventsDefinitions 1..1 MS and seriousAdverseEventsDefinitions 1..1 MS and productComplaintsDefinitions 0..1 MS
    * section[adverseEventsDefinitions].title = "Definitions of Adverse Events"
    * section[adverseEventsDefinitions].code.text = "section9.1.1-definitions-adverse-events"
    * section[adverseEventsDefinitions]
      * text 1..1
      * text ^comment = "Specify the AE definitions, including: • any relevant regional AE requirements • any events that meet and do not meet the AE definition • any trial-specific AE clarifications • if applicable, any clarifications on the AE and SAE definitions for efficacy trials (e.g., lack of efficacy or failure of pharmacological actions reporting)"
    * section[seriousAdverseEventsDefinitions].title = "Definitions of Serious Adverse Events"
    * section[seriousAdverseEventsDefinitions].code.text = "section9.1.2-definitions-serious-adverse-events"
    * section[seriousAdverseEventsDefinitions]
      * text 1..1
      * text ^comment = "Specify the SAE definitions, including: • Any relevant regional SAE requirements. • Any events that meet and do not meet the SAE definition. • Any trial-specific SAE clarifications."
    * section[productComplaintsDefinitions].title = "Definitions of Product Complaints"
    * section[productComplaintsDefinitions].code.text = "section9.1.3-definitions-product-complaints"
    * section[productComplaintsDefinitions]
      * text 1..1
      * text ^comment = "Specify the definition of product complaints in the context of the trial. If appropriate, include 9.1.3.1 Definition of Medical Device Product Complaints."
  * section[collectionMethods].title = "Timing and Procedures for Collection and Reporting"
  * section[collectionMethods].code.text = "section9.2-collection-methods"
  * section[collectionMethods]
    * text 1..1
    * text ^comment = "Specify timing and procedures for collection and reporting of AEs, SAEs, product complaints (including medical device product complaints if applicable) and pregnancy and postpartum information in the sections below. This information may be summarized in a tabular format with 7 columns: Event Type, Situational Scope, Reportable Period Start, Reportable Period End, Timing for Reporting to Sponsor or Designee, Method for Reporting, Back-up Method for Reporting."
    * section ^slicing.discriminator.type = #value
    * section ^slicing.discriminator.path = "code.text"
    * section ^slicing.rules = #open
    * section contains timing 1..1 and procedures 1..1 and reporting 1..1 and specialInterest 1..1 and diseaseRelatedEvents 1..1
    * section[timing].title = "Timing"
    * section[timing].code.text = "section9.2.1-timing"
    * section[timing]
      * text 1..1
      * text ^comment = "Specify timing for collection and reporting, including: • start and end dates for collection and reporting • frequency of collection and reporting • cross reference to the Schedule of Assessments as appropriate"
    * section[procedures].title = "Collection Procedures"
    * section[procedures].code.text = "section9.2.2-collection-procedures"
    * section[procedures]
      * text 1..1
      * text ^comment = "Specify procedures for collection and recording of AEs, SAEs, product complaints (including medical device product complaints if applicable) and pregnancy and postpartum information in the sections below."
      * section ^slicing.discriminator.type = #value
      * section ^slicing.discriminator.path = "code.text"
      * section ^slicing.rules = #open
      * section contains identifying 1..1 and intensity 1..1 and causality 1..1 and recording 1..1 and followup 1..1
      * section[identifying].title = "Identification"
      * section[identifying].code.text = "section9.2.2.1-identification"
      * section[identifying]
        * text 1..1
        * text ^comment = "Specify how information will be identified (e.g., spontaneous reporting, solicited questions)."
      * section[intensity].title = "Severity"
      * section[intensity].code.text = "section9.2.2.2-severity"
      * section[intensity]
        * text 1..1
        * text ^comment = "Specify the intensity rating categories/scale."     
      * section[causality].title = "Causality"
      * section[causality].code.text = "section9.2.2.3-causality"
      * section[causality]
        * text 1..1
        * text ^comment = "Specify the causality categories/scale and the procedures for assessing causality."
      * section[recording].title = "Recording"
      * section[recording].code.text = "section9.2.2.4-recording"
      * section[recording]
        * text 1..1
        * text ^comment = "Specify procedures for recording."
      * section[followup].title = "Follow-up"
      * section[followup].code.text = "section9.2.2.5-followup"
      * section[followup]
        * text 1..1
        * text ^comment = "Specify the procedures for follow-up. Include the assessment tools that will be used to monitor the events and the duration of follow-up after appearance of the events."
    * section[reporting].title = "Reporting"
    * section[reporting].code.text = "section9.2.3-reporting-events"
    * section[reporting]
      * text 1..1
      * text ^comment = "Specify the reporting method (e.g., an electronic data collection tool or a paper CRF), backup reporting method if applicable and reporting timeline to the Sponsor"
      * section ^slicing.discriminator.type = #value
      * section ^slicing.discriminator.path = "code.text"
      * section ^slicing.rules = #open
      * section contains regulatoryRequirements 1..1
      * section[regulatoryRequirements].title = "Regulatory Reporting Requirements"
      * section[regulatoryRequirements].code.text = "section9.2.3.1-regulatory-requirements"
      * section[regulatoryRequirements]
        * text 1..1
        * text ^comment = "Specify: • the Investigator’s responsibilities for reporting to the Sponsor (and to Ethics Committees, where required), specifying timing of reporting to allow the Sponsor to meet their responsibilities • the Sponsor’s legal/regulatory responsibilities to report to regulatory authorities, ethics committees, and investigators • serious and unexpected adverse reaction reporting"     
    * section[specialInterest].title = "Adverse Events of Special Interest"
    * section[specialInterest].code.text = "section9.2.4-special-interest"
    * section[specialInterest]
      * text 1..1
      * text ^comment = "Specify any AESI: • any event (serious or nonserious) of scientific and medical concern relative to the trial intervention, for which ongoing monitoring and rapid communication by the investigator to the sponsor can be appropriate • other events that merit reporting to the Sponsor, trial leadership, IRB, and regulatory agencies. Include the following for each AESI: • the definition • the approach for ascertaining information • if applicable, any approach to confirm or adjudicate the occurrence"
    * section[diseaseRelatedEvents].title = "Disease-related Events or Outcomes Not Qualifying as AEs or SAEs"
    * section[diseaseRelatedEvents].code.text = "section9.2.5-disease-related-events"
    * section[diseaseRelatedEvents]
      * text 1..1
      * text ^comment = "Specify any DREs, DROs, or both that will not be reported as AEs or SAEs (e.g., seizures in anticonvulsant trials) or state “Not applicable.”"
  * section[pregnancy].title = "Pregnancy and Postpartum Information"
  * section[pregnancy].code.text = "section9.3-pregnancy-postpartum"
  * section[pregnancy]
    * section 0..*
    * section ^slicing.discriminator.type = #value
    * section ^slicing.discriminator.path = "code.text"
    * section ^slicing.rules = #open
    * section contains pregnant 0..1 MS and pregnantPartner 0..1 MS
    * section[pregnant].title = "Participants Who Become Pregnant During the Trial"
    * section[pregnant].code.text = "section9.3.1-pregnant"
    * section[pregnant]
      * text 1..1
      * text ^comment = "Specify: • the assessments to be performed • type and duration of monitoring • whether participants who become pregnant during the trial may continue with trial intervention or must be discontinued from trial intervention (refer to Section 7 Participant Discontinuation of Trial Intervention and Discontinuation or Withdrawal from Trial as applicable) • any trial modifications that need to be made for participants who become pregnant • what information will be collected about a participant who becomes pregnant during the trial (e.g., recording and reporting to the Sponsor, postpartum follow-up, trial intervention discontinuation or continuation, or trial withdrawal). For postpartum follow-up, include the time period (e.g., initial child development) with the justification. If exposure to trial intervention during breastfeeding is applicable, specify: • the assessments to be performed • type and duration of monitoring • what information will be collected for both the participant and child"
    * section[pregnantPartner].title = "Participants Whose Partners Become Pregnant"
    * section[pregnantPartner].code.text = "section9.3.2-pregnant-partner"
    * section[pregnantPartner]
      * text 1..1
      * text ^comment = "Specify: • if the investigator will attempt to collect pregnancy information about a participant’s partner, who becomes pregnant during the specified period in the trial • whether the participant whose partner becomes pregnant should be discontinued from trial intervention (refer to Section 7 Participant Discontinuation of Trial Intervention and Discontinuation or Withdrawal from Trial as applicable) • the assessments to be performed, type and duration of monitoring, and the information to be collected"
  * section[special].title = "Special Safety Situations"
  * section[special].code.text = "section9.4-special-safety-situations"
  * section[special]
    * text 1..1
    * text ^comment = "Specify special safety situations associated with the trial intervention(s) that do not qualify as an AE or SAE, but require regulatory reporting. Examples include: • misuse or abuse • off-label use (if applicable) • medication error (prescription or dispensing error) • occupational exposure • use outside of what is foreseen in the protocol • unintended exposure of embryo, foetus, or child via maternal exposure (pregnancy or breastfeeding) or via paternal exposure (semen) • lack of therapeutic efficacy; this is not applicable for studies that measure efficacy as a study endpoint • suspected transmission of an infectious agent; this is only applicable for injected or biologic medicinal products • product complaint, including falsified or counterfeit products • suspected drug-food or drug-drug interaction"
* section[statistics].title = "Statistical Considerations"
* section[statistics].code.text = "section10-statistics"
* section[statistics]
  * text 0..1
  * text ^comment = "Ensure that the data analysis complies with ICH E9 Guideline and ICH E9(R1) Guideline. In general, all relevant data collected in the trial should be considered in this section. No text is intended here (header only)."
  * section 6..*
  * section ^slicing.discriminator.type = #value
  * section ^slicing.discriminator.path = "code.text"
  * section ^slicing.rules = #open
  * section contains considerations 1..1 MS and analysisSets 1..1 MS and analysisBaseline 1..1 MS and analysisPrimaryObjective 1..* MS and secondaryAnalysis 0..* MS and exploratoryAnalysis 0..1 MS and safetyAnalyses 0..1 MS and otherAnalyses 0..1 MS and multiplicity 1..1 MS and interimAnalyses 0..1 MS and sampleSize 1..1 MS
  * section[considerations].title = "General Considerations"
  * section[considerations].code.text = "section10.1-general-considerations"
  * section[considerations]
    * text 1..1
    * text ^comment = "Provide general statements related to statistical considerations, such as whether a separate statistical analysis plan exists, which summary statistics will be provided, and the timing of analyses (e.g., “The analysis will include all participant data at trial completion”)."
  * section[analysisSets].title = "Analysis Sets"
  * section[analysisSets].code.text = "section10.2-analysis-sets"
  * section[analysisSets]
    * text 1..1
    * text ^comment = "Describe analysis sets to be considered at the trial level, i.e., the set of participants whose data are to be included in the analyses, aligned with estimands. Clearly specify the analysis set to be used for each analysis described in Section 10 Statistical Considerations."
  * section[analysisBaseline].title = "Analyses of Demographics and Other Baseline Variables"
  * section[analysisBaseline].code.text = "section10.3-analyses-demographics"
  * section[analysisBaseline]
    * text 1..1
    * text ^comment = "Describe the summary statistics that will be used to characterize the distribution of demographic and other relevant variables at baseline. Specify when the variables are measured (e.g., at trial inclusion, prior to randomisation, or at the time of randomisation). Relevant variables include but are not limited to: stratification variables specified in Section 6.7 Investigational Trial Intervention Assignment, Randomisation and Blinding, covariates for the statistical models specified in Section 10.4 Analyses Associated with the Primary Objective(s), other suspected predictive or prognostic variables, and variables used for planned subgroup analyses."
  * section[analysisPrimaryObjective].title = "Analyses Associated with the Primary Objective(s)"
  * section[analysisPrimaryObjective].code.text = "section10.4-analysis-primary-objective"
  * section[analysisPrimaryObjective]
    * text 0..1
    * text ^comment = "No content here. Create a new section for each estimand."
    * section ^slicing.discriminator.type = #value
    * section ^slicing.discriminator.path = "code.text"
    * section ^slicing.rules = #open
    * section contains analysisPrimaryInstance 1..* MS
    * section[analysisPrimaryInstance].code.text = "section10.4.1-analysis-primary-objective-instance"
    * section[analysisPrimaryInstance]
      * focus only Reference(VariableDefinition)
      * text 0..1
      * text ^comment = "No text is intended here (header only)."
      * section 3..*
      * section ^slicing.discriminator.type = #value
      * section ^slicing.discriminator.path = "code.text"
      * section ^slicing.rules = #open
      * section contains statisticalModel 1..1 MS and intercurrentEventHandling 0..1 MS and missingData 1..1 MS and sensitvityAnalysis 1..1 MS and supplementaryAnalysis 0..1 MS
      * section[statisticalModel].title = "Statistical Analysis Method"
      * section[statisticalModel].code.text = "section10.4.1.1-statistical-method"
      * section[statisticalModel]
        * text 1..1
        * text ^comment = "Describe the statistical analysis methods that will be used to evaluate the primary objective(s) and associated estimand(s) in Section 3.1 Primary Objective(s) and Associated Estimands. Ensure that the statistical hypothesis/model/analysis (and corresponding assumptions) is aligned with the primary estimand(s). For each objective, when applicable, state the null and alternative hypotheses, including the pre-planned type 1 error rate, or alternative criteria for evaluating whether the objective has been met, and relevant operating characteristics if appropriate. Describe the statistical model used and the factors that will be included (covariates and interactions) and any rules for handling these factors (e.g., pooling of centres). If modelling and simulation methods are to be used, describe the model (inputs and outputs), the underlying assumptions, and the method of model fitting. Entries should Reference EndpointAnalysisPlan Profile of Evidence Resource."
        * entry only Reference(EndpointAnalysisPlan)
      * section[intercurrentEventHandling].title = "Handling of Data in Relation to Primary Estimand(s)"
      * section[intercurrentEventHandling].code.text = "section10.4.1.2-data-handling"
      * section[intercurrentEventHandling]
        * text 1..1
        * text ^comment = "For each intercurrent event of the primary estimand(s) (Section 3.1 Primary Objective(s) and Associated Estimands), explain how data will be handled for the statistical analysis in line with the primary estimand. The handling of intercurrent events in the statistical analysis should be aligned with the specific estimand strategies being used. This section should describe in more detail the rationale and handling of the data rather than repeating information from the preceding sections."
      * section[missingData].title = "Handling of Missing Data in Relation to Primary Estimand(s)"
      * section[missingData].code.text = "section10.4.1.3-missing-data-handling"
      * section[missingData]
        * text 1..1
        * text ^comment = "Describe how missing data will be addressed (e.g., imputation method and model), state the underlying assumptions, and provide a rationale for the approach."
      * section[sensitvityAnalysis].title = "Sensitivity Analysis"
      * section[sensitvityAnalysis].code.text = "section10.4.1.4-sensitivity-analysis"
      * section[sensitvityAnalysis]
        * text 1..1
        * text ^comment = "Describe any sensitivity analyses and how their assumptions changed from the assumptions of the main statistical analysis. Sensitivity analyses are a series of analyses conducted with the intent to explore the robustness of inferences from the main estimator to deviations from its underlying modelling assumptions and limitations in the data. Entries should Reference EndpointAnalysisPlan Profile of Evidence Resource."
        * entry only Reference(EndpointAnalysisPlan)
      * section[supplementaryAnalysis].title = "Supplementary Analysis"
      * section[supplementaryAnalysis].code.text = "section10.4.1.5-supplementary-analysis"
      * section[supplementaryAnalysis]
        * text 1..1
        * text ^comment = "Describe any supplementary analysis, if applicable. Supplementary analyses are conducted in addition to the main and sensitivity analysis with the intent to provide additional insights into the understanding of the treatment effect."
  * section[secondaryAnalysis].title = "Analyses Associated with the Secondary Objective(s)"
  * section[secondaryAnalysis].code.text = "section10.5-analysis-secondary-objective"
  * section[secondaryAnalysis]
    * text 0..1
    * text ^comment = "No content here. Create a new section for each estimand. Unless there is no secondary objective, in which case indicate 'Not applicable.'"
    * section ^slicing.discriminator.type = #value
    * section ^slicing.discriminator.path = "code.text"
    * section ^slicing.rules = #open
    * section contains analysisSecondaryInstance 1..* MS
    * section[analysisSecondaryInstance].code.text = "section10.5.1-analysis-secondary-objective-instance"
    * section[analysisSecondaryInstance]
      * focus only Reference(VariableDefinition)
      * text 0..1
      * text ^comment = "No text is intended here (header only)."
      * section 0..*
      * section ^slicing.discriminator.type = #value
      * section ^slicing.discriminator.path = "code.text"
      * section ^slicing.rules = #open
      * section contains statisticalModel 0..1 MS and intercurrentEventHandling 0..1 MS and missingData 0..1 MS and sensitvityAnalysis 0..1 MS and supplementaryAnalysis 0..1 MS
      * section[statisticalModel].title = "Statistical Analysis Method"
      * section[statisticalModel].code.text = "section10.5.1.1-statistical-method"
      * section[statisticalModel]
        * text 1..1
        * text ^comment = "Clearly specify any secondary hypotheses that will be tested for confirmatory purposes. Entries should Reference EndpointAnalysisPlan Profile of Evidence Resource."
        * entry only Reference(EndpointAnalysisPlan)
      * section[intercurrentEventHandling].title = "Handling of Data in Relation to Secondary Estimand(s)"
      * section[intercurrentEventHandling].code.text = "section10.5.1.2-data-handling"
      * section[intercurrentEventHandling]
        * text 1..1
        * text ^comment = "Enter Handling of Data in Relation to Secondary Estimand(s)"
      * section[missingData].title = "Handling of Missing Data in Relation to Secondary Estimand(s)"
      * section[missingData].code.text = "section10.5.1.3-missing-data-handling"
      * section[missingData]
        * text 1..1
        * text ^comment = "Describe how missing data will be addressed (e.g., imputation method and model), state the underlying assumptions, and provide a rationale for the approach. Refer to the E9(R1) addendum when the estimand framework is used."
      * section[sensitvityAnalysis].title = "Sensitivity Analysis"
      * section[sensitvityAnalysis].code.text = "section10.5.1.4-sensitivity-analysis"
      * section[sensitvityAnalysis]
        * text 1..1
        * text ^comment = "Describe sensitivity analyses. Sensitivity analyses are a series of analyses conducted with the intent to explore the robustness of inferences from the main estimator to deviations from its underlying modelling assumptions and limitations in the data. Entries should Reference EndpointAnalysisPlan Profile of Evidence Resource."
        * entry only Reference(EndpointAnalysisPlan)
      * section[supplementaryAnalysis].title = "Supplementary Analysis"
      * section[supplementaryAnalysis].code.text = "section10.5.1.5-supplementary-analysis"
      * section[supplementaryAnalysis]
        * text 1..1
        * text ^comment = "Describe any supplementary analysis if applicable. Supplementary analyses are conducted in addition to the main and sensitivity analysis with the intent to provide additional insights into the understanding of the treatment effect."
  * section[exploratoryAnalysis].title = "Analyses Associated with the Exploratory Objective(s)"
  * section[exploratoryAnalysis].code.text = "section10.6-analysis-exploratory-objective"
  * section[exploratoryAnalysis]
    * text 1..1
    * text ^comment = "Describe any exploratory analyses, if applicable. Additional subsections may be created to describe the analyses for each exploratory objective, as needed. If there is no exploratory objective, indicate “Not applicable”."
  * section[safetyAnalyses].title = "Safety Analyses"
  * section[safetyAnalyses].code.text = "section10.7-safety-analyses"
  * section[safetyAnalyses]
    * text 1..1
    * text ^comment = "If safety is a primary and/or secondary objective, describe the corresponding safety analyses in the appropriate section above (Section 10.4 Analyses Associated with the Primary Objective(s) or Section 10.5 Analyses Associated with the Secondary Objective[s]). In this section, describe statistical methods that will be used to analyse relevant safety outcomes, including any AESI. This should typically include specification of a measure to estimate risk within treatment arms, a measure to compare risks across treatment arms, and a measure of statistical uncertainty around the comparison such as a confidence interval."
  * section[otherAnalyses].title = "Other Analyses"
  * section[otherAnalyses].code.text = "section10.8-other-analyses"
  * section[otherAnalyses]
    * text 1..1
    * text ^comment = "Describe other analyses not included in Sections 10.3-10.7, such as subgroup analyses."
  * section[interimAnalyses].title = "Interim Analyses"
  * section[interimAnalyses].code.text = "section10.9-interim-analyses"
  * section[interimAnalyses]
    * text 1..1
    * text ^comment = "Describe any interim analyses and criteria for stopping or adapting the trial. Ensure alignment with Section 4.3 Trial Stopping Rules. The description should include, but is not limited to, the following. Under circumstances where interim analysis details could impede the integrity of the trial, some of the information can be added in other documents outside of the protocol. • any planned interim analysis, even if it is only to be performed at the request of an oversight body (for example, DMC) • the purpose of the interim analysis, including whether the interim analysis may be used for stopping and/or for other trial adaptations such as sample size re-estimation, alteration to the proportion of participants allocated to each trial group, or changes to eligibility criteria • the applied statistical method; e.g., group sequential test and spending function (e.g., O’Brien-Fleming), as applicable • the parties responsible for performing and reviewing the results of the analyses (e.g., DMC, independent statistician) • when the analyses will be conducted (timing and/or triggers) • the decision criteria—statistical or other—that will be adopted to judge the interim results as part of a guideline for early stopping or other adaptations • who will see the outcome data while the trial is ongoing • whether these individuals will remain blinded to trial groups • how the integrity of the trial implementation will be protected (e.g., maintaining blinding) when decisions are made after interim analyses (e.g., a decision to continue the trial or implement a specific adaptation)"
  * section[multiplicity].title = "Multiplicity Adjustments"
  * section[multiplicity].code.text = "section10.10-multiplicity-adjustments"
  * section[multiplicity]
    * text 1..1
    * text ^comment = "Multiple testing procedures may be needed to limit the probability of false positive findings in a trial. Reasons for carrying out multiple statistical tests include - but are not restricted to - multiple endpoints, multiple treatment groups, multiple hypotheses, subgroups, multiple timepoints. Describe any approaches to multiplicity control for the trial. This description might go beyond the analysis of primary objectives. Specify the statistical approach to control the overall type I error rate as well as the (adjusted) significance levels to test specific hypotheses, as applicable. Clarify whether the tests/confidence intervals are one- or two-sided. State the circumstances under which a trial will be considered to have met its primary objective(s). For example, in a study with two primary efficacy endpoints, this section should state whether the study would be expected to provide statistical evidence on at least one or on both of the endpoints in order to confirm the efficacy of the treatment. For some statistical approaches it might be helpful to include a graphical depiction, as visualisation will be helpful for understanding, coupled with the clinical translation of the mathematical choices. Details regarding interim analyses should be provided in Section 10.9 Interim Analyses."
  * section[sampleSize].title = "Sample Size Determination"
  * section[sampleSize].code.text = "section10.11-sample-size-determination"
  * section[sampleSize]
    * text 1..1
    * text ^comment = "This section should detail the methods used for the determination of the sample size. The sample size calculation should be aligned with the primary estimand and the primary analysis, otherwise a justification is needed. Details of sample size calculation should include all relevant information to enable reproduction of the sample size, e.g.,: • referencing any prior studies on which assumptions were based • significance level (including information on the choice of one- or two-sided level) • power • assumed treatment effect and variability • how dropout rate and intercurrent events have been incorporated into sample size calculation • precision of estimator/length of confidence interval. Any assumptions made should be stated and justified. Further analysis of how deviations from the assumptions will affect the sample size should be included. If complex simulations were used to calculate the sample size, consider including details in a separate simulation report as an appendix to the protocol. If the planned sample size is not derived statistically, then this should be explicitly stated along with a rationale for the intended sample size (e.g., exploratory nature of pilot trials; pragmatic considerations for trials in rare diseases). Entries should Reference EndpointAnalysisPlan Profile of Evidence Resource."
    * entry only Reference(EndpointAnalysisPlan)
* section[oversight].title = "Trial Oversight and Other General Considerations"
* section[oversight].code.text = "section11-oversight"
* section[oversight]
  * section 10..*
  * section ^slicing.discriminator.type = #value
  * section ^slicing.discriminator.path = "code.text"
  * section ^slicing.rules = #open
  * section contains regulatory 1..1 MS and trialOversight 1..1 MS and committees 1..1 MS and informedConsent 1..1 MS and insurance 1..1 MS and riskManagement 1..1 MS and dataGovernance 1..1 MS and dataProtection 1..1 MS and sourceData 1..1 MS and protcolDeviations 1..1 MS and earlySiteClosure 1..1 MS and dataDissemination 1..1 MS
  * section[regulatory].title = "Regulatory and Ethical Considerations"
  * section[regulatory].code.text = "section11.1-regulatory-considerations"
  * section[regulatory]
    * text 1..1
    * text ^comment = "Provide a high-level statement on the prevailing ethical, legal, and regulatory guidelines that will be applied throughout the trial. For example, This trial will be conducted in accordance with the protocol and with the following: • Ethical principles that have their origin in the Declaration of Helsinki for medical research involving human subjects • Consensus ethical principles derived from international guidelines including the Declaration of Helsinki and the Council for International Organisations of Medical Sciences (CIOMS) International Ethical Guidelines • ICH Good Clinical Practice (GCP) Guidelines • Applicable laws and regulations"
  * section[trialOversight].title = "Trial Oversight"
  * section[trialOversight].code.text = "section11.2-trial-oversight"
  * section[trialOversight]
    * text 0..1
    * text ^comment = "Concisely summarize the trial oversight listing the investigator and sponsor responsibilities not covered in other sections of the protocol which are essential for the operations of the trial, specifying the ones related to quality assurance."
    * section 2..*
    * section ^slicing.discriminator.type = #value
    * section ^slicing.discriminator.path = "code.text"
    * section ^slicing.rules = #open
    * section contains investigatorResponsibilities 1..1 MS and sponsorResponsibilities 1..1 MS
    * section[investigatorResponsibilities].title = "Investigator Responsibilities"
    * section[investigatorResponsibilities].code.text = "section11.2.1-investigator-responsibilities"
    * section[investigatorResponsibilities]
      * text 1..1
      * text ^comment = "Describe the investigator duties, including the oversight of duties delegated to a third party that may impact the trial conduct at sites, if applicable and if not addressed elsewhere."
    * section[sponsorResponsibilities].title = "Sponsor Responsibilities"
    * section[sponsorResponsibilities].code.text = "section11.2.2-sponsor-responsibilities"
    * section[sponsorResponsibilities]
      * text 1..1
      * text ^comment = "Describe the sponsor duties, including those to be transferred to a third party that may impact the investigators sites, if applicable."
  * section[informedConsent].title = "Informed Consent Process"
  * section[informedConsent].code.text = "section11.3-informed-consent-process"
  * section[informedConsent]
    * text 1..1
    * text ^comment = "Specify the key elements of the informed consent process, including any special needs and how these are addressed (for example, assent, capacity, legally acceptable representative, adolescents who may reach age of majority during the trial, pregnant participants and pregnant partners of participants)"
    * section 0..*
    * section ^slicing.discriminator.type = #value
    * section ^slicing.discriminator.path = "code.text"
    * section ^slicing.rules = #open
    * section contains assentProcess 0..1 MS and emergency 0..1 MS and rescreening 0..1 MS and remainingSamples 0..1 MS
    * section[assentProcess].title = "Assent Process"
    * section[assentProcess].code.text = "section11.3.0-assent-process"
    * section[assentProcess]
      * text 1..1
      * text ^comment = "Enter Description of Assent Process."
    * section[emergency].title = "Emergency Consent Process"
    * section[emergency].code.text = "section11.3.0-emergency-consent-process"
    * section[emergency]
      * text 1..1
      * text ^comment = "If enrollment in the trial may occur during an emergency in which the participant or their legally acceptable representative is not able or available to give consent, describe the consent process."
    * section[rescreening].title = "Informed Consent for Rescreening"
    * section[rescreening].code.text = "section11.3.1-rescreening-consent-process"
    * section[rescreening]
      * text 1..1
      * text ^comment = "If participants can be rescreened as described in Section 5.6, state whether the participant needs to complete a new consent. Screen failure and rescreening should be clearly defined in the protocol, with cross reference to those definitions."
    * section[remainingSamples].title = "Informed Consent for Remaining Samples in Exploratory Research"
    * section[remainingSamples].code.text = "section11.3.2-remaining-samples"
    * section[remainingSamples]
      * text 1..1
      * text ^comment = "If participants will be asked to consent to optional exploratory research using the remainder of mandatory samples, describe the use of remaining samples for optional exploratory research. If any exploratory research is planned and additional written consent regarding the use of remaining samples for exploratory research will be obtained, describe the consent process." 
  * section[committees].title = "Committees"
  * section[committees].code.text = "section11.4-committees"
  * section[committees]
    * text 1..1
    * text ^comment = "Briefly describe the administrative structure of committees that will be reviewing data while the trial is ongoing, and the type of committee (e.g., Dose Escalation Committee, Data Monitoring Committee or Data Safety Monitoring Board). Note that specific details may be required depending on local law or regulation. If applicable, Committee Charters may be cross referenced. If no committees are involved, state “Not applicable.”"
  * section[insurance].title = "Insurance and Indemnity"
  * section[insurance].code.text = "section11.5-insurance-and-indemnity"
  * section[insurance]
    * text 1..1
    * text ^comment = "Concisely summarize the arrangements for participants insurance and indemnity if not addressed in a separate agreement, if required by the applicable regulatory requirements."
  * section[riskManagement].title = "Risk-Based Quality Management"
  * section[riskManagement].code.text = "section11.6-risk-management"
  * section[riskManagement]
    * text 1..1
    * text ^comment = "Describe the identified critical to quality factors, associated risks and risk mitigation strategies in the trial or refer to a separate document where this is described."
  * section[dataGovernance].title = "Data Governance"
  * section[dataGovernance].code.text = "section11.7-data-governance"
  * section[dataGovernance]
    * text 1..1
    * text ^comment = "Describe the key processes for critical trial integrity, traceability and security including a summary of the monitoring approaches enabling accurate collection, reporting, monitoring, transfer, retention, and access if not addressed in separate agreement(s)."
  * section[dataProtection].title = "Data Protection"
  * section[dataProtection].code.text = "section11.8-data-protection"
  * section[dataProtection]
    * text 1..1
    * text ^comment = "Describe the measures to protect the privacy and confidentiality of personal information of trial participants in accordance with applicable regulatory requirements on personal data protection and any measures that should be taken in case of a data security breach."
  * section[sourceData].title = "Source Data"
  * section[sourceData].code.text = "section11.9-source-data"
  * section[sourceData]
    * text 1..1
    * text ^comment = "Establish the importance of source data and expectation for traceability of transcribed information back to source. Delineate expectations for investigators (e.g., maintain source data at the site, ensure availability of current records) and trial monitors (e.g., verify CRF data relative to source, ensure that safety of participants is being protected and that conduct is in accordance with GCP). Identify what constitutes source data and its origin or provide a reference to the location of this information, if contained in a separate document, such as a monitoring guideline or source data acknowledgement). Describe the provision for direct access to source data and documents enabling clinical trial-related monitoring, audits and regulatory inspections, if not included in separate agreement(s)."
  * section[protcolDeviations].title = "Protocol Deviations"
  * section[protcolDeviations].code.text = "section11.10-protocol-deviations"
  * section[protcolDeviations]
    * text 1..1
    * text ^comment = "Describe plans for detecting, reviewing, and reporting any deviations from the protocol or include reference to a separate document."
  * section[earlySiteClosure].title = "Early Site Closure"
  * section[earlySiteClosure].code.text = "section11.11-early-site-closure"
  * section[earlySiteClosure]
    * section 3..*
    * section ^slicing.discriminator.type = #value
    * section ^slicing.discriminator.path = "code.text"
    * section ^slicing.rules = #open
    * section contains decisionRights 1..1 MS and criteria 1..1 MS and responsibilities 1..1 MS
    * section[decisionRights].title = "Decision Rights for Site Closure"
    * section[decisionRights].code.text = "section11.11-early-site-closure#decisionRights"
    * section[decisionRights]
      * text 1..1
      * text ^comment = "List the sponsor's rights to close a site.  Likewise, list the investigator's rights to initiate early site closure."
    * section[criteria].title = "Crteria for Early Closure"
    * section[criteria].code.text = "section11.11-early-site-closure#criteria"
    * section[criteria]
      * text 1..1
      * text ^comment = "List the criteria for early closure of a site by the sponsor or investigator."
    * section[responsibilities].title = "Responsibilities Following Early Site Closure"
    * section[responsibilities].code.text = "section11.11-early-site-closure#responsibilities"
    * section[responsibilities]
      * text 1..1
      * text ^comment = "List the responsibilities of the sponsor and investigator following early site closure, such as informing the ethics committee(s), and prompt notification of the participant and transition to appropriate therapy and/or follow-up."
  * section[dataDissemination].title = "Data Dissemination"
  * section[dataDissemination].code.text = "section11.12-data-dissemination"
  * section[dataDissemination]
    * text 1..1
    * text ^comment = "Describe whether the clinical trial will be registered in public databases, including reporting of results, if applicable."
* section[definitions].title = "Appendix: Supporting Details"
* section[definitions].code.text = "section12-supporting-details"
* section[definitions]
  * section 3..*
  * section ^slicing.discriminator.type = #value
  * section ^slicing.discriminator.path = "code.text"
  * section ^slicing.rules = #open
  * section contains clinicalLaboratoryTests 1..1 MS and regional 1..1 MS and priorAmendments 1..1 MS
  * section[clinicalLaboratoryTests].title = "Clinical Laboratory Tests"
  * section[clinicalLaboratoryTests].code.text = "section12.1-clinical-laboratory-tests"
  * section[clinicalLaboratoryTests]
    * text 1..1
    * text ^comment = "Specify which laboratory parameters should be included in each clinical laboratory assessment panel (for example, for haematology, chemistry, urinalysis). A tabular presentation for such information is common. If applicable, include equations and references for locally calculated laboratory results. If not applicable, retain header and enter Not Applicable."
  * section[regional].title = "Country/Region-Specific Differences"
  * section[regional].code.text = "section12.2-country-specific-differences"
  * section[regional]
    * text 1..1
    * text ^comment = "Although global clinical trial practices are increasingly harmonised, some country/ region-specific differences in requirements do exist (for example, document retention periods, contraception requirements).  Where differences in requirements cannot be reconciled, sponsors should explain how they will document and communicate country/region-specific differences (for example, by country/region-specific amendments or addenda). An alternative to country/region-specific amendments is to list the specific differences by country or countries in this section, including a reference to the relevant section of the protocol where the differing requirement applies. If not applicable, retain header and enter Not Applicable."
  * section[priorAmendments].title = "Prior Protocol Amendment(s)"
  * section[priorAmendments].code.text = "section12.3-prior-protocol-amendments"
  * section[priorAmendments]
    * text 1..1
    * text ^comment = "Either enter value of {Not applicable. The protocol has not been amended.} or {Not applicable. This is the first protocol amendment.} or SEE TEMPLATE INSTRUCTIONS."
* section[glossary].title = "Appendix: Glossary of Terms and Abbreviations"
* section[glossary].code.text = "section13-glossary"
* section[glossary]
  * text 1..1
  * text ^comment = "Define abbreviations and other terms used in the protocol. A tabular presentation is common and may serve as the definition at first use."
  * entry only Reference(ValueSet or CodeSystem)
* section[references].title = "Appendix: References"
* section[references].code.text = "section14-references"
* section[references]
  * text 1..1
  * text ^comment = "References should be listed in a common format that includes all relevant information to identify the source and date published.  If not published, this should be clearly indicated."
  * entry only Reference(Citation)