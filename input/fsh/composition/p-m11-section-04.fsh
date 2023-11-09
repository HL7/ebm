Profile: M11Section04
Parent: EvidenceReport
Id: m11-section-04
Description: "Profile of Composition for Evidence Based Medicine IG. The M11Section04 Profile is used for summary of Section 4 Trial Design for the International Council for Harmonisation of Technical Requirements for Pharmaceuticals for Human Use (ICH) Clinical Electronic Structured Harmonised Protocol (CeSHarP) M11 Technical Specification."
* category 1..*
* category ^slicing.discriminator.type = #value
* category ^slicing.discriminator.path = "text"
* category ^slicing.rules = #open
* category contains section04 1..1 MS
* category[section04].text = "Section 4 Trial Design"
* section 1..*
* section ^slicing.discriminator.type = #value
* section ^slicing.discriminator.path = "code"
* section ^slicing.rules = #open
* section contains design 1..1 MS
* section[design].title = "Trial Design"
* section[design].code.text = "section4-trial-design"
* section[design]
  * section 4..*
  * section ^slicing.discriminator.type = #value
  * section ^slicing.discriminator.path = "code"
  * section ^slicing.rules = #open
  * section contains description 1..1 MS and rationale 1..1 MS and trialStoppingRules 1..1 MS and startEnd 1..1 MS and access 0..1 MS
  * section[description].title = "Description of Trial Design"
  * section[description].code.text = "section4.1-description-of-trial-design"
  * section[description]
    * text 1..1
    * text ^comment = "see Template instructions"
    * section 0..*
    * section ^slicing.discriminator.type = #value
    * section ^slicing.discriminator.path = "code"
    * section ^slicing.rules = #open
    * section contains stakeholderInput 0..1 MS
    * section[stakeholderInput].title = "Stakeholder Input into Design"
    * section[stakeholderInput].code.text = "section4.1.1-stakeholder-input-into-design"
    * section[stakeholderInput]
      * text 1..1
      * text ^comment = "If applicable, describe any stakeholder (for example, patient, healthcare professional and patient advocacy groups) involvement in the design of the trial and any suggestions implemented."
  * section[rationale].title = "Rationale for Trial Design"
  * section[rationale].code.text = "section4.2-rationale-for-trial-design"
  * section[rationale]
    * section 0..*
    * section ^slicing.discriminator.type = #value
    * section ^slicing.discriminator.path = "code"
    * section ^slicing.rules = #open
    * section contains model 0..1 MS and duration 0..1 MS and endpoints 0..1 MS and interim 0..1 MS and comparator 0..1 MS and adaptive 0..1 MS and otherAspects 0..1 MS
    * section[model].title = "Rationale for Intervention Model"
    * section[model].code.text = "section4.2.1-rationale-intervention-model"
    * section[model]
      * text 1..1
      * text ^comment = "Provide a rationale for the trial intervention model selected in Section 4.1, Description of Trial Design with a cross-reference to Section 6.2, Rationale for Investigational Intervention(s). Rationale for choice of comparator, if applicable, should be described separately in Section 4.2.5, Rationale for Comparator. A rationale for the choice of trial population should be described separately in Section 5.1, Description of Trial Population and Rationale."
    * section[duration].title = "Rationale for Duration"
    * section[duration].code.text = "section4.2.2-rationale-duration"
    * section[duration]
      * text 1..1
      * text ^comment = "Provide a rationale that the trial duration is appropriate for a reliable and relevant evaluation of the trial intervention per the trial objective(s)."
    * section[endpoints].title = "Rationale for Endpoints"
    * section[endpoints].code.text = "section4.2.3-rationale-endpoints"
    * section[endpoints]
      * text 1..1
      * text ^comment = "Provide a rationale that the trial endpoint(s) described in Section 3, Trial Objectives, Endpoints, and Estimands, are clinically relevant and provide a reliable and valid measurement of the intended intervention effect."  
    * section[interim].title = "Rationale for Interim Analysis"
    * section[interim].code.text = "section4.2.4-rationale-interim-analysis"
    * section[interim]
      * text 1..1
      * text ^comment = "If applicable, provide a rationale for any interim analysis planned with respect to its purpose (for example, stopping the trial early for efficacy or futility) and timing."  
    * section[comparator].title = "Rationale for Comparator"
    * section[comparator].code.text = "section4.2.5-rationale-comparator"
    * section[comparator]
      * text 1..1
      * text ^comment = "If applicable, provide a rationale for the type of control selected for the trial (for example, placebo, active drug, combination, historical). Describe any known or potential problems associated with the control group selected in light of the specific disease and intervention(s) being studied.  If comparators will differ by region, describe."  
    * section[adaptive].title = "Rationale for Adaptive or Novel Trial Design"
    * section[adaptive].code.text = "section4.2.6-rationale-adaptive"
    * section[adaptive]
      * text 1..1
      * text ^comment = "If applicable, provide a rationale for the use of an adaptive or novel design."  
    * section[otherAspects].title = "Rationale for Other Trial Design Aspects"
    * section[otherAspects].code.text = "section4.2.7-rationale-other-aspects"
    * section[otherAspects]
      * text 1..1
      * text ^comment = "Discuss rationale for any additional aspects of the design not addressed above."
  * section[trialStoppingRules].title = "Trial Stopping Rules"
  * section[trialStoppingRules].code.text = "section4.3-trial-stopping-rules"
  * section[trialStoppingRules]
    * text 1..1
    * text ^comment = "If applicable, describe any trial-specific stopping rules, including guidance on when the trial should be stopped for safety reasons, when a cohort or dose escalation should be terminated, and/or when a given treatment arm should be terminated."
    * section 0..*
    * section ^slicing.discriminator.type = #value
    * section ^slicing.discriminator.path = "code"
    * section ^slicing.rules = #open
    * section contains temporaryHalt 0..1 MS
    * section[temporaryHalt].title = "Temporary Trial Halt"
    * section[temporaryHalt].code.text = "section4.3.1-temporary-trial-halt"
    * section[temporaryHalt]
      * text 1..1
      * text ^comment = "If applicable, describe when any of the stopping rules may result in a temporary halt of enrollment into the trial and criteria for restarting enrollment."
  * section[startEnd].title = "Start of Trial and End of Trial"
  * section[startEnd].code.text = "section4.4-start-and-end"
  * section[startEnd]
    * text 1..1
    * text ^comment = "Define key timepoints in the trial, including trial start and end dates. For example, a key timepoint definition for start of trial might be when the informed consent is signed by the first participant and a key timepoint definition for end of trial might be when participants are no longer being examined or the last participant’s last study assessment has occurred.   If applicable, consider local regulatory requirements for these and other definitions (for example, the first act of recruitment). If appropriate, provide a cross-reference to Section 11.6"
  * section[access].title = "Access to Trial Intervention After End of Trial"
  * section[access].code.text = "section4.5-access-after-trial"
  * section[access]
    * text 1..1
    * text ^comment = "If applicable, describe any possibilities for access to trial intervention, if any, beyond completion of the trial.  Planned extension trials, if described above in Section 4.1 do not need to be repeated."

  