See [Understanding the Evidence Resource](evidence.html) for additional information. 

An example from the QUARTET USA trial will be described here and can be viewed at [Evidence for Results for Medication Adherence at 12 weeks in QUARTET USA Trial Quadpill group
](Evidence-379723.html).

The concepts needed to describe this evidence include:

1. The study sample observed for this statistical analysis was the QUARTET USA Trial Quadpill group.
2. The outcome measured for this statistical analysis was Medication Adherence at 12 weeks.
3. There were 32 people in the  QUARTET USA Trial Quadpill group.
4. All 32 people were analyzed for this evidence.
5. Only 29 people had data regarding their medication adherence at 12 weeks. Data were missing for 3 people.
6. 21 people in this group had medication adherence at 12 weeks.
7. The summary statistic for this evidence is 65.6%.
8. The ‘correct’ data for this statistic is believed to be 21 affected. The published study report stated 20 were affected, but 21 matches the reported percentage (65.6%) and the results reported at ClinicalTrials.gov for the same study reported that 21 were affected.

The Evidence.variableDefinition element provides a space for reporting what the evidence is about in the form of Group and EvidenceVariable Resources. For a NonComparativeEvidence Profile, there is an expectation to report a Group Resource to represent the sample observed and an EvidenceVariable Resource to represent the outcome that was measured in the sample.  The EvidenceVariable.variableDefinition.variableRole element is a required code for each instance, using a ‘population’ and an ‘outcome’ code in this case.
The corresponding JSON is:

 "variableDefinition" : [
    {
      "variableRole" : "population",
      "observed" : {
        "reference" : "Group/375175",
        "type" : "Group",
        "display" : "QUARTET USA Trial Quadpill group"
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
The sample size can be represented with multiple elements in case there is a need to distinguish between the number in the sample, the number analyzed, and the number with known data.  In this case, the Evidence.statistic.sampleSize element looks like:

  "sampleSize" : {
        "numberOfParticipants" : 32,
        "numberAnalyzed" : 32,
        "knownDataCount" : 29
      }
    
The number affected is reported in the Evidence.statistic.numberAffected element.

The statistical measure of 65.6% is reported in highly structured form including a codeable concept to denote the statistic type as a percentage and a quantity which in this case has a unit of measure that is %. The corresponding JSON with Evidence.statistic.statisticType and Evidence.statistic.quantity looks like:

    "statisticType" : {
        "coding" : [
          {
            "system" : "https://fevir.net/sevco",
            "code" : "STATO:0000639",
            "display" : "percentage"
          }
        ]
      },
      "quantity" : {
        "value" : 65.6,
        "unit" : "%",
        "system" : "http://unitsofmeasure.org",
        "code" : "%"
      }

Despite structured data for many components, situations like finding different values in different data sources requires appending human-readable annotations to the data.  This is found in an Evidence.statistic.note element.
