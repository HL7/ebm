Profile: M11ReportSection04
Parent: EvidenceReport
Id: m11-report-section-04
Description: "Profile of Composition for Evidence Based Medicine IG. The M11ReportSection04 Profile is used for section 4 (Trial Design) for the International Council for Harmonisation of Technical Requirements for Pharmaceuticals for Human Use (ICH) Clinical Electronic Structured Harmonised Protocol (CeSHarP) M11 Technical Specification."
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
* category contains design 0..1
* category[design].coding 1..1
* category[design].coding = http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C218533 "ICH M11 Protocol Section 4 TRIAL DESIGN"
* category[design].text = "section4-trial-design"
* section 1..1
* section ^slicing.discriminator.type = #value
* section ^slicing.discriminator.path = "code.text"
* section ^slicing.rules = #open
* section contains design 1..1 MS
* section[design].title = "4 TRIAL DESIGN"
* section[design].code.coding 1..1
* section[design].code.coding = http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C218533 "ICH M11 Protocol Section 4 TRIAL DESIGN"
* section[design].code.text = "section4-trial-design"
* section[design]
  * text ^comment = "No text is intended here (heading only)."
  * section 4..*
  * section ^slicing.discriminator.type = #value
  * section ^slicing.discriminator.path = "code.text"
  * section ^slicing.rules = #open
  * section contains description 1..1 MS and rationale 1..1 MS and trialStoppingRules 1..1 MS and startEnd 1..1 MS and access 0..1 MS
  * section[description].title = "4.1 Description of Trial Design"
  * section[description].code.coding 1..1
  * section[description].code.coding = http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C218534 "ICH M11 Protocol Section 4.1 Description of Trial Design"
  * section[description].code.text = "section4.1-description-of-trial-design"
  * section[description]
    * text 1..1
    * text ^comment = "Describe the overall trial design and intervention model (e.g., single group, parallel group, cross-over, factorial, sequential), the expected number of participants, and the control method (e.g., placebo, active comparator, low dose, external, standard of care, sham procedure, or none [uncontrolled]). If there are any key aspects of the investigational trial intervention that inform the selection of the intervention model, this should be described. If applicable, indicate other design characteristics (e.g., superiority, noninferiority, dose escalation, or equivalence). If the trial will have an adaptive or novel design (e.g., the trial will be conducted under a master protocol), provide a summary of these design aspects. If applicable, describe within-trial transition rules, e.g., transitions involving cohorts or trial parts. Dose escalation or dose-ranging details should also be described. Describe the trial duration with reference to Section 1.2 Trial Schema. Explain what the overall duration for an individual participant is anticipated to be and why, including the sequence and duration of trial periods (e.g., screening, run-in, randomisation, treatment [fixed dose/titration], follow-up/washout periods). Where applicable, include discussion of sentinel dosing (or lack thereof), dose escalation, and cohort expansion. If dose modification decisions are dependent upon review by a committee, include details in Section 11.4 Committees. State the method of assignment to trial intervention the level and method of blinding that will be used with reference to Section 6.7 Investigational Trial Intervention Assignment, Randomisation and Blinding. Describe any other important aspects of the design, e.g.: • geographic scope of trial (e.g., single-centre, multi-centre, or multi-centre and multi-national) • use of decentralised processes, tools, or features in the trial • planned use of a Data Monitoring Committee, or similar review group and cross reference Section 11.4 Committees, for details • whether an interim analysis is planned; if so, refer to details in Section 10.9 Interim Analyses • any planned extension trial, long-term follow-up/registry, planned future use of samples or data, or post-trial sample analysis or other data-related activities"
    * section 0..*
    * section ^slicing.discriminator.type = #value
    * section ^slicing.discriminator.path = "code.text"
    * section ^slicing.rules = #open
    * section contains stakeholderInput 0..1 MS
    * section[stakeholderInput].title = "4.1.1 Stakeholder Input into Design"
    * section[stakeholderInput].code.coding 1..1
    * section[stakeholderInput].code.coding = http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C218535 "ICH M11 Protocol Section 4.1.1 Stakeholder Input into Design"
    * section[stakeholderInput].code.text = "section4.1.1-stakeholder-input-into-design"
    * section[stakeholderInput]
      * text 1..1
      * text ^comment = "If applicable, describe any stakeholder (for example, patient, healthcare professional and patient advocacy groups) involvement in the design of the trial and any suggestions implemented."
  * section[rationale].title = "4.2 Rationale for Trial Design"
  * section[rationale].code.coding 1..1
  * section[rationale].code.coding = http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C218536 "ICH M11 Protocol Section 4.2 Rationale for Trial Design"
  * section[rationale].code.text = "section4.2-rationale-for-trial-design"
  * section[rationale]
    * text ^comment = "Enter Overall Rationale for Trial Design if not using below optional subheadings."
    * section 0..*
    * section ^slicing.discriminator.type = #value
    * section ^slicing.discriminator.path = "code.text"
    * section ^slicing.rules = #open
    * section contains endpoints 0..1 MS and model 0..1 MS and comparator 0..1 MS and duration 0..1 MS and adaptive 0..1 MS and interim 0..1 MS and otherAspects 0..1 MS
    * section[endpoints].title = "4.2.1 Rationale for Estimand(s)"
    * section[endpoints].code.coding 1..1
    * section[endpoints].code.coding = http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C218537 "ICH M11 Protocol Section 4.2.1 Rationale for Estimand(s)"
    * section[endpoints].code.text = "section4.2.1-rationale-estimands"
    * section[endpoints]
      * text 1..1
      * text ^comment = "When estimands are associated with the Primary and Secondary Objectives described in Section 3 Trial Objectives and Associated Estimands, provide a rationale for the estimand(s) not described elsewhere in the document. This should include a rationale that the selected endpoint(s) are clinically relevant and provide a reliable and valid measurement of the intended intervention effect. It should also include a rationale for the selected strategies for handling intercurrent events."  
    * section[model].title = "4.2.2 Rationale for Intervention Model"
    * section[model].code.coding 1..1
    * section[model].code.coding = http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C218538 "ICH M11 Protocol Section 4.2.2 Rationale for Intervention Model"
    * section[model].code.text = "section4.2.2-rationale-intervention-model"
    * section[model]
      * text 1..1
      * text ^comment = "Provide a rationale for the trial intervention model described in Section 4.1 Description of Trial Design with a cross reference to Section 6.2 Rationale for Investigational Intervention Dose and Regimen. Rationale for choice of comparator, if applicable, should be described separately in Section 4.2.5 Rationale for Control Type. A rationale for the choice of trial population should be described separately in Section 5.1 Description of Trial Population and Rationale."
    * section[comparator].title = "4.2.3 Rationale for Control Type"
    * section[comparator].code.coding 1..1
    * section[comparator].code.coding = http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C218539 "ICH M11 Protocol Section 4.2.3 Rationale for Control Type"
    * section[comparator].code.text = "section4.2.3-rationale-comparator"
    * section[comparator]
      * text 1..1
      * text ^comment = "If applicable, provide a rationale for the type and choice of control selected for the trial (e.g., placebo, active drug, combination, external). Describe any known or potential problems associated with the control group selected in light of the specific disease and intervention(s) being studied. If comparators will differ by region, describe. The rationale for dose/dose regimen is explained in Section 6.2 Rationale for Investigational Trial Intervention Dose and Regimen."  
    * section[duration].title = "4.2.4 Rationale for Trial Duration"
    * section[duration].code.coding 1..1
    * section[duration].code.coding = http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C218540 "ICH M11 Protocol Section 4.2.4 Rationale for Trial Duration"
    * section[duration].code.text = "section4.2.4-rationale-duration"
    * section[duration]
      * text 1..1
      * text ^comment = "Provide a rationale that the trial duration is appropriate for a reliable and relevant evaluation of the trial intervention per the trial objective(s)."
    * section[adaptive].title = "4.2.5 Rationale for Adaptive or Novel Trial Design"
    * section[adaptive].code.coding 1..1
    * section[adaptive].code.coding = http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C218541 "ICH M11 Protocol Section 4.2.5 Rationale for Adaptive or Novel Trial Design"
    * section[adaptive].code.text = "section4.2.5-rationale-adaptive"
    * section[adaptive]
      * text 1..1
      * text ^comment = "If applicable, provide a rationale for the use of an adaptive or novel design."  
    * section[interim].title = "4.2.6 Rationale for Interim Analysis"
    * section[interim].code.coding 1..1
    * section[interim].code.coding = http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C218542 "ICH M11 Protocol Section 4.2.6 Rationale for Interim Analysis"
    * section[interim].code.text = "section4.2.6-rationale-interim-analysis"
    * section[interim]
      * text 1..1
      * text ^comment = "If applicable, provide a rationale for any interim analysis planned with respect to its purpose (for example, stopping the trial early for efficacy or futility) and timing."  
    * section[otherAspects].title = "4.2.7 Rationale for Other Trial Design Aspects"
    * section[otherAspects].code.coding 1..1
    * section[otherAspects].code.coding = http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C218543 "ICH M11 Protocol Section 4.2.7 Rationale for Other Trial Design Aspects"
    * section[otherAspects].code.text = "section4.2.7-rationale-other-aspects"
    * section[otherAspects]
      * text 1..1
      * text ^comment = "Discuss rationale for any additional aspects of the design not addressed above."
  * section[trialStoppingRules].title = "4.3 Trial Stopping Rules"
  * section[trialStoppingRules].code.coding 1..1
  * section[trialStoppingRules].code.coding = http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C218544 "ICH M11 Protocol Section 4.3 Trial Stopping Rules"
  * section[trialStoppingRules].code.text = "section4.3-trial-stopping-rules"
  * section[trialStoppingRules]
    * text 1..1
    * text ^comment = "If applicable, describe any trial-specific stopping rules, including guidance on when the trial should be stopped for safety reasons, when a cohort or dose escalation should be terminated, and/or when a given treatment arm should be terminated. If applicable, describe any rules that may result in a temporary pause of dosing and/or enrollment into the trial and criteria for restarting enrollment. Ensure that the trials stopping rules are aligned with the specifications that are described in Section 10.9 for Interim Analyses."
  * section[startEnd].title = "4.4 Start of Trial and End of Trial"
  * section[startEnd].code.coding 1..1
  * section[startEnd].code.coding = http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C218545 "ICH M11 Protocol Section 4.4 Start of Trial and End of Trial"
  * section[startEnd].code.text = "section4.4-start-and-end"
  * section[startEnd]
    * text 1..1
    * text ^comment = "Define key timepoints in the trial, including trial start and end definitions (e.g., a key timepoint definition for start of trial might be when the informed consent is signed by the first participant and a key timepoint definition for end of trial might be when participants are no longer being examined or the last participant’s last trial assessment has occurred). Consider local regulatory requirements for these and other definitions (e.g., the first act of recruitment). If appropriate, provide a cross reference to Section 11.11 Early Site Closure."
  * section[access].title = "4.5 Access to Trial Intervention After End of Trial"
  * section[access].code.coding 1..1
  * section[access].code.coding = http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C218546 "ICH M11 Protocol Section 4.5 Access to Trial Intervention After End of Trial"
  * section[access].code.text = "section4.5-access-after-trial"
  * section[access]
    * text 1..1
    * text ^comment = "If applicable, describe any possibilities for access to trial intervention, if any, beyond completion of the trial. Planned extension trials, if described in Section 4.1 Description of Trial Design, do not need to be repeated in this section." 
