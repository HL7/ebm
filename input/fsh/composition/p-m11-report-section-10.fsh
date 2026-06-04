Profile: M11ReportSection10
Parent: EvidenceReport
Id: m11-report-section-10
Description: "Profile of Composition for Evidence Based Medicine IG. The M11ReportSection10 Profile is used for section 10 (Statistical Considerations) for the International Council for Harmonisation of Technical Requirements for Pharmaceuticals for Human Use (ICH) Clinical Electronic Structured Harmonised Protocol (CeSHarP) M11 Technical Specification."
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
* category contains statistics 0..1
* category[statistics].coding 1..1
* category[statistics].coding = http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C218625 "ICH M11 Protocol Section 10 STATISTICAL CONSIDERATIONS"
* category[statistics].text = "section10-statistics"
* section 1..1
* section ^slicing.discriminator.type = #value
* section ^slicing.discriminator.path = "code.text"
* section ^slicing.rules = #open
* section contains statistics 1..1 MS
* section[statistics].title = "10 STATISTICAL CONSIDERATIONS"
* section[statistics].code.coding 1..1
* section[statistics].code.coding = http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C218625 "ICH M11 Protocol Section 10 STATISTICAL CONSIDERATIONS"
* section[statistics].code.text = "section10-statistics"
* section[statistics]
  * text 0..1
  * text ^comment = "Ensure that the data analysis complies with ICH E9 Guideline and ICH E9(R1) Guideline. In general, all relevant data collected in the trial should be considered in this section. No text is intended here (header only)."
  * section 6..*
  * section ^slicing.discriminator.type = #value
  * section ^slicing.discriminator.path = "code.text"
  * section ^slicing.rules = #open
  * section contains considerations 1..1 MS and analysisSets 1..1 MS and analysisBaseline 1..1 MS and analysisPrimaryObjective 1..* MS and secondaryAnalysis 0..* MS and exploratoryAnalysis 0..1 MS and safetyAnalyses 0..1 MS and otherAnalyses 0..1 MS and multiplicity 1..1 MS and interimAnalyses 0..1 MS and sampleSize 1..1 MS
  * section[considerations].title = "10.1 General Considerations"
  * section[considerations].code.coding 1..1
  * section[considerations].code.coding = http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C218626 "ICH M11 Protocol Section 10.1 General Considerations"
  * section[considerations].code.text = "section10.1-general-considerations"
  * section[considerations]
    * text 1..1
    * text ^comment = "Provide general statements related to statistical considerations, such as whether a separate statistical analysis plan exists, which summary statistics will be provided, and the timing of analyses (e.g., “The analysis will include all participant data at trial completion”)."
  * section[analysisSets].title = "10.2 Analysis Sets"
  * section[analysisSets].code.coding 1..1
  * section[analysisSets].code.coding = http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C218627 "ICH M11 Protocol Section 10.2 Analysis Sets"
  * section[analysisSets].code.text = "section10.2-analysis-sets"
  * section[analysisSets]
    * text 1..1
    * text ^comment = "Describe analysis sets to be considered at the trial level, i.e., the set of participants whose data are to be included in the analyses, aligned with estimands. Clearly specify the analysis set to be used for each analysis described in Section 10 Statistical Considerations."
  * section[analysisBaseline].title = "10.3 Analyses of Demographics and Other Baseline Variables"
  * section[analysisBaseline].code.coding 1..1
  * section[analysisBaseline].code.coding = http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C218628 "ICH M11 Protocol Section 10.3 Analyses of Demographics and Other Baseline Variables"
  * section[analysisBaseline].code.text = "section10.3-analyses-demographics"
  * section[analysisBaseline]
    * text 1..1
    * text ^comment = "Describe the summary statistics that will be used to characterize the distribution of demographic and other relevant variables at baseline. Specify when the variables are measured (e.g., at trial inclusion, prior to randomisation, or at the time of randomisation). Relevant variables include but are not limited to: stratification variables specified in Section 6.7 Investigational Trial Intervention Assignment, Randomisation and Blinding, covariates for the statistical models specified in Section 10.4 Analyses Associated with the Primary Objective(s), other suspected predictive or prognostic variables, and variables used for planned subgroup analyses."
  * section[analysisPrimaryObjective].title = "10.4 Analyses Associated with the Primary Objective(s)"
  * section[analysisPrimaryObjective].code.coding 1..1
  * section[analysisPrimaryObjective].code.coding = http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C218629 "section10.4-analysis-primary-objective"
  * section[analysisPrimaryObjective].code.text = "section10.4-analysis-primary-objective"
  * section[analysisPrimaryObjective]
    * text 0..1
    * text ^comment = "No content here. Create a new section for each estimand."
    * section ^slicing.discriminator.type = #value
    * section ^slicing.discriminator.path = "code.text"
    * section ^slicing.rules = #open
    * section contains analysisPrimaryInstance 1..* MS
    * section[analysisPrimaryInstance].code.coding 1..1
    * section[analysisPrimaryInstance].code.coding = http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C218630 "ICH M11 Protocol Section 10.4.1 Primary Objective"
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
      * section[statisticalModel].title = "10.4.1.1 Statistical Analysis Method"
      * section[statisticalModel].code.coding 1..1
      * section[statisticalModel].code.coding = http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C218631 "ICH M11 Protocol Section 10.4.1.1 Statistical Analysis Method"
      * section[statisticalModel].code.text = "section10.4.1.1-statistical-method"
      * section[statisticalModel]
        * text 1..1
        * text ^comment = "Describe the statistical analysis methods that will be used to evaluate the primary objective(s) and associated estimand(s) in Section 3.1 Primary Objective(s) and Associated Estimands. Ensure that the statistical hypothesis/model/analysis (and corresponding assumptions) is aligned with the primary estimand(s). For each objective, when applicable, state the null and alternative hypotheses, including the pre-planned type 1 error rate, or alternative criteria for evaluating whether the objective has been met, and relevant operating characteristics if appropriate. Describe the statistical model used and the factors that will be included (covariates and interactions) and any rules for handling these factors (e.g., pooling of centres). If modelling and simulation methods are to be used, describe the model (inputs and outputs), the underlying assumptions, and the method of model fitting. Entries should Reference EndpointAnalysisPlan Profile of Evidence Resource."
        * entry only Reference(EndpointAnalysisPlan)
      * section[intercurrentEventHandling].title = "10.4.1.2 Handling of Data in Relation to Primary Estimand(s)"
      * section[intercurrentEventHandling].code.coding 1..1
      * section[intercurrentEventHandling].code.coding = http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C218632 "ICH M11 Protocol Section 10.4.1.2 Handling of Data in Relation to Primary Estimand(s)"
      * section[intercurrentEventHandling].code.text = "section10.4.1.2-data-handling"
      * section[intercurrentEventHandling]
        * text 1..1
        * text ^comment = "For each intercurrent event of the primary estimand(s) (Section 3.1 Primary Objective(s) and Associated Estimands), explain how data will be handled for the statistical analysis in line with the primary estimand. The handling of intercurrent events in the statistical analysis should be aligned with the specific estimand strategies being used. This section should describe in more detail the rationale and handling of the data rather than repeating information from the preceding sections."
      * section[missingData].title = "10.4.1.3 Handling of Missing Data in Relation to Primary Estimand(s)"
      * section[missingData].code.coding 1..1
      * section[missingData].code.coding = http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C218633 "ICH M11 Protocol Section 10.4.1.3 Handling of Missing Data in Relation to Primary Estimand(s)"
      * section[missingData].code.text = "section10.4.1.3-missing-data-handling"
      * section[missingData]
        * text 1..1
        * text ^comment = "Describe how missing data will be addressed (e.g., imputation method and model), state the underlying assumptions, and provide a rationale for the approach."
      * section[sensitvityAnalysis].title = "10.4.1.4 Sensitivity Analysis"
      * section[sensitvityAnalysis].code.coding 1..1
      * section[sensitvityAnalysis].code.coding = http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C218634 "ICH M11 Protocol Section 10.4.1.4 Sensitivity Analysis"
      * section[sensitvityAnalysis].code.text = "section10.4.1.4-sensitivity-analysis"
      * section[sensitvityAnalysis]
        * text 1..1
        * text ^comment = "Describe any sensitivity analyses and how their assumptions changed from the assumptions of the main statistical analysis. Sensitivity analyses are a series of analyses conducted with the intent to explore the robustness of inferences from the main estimator to deviations from its underlying modelling assumptions and limitations in the data. Entries should Reference EndpointAnalysisPlan Profile of Evidence Resource."
        * entry only Reference(EndpointAnalysisPlan)
      * section[supplementaryAnalysis].title = "10.4.1.5 Supplementary Analysis"
      * section[supplementaryAnalysis].code.coding 1..1
      * section[supplementaryAnalysis].code.coding = http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C218635 "ICH M11 Protocol Section 10.4.1.5 Supplementary Analysis"
      * section[supplementaryAnalysis].code.text = "section10.4.1.5-supplementary-analysis"
      * section[supplementaryAnalysis]
        * text 1..1
        * text ^comment = "Describe any supplementary analysis, if applicable. Supplementary analyses are conducted in addition to the main and sensitivity analysis with the intent to provide additional insights into the understanding of the treatment effect."
  * section[secondaryAnalysis].title = "10.5 Analyses Associated with the Secondary Objective(s)"
  * section[secondaryAnalysis].code.coding 1..1
  * section[secondaryAnalysis].code.coding = http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C218636 "ICH M11 Protocol Section 10.5 Analyses Associated with the Secondary Objective(s)"
  * section[secondaryAnalysis].code.text = "section10.5-analysis-secondary-objective"
  * section[secondaryAnalysis]
    * text 0..1
    * text ^comment = "No content here. Create a new section for each estimand. Unless there is no secondary objective, in which case indicate 'Not applicable.'"
    * section ^slicing.discriminator.type = #value
    * section ^slicing.discriminator.path = "code.text"
    * section ^slicing.rules = #open
    * section contains analysisSecondaryInstance 1..* MS
    * section[analysisSecondaryInstance].code.text = "section10.5.1-analysis-secondary-objective-instance"
    * section[analysisSecondaryInstance].code.coding 1..1
    * section[analysisSecondaryInstance].code.coding = http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C218637 "ICH M11 Protocol Section 10.5.1 Secondary Objective"
    * section[analysisSecondaryInstance]
      * focus only Reference(VariableDefinition)
      * text 0..1
      * text ^comment = "No text is intended here (header only)."
      * section 0..*
      * section ^slicing.discriminator.type = #value
      * section ^slicing.discriminator.path = "code.text"
      * section ^slicing.rules = #open
      * section contains statisticalModel 0..1 MS and intercurrentEventHandling 0..1 MS and missingData 0..1 MS and sensitvityAnalysis 0..1 MS and supplementaryAnalysis 0..1 MS
      * section[statisticalModel].title = "10.5.1.1 Statistical Analysis Method"
      * section[statisticalModel].code.coding 1..1
      * section[statisticalModel].code.coding = http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C218638 "ICH M11 Protocol Section 10.5.1.1 Statistical Analysis Method"
      * section[statisticalModel].code.text = "section10.5.1.1-statistical-method"
      * section[statisticalModel]
        * text 1..1
        * text ^comment = "Clearly specify any secondary hypotheses that will be tested for confirmatory purposes. Entries should Reference EndpointAnalysisPlan Profile of Evidence Resource."
        * entry only Reference(EndpointAnalysisPlan)
      * section[intercurrentEventHandling].title = "10.5.1.2 Handling of Data in Relation to Secondary Estimand(s)"
      * section[intercurrentEventHandling].code.coding 1..1
      * section[intercurrentEventHandling].code.coding = http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C218639 "ICH M11 Protocol Section 10.5.1.2 Handling of Data in Relation to Secondary Estimand(s)"
      * section[intercurrentEventHandling].code.text = "section10.5.1.2-data-handling"
      * section[intercurrentEventHandling]
        * text 1..1
        * text ^comment = "Enter Handling of Data in Relation to Secondary Estimand(s)"
      * section[missingData].title = "10.5.1.3 Handling of Missing Data in Relation to Secondary Estimand(s)"
      * section[missingData].code.coding 1..1
      * section[missingData].code.coding = http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C218640 "ICH M11 Protocol Section 10.5.1.3 Handling of Missing Data in Relation to Secondary Estimand(s)"
      * section[missingData].code.text = "section10.5.1.3-missing-data-handling"
      * section[missingData]
        * text 1..1
        * text ^comment = "Describe how missing data will be addressed (e.g., imputation method and model), state the underlying assumptions, and provide a rationale for the approach. Refer to the E9(R1) addendum when the estimand framework is used."
      * section[sensitvityAnalysis].title = "10.5.1.4 Sensitivity Analysis"
      * section[sensitvityAnalysis].code.coding 1..1
      * section[sensitvityAnalysis].code.coding = http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C218641 "ICH M11 Protocol Section 10.5.1.4 Sensitivity Analysis"
      * section[sensitvityAnalysis].code.text = "section10.5.1.4-sensitivity-analysis"
      * section[sensitvityAnalysis]
        * text 1..1
        * text ^comment = "Describe sensitivity analyses. Sensitivity analyses are a series of analyses conducted with the intent to explore the robustness of inferences from the main estimator to deviations from its underlying modelling assumptions and limitations in the data. Entries should Reference EndpointAnalysisPlan Profile of Evidence Resource."
        * entry only Reference(EndpointAnalysisPlan)
      * section[supplementaryAnalysis].title = "10.5.1.5 Supplementary Analysis"
      * section[supplementaryAnalysis].code.coding 1..1
      * section[supplementaryAnalysis].code.coding = http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C218642 "ICH M11 Protocol Section 10.5.1.5 Supplementary Analysis"
      * section[supplementaryAnalysis].code.text = "section10.5.1.5-supplementary-analysis"
      * section[supplementaryAnalysis]
        * text 1..1
        * text ^comment = "Describe any supplementary analysis if applicable. Supplementary analyses are conducted in addition to the main and sensitivity analysis with the intent to provide additional insights into the understanding of the treatment effect."
  * section[exploratoryAnalysis].title = "10.6 Analyses Associated with the Exploratory Objective(s)"
  * section[exploratoryAnalysis].code.coding 1..1
  * section[exploratoryAnalysis].code.coding = http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C218643 "ICH M11 Protocol Section 10.6 Analyses Associated with the Exploratory Objective(s)"
  * section[exploratoryAnalysis].code.text = "section10.6-analysis-exploratory-objective"
  * section[exploratoryAnalysis]
    * text 1..1
    * text ^comment = "Describe any exploratory analyses, if applicable. Additional subsections may be created to describe the analyses for each exploratory objective, as needed. If there is no exploratory objective, indicate “Not applicable”."
  * section[safetyAnalyses].title = "10.7 Safety Analyses"
  * section[safetyAnalyses].code.coding 1..1
  * section[safetyAnalyses].code.coding = http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C218644 "ICH M11 Protocol Section 10.7 Safety Analyses"
  * section[safetyAnalyses].code.text = "section10.7-safety-analyses"
  * section[safetyAnalyses]
    * text 1..1
    * text ^comment = "If safety is a primary and/or secondary objective, describe the corresponding safety analyses in the appropriate section above (Section 10.4 Analyses Associated with the Primary Objective(s) or Section 10.5 Analyses Associated with the Secondary Objective[s]). In this section, describe statistical methods that will be used to analyse relevant safety outcomes, including any AESI. This should typically include specification of a measure to estimate risk within treatment arms, a measure to compare risks across treatment arms, and a measure of statistical uncertainty around the comparison such as a confidence interval."
  * section[otherAnalyses].title = "10.8 Other Analyses"
  * section[otherAnalyses].code.coding 1..1
  * section[otherAnalyses].code.coding = http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C218645 "ICH M11 Protocol Section 10.8 Other Analyses"
  * section[otherAnalyses].code.text = "section10.8-other-analyses"
  * section[otherAnalyses]
    * text 1..1
    * text ^comment = "Describe other analyses not included in Sections 10.3-10.7, such as subgroup analyses."
  * section[interimAnalyses].title = "10.9 Interim Analyses"
  * section[interimAnalyses].code.coding 1..1
  * section[interimAnalyses].code.coding = http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C218646 "ICH M11 Protocol Section 10.9 Interim Analyses"
  * section[interimAnalyses].code.text = "section10.9-interim-analyses"
  * section[interimAnalyses]
    * text 1..1
    * text ^comment = "Describe any interim analyses and criteria for stopping or adapting the trial. Ensure alignment with Section 4.3 Trial Stopping Rules. The description should include, but is not limited to, the following. Under circumstances where interim analysis details could impede the integrity of the trial, some of the information can be added in other documents outside of the protocol. • any planned interim analysis, even if it is only to be performed at the request of an oversight body (for example, DMC) • the purpose of the interim analysis, including whether the interim analysis may be used for stopping and/or for other trial adaptations such as sample size re-estimation, alteration to the proportion of participants allocated to each trial group, or changes to eligibility criteria • the applied statistical method; e.g., group sequential test and spending function (e.g., O’Brien-Fleming), as applicable • the parties responsible for performing and reviewing the results of the analyses (e.g., DMC, independent statistician) • when the analyses will be conducted (timing and/or triggers) • the decision criteria—statistical or other—that will be adopted to judge the interim results as part of a guideline for early stopping or other adaptations • who will see the outcome data while the trial is ongoing • whether these individuals will remain blinded to trial groups • how the integrity of the trial implementation will be protected (e.g., maintaining blinding) when decisions are made after interim analyses (e.g., a decision to continue the trial or implement a specific adaptation)"
  * section[multiplicity].title = "10.10 Multiplicity Adjustments"
  * section[multiplicity].code.coding 1..1
  * section[multiplicity].code.coding = http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C218647 "ICH M11 Protocol Section 10.10 Multiplicity Adjustments"
  * section[multiplicity].code.text = "section10.10-multiplicity-adjustments"
  * section[multiplicity]
    * text 1..1
    * text ^comment = "Multiple testing procedures may be needed to limit the probability of false positive findings in a trial. Reasons for carrying out multiple statistical tests include - but are not restricted to - multiple endpoints, multiple treatment groups, multiple hypotheses, subgroups, multiple timepoints. Describe any approaches to multiplicity control for the trial. This description might go beyond the analysis of primary objectives. Specify the statistical approach to control the overall type I error rate as well as the (adjusted) significance levels to test specific hypotheses, as applicable. Clarify whether the tests/confidence intervals are one- or two-sided. State the circumstances under which a trial will be considered to have met its primary objective(s). For example, in a study with two primary efficacy endpoints, this section should state whether the study would be expected to provide statistical evidence on at least one or on both of the endpoints in order to confirm the efficacy of the treatment. For some statistical approaches it might be helpful to include a graphical depiction, as visualisation will be helpful for understanding, coupled with the clinical translation of the mathematical choices. Details regarding interim analyses should be provided in Section 10.9 Interim Analyses."
  * section[sampleSize].title = "10.11 Sample Size Determination"
  * section[sampleSize].code.coding 1..1
  * section[sampleSize].code.coding = http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C218648 "ICH M11 Protocol Section 10.11 Sample Size Determination"
  * section[sampleSize].code.text = "section10.11-sample-size-determination"
  * section[sampleSize]
    * text 1..1
    * text ^comment = "This section should detail the methods used for the determination of the sample size. The sample size calculation should be aligned with the primary estimand and the primary analysis, otherwise a justification is needed. Details of sample size calculation should include all relevant information to enable reproduction of the sample size, e.g.,: • referencing any prior studies on which assumptions were based • significance level (including information on the choice of one- or two-sided level) • power • assumed treatment effect and variability • how dropout rate and intercurrent events have been incorporated into sample size calculation • precision of estimator/length of confidence interval. Any assumptions made should be stated and justified. Further analysis of how deviations from the assumptions will affect the sample size should be included. If complex simulations were used to calculate the sample size, consider including details in a separate simulation report as an appendix to the protocol. If the planned sample size is not derived statistically, then this should be explicitly stated along with a rationale for the intended sample size (e.g., exploratory nature of pilot trials; pragmatic considerations for trials in rare diseases). Entries should Reference EndpointAnalysisPlan Profile of Evidence Resource."
    * entry only Reference(EndpointAnalysisPlan)
