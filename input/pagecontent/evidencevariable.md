### Understanding the EvidenceVariable Resource

The <b>EvidenceVariable Resource</b> describes a single variable used in a statistical analysis.

Evidence may be reported for different types of knowledge. One commonly used format for expression of what evidence is about is the "PICO" format. PICO stands for:

Population - the population within which exposures and outcomes are being considered

Intervention - the conditional state or exposure state being described for which one is expressing the risk of or effect on an outcome

Comparator - the alternative conditional state or alternative exposure state when one is comparing states for the effect on an outcome

Outcome - the result or effect of an intervention or exposure in a population

Sometimes PECO is used instead of PICO to emphasize evaluation of exposures that may not be interventions. Sometimes PICOT is used to express timing of the outcome assessment.

PICO (and its variants like PECO or PICOT) is a universal acronym used in evidence-based medicine communities to clearly express research questions and evidence findings.

The <b>EvidenceVariable Resource</b> allows expression of the components of a PICO question in codeable and reusable formats. The EvidenceVariable.definition element has a CodeableReference datatype which can define the PICO component as a concept and/or reference to a Group Resource for a structured definition.

The <b>EvidenceVariable Resource</b> has a handling element to express the statistical handling as continuous, dichotomous, ordinal, or polychotomous.

For categorical handling (dichotomous, ordinal, or polychotomous), the EvidenceVariable.category element can be used to name each category and express the value that defines the category.

### Profiles of EvidenceVariable Resource

The **[VariableDefinition Profile][VariableDefinition]** is a base for all other EvidenceVariable Profiles. The **[VariableDefinition Profile][VariableDefinition]** adds extensions (classifier, definitionModifier, conditional, timing, period) for expressing when and how the observations of the variable are obtained and extensions (dataStorage, constraint, missingDataMeaning, unacceptableDataMeaning) for expressing how the data values for observations of the variable are derived and stored. The **[VariableDefinition Profile][VariableDefinition]** requires the use of the handling element. The **[VariableDefinition Profile][VariableDefinition]** also adds some extensions (citeAs, relatesTo) for use until these elements become part of the version of the R6 specification underlying the implementation guide.

The **[GroupAssignment Profile][GroupAssignment]** is a Profile of **[VariableDefinition][VariableDefinition]** used for **[ComparativeEvidence][ComparativeEvidence]** (for the variableDefinition in the role of 'exposure'). The **[GroupAssignment Profile][GroupAssignment]** is used to classify an <b>EvidenceVariable</b> as an exposure managed as a categorical variable. The variable definition is 'Defined by handling and category elements' and there must be at least 2 category element instances. The category element instances must have a name, and the name of one of these category element instances will be used in the **[ComparativeEvidence][ComparativeEvidence]** (in variableDefinition.comparatorCategory) to express the reference value for comparison.

The **[ParticipantFlowEvidenceVariable Profile][ParticipantFlowEvidenceVariable]** is a Profile of **[VariableDefinition][VariableDefinition]** used to describe outcome measures for completion and non-completion of participation in a research study. For simplicity the handling element always has a value of 'boolean'.

The **[ParticipantFlowReasonEvidenceVariable Profile][ParticipantFlowReasonEvidenceVariable]** is a Profile of **[VariableDefinition][VariableDefinition]** used to describe outcome measures for reasons for non-completion of participation in a research study. The handling element always has a value of 'polychotomous'.

The **[DichotomousIntendedOutcome Profile][DichotomousIntendedOutcome]** is a Profile of **[VariableDefinition][VariableDefinition]** used to provide a common variable definition for the 'intended' variable in the role of 'outcome' in <b>Evidence Resources</b>, to allow mapping evidence with different observed variables that relate to the same intended outcome.

{& lang-fragment link-list.md %}
