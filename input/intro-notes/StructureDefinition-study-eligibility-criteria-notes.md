See [Understanding the Group Resource](group.html) for additional information. An example from the QUARTET USA trial will be described here and can be viewed at [Eligibility Criteria for QUARTET USA Trial](Group-372778.html).

The inclusion and exclusion criteria in the Quartet USA Trial that need to be represented in FHIR are as follows:

Inclusion Criteria:

* Adults (≥18 years)
* Spanish or English speaker.
* Previous documentation within the past 24 months of hypertension or high blood pressure (SBP 130-179 mmHg or DBP 80-109 mmHg) from general practitioner, pharmacist or health care professional (e.g., medical assistant, physician or nurse).
* Either: 1) Untreated (automated) clinic SBP 140-179 or DBP 90-109 mmHg in the last 12 weeks, OR 2) Monotherapy with clinic SBP 130-159 or DBP 85-99 mmHg in the last 12 weeks.
* Either: 1) Treatment naïve, OR 2) Currently not on treatment (not take in last 4 weeks), OR 3) Currently taking 1 BP lowering drug (ACE, ARB, CCB, thiazide- or thiazide-like diuretic, BB, MRA, alpha blocker) at any dose.
* Research grade blood pressure measurement (baseline mean) SBP>= 115 mmHg and DBP >= 60 mmHg

Exclusion Criteria:

* Known contraindication to candesartan, amlodipine, indapamide or bisoprolol.
* Previous diagnosis of coronary artery disease, stroke, or heart failure.
* Presence of significant proteinuria (based on 3+ proteinuria via spot urinalysis or >300mg/dL of proteinuria based on random urinary albumin-to-creatinine ratio testing of 300 mg/g)
* Evidence of secondary cause of hypertension e.g., renal artery stenosis; significant renal impairment (eGFR <50 ml/min/1.73 m2), raised serum potassium (above lab normal limit of 5.5 mEq/L).
* Women who are pregnant, breast feeding or of childbearing potential and are not using and do not plan to continue using medically acceptable form of contraception throughout the study (pharmacological or barrier methods).
* Concomitant illness, physical impairment or mental condition which in the opinion of the study team / primary care physician could interfere with the conduct of the study including outcome assessments.
* Participation in a concurrent interventional medical investigation or pharmacologic clinical trial. Patients in observational, natural history or epidemiological studies not involving an intervention are eligible.
* Participant's responsible primary care or other responsible physician believes it is not appropriate for participant to switch current monotherapy.
* Inability or unwillingness to provide written informed consent.
* Unable to complete study procedures.

We start by creating a FHIR Group Resource with a StudyEligibilityCriteria Profile. This instance of Group Resource is being used to define the criteria for group membership, therefore the Group.membership element has a value of “definitional”. For a definitional Group, a Group.type element is required, and the Group.type element has a value of “person”.

There are 6 inclusion criteria and 10 exclusion criteria in this study. 

The individual must meet all of these 16 criteria in order to be included in the study. Therefore the Group.combinationMethod element will have a value of “all-of”.

The first criterion, Adults (≥18 years), can be fully represented as structured data and shows how a Group.characteristic element is used.  The Group.characteristic element has 3 required elements: .code, .value[x], and .exclude.

The .code element uses a CodeableConcept datatype and represents the type of characteristic. In this first criterion, the type of characteristic is “Age” and a SNOMED-CT term is expressed as:

    “code”: {
            "coding" : [
              {
                "system" : "http://snomed.info/sct",
                "code" : "397669002",
                "display" : "Age"
              }
            ]
        }

The .value[x] element could be expressed with a number of different datatypes: CodeableConcept, Quantity, and Range are commonly used for expression matching values of “Age”. In this example (18 years or older), the Quantity datatype is selected and the corresponding JSON is:

    "valueQuantity" : {
            "value" : 18,
            "comparator" : ">=",
            "unit" : "years",
            "system" : "http://unitsofmeasure.org",
            "code" : "a"
          }

This code/value pairing (Age >= 18 years) is an inclusion criterion (not an exclusion criterion), so the .exclude element will have a value of “false”.

Optionally, the Group.characteristic element can have a human-readable description, so we included a .description element with a value of “Adults (≥18 years)”.

Another inclusion criterion (“Previous documentation within the past 24 months of hypertension or high blood pressure (SBP 130-179 mmHg or DBP 80-109 mmHg) from general practitioner, pharmacist or health care professional (e.g., medical assistant, physician or nurse).”) shows use of unstructured text-based descriptors for expressing the Group.characteristic values instead of explicit codes from structured terminologies.   The phrase “within the past 24 months” is recognized as a timing factor and expressed within a .timing element:

    {
        "code" : {
          "text" : "Defined by CodeableConcept"
        },
        "valueCodeableConcept" : {
          "text" : "Previous documentation of hypertension or high blood pressure (SBP 130-179 mmHg or DBP 80-109 mmHg) from general practitioner, pharmacist or health care professional (e.g., medical assistant, physician or nurse)."
        },
        "exclude" : false,
        "description" : "Previous documentation within the past 24 months of hypertension or high blood pressure (SBP 130-179 mmHg or DBP 80-109 mmHg) from general practitioner, pharmacist or health care professional (e.g., medical assistant, physician or nurse).",
        "timing" : [
          {
            "text" : "within the past 24 months"
          }
        ]
      }

Another inclusion criterion (“Research grade blood pressure measurement (baseline mean) SBP>= 115 mmHg and DBP >= 60 mmHg”) was separated into 2 criteria (SBP and DBP) to facilitate expression in more structured data.  The SBP criterion (example shown below) uses a LOINC code for mean SBP as the value of the characteristic.code element and >= 115 mmHg as the characteristic.valueQuantity element value. The “baseline” phrase in the original inclusion criterion is interpreted to mean a timing “At baseline” and that is expressed in structured form as Group.characteristic.timing.offsetDuration.value = 0. Structurally, this is using a Duration datatype for the .offset[x] element within the .timing element, and the .offsetDuration element has a value of 0 with no units because units are irrelevant with a value of 0.

    {
        "code" : {
          "coding" : [
            {
              "system" : "http://loinc.org",
              "code" : "96608-5",
              "display" : "Systolic blood pressure mean"
            }
          ]
        },
        "valueQuantity" : {
          "value" : 115,
          "comparator" : ">=",
          "unit" : "millimeters of mercury (mm Hg)",
          "system" : "http://unitsofmeasure.org",
          "code" : "mm[Hg]"
        },
        "exclude" : false,
        "description" : "Research grade blood pressure measurement (baseline mean) SBP>= 115 mmHg",
        "timing" : [
          {
            "offsetDuration" : {
              "value" : 0
            },
            "text" : "At Baseline"
          }
        ]
      }

An exclusion criterion (“No Known contraindication to candesartan, amlodipine, indapamide or bisoprolol.”) is expressed with Group.characteristic.exclude having a value of true. This example also shows use of the codeOptions extension in the valueCodeableConcept element to provide a value set (set of 2 or more codeable concepts) to provide the .value[x] part of this characteristic definition.

    {
        "code" : {
          "coding" : [
            {
              "system" : "http://loinc.org",
              "code" : "64100-1",
              "display" : "Contraindication"
            }
          ]
        },
        "valueCodeableConcept" : {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/StructureDefinition/codeOptions",
              "valueCanonical" : "https://fevir.net/resources/ValueSet/383203"
            }
          ],
          "text" : "candesartan, amlodipine, indapamide or bisoprolol"
        },
        "exclude" : true,
        "description" : "Known contraindication to candesartan, amlodipine, indapamide or bisoprolol."
      }
