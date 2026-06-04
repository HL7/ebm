Profile: M11ReportSection08
Parent: EvidenceReport
Id: m11-report-section-08
Description: "Profile of Composition for Evidence Based Medicine IG. The M11ReportSection08 Profile is used for section 8 (Trial Assessments) for the International Council for Harmonisation of Technical Requirements for Pharmaceuticals for Human Use (ICH) Clinical Electronic Structured Harmonised Protocol (CeSHarP) M11 Technical Specification."
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
* category contains assessments 0..1
* category[assessments].coding 1..1
* category[assessments].coding = http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C218590 "ICH M11 Protocol Section 8 TRIAL ASSESSMENTS AND PROCEDURES"
* category[assessments].text = "section8-assessments"
* section 1..1
* section ^slicing.discriminator.type = #value
* section ^slicing.discriminator.path = "code.text"
* section ^slicing.rules = #open
* section contains assessments 1..1 MS
* section[assessments].title = "8 TRIAL ASSESSMENTS AND PROCEDURES"
* section[assessments].code.coding 1..1
* section[assessments].code.coding = http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C218590 "ICH M11 Protocol Section 8 TRIAL ASSESSMENTS AND PROCEDURES"
* section[assessments].code.text = "section8-assessments"
* section[assessments]
  * text ^comment = "No text is intended here (heading only)."
  * section 8..*
  * section ^slicing.discriminator.type = #value
  * section ^slicing.discriminator.path = "code.text"
  * section ^slicing.rules = #open
  * section contains considerations 0..1 MS and screeningBaseline 1..1 MS and efficacy 1..1 MS and safety 1..1 MS and pharmacokinetics 1..1 MS and biomarkers 1..1 MS and immunogenicity 1..1 MS and economics 0..1 MS
  * section[considerations].title = "8.1 Trial Assessments and Procedures Considerations"
  * section[considerations].code.coding 1..1
  * section[considerations].code.coding = http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C218591 "ICH M11 Protocol Section 8.1 Trial Assessments and Procedures Considerations"
  * section[considerations].code.text = "section8.1-assessments-procedures"
  * section[considerations]
    * text 1..1
    * text ^comment = "Describe general considerations applicable across trial assessments and procedures."
  * section[screeningBaseline].title = "8.2 Screening/Baseline Assessments and Procedures"
  * section[screeningBaseline].code.coding 1..1
  * section[screeningBaseline].code.coding = http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C218592 "ICH M11 Protocol Section 8.2 Screening/Baseline Assessments and Procedures"
  * section[screeningBaseline].code.text = "section8.2-screening-baseline-assessments"
  * section[screeningBaseline]
    * text 1..1
    * text ^comment = "Describe any assessments and procedures that are unique to screening/baseline (e.g., collection of data on participant characteristics, assessments/procedures performed for the purpose of determining eligibility or for stratification) in this section. Describe screening and baseline assessments and procedures separately when screening and baseline are different or performed at different visits."
  * section[efficacy].title = "8.3 Efficacy Assessments and Procedures"
  * section[efficacy].code.coding 1..1
  * section[efficacy].code.coding = http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C218593 "ICH M11 Protocol Section 8.3 Efficacy Assessments and Procedures"
  * section[efficacy].code.text = "section8.3-efficacy-assessments"
  * section[efficacy]
    * text 1..1
    * text ^comment = "Describe efficacy assessments and procedures in this section. Cross reference Section 8.7 Immunogenicity Assessments if immunogenicity assessments are used in efficacy determination."
  * section[safety].title = "8.4 Safety Assessments and Procedures"
  * section[safety].code.coding 1..1
  * section[safety].code.coding = http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C218594 "ICH M11 Protocol Section 8.4 Safety Assessments and Procedures"
  * section[safety].code.text = "section8.4-safety-assessments"
  * section[safety]
    * text ^comment = "Describe safety assessments and procedures utilizing the following subsections as applicable. Add level 3 headings as needed. • Identify any noninvestigator party responsible for evaluation of laboratory or other safety assessments (e.g., Sponsor or external Independent Data Monitoring Committee; cross refer to Section 11.4 Committees for details as applicable). • Include guidelines for the medical management of relevant laboratory or other safety assessment abnormalities."
    * section 0..*
    * section ^slicing.discriminator.type = #value
    * section ^slicing.discriminator.path = "code.text"
    * section ^slicing.rules = #open
    * section contains physical 0..1 MS and vitals 0..1 MS and ecg 0..1 MS and laboratory 0..1 MS and pregnancy 0..1 MS and suicidal 0..1 MS
    * section[physical].title = "8.4.1 Physical Examination"
    * section[physical].code.coding 1..1
    * section[physical].code.coding = http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C218595 "ICH M11 Protocol Section 8.4.1 Physical Examination"
    * section[physical].code.text = "section8.4.1-physical-examination"
    * section[physical] 
      * text 1..1
      * text ^comment = "Include any specific instructions for the collection and interpretation of physical examinations."
    * section[vitals].title = "8.4.2 Vital Signs"
    * section[vitals].code.coding 1..1
    * section[vitals].code.coding = http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C218596 "ICH M11 Protocol Section 8.4.2 Vital Signs"
    * section[vitals].code.text = "section8.4.2-vital-signs"
    * section[vitals] 
      * text 1..1
      * text ^comment = "Include any specific instructions for the collection and interpretation of vital signs."
    * section[ecg].title = "8.4.3 Electrocardiograms"
    * section[ecg].code.coding 1..1
    * section[ecg].code.coding = http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C218597 "ICH M11 Protocol Section 8.4.3 Electrocardiograms"
    * section[ecg].code.text = "section8.4.3-electrocardiograms"
    * section[ecg] 
      * text 1..1
      * text ^comment = "Include any specific instructions for the collection, interpretation, and archiving of ECGs."      
    * section[laboratory].title = "8.4.4 Clinical Laboratory Assessments"
    * section[laboratory].code.coding 1..1
    * section[laboratory].code.coding = http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C218598 "ICH M11 Protocol Section 8.4.4 Clinical Laboratory Assessments"
    * section[laboratory].code.text = "section8.4.4-clinical-laboratory-assessments"
    * section[laboratory] 
      * text 1..1
      * text ^comment = "Describe any specific instructions for the collection and interpretation of clinical laboratory assessments, including: • type of laboratory (central/local/hybrid) • acceptability of additional tests deemed necessary by the investigator or local regulations • instructions for situations in which central laboratory results are not available in time for trial intervention and/or response evaluation, or in the event of a severe disruption (e.g., a pandemic or natural disaster) • treatment algorithms for results out of normal range • cross reference Section 12.1 Clinical Laboratory Tests for laboratory assessment panels"
    * section[pregnancy].title = "8.4.5 Pregnancy Testing"
    * section[pregnancy].code.coding 1..1
    * section[pregnancy].code.coding = http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C218599 "ICH M11 Protocol Section 8.4.5 Pregnancy Testing"
    * section[pregnancy].code.text = "section8.4.5-pregnancy-testing"
    * section[pregnancy] 
      * text 1..1
      * text ^comment = "Include any specific instructions for the collection and interpretation of pregnancy testing."
    * section[suicidal].title = "8.4.6 Suicidal Ideation and Behaviour Risk Monitoring"
    * section[suicidal].code.coding 1..1
    * section[suicidal].code.coding = http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C218600 "ICH M11 Protocol Section 8.4.6 Suicidal Ideation and Behaviour Risk Monitoring"
    * section[suicidal].code.text = "section8.4.6-suicidal-ideation"
    * section[suicidal] 
      * text 1..1
      * text ^comment = "If the trial meets any of the criteria requiring suicidal ideation and behaviour risk monitoring by the guidance/guideline in each region, include justification for the need for suicidal ideation and behaviour risk monitoring in the study and add any specific instructions for the collection and interpretation of the assessment. In case this is an AESI in the study, justification should also be provided in Section 9.2.4 Adverse Events of Special Interest."
  * section[pharmacokinetics].title = "8.5 Pharmacokinetics"
  * section[pharmacokinetics].code.coding 1..1
  * section[pharmacokinetics].code.coding = http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C218601 "ICH M11 Protocol Section 8.5 Pharmacokinetics"
  * section[pharmacokinetics].code.text = "section8.5-pharmacokinetics"
  * section[pharmacokinetics]
    * text 1..1
    * text ^comment = "Include any specific instructions for the collection and assay of samples and interpretation of PK assessments. • Describe the biological samples collected, the handling of samples, and the assay method. o Specific sample collection and processing instructions can be described in an appendix or a separate document and cross referenced. • Describe the retention time for the samples (ensuring alignment with the ICF). • Indicate the types of analyses for each sample. • Define the PK parameters to be calculated and the calculation methods."
  * section[biomarkers].title = "8.6 Biomarkers"
  * section[biomarkers].code.coding 1..1
  * section[biomarkers].code.coding = http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C218602 "ICH M11 Protocol Section 8.6 Biomarkers"
  * section[biomarkers].code.text = "section8.6-biomarkers"
  * section[biomarkers]
    * text 0..1
    * text ^comment = "No text is intended here (header only). Include any specific instructions for the collection of samples and assessment of biomarkers, including pharmacodynamics. If biomarker or pharmacodynamic testing is not included in the study, state “Not Applicable.” • Describe the biological samples that will be collected (for example, tissue, serum, plasma, etc.). o Specific sample collection and processing instructions can be described in an appendix or a separate document and cross-referenced. • Describe the retention time for the samples (ensuring alignment with the ICF). • Indicate the types of biomarkers that will be studied for each sample. • Specify whether each sample is optional or required. Required samples must be based on a protocol objective."
    * section 2..*
    * section ^slicing.discriminator.type = #value
    * section ^slicing.discriminator.path = "code.text"
    * section ^slicing.rules = #open
    * section contains genetics 1..1 MS and pharmacodynamics 1..1 MS and other 0..1 MS
    * section[genetics].title = "8.6.1 Genetics and Pharmacogenomics"
    * section[genetics].code.coding 1..1
    * section[genetics].code.coding = http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C218603 "ICH M11 Protocol Section 8.6.1 Genetics, Genomics, Pharmacogenetics and Pharmacogenomics"
    * section[genetics].code.text = "section8.6.1-genetics-pharmacogenomics"
    * section[genetics]
      * text 1..1
      * text ^comment = "Include any specific instructions for the collection and assay of samples for genetic and/or pharmacogenomic analysis. • Describe the biological samples that will be collected (for example, tissue, serum, plasma, etc.), handling of samples, and the assay method. o Specific sample collection and processing instructions can be described in an appendix or a separate document and cross-referenced. • Describe the retention time for the samples (ensuring alignment with the ICF). • Indicate the types of analyses that may be studied for each sample."
    * section[pharmacodynamics].title = "8.6.2 Pharmacodynamic Biomarkers"
    * section[pharmacodynamics].code.coding 1..1
    * section[pharmacodynamics].code.coding = http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C218604 "ICH M11 Protocol Section 8.6.2 Pharmacodynamic Biomarkers"
    * section[pharmacodynamics].code.text = "section8.6.2-pharmacodynamics"
    * section[pharmacodynamics]
      * text 1..1
      * text ^comment = "Include any specific instructions for the collection of samples and assessment of pharmacodynamic biomarkers. • Describe the biological samples that will be collected (for example, tissue, serum, plasma, etc.). o Specific sample collection and processing instructions can be described in an appendix or a separate document and cross-referenced. • Describe the retention time for the samples (ensuring alignment with the ICF). • Indicate the types of biomarkers that will be studied for each sample. • Specify whether each sample is optional or required. Required samples must be based on a protocol objective."
    * section[other].title = "8.6.3 Other Biomarkers"
    * section[other].code.coding 1..1
    * section[other].code.coding = http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C218605 "ICH M11 Protocol Section 8.6.3 Other Biomarkers"
    * section[other].code.text = "section8.6.3-other-biomarkers"
    * section[other]
      * text 1..1
      * text ^comment = "Include any specific instructions for the collection of samples and assessment of other biomarkers. • Describe the biological samples that will be collected (for example, tissue, serum, plasma, etc.). o Specific sample collection and processing instructions can be described in an appendix or a separate document and cross-referenced. • Describe the retention time for the samples (ensuring alignment with the ICF). • Indicate the types of biomarkers that will be studied for each sample. • Specify whether each sample is optional or required. Required samples must be based on a protocol objective."
  * section[immunogenicity].title = "8.7 Immunogenicity Assessments"
  * section[immunogenicity].code.coding 1..1
  * section[immunogenicity].code.coding = http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C218606 "ICH M11 Protocol Section 8.7 Immunogenicity Assessments"
  * section[immunogenicity].code.text = "section8.7-immunogenicity-assessments"
  * section[immunogenicity]
    * text 1..1
    * text ^comment = "Include any specific instructions for the collection of samples and interpretation of immunogenicity. If immunogenicity assessments are included within Efficacy Assessments or Safety Assessments, cross-reference to that section. • Describe the biological samples that will be collected (e.g., tissue, serum, plasma). o Specific sample collection and processing instructions can be described in an appendix or a separate document and cross referenced. • Describe the retention time for the samples (ensuring alignment with the ICF). • Indicate the types of biomarkers that will be studied for each sample. • Specify whether each sample is optional or required. Required samples must be based on a protocol objective."
  * section[economics].title = "8.8 Medical Resource Utilisation and Health Economics"
  * section[economics].code.coding 1..1
  * section[economics].code.coding = http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C218607 "ICH M11 Protocol Section 8.8 Medical Resource Utilisation and Health Economics"
  * section[economics].code.text = "section8.8-economics"
  * section[economics]
    * text 1..1
    * text ^comment = "This section does not apply to COAs. Include this section only for any value evidence and outcomes assessments not included in either the efficacy or safety sections. Describe the health outcome measures, collection method (e.g., diary, physician interview), and participant burden."
