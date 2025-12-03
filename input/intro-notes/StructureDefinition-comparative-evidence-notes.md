See [Understanding the Evidence Resource](evidence.html) for additional information.

An example from the QUARTET USA trial will be described here and can be viewed at [Evidence for Results for Medication Adherence at 12 weeks in GroupAssignment: Quadpill vs. Candesartan](Evidence-397481.html).

The concepts needed to describe this evidence include:

1. The study sample observed for this statistical analysis was the Enrolled Group for QUARTET USA Trial.
2. The comparison evaluated is a group assignment to either Quadpill or Candesartan.
3. The outcome measured for this statistical analysis was Medication Adherence at 12 weeks.
4. There were 62 people in the Enrolled Group for QUARTET USA Trial.
5. Only 53 people had data regarding their medication adherence at 12 weeks. Data were missing for 9 people.
6. The summary statistic for this evidence is odds ratio 0.37.
7. This odds ratio has a 95% confidence interval of 0.19 to 2.08.
8. This odds ratio is estimated with a p-value of 0.444.

The Evidence.variableDefinition element provides a space for reporting what the evidence is about in the form of Group and EvidenceVariable Resources. For a ComparativeEvidence Profile, there is an expectation to report a Group Resource to represent the sample observed, an EvidenceVariable Resource (GroupAssignment Profile) to report the groups being compared, and an EvidenceVariable Resource to represent the outcome that was measured in the sample.  The EvidenceVariable.variableDefinition.variableRole element is a required code for each instance, using a ‘population’, 'exposure', and an ‘outcome’ code in this case.
The corresponding JSON is:

    "variableDefinition" : [
        {
          "variableRole" : "population",
          "observed" : {
            "reference" : "Group/372797",
            "type" : "Group",
            "display" : "Enrolled Group for QUARTET USA Trial"
          }
        },
        {
          "variableRole" : "exposure",
          "comparatorCategory": "Candesartan 8 mg once daily",
          "observed" : {
            "reference" : "EvidenceVariable/375183",
            "type" : "EvidenceVariable",
            "display" : "GroupAssignment: Quadpill vs. Candesartan"
          }
        },
        {
          "variableRole" : "outcome",
          "observed" : {
            "reference" : "EvidenceVariable/375201",
            "type" : "EvidenceVariable",
            "display" : "Medication Adherence at 12 weeks"
          }
        }
      ]

The sample size can be represented with multiple elements in case there is a need to distinguish between the number in the sample and the number with known data.  In this case, the Evidence.statistic.sampleSize element looks like:

    "sampleSize" : {
          "numberOfParticipants" : 62,
          "knownDataCount" : 53
        }
    
The statistical measure of odds ratio 0.37 is reported in highly structured form including a codeable concept to denote the statistic type as an odds ratio and a quantity which in this case has a value of 0.37 without units. The corresponding JSON with Evidence.statistic.statisticType and Evidence.statistic.quantity looks like:

    "statisticType" : {
        "coding" : [
          {
            "system" : "https://fevir.net/sevco",
            "code" : "STATO:0000182",
            "display" : "odds ratio"
          }
        ]
      },
    "quantity" : {
        "value" : 0.37
      }

The associated statistics related to the odds ratio (95% confidence interval and p-value in this example) are considered attribute estimates as they are estimates of attributes of the primary statistic. The Evidence.statistic.attributeEstimate element is structured for such attribute estimates:

    "attributeEstimate": [
        {
          "type": {
            "coding": [
              {
                "system": "https://fevir.net/sevco",
                "code": "STATO:0000196",
                "display": "confidence interval"
              }
            ]
          },
          "level": 0.95,
          "range": {
            "low": {
              "value": 0.19
            },
            "high": {
              "value": 2.08
            }
          }
        },
        {
          "type": {
            "coding": [
              {
                "system": "https://fevir.net/sevco",
                "code": "STATO:0000700",
                "display": "p-value"
              }
            ]
          },
          "quantity": {
            "value": 0.444
          }
        }
      ]
