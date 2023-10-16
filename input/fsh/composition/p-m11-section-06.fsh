Profile: M11Section06
Parent: EvidenceReport
Id: m11-section-06
Description: "Profile of Composition for Evidence Based Medicine IG. The M11Section06 Profile is used for summary of Section 6 Trial Intervention for the International Council for Harmonisation of Technical Requirements for Pharmaceuticals for Human Use (ICH) Clinical Electronic Structured Harmonised Protocol (CeSHarP) M11 Technical Specification."
* category 1..*
* category ^slicing.discriminator.type = #pattern
* category ^slicing.discriminator.path = "text"
* category ^slicing.rules = #open
* category contains section06 1..1 MS
* category[section06].text = "Section 6 Trial Intervention"
* section 1..*
* section ^slicing.discriminator.type = #pattern
* section ^slicing.discriminator.path = "code"
* section ^slicing.rules = #open
* section contains intervention 1..1 MS
* section[intervention].title = "Trial Intervention"
* section[intervention].code.text = "section6-trial-intervention"
* section[intervention]
  * section 8..*
  * section ^slicing.discriminator.type = #pattern
  * section ^slicing.discriminator.path = "code"
  * section ^slicing.rules = #open
  * section contains description 1..1 MS and rationale 1..1 MS and dosingAdministration 1..1 MS and treatmentOfOverdose 1..1 MS and preparation 1..1 MS and assignmentAndBlinding 1..1 MS and compliance 1..1 MS and noninvestigationalTherapy 0..1 MS and concomitantTherapy 1..1 MS
  * section[description].title = "Description of Investigational Trial Intervention"
  * section[description].code.text = "section6.1-description-of-trial-intervention"
  * section[description]
    * text 1..1
    * text ^comment = "The investigational trial intervention(s) should be described concisely in a table. Describe the investigational trial intervention to be administered in each arm of the trial and for each period of the trial including route and mode of administration, dose, dosage regimen, duration of intervention, use, packaging and labelling. Refer to approved regional labelling, as appropriate. For drug/device combination products, include details on the configuration and use of the device and device manufacturer. A device user manual may be referenced in this section."
    * entry only Reference(InterventionDefinition)
  * section[rationale].title = "Rationale for Investigational Trial Intervention Dose and Regimen"
  * section[rationale].code.text = "section6.2-rationale-for-trial-intervention-regimen"
  * section[rationale]
    * text 1..1
    * text ^comment = "Provide a rationale for the selection of the dose(s) or dose range, the route of administration, and dosing regimen of the investigational trial intervention. This rationale should include relevant results from previous preclinical studies and clinical trials that support selection of the dose and regimen.  Discuss impact of differences in study population characteristics (for example, age, sex and/or race) which could lead to differences in pharmacokinetics and pharmacodynamics in this study as compared to previous studies. If applicable, justify any differences in dose regimen or therapeutic use relative to approved labelling. Describe prior trials and other information that support the dose and/or dose regimen of the investigational intervention. Include a rationale for prospective dose adjustments incorporated in the trial, if any."
    * entry only Reference(InterventionDefinition)
  * section[dosingAdministration].title = "Investigational Trial Intervention Administration"
  * section[dosingAdministration].code.text = "section6.3-dosing-and-administration"
  * section[dosingAdministration]
    * text 1..1
    * text ^comment = "Describe the detailed procedures for administration of each participant's dose of investigational trial intervention. This may include the timing of dosing (for example, time of day, interval), the duration (for example, the length of time participants will be administered the investigational trial intervention), the planned route of administration (for example, oral, nasal, intramuscular), and the timing of dosing relative to meals. Include any specific instructions to trial participants about when or how to prepare and take the dose(s) and how delayed or missed doses should be handled. Dose escalation or cohort expansion as part of the overall design should be covered in Section 4.1 (Description of Trial Design)."
    * entry only Reference(ActivityDefinition)
    * section 0..*
    * section ^slicing.discriminator.type = #pattern
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
    * section ^slicing.discriminator.type = #pattern
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
    * section ^slicing.discriminator.type = #pattern
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
    * section ^slicing.discriminator.type = #pattern
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
    * section ^slicing.discriminator.type = #pattern
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
  