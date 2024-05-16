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

The **[VariableDefinition Profile][VariableDefinition]** is a base for all other EvidenceVariable Profiles. The **[VariableDefinition Profile][VariableDefinition]** adds an extension for the definition as a CodeableReference datatype (consistent with FHIR version R6) and removes the characteristic element used in FHIR version R5 (and replaced with reference to Group Resource from the definition.reference element). The **[VariableDefinition Profile][VariableDefinition]** requires the use of the handling element and adds an extension to the category element (valueReference) to enable reference to a Group Resource for structured definitions of categories that are not able to be expressed adequately with CodeableConcept, Quantity or Range datatypes.

The **[GroupAssignment Profile][GroupAssignment]** is a Profile of **[VariableDefinition][VariableDefinition]** used for **[ComparativeEvidence][ComparativeEvidence]** (for the variableDefinition in the role of 'exposure'). The **[GroupAssignment Profile][GroupAssignment]** is used to classify an <b>EvidenceVariable</b> as an exposure managed as a categorical variable. The variable definition is 'Defined by handling and category elements' and there must be at least 2 category element instances. The category element instances must have a name, and the name of one of these category element instances will be used in the **[ComparativeEvidence][ComparativeEvidence]** (in variableDefinition.comparatorCategory) to express the reference value for comparison.

The **[ParticipantFlowEvidenceVariable Profile][ParticipantFlowEvidenceVariable]** is a Profile of **[VariableDefinition][VariableDefinition]** used to describe outcome measures for completion and reasons for non-completion of participation in a research study. For simplicity the handling element always has a value of 'dichotomous'.

{% include link-list.md %}
