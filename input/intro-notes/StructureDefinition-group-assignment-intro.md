See [Understanding the EvidenceVariable Resource](evidencevariable.html) for additional information. 

An example from the QUARTET USA trial will be described here and can be viewed at [GroupAssignment: Quadpill vs. Candesartan](Group-375183.html).

The concepts needed to describe the group assignment for the QUARTET USA trial include:

1. This is the actual variable that was measured for analysis.
2. This variable is handled as having one of two categorical values.
3. The two categorical values that are possible for this variable are the exposure group (Quadpill) and the comparator group (Candesartan).

To communicate this is the actual variable, the EvidenceVariable.actual element has a boolean value of true:

"actual" : true
Because the definition of this variable is literally described in the EvidenceVariable.handling and EvidenceVariable.category elements, the EvidenceVariable.definition element is completed with a specific codeable concept value:

 "definition" : {
    "concept" : {
      "coding" : [
        {
          "system" : "https://fevir.net/resources/CodeSystem/179423",
          "code" : "defined-in-handling-and-category",
          "display" : "Defined in handling and category elements"
        }
      ]
    }
  }

The handling of a group assignment variable may be coded as dichotomous if there are 2 possible assignments or polychotomous if there are 3 or more possible assignments.  In this example with 2 possible assignments, the EvidenceVariable.handling element looks like:

  "handling": {
    "coding": [
      {
        "system": "http://hl7.org/fhir/variable-handling",
        "code": "dichotomous",
        "display": "dichotomous variable"
      }
    ]
  }

In prior versions of FHIR, the EvidenceVariable.handling element used a code datatype instead of a CodeableConcept datatype so looked like:

"handling": "dichotomous"

Each possible group assignment is represented as an instance in the EvidenceVariable.category element, using EvidenceVariable.category.name for a label for the category and EvidenceVariable.category.valueReference to reference the Group Resource that defines the category. The 2 groups are shown as:

"category" : [
    {
      "name" : "Quadpill once daily",
      "valueReference" : {
        "reference" : "Group/375175",
        "type" : "Group",
        "display" : "QUARTET USA Trial Quadpill group"
      }
    },
    {
      "name" : "Candesartan 8 mg once daily",
      "valueReference" : {
        "reference" : "Group/375182",
        "type" : "Group",
        "display" : "QUARTET USA Trial Control Group"
      }
    }
  ]
