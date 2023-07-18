Profile: M11Section09
Parent: EvidenceReport
Id: m11-section-09
Description: "Profile of Composition for Evidence Based Medicine IG. The M11Section09 Profile is used for summary of Section 9 Statistical Considerations for the Interntaional Council for Harmonisation of Technical Requirements for Pharmaceuticals for Human Use (ICH) Clinical Electronic Structured Harmonised Protocol (CeSHarP) M11 Technical Specification."
* category 1..*
* category ^slicing.discriminator.type = #pattern
* category ^slicing.discriminator.path = "text"
* category ^slicing.rules = #open
* category contains section09 1..1 MS
* category[section09].text = "Section 9 Statistical Considerations"
* section 4..*
* section ^slicing.discriminator.type = #pattern
* section ^slicing.discriminator.path = "code"
* section ^slicing.rules = #open
* section contains analysisSets 1..1 MS and analysisPrimaryObjective 1..* MS and secondaryAnalysis 0..* MS and exploratoryAnalysis 0..* MS and safetyAnalyses 0..1 MS and otherAnalyses 0..1 MS and interimAnalyses 0..1 MS and sampleSize 1..1 MS and protocolDeviations 1..1 MS
* section[analysisSets].code.text = "9.1 Analysis Sets"
* section[analysisSets]
  * text 1..1
* section[analysisPrimaryObjective].code.text = "9.2 Analysis Supporting Primary Objective"
* section[analysisPrimaryObjective]
  * text 1..1
  * focus only Reference(OutcomeDefinition)
  * section 3..*
  * section ^slicing.discriminator.type = #pattern
  * section ^slicing.discriminator.path = "code"
  * section ^slicing.rules = #open
  * section contains statisticalModel 1..1 MS and intercurrentEventHandling 0..1 MS and missingData 1..1 MS and sensitvityAnalysis 1..1 MS and supplementaryAnalysis 0..1 MS
  * section[statisticalModel].code.text = "9.2.1 Statistical Model, Hypothesis, and Method of Analysis"
  * section[statisticalModel]
    * text 1..1
    * entry only Reference(EndpointAnalysisPlan)
  * section[intercurrentEventHandling].code.text = "9.2.2 Handling of Intercurrent Events of Primary Estimand"
  * section[intercurrentEventHandling]
    * text 1..1
  * section[missingData].code.text = "9.2.3 Handling of Missing Data"
  * section[missingData]
    * text 1..1
  * section[sensitvityAnalysis].code.text = "9.2.4 Sensitivity Analysis"
  * section[sensitvityAnalysis]
    * text 1..1
    * entry only Reference(EndpointAnalysisPlan)
  * section[supplementaryAnalysis].code.text = "9.2.5 Supplementary Analysis"
  * section[supplementaryAnalysis]
    * text 1..1
* section[secondaryAnalysis].code.text = "9.3 Analysis Supporting Secondary Objective"
* section[secondaryAnalysis]
  * text 1..1
  * focus only Reference(OutcomeDefinition)
  * section 0..*
  * section ^slicing.discriminator.type = #pattern
  * section ^slicing.discriminator.path = "code"
  * section ^slicing.rules = #open
  * section contains statisticalModel 0..1 MS and intercurrentEventHandling 0..1 MS and missingData 0..1 MS and sensitvityAnalysis 0..1 MS and supplementaryAnalysis 0..1 MS
  * section[statisticalModel].code.text = "9.3.1 Statistical Model, Hypothesis, and Method of Analysis"
  * section[statisticalModel]
    * text 1..1
    * entry only Reference(EndpointAnalysisPlan)
  * section[intercurrentEventHandling].code.text = "9.3.2 Handling of Intercurrent Events of Secondary Estimand"
  * section[intercurrentEventHandling]
    * text 1..1
  * section[missingData].code.text = "9.3.3 Handling of Missing Data"
  * section[missingData]
    * text 1..1
  * section[sensitvityAnalysis].code.text = "9.3.4 Sensitivity Analysis"
  * section[sensitvityAnalysis]
    * text 1..1
    * entry only Reference(EndpointAnalysisPlan)
  * section[supplementaryAnalysis].code.text = "9.3.5 Supplementary Analysis"
  * section[supplementaryAnalysis]
    * text 1..1
* section[exploratoryAnalysis].code.text = "9.4 Analysis of Exploratory Objective"
* section[exploratoryAnalysis]
  * text 1..1
  * focus only Reference(OutcomeDefinition)
  * section 0..*
  * section ^slicing.discriminator.type = #pattern
  * section ^slicing.discriminator.path = "code"
  * section ^slicing.rules = #open
  * section contains statisticalModel 0..1 MS and intercurrentEventHandling 0..1 MS and missingData 0..1 MS and sensitvityAnalysis 0..1 MS and supplementaryAnalysis 0..1 MS
  * section[statisticalModel].code.text = "9.4.1 Statistical Model, Hypothesis, and Method of Analysis"
  * section[statisticalModel]
    * text 1..1
    * entry only Reference(EndpointAnalysisPlan)
  * section[intercurrentEventHandling].code.text = "9.4.2 Handling of Intercurrent Events of Exploratory Estimand"
  * section[intercurrentEventHandling]
    * text 1..1
  * section[missingData].code.text = "9.4.3 Handling of Missing Data"
  * section[missingData]
    * text 1..1
  * section[sensitvityAnalysis].code.text = "9.4.4 Sensitivity Analysis"
  * section[sensitvityAnalysis]
    * text 1..1
    * entry only Reference(EndpointAnalysisPlan)
  * section[supplementaryAnalysis].code.text = "9.4.5 Supplementary Analysis"
  * section[supplementaryAnalysis]
    * text 1..1
* section[safetyAnalyses].code.text = "9.5 Safety Analyses"
* section[safetyAnalyses]
  * text 1..1
* section[otherAnalyses].code.text = "9.6 Other Analyses"
* section[otherAnalyses]
  * text 1..1
* section[interimAnalyses].code.text = "9.7 Interim Analyses"
* section[interimAnalyses]
  * text 1..1
* section[sampleSize].code.text = "9.8 Sample Size Determination"
* section[sampleSize]
  * text 1..1
* section[protocolDeviations].code.text = "9.9 Protocol Deviations"
* section[protocolDeviations]
  * text 1..1
  