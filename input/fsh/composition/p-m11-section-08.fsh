Profile: M11Section08
Parent: EvidenceReport
Id: m11-section-08
Description: "Profile of Composition for Evidence Based Medicine IG. The M11Section08 Profile is used for summary of Section 8 Trial Assessments and Procedures for the International Council for Harmonisation of Technical Requirements for Pharmaceuticals for Human Use (ICH) Clinical Electronic Structured Harmonised Protocol (CeSHarP) M11 Technical Specification."
* category 1..*
* category ^slicing.discriminator.type = #value
* category ^slicing.discriminator.path = "text"
* category ^slicing.rules = #open
* category contains section08 1..1 MS
* category[section08].text = "Section 8 Trial Assessments and Procedures"
* section 1..*
* section ^slicing.discriminator.type = #value
* section ^slicing.discriminator.path = "code"
* section ^slicing.rules = #open
* section contains assessments 1..1 MS
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
  * section[biomarkers].code.text = "section8.8-biomarkers"
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
