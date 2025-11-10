See [Understanding the Group Resource](group.html) for additional information. An example from the QUARTET USA trial will be described here and can be viewed at [Enrolled Group for QUARTET USA Trial](Group-372797.html).

The concepts needed to describe the enrolled group for the QUARTET USA trial include:

1. The group is an ‘actual’ group of people.
2. The group has 62 members.
3. The group membership criteria is defined in a Group Resource named [Eligibility Criteria for QUARTET USA Trial](Group-372778.html).

We will start by creating a FHIR Group Resource with a StudyGroup Profile. This instance of Group Resource is being used to define the actual group, either with a quantity or a list of members, therefore the membership element has a value of “enumerated”. For an enumeratedl Group, a type element is required, and the type element has a value of “person”.

The quantity element has an unsignedInt datatype because it is for a simple count of group members. The quantity element has a value of 62 in this example.

The definition of group membership is described in a single characteristic, so there is no characteristicCombination element. Because this single characteristic is defined fully in a different Group Resource, we use the valueReference element to reference it, and the code element describes its role as the value of the “Eligibility Criteria”.

  "characteristic" : [
    {
      "code" : {
        "text" : "Eligibility Criteria"
      },
      "valueReference" : {
        "reference" : "Group/372778",
        "type" : "Group",
        "display" : "Eligibility Criteria for QUARTET USA Trial"
      },
      "exclude" : false
    }
  ]



