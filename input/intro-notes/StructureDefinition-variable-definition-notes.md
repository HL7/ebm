See [Understanding the EvidenceVariable Resource](evidencevariable.html) for additional information. 

Examples from the QUARTET USA trial will be described here and can be viewed at [Medication Adherence at 12 weeks](Group-375201.html) and [Adverse event free and hypertension control at 12 weeks
](Group-375278.html).

These 2 VariableDefinition examples are outcome measures that were used in the QUARTET USA trial.

The concepts needed to describe the outcome measure of ‘Medication Adherence at 12 weeks’ include:

1. The definition of the outcome is coded with a term that means ‘medication adherence’
2. The definition of ‘medication adherence’ is modified in this instance to more explicitly require > 80% adherence to be met.
3. The variable will be handled as either met or not met when recording the data.
4. The timing of this variable reflects 12 weeks from the start of the trial.

We start by creating a FHIR EvidenceVariable Resource with a VariableDefinition Profile. Because the definition is expressed with a codeable concept, this example uses EvidenceVariable.definition.concept as follows:

    "definition": {
      "concept": {
            "coding": [
                {
                    "system": "http://snomed.info/sct",
                    "code": "1156699004",
                    "display": "Complies with drug therapy (finding)"
                }
            ],
            "text": "Medication Adherence defined as 80% or greater use measured by pill count"
        }
    }

The explicit definition of “80% or greater use measured by pill count”, though shared in EvidenceVariable.definition.concept.text, is not machine-interpretable, so this can be expressed with an EvidenceVariable.definitionModifier element:

    "definitionModifier": [
        {
          "code": {
                  “coding": [
                      {
                          "system": "http://snomed.info/sct",
                          "code": "266710000",
                          "display": "Drugs not taken/completed"
                      }
                  ],
                  "text": "measured by pill count"
              },
          "valueQuantity": {
                  "comparator": "<=",
                  "value": 20,
                  "unit": "%",
                  "system": "http://unitsofmeasure.org",
                  "code": "%"
            }
        }
      ]

The variable will be handled as either met or not met when recording the data, so this is coded as a boolean variable in the EvidenceVariable.handling element:

    "handling": {
      "coding": [
        {
          "system": "http://hl7.org/fhir/variable-handling",
          "code": "boolean",
          "display": "boolean variable"
        }
      ]
    }

In prior versions of FHIR, the EvidenceVariable.handling element used a code datatype instead of a CodeableConcept datatype so looked like:

"handling": "boolean"

The timing of this variable reflects 12 weeks from the start of the trial, so this is expressed in the EvidenceVariable.timing element:

    "timing": {
      "contextCode": {
        "coding": [
          {
            "system": "http://snomed.info/sct",
            "code": "709491003",
            "display": "Enrollment in clinical trial (procedure)"
          }
        ]
      },
      "offsetDuration": {
        "value": 12,
        "unit": "weeks",
        "system": "http://unitsofmeasure.org",
        "code": "wk"
      },
      "text": "at 12 weeks"
    }


The outcome measure of ‘Adverse event free and hypertension control at 12 weeks’ introduces an outcome for which the EvidenceVariable.definition.concept (defining the variable with a CodeableConcept) and EvidenceVariable.definitionModifier are not sufficient to express the definition in structured form. The definition of this outcome is a combination of 2 characteristics (free from adverse events AND hypertension control), and the structure to support a combination of characteristics is found in the Group Resource. We therefore define this variable with a reference to a Group Resource using a ConceptualCohortDefinition Profile.

The corresponding JSON for the EvidenceVariable.definition element is:


    "definition": {
        "reference": {
              "reference": "Group/375279",
              "type": "Group",
              "display": "Adverse event free and hypertension control"
        }
      }
 