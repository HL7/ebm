Profile: M11Section08
Parent: EvidenceReport
Id: m11-section-08
Description: "Profile of Composition for Evidence Based Medicine IG. The M11Section08 Profile is used for summary of Section 8 Trial Assessments and Procedures for the International Council for Harmonisation of Technical Requirements for Pharmaceuticals for Human Use (ICH) Clinical Electronic Structured Harmonised Protocol (CeSHarP) M11 Technical Specification."
* category 1..*
* category ^slicing.discriminator.type = #pattern
* category ^slicing.discriminator.path = "text"
* category ^slicing.rules = #open
* category contains section08 1..1 MS
* category[section08].text = "Section 8 Trial Assessments and Procedures"
* section 9..*
* section ^slicing.discriminator.type = #pattern
* section ^slicing.discriminator.path = "code"
* section ^slicing.rules = #open
* section contains screeningBaseline 1..1 MS and efficacy 1..1 MS and safety 1..1 MS and adverseEvents 1..1 MS and pregnancy 1..1 MS and drugDeviceComplaints 0..1 MS and pharmacokinetics 1..1 MS and genetics 1..1 MS and biomarkers 1..1 MS and immunogenicity 1..1 MS and economics 0..1 MS
* section[screeningBaseline].code.text = "8.1 Screening/Baseline Assessments and Procedures"
* section[screeningBaseline]
  * text 1..1
* section[efficacy].code.text = "8.2 Efficacy Assessments and Procedures"
* section[efficacy]
  * text 1..1
* section[safety].code.text = "8.3 Safety Assessments and Procedures"
* section[safety]
  * text 1..1
* section[adverseEvents].code.text = "8.4 Adverse Events and Serious Adverse Events"
* section[adverseEvents]
  * text 1..1
* section[pregnancy].code.text = "8.5 Pregnancy and Postpartum Information"
* section[pregnancy]
  * text 1..1
* section[drugDeviceComplaints].code.text = "8.6 Medical Device Product Complaints for Drug/Device Combination Products"
* section[drugDeviceComplaints]
  * text 1..1
* section[pharmacokinetics].code.text = "8.7 Pharmacokinetics"
* section[pharmacokinetics]
  * text 1..1
* section[genetics].code.text = "8.8 Genetics"
* section[genetics]
  * text 1..1
* section[biomarkers].code.text = "8.9 Biomarkers"
* section[biomarkers]
  * text 1..1
* section[immunogenicity].code.text = "8.10 Immunogenicity Assessments"
* section[immunogenicity]
  * text 1..1
* section[economics].code.text = "8.11 Medical Resource Utilisation and 995 Health Economics"
* section[economics]
  * text 1..1
  