Profile: M11Section10
Parent: EvidenceReport
Id: m11-section-10
Description: "Profile of Composition for Evidence Based Medicine IG. The M11Section10 Profile is used for summary of Section 10 Statistical Considerations for the International Council for Harmonisation of Technical Requirements for Pharmaceuticals for Human Use (ICH) Clinical Electronic Structured Harmonised Protocol (CeSHarP) M11 Technical Specification."
* category 1..*
* category ^slicing.discriminator.type = #pattern
* category ^slicing.discriminator.path = "text"
* category ^slicing.rules = #open
* category contains section10 1..1 MS
* category[section10].text = "Section 10 Statistical Considerations"
* section 1..*
* section ^slicing.discriminator.type = #pattern
* section ^slicing.discriminator.path = "code"
* section ^slicing.rules = #open
* section contains statistics 1..1 MS
* section[statistics].title = "Statistical Considerations"
* section[statistics].code.text = "section10-statistics"
* section[statistics]
  * text 1..1
  * text ^comment = "Ensure that the data analysis complies with ICH E9 Guideline and ICH E9(R1) Guideline. In general, all relevant data collected in the trial should be considered in this statistical considerations section. Provide a statement with regard to when the primary analyses will be conducted. For example: The analysis will be conducted on all participant data at the time the trial ends."
  * section 4..*
  * section ^slicing.discriminator.type = #pattern
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
    * section ^slicing.discriminator.type = #pattern
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
    * section ^slicing.discriminator.type = #pattern
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
    * section ^slicing.discriminator.type = #pattern
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
  