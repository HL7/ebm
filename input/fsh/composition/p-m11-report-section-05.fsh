Profile: M11ReportSection05
Parent: EvidenceReport
Id: m11-report-section-05
Description: "Profile of Composition for Evidence Based Medicine IG. The M11ReportSection05 Profile is used for section 5 (Trial Population) for the International Council for Harmonisation of Technical Requirements for Pharmaceuticals for Human Use (ICH) Clinical Electronic Structured Harmonised Protocol (CeSHarP) M11 Technical Specification."
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
* category contains population 0..1
* category[population].coding 1..1
* category[population].coding = http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C218547 "ICH M11 Protocol Section 5 TRIAL POPULATION"
* category[population].text = "section5-trial-population"
* section 1..1
* section ^slicing.discriminator.type = #value
* section ^slicing.discriminator.path = "code.text"
* section ^slicing.rules = #open
* section contains population 1..1 MS
* section[population].title = "5 TRIAL POPULATION"
* section[population].code.coding 1..1
* section[population].code.coding = http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C218547 "ICH M11 Protocol Section 5 TRIAL POPULATION"
* section[population].code.text = "section5-trial-population"
* section[population]
  * text ^comment = "No text is intended here (heading only)."
  * section 6..*
  * section ^slicing.discriminator.type = #value
  * section ^slicing.discriminator.path = "code.text"
  * section ^slicing.rules = #open
  * section contains description 1..1 MS and inclusionCriteria 1..1 MS and exclusionCriteria 1..1 MS and contraception 1..1 MS and lifestyle 1..1 MS and screenFailures 1..1 MS
  * section[description].title = "5.1 Description of Trial Population and Rationale"
  * section[description].code.coding 1..1
  * section[description].code.coding = http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C218548 "ICH M11 Protocol Section 5.1 Description of Trial Population and Rationale"
  * section[description].code.text = "section5.1-population-description"
  * section[description]
    * text 1..1
    * text ^comment = "Describe the population selected (e.g., healthy participants, adult participants, paediatric participants, pregnant participants, or breastfeeding participants) and how the enrollment criteria reflect the populations that are likely to use the drug if approved. Specify the population age range (e.g., ≤3 months, ≥18 to ≤80 years old) including the time point at which qualification for age criteria is determined (e.g., at time of screening vs randomisation for paediatric trials). Specify any key diagnostic criteria for the population (e.g., “acute lung injury”, or a specific biomarker profile). If applicable, describe similar conditions or diseases and their differential diagnosis. Provide a rationale for the trial population ensuring that the population selected is well defined and clinically recognisable. Describe how the selected population can meet the trial objectives and how the enrollment criteria reflect the population of interest. If the population targeted by a clinical question is based on a subset of the entire trial population, e.g., defined by a particular characteristic measured at baseline (e.g., a specific biomarker), this subset should be justified in this section. Justify whether the trial intervention is to be evaluated in paediatric participants, in adults unable to consent for themselves, other vulnerable participant populations, or those that may respond to the trial intervention differently (e.g., elderly, hepatic or renally impaired, or immunocompromised participants). Entries should Reference CohortDefinition (or StudyEligibilityCriteria) Profile of Group Resource."
    * entry only Reference(CohortDefinition)
  * section[inclusionCriteria].title = "5.2 Inclusion Criteria"
  * section[inclusionCriteria].code.coding 1..1
  * section[inclusionCriteria].code.coding = http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C218549 "ICH M11 Protocol Section 5.2 Inclusion Criteria"
  * section[inclusionCriteria].code.text = "section5.2-inclusion-criteria"
  * section[inclusionCriteria]
    * text 1..1
    * text ^comment = "Inclusion criteria are characteristics that define the trial population, for example, those criteria that every potential participant must satisfy to qualify for trial enrollment. Entries should Reference CohortDefinition (or StudyEligibilityCriteria) Profile of Group Resource."
    * entry only Reference(CohortDefinition)
  * section[exclusionCriteria].title = "5.3 Exclusion Criteria"
  * section[exclusionCriteria].code.coding 1..1
  * section[exclusionCriteria].code.coding = http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C218550 "ICH M11 Protocol Section 5.3 Exclusion Criteria"
  * section[exclusionCriteria].code.text = "section5.3-exclusion-criteria"
  * section[exclusionCriteria]
    * text 1..1
    * text ^comment = "Exclusion criteria are characteristics that make an individual ineligible for participation. Entries should Reference CohortDefinition (or StudyEligibilityCriteria) Profile of Group Resource."
    * entry only Reference(CohortDefinition)
  * section[contraception].title = "5.4 Contraception"
  * section[contraception].code.coding 1..1
  * section[contraception].code.coding = http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C218551 "ICH M11 Protocol Section 5.4 Contraception"
  * section[contraception].code.text = "section5.4-contraception"
  * section[contraception]
    * text ^comment = "No text is intended here (heading only)."
    * section 2..*
    * section ^slicing.discriminator.type = #value
    * section ^slicing.discriminator.path = "code.text"
    * section ^slicing.rules = #open
    * section contains contraceptionDefinitions 1..1 MS and contraceptionDetails 1..1 MS
    * section[contraceptionDefinitions].title = "5.4.1 Definitions Related to Childbearing Potential"
    * section[contraceptionDefinitions].code.coding 1..1
    * section[contraceptionDefinitions].code.coding = http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C218552 "ICH M11 Protocol Section 5.4.1 Definitions Related to Childbearing Potential"
    * section[contraceptionDefinitions].code.text = "section5.4.1-contraception-definitions"
    * section[contraceptionDefinitions]
      * text 1..1
      * text ^comment = "Specify the definitions of: • participant of childbearing potential, and • participant of nonchildbearing potential."
    * section[contraceptionDetails].title = "5.4.2 Contraception Requirements"
    * section[contraceptionDetails].code.coding 1..1
    * section[contraceptionDetails].code.coding = http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C218553 "ICH M11 Protocol Section 5.4.2 Contraception Requirements"
    * section[contraceptionDetails].code.text = "section5.4.2-contraception-details"
    * section[contraceptionDetails]
      * text 1..1
      * text ^comment = "Specify the: • contraceptive methods required, and • duration of use."
  * section[lifestyle].title = "5.5 Lifestyle Restrictions"
  * section[lifestyle].code.coding 1..1
  * section[lifestyle].code.coding = http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C218554 "ICH M11 Protocol Section 5.5 Lifestyle Restrictions"
  * section[lifestyle].code.text = "section5.5-lifestyle-restrictions"
  * section[lifestyle]
    * text 1..1
    * text ^comment = "In the following subsections, describe any restrictions during the trial pertaining to lifestyle and/or diet, intake of caffeine, alcohol, or tobacco, or physical and other activities. If not applicable, include a statement that no restrictions are required."
    * section 0..*
    * section ^slicing.discriminator.type = #value
    * section ^slicing.discriminator.path = "code.text"
    * section ^slicing.rules = #open
    * section contains dietary 0..1 MS and substances 0..1 MS and activity 0..1 MS and other 0..1 MS
    * section[dietary].title = "5.5.1 Meals and Dietary Restrictions"
    * section[dietary].code.coding 1..1
    * section[dietary].code.coding = http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C218555 "ICH M11 Protocol Section 5.5.1 Meals and Dietary Restrictions"
    * section[dietary].code.text = "section5.5.1-dietary-restrictions"
    * section[dietary]
      * text 1..1
      * text ^comment = "If applicable, describe any restrictions on diet (for example, food and drink restrictions, timing of meals relative to dosing)."
    * section[substances].title = "5.5.2 Caffeine, Alcohol, Tobacco, and Other Restrictions"
    * section[substances].code.coding 1..1
    * section[substances].code.coding = http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C218556 "ICH M11 Protocol Section 5.5.2 Caffeine, Alcohol, Tobacco, and Other Restrictions"
    * section[substances].code.text = "section5.5.2-substances-restrictions"
    * section[substances]
      * text 1..1
      * text ^comment = "If applicable, describe any restrictions on the intake of caffeine, alcohol, tobacco, or other restrictions."
    * section[activity].title = "5.5.3 Physical Activity Restrictions"
    * section[activity].code.coding 1..1
    * section[activity].code.coding = http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C218557 "ICH M11 Protocol Section 5.5.3 Physical Activity Restrictions"
    * section[activity].code.text = "section5.5.3-activity-restrictions"
    * section[activity]
      * text 1..1
      * text ^comment = "If applicable, describe any restrictions on activity (for example, in first-in-human trials, activity may be restricted by ensuring participants remain in bed for 4 to 6 hours after dosing)."
    * section[other].title = "5.5.4 Other Activity Restrictions"
    * section[other].code.coding 1..1
    * section[other].code.coding = http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C218558 "ICH M11 Protocol Section 5.5.4 Other Activity Restrictions"
    * section[other].code.text = "section5.5.4-other-restrictions"
    * section[other]
      * text 1..1
      * text ^comment = "If applicable, describe restrictions on any other activity (for example, blood or tissue donation); or any other activity restrictions, such as on driving, heavy machinery use, or sun exposure."  
  * section[screenFailures].title = "5.6 Screen Failure and Rescreening"
  * section[screenFailures].code.coding 1..1
  * section[screenFailures].code.coding = http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C218559 "ICH M11 Protocol Section 5.6 Screen Failure and Rescreening"
  * section[screenFailures].code.text = "section5.6-screen-failure"
  * section[screenFailures]
    * text 1..1
    * text ^comment = "Describe screen failure and indicate how screen failure will be handled in the trial, including conditions and criteria upon which rescreening is acceptable. If applicable, indicate the circumstances and time window under which a repeat procedure is allowed for screen failure relating to specific inclusion/exclusion criteria for the trial."
