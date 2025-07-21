Extension: ResearchStudyIsLowInterventionTrial
Id: research-study-is-low-intervention-trial
Description: "Is a low intervention clinical trial according to article 2 (2)(3) of the Clinical Trials Regulation in Europe."
* ^extension[$ext-fmm].valueInteger = 1
* ^extension[$ext-wg].valueCode = #cds
* ^extension[$ext-standards-status].valueCode = #trial-use
* ^context.type = #element
* ^context.expression = "ResearchStudy"
* value[x] only boolean
* . ^short = "Is a low intervention clinical trial."
* . ^definition = "Is a low intervention clinical trial according to article 2 (2)(3) of the Clinical Trials Regulation in Europe."
