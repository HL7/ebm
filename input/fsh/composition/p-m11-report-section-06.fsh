Profile: M11ReportSection06
Parent: EvidenceReport
Id: m11-report-section-06
Description: "Profile of Composition for Evidence Based Medicine IG. The M11ReportSection06 Profile is used for section 6 (Trial Intervention) for the International Council for Harmonisation of Technical Requirements for Pharmaceuticals for Human Use (ICH) Clinical Electronic Structured Harmonised Protocol (CeSHarP) M11 Technical Specification."
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
* category contains intervention 0..1
* category[intervention].coding 1..1
* category[intervention].coding = http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C218560 "ICH M11 Protocol Section 6 TRIAL INTERVENTION AND CONCOMITANT THERAPY"
* category[intervention].text = "section6-trial-intervention"
* section 1..1
* section ^slicing.discriminator.type = #value
* section ^slicing.discriminator.path = "code.text"
* section ^slicing.rules = #open
* section contains intervention 1..1 MS
* section[intervention].title = "6 TRIAL INTERVENTION AND CONCOMITANT THERAPY"
* section[intervention].code.coding 1..1
* section[intervention].code.coding = http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C218560 "ICH M11 Protocol Section 6 TRIAL INTERVENTION AND CONCOMITANT THERAPY"
* section[intervention].code.text = "section6-trial-intervention"
* section[intervention]
  * text ^comment = "Trial interventions are all pre-specified investigational and noninvestigational medicinal products, medical devices or other interventions intended for the participants during the trial. The investigational trial intervention is the product used in the trial as part of trial objectives. Description of the investigational trial intervention is provided in Section 6.1 Description of Trial Intervention. Other trial interventions that are not part of trial objectives or do not have an investigational role in this trial are described in Section 6.9 Description of Noninvestigational Trial Interventions. Any regional requirements should be noted in the appropriate subsections. Provide an overview of investigational and noninvestigational trial interventions. Classify the trial intervention as IMP, NIMP/AxMP designations based on trial design and regional requirements. Consider an optional table with 12 columns (Arm Name, Arm Type, Intervention Name, Intervention Type, Pharmaceutical Dose Form, Dosage Strength(s), Dosage Level(s), Route of Administration, Regimen/Treatment Period/Vaccination Regimen, Use, IMP/NIMP, Sourcing)."
  * section 9..*
  * section ^slicing.discriminator.type = #value
  * section ^slicing.discriminator.path = "code.text"
  * section ^slicing.rules = #open
  * section contains description 1..1 MS and rationale 1..1 MS and dosingAdministration 1..1 MS and doseModification 0..1 MS and treatmentOfOverdose 1..1 MS and preparation 1..1 MS and assignmentAndBlinding 1..1 MS and adherence 1..1 MS and noninvestigationalTherapy 0..1 MS and concomitantTherapy 1..1 MS
  * section[description].title = "6.1 Description of Investigational Trial Intervention"
  * section[description].code.coding 1..1
  * section[description].code.coding = http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C218561 "ICH M11 Protocol Section 6.1 Description of Investigational Trial Intervention"
  * section[description].code.text = "section6.1-description-of-trial-intervention"
  * section[description]
    * text 1..1
    * text ^comment = "Describe the investigational trial intervention to be administered in each arm of the trial and for each period of the trial including route and mode of administration, dose, dosage regimen, duration of intervention, use, packaging and labelling. Refer to approved regional labelling, as appropriate. For investigational drug/device combination products, include details on the configuration and use of the device and device manufacturer. A device user manual may be referenced in this section. Entries should Reference ConceptualExposureDefinition Profile of Group Resource."
    * entry only Reference(ConceptualExposureDefinition)
  * section[rationale].title = "6.2 Rationale for Investigational Trial Intervention Dose and Regimen"
  * section[rationale].code.coding 1..1
  * section[rationale].code.coding = http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C218562 "ICH M11 Protocol Section 6.2 Rationale for Investigational Trial Intervention Dose and Regimen"
  * section[rationale].code.text = "section6.2-rationale-for-trial-intervention-regimen"
  * section[rationale]
    * text 1..1
    * text ^comment = "Provide a rationale for the selection of the dose(s) or dose range, pharmaceutical dose form, route of administration, and dosing regimen of the investigational trial intervention, as applicable. This rationale should include relevant results from nonclinical studies and clinical trials that support selection of the dose and regimen. Discuss impact of differences in trial population characteristics (e.g., age, sex, race) which could lead to differences in pharmacokinetics and pharmacodynamics in this trial as compared to previous trials. If applicable, justify any differences in dose regimen or therapeutic use relative to approved labelling. Describe prior trials and other information that support the dose and/or dose regimen of the investigational trial intervention. Include a rationale for prospective dose adjustments incorporated in the trial, if any. Entries should Reference ConceptualExposureDefinition Profile of Group Resource."
    * entry only Reference(ConceptualExposureDefinition)
  * section[dosingAdministration].title = "6.3 Investigational Trial Intervention Administration"
  * section[dosingAdministration].code.coding 1..1
  * section[dosingAdministration].code.coding = http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C218563 "ICH M11 Protocol Section 6.3 Investigational Trial Intervention Administration"
  * section[dosingAdministration].code.text = "section6.3-dosing-and-administration"
  * section[dosingAdministration]
    * text 1..1
    * text ^comment = "Describe the detailed procedures for administration of each participant’s dose of each investigational trial intervention. This may include the timing of dosing (e.g., time of day, interval), the duration (e.g., the length of time participants will be administered the investigational trial intervention), and the timing of dosing relative to meals. Include any specific instructions on who, when or how to prepare and take the dose(s) and how to handle any delayed or missed doses. Dose escalation or cohort expansion as part of the overall design should be covered in Section 4.1 Description of Trial Design. Entries should Reference ActivityDefinition Resource."
    * entry only Reference(ActivityDefinition)
  * section[doseModification].title = "6.4 Investigational Trial Intervention Dose Modification"
  * section[doseModification].code.coding 1..1
  * section[doseModification].code.coding = http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C218564 "ICH M11 Protocol Section 6.4 Investigational Trial Intervention Dose Modification"
  * section[doseModification].code.text = "section6.4-dose-modification"
  * section[doseModification]
    * text 1..1
    * text ^comment = "For each participant, describe any dose modifications allowed, including conditions for such dose modifications, particularly regarding failure to respond or safety concerns. State any minimum period required before a participant’s dose might be raised to the next higher dose or dose range. Include whether it is permissible to start and stop treatment and how dose reductions (if permitted) are to be managed. Information on stopping investigational trial intervention for participants due to safety/other reasons should be described in Section 7 Participant Discontinuation of Trial Intervention and Discontinuation or Withdrawal from Trial. Entries should Reference ActivityDefinition Resource."
    * entry only Reference(ActivityDefinition)
  * section[treatmentOfOverdose].title = "6.5 Management of Investigational Trial Intervention Overdose"
  * section[treatmentOfOverdose].code.coding 1..1
  * section[treatmentOfOverdose].code.coding = http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C218565 "ICH M11 Protocol Section 6.5 Management of Investigational Trial Intervention Overdose"
  * section[treatmentOfOverdose].code.text = "section6.5-management-of-overdose"
  * section[treatmentOfOverdose]
    * text 1..1
    * text ^comment = "Describe what is meant by investigational trial intervention overdose. Provide any available information on managing the overdose and ensure it is consistent with the Investigator’s Brochure or product labelling. Cross reference these documents as applicable. Entries should Reference ActivityDefinition Resource or PlanDefinition Resource."
    * entry only Reference(ActivityDefinition or PlanDefinition)
  * section[preparation].title = "6.6 Preparation, Storage, Handling and Accountability of Investigational Trial Intervention"
  * section[preparation].code.coding 1..1
  * section[preparation].code.coding = http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C218566 "ICH M11 Protocol Section 6.6 Preparation, Storage, Handling and Accountability of Investigational Trial Intervention"
  * section[preparation].code.text = "section6.6-preparation-storage-handling"
  * section[preparation]
    * text ^comment = "No text is intended here (heading only)."
    * section 3..*
    * section ^slicing.discriminator.type = #value
    * section ^slicing.discriminator.path = "code.text"
    * section ^slicing.rules = #open
    * section contains preparationIntervention 1..1 MS and storageHandling 1..1 MS and accountability 1..1 MS
    * section[preparationIntervention].title = "6.6.1 Preparation of Investigational Trial Intervention"
    * section[preparationIntervention].code.coding 1..1
    * section[preparationIntervention].code.coding = http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C218567 "ICH M11 Protocol Section 6.6.1 Preparation of Investigational Trial Intervention"
    * section[preparationIntervention].code.text = "section6.6.1-preparation"
    * section[preparationIntervention]
      * text 1..1
      * text ^comment = "Describe any preparation of the investigational trial intervention, and when necessary, who should prepare it. When applicable, describe the maximum hold time once thawed/mixed before administration. Include thawing, diluting, mixing, and reconstitution/preparation instructions. For drug/device combination products, include any relevant assembly or use instructions and reference the package insert that is provided separately. If the instructions are lengthy or complicated, it is acceptable to reference the package insert (if applicable) or include instructions in separate documents provided to the site (e.g., a pharmacy manual and reference the separate documents."
    * section[storageHandling].title = "6.6.2 Storage and Handling of Investigational Trial Intervention"
    * section[storageHandling].code.coding 1..1
    * section[storageHandling].code.coding = http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C218568 "ICH M11 Protocol Section 6.6.2 Storage and Handling of Investigational Trial Intervention"
    * section[storageHandling].code.text = "section6.6.2-storage-handling"
    * section[storageHandling]
      * text 1..1
      * text ^comment = "Describe storage and handling requirements (e.g., protection from light, temperature, humidity) for the investigational trial intervention(s). For trials in which multi-dose vials are utilised, provide additional information regarding stability and expiration time after initial use (e.g., if the seal is broken). Explain how the investigational trial intervention will be provided to the Investigator. If applicable, include details about kits, packaging, or other material of the investigational trial intervention for blinding purposes. If the instructions are lengthy or complicated, it is acceptable to reference the package insert (if applicable) or include instructions in separate documents provided to the site (e.g., a pharmacy manual) and reference the separate documents."
    * section[accountability].title = "6.6.3 Accountability of Investigational Trial Intervention"
    * section[accountability].code.coding 1..1
    * section[accountability].code.coding = http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C218569 "ICH M11 Protocol Section 6.6.3 Accountability of Investigational Trial Intervention"
    * section[accountability].code.text = "section6.6.3-accountability"
    * section[accountability]
      * text 1..1
      * text ^comment = "Describe the accountability method, including: • how the investigational trial intervention will be distributed • who will distribute the investigational trial intervention • participation of a drug storage repository or pharmacy, if applicable • plans for disposal or return of unused product • if applicable, plans for reconciliation of investigational trial intervention"
  * section[assignmentAndBlinding].title = "6.7 Investigational Trial Intervention Assignment, Randomisation and Blinding"
  * section[assignmentAndBlinding].code.coding 1..1
  * section[assignmentAndBlinding].code.coding = http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C218570 "ICH M11 Protocol Section 6.7 Investigational Trial Intervention Assignment, Randomisation and Blinding"
  * section[assignmentAndBlinding].code.text = "section6.7-assignment-randomisation-blinding"
  * section[assignmentAndBlinding]
    * text ^comment = "No text is intended here (heading only)."
    * section 4..*
    * section ^slicing.discriminator.type = #value
    * section ^slicing.discriminator.path = "code.text"
    * section ^slicing.rules = #open
    * section contains assignment 1..1 MS and randomisation 1..1 MS and blinding 1..1 MS and unblinding 1..1 MS
    * section[assignment].title = "6.7.1 Participant Assignment to Investigational Trial Intervention"
    * section[assignment].code.coding 1..1
    * section[assignment].code.coding = http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C218571 "ICH M11 Protocol Section 6.7.1 Participant Assignment to Investigational Trial Intervention"
    * section[assignment].code.text = "section6.7.1-assignment"
    * section[assignment]
      * text 1..1
      * text ^comment = "State that at enrollment, participant identification codes should be assigned. Describe the method of assigning participants to investigational trial intervention without being so specific that blinding or randomisation might be compromised. If assignment to investigational trial intervention is by randomisation, describe when randomisation occurs relative to screening. If adaptive randomisation or other methods of covariate balancing/minimisation are employed, include a cross reference to the methods of analysis in Section 10 Statistical Considerations. As applicable, details regarding the implementation of procedures to minimise bias should be described."
    * section[randomisation].title = "6.7.2 Randomisation"
    * section[randomisation].code.coding 1..1
    * section[randomisation].code.coding = http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C218572 "ICH M11 Protocol Section 6.7.2 Randomisation"
    * section[randomisation].code.text = "section6.7.2-randomisation"
    * section[randomisation]
      * text 1..1
      * text ^comment = "Describe the randomisation procedures (e.g., central randomisation procedures), the method used to generate the randomisation schedule (e.g., computer generated), the source of the randomisation schedule (e.g., sponsor, investigator, or other), and whether IxRS will be used. To maintain the integrity of the blinding, do not include the block size."
    * section[blinding].title = "6.7.3 Measures to Maintain Blinding"
    * section[blinding].code.coding 1..1
    * section[blinding].code.coding = http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C218573 "ICH M11 Protocol Section 6.7.3 Measures to Maintain Blinding"
    * section[blinding].code.text = "section6.7.3-blinding"
    * section[blinding]
      * text 1..1
      * text ^comment = "Describe measures that will be used to maintain blinding: • The investigational trial interventions are as indistinguishable as possible • Plans for the maintenance of randomisation codes and appropriate blinding for the trial • Procedures for planned (e.g., interim analysis) and unintentional (e.g., breach of procedure) breaking of randomisation codes. For unplanned but intentional actions (e.g., safety events), refer to Section 6.7.4 Emergency Unblinding at the Site. If the trial allows for some investigators or other designated staff to remain unblinded (e.g., to allow them to adjust investigational trial intervention), the means of maintaining the blinding for other investigators or staff should be explained. Measures to prevent unblinding by laboratory measurements or while performing study assessments, if used, should be described."
    * section[unblinding].title = "6.7.4 Emergency Unblinding at the Site"
    * section[unblinding].code.coding 1..1
    * section[unblinding].code.coding = http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C218574 "ICH M11 Protocol Section 6.7.4 Emergency Unblinding at the Site"
    * section[unblinding].code.text = "section6.7.4-unblinding"
    * section[unblinding]
      * text 1..1
      * text ^comment = "Describe the criteria for breaking the trial blind or participant code. Describe the circumstances in which the blinding would be broken for an individual or for all participants and who has responsibility. Include the procedure for emergency unblinding such as via IxRS or code envelopes as well as documentation of unblinding. Indicate to whom the intentional and unintentional unblinding should be reported."
  * section[adherence].title = "6.8 Investigational Trial Intervention Adherence"
  * section[adherence].code.coding 1..1
  * section[adherence].code.coding = http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C218575 "ICH M11 Protocol Section 6.8 Investigational Trial Intervention Adherence"
  * section[adherence].code.text = "section6.8-intervention-adherence"
  * section[adherence]
    * text 1..1
    * text ^comment = "Describe the measures to monitor and document participants’ adherence with investigational trial intervention (e.g., trial intervention accountability records, diary cards, or investigational trial intervention concentration measurements). List what documents are mandatory to complete (e.g., participant drug log) and what source data/records will be used to document investigational trial intervention adherence."
  * section[noninvestigationalTherapy].title = "6.9 Non-Investigational Trial Intervention"
  * section[noninvestigationalTherapy].code.coding 1..1
  * section[noninvestigationalTherapy].code.coding = http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C218576 "ICH M11 Protocol Section 6.9 Description of Noninvestigational Trial Intervention"
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
    * section[background].title = "6.9.1 Background Trial Intervention"
    * section[background].code.coding 1..1
    * section[background].code.coding = http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C218577 "ICH M11 Protocol Section 6.9.1 Background Trial Intervention"
    * section[background].code.text = "section6.9.1-background-intervention"
    * section[background]
      * text 1..1
      * text ^comment = "Describe any background intervention(s), including administration and any conditions for use."
    * section[rescue].title = "6.9.2 Rescue Therapy"
    * section[rescue].code.coding 1..1
    * section[rescue].code.coding = http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C218578 "ICH M11 Protocol Section 6.9.2 Rescue Therapy"
    * section[rescue].code.text = "section6.9.2-rescue-therapy"
    * section[rescue]
      * text 1..1
      * text ^comment = "List all permitted rescue medications, treatments, and/or procedures, including any relevant instructions on administration and any conditions of use. If administration of rescue therapy leads to the temporary discontinuation of trial intervention or a participant’s withdrawal from the trial, refer to Section 7 Participant Discontinuation of Trial Intervention and Discontinuation or Withdrawal from Trial."
    * section[other].title = "6.9.3 Other Noninvestigational Trial Intervention"
    * section[other].code.coding 1..1
    * section[other].code.coding = http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C218579 "ICH M11 Protocol Section 6.9.3 Other Noninvestigational Trial Intervention"
    * section[other].code.text = "section6.9.3-other-therapy"
    * section[other]
      * text 1..1
      * text ^comment = "If applicable, describe the use of any other noninvestigational trial intervention, e.g., challenge agents or diagnostics."
  * section[concomitantTherapy].title = "6.10 Concomitant Therapy"
  * section[concomitantTherapy].code.coding 1..1
  * section[concomitantTherapy].code.coding = http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C218580 "ICH M11 Protocol Section 6.10 Concomitant Therapy"
  * section[concomitantTherapy].code.text = "section6.10-concomitant-therapy"
  * section[concomitantTherapy]
    * text 1..1
    * text ^comment = "Specify the concomitant medications, supplements, complementary and alternative therapies, treatments, and/or procedures which are prohibited or permitted during the trial and include details about when the information will be collected (e.g., during screening, at each visit). When appropriate to separate the content, subheadings may be used."
    * section 0..*
    * section ^slicing.discriminator.type = #value
    * section ^slicing.discriminator.path = "code.text"
    * section ^slicing.rules = #open
    * section contains prohibited 0..1 MS and permitted 0..1 MS
    * section[prohibited].title = "6.10.1 Prohibited Concomitant Therapy"
    * section[prohibited].code.coding 1..1
    * section[prohibited].code.coding = http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C218581 "ICH M11 Protocol Section 6.10.1 Prohibited Concomitant Therapy"
    * section[prohibited].code.text = "section6.10.1-prohibited-concomitant-therapy"
    * section[prohibited]
      * text 1..1
      * text ^comment = "If applicable, describe any prohibited concomitant therapy."
    * section[permitted].title = "6.10.2 Permitted Concomitant Therapy"
    * section[permitted].code.coding 1..1
    * section[permitted].code.coding = http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C218582 "ICH M11 Protocol Section 6.10.2 Permitted Concomitant Therapy"
    * section[permitted].code.text = "section6.10.2-permitted-concomitant-therapy"
    * section[permitted]
      * text 1..1
      * text ^comment = "If applicable, describe any permitted concomitant therapy."
