See [Understanding the Group Resource](group.html) for additional information. An example from the QUARTET USA trial will be described here and can be viewed at [QUARTET USA Trial Control Group](Group-375182.html).

The concepts needed to describe the comparator group for the QUARTET USA trial include:

The group is an ‘actual’ group of people.
The group has 30 members.
The group membership criteria is defined as meeting both of 2 characteristics:
1) Being a member of the Enrolled Group for QUARTET USA Trial
2) Assigned to Control group (candesartan 8 mg once daily)

We start by creating a FHIR Group Resource with an ExposureGroup Profile. This instance of Group Resource is being used to define the actual group, either with a quantity or a list of members, therefore the Group.membership element has a value of “enumerated”. For an enumerated Group, a Group.type element is required, and the Group.type element has a value of “person”.

The Group.quantity element has an unsignedInt datatype (allowing integer values without a negative sign) because it is for a simple count of group members. The Group.quantity element has a value of 30 in this example.

The definition of group membership is described with two characteristics, so a Group.combinationMethod element is needed to define how these characteristics are combined. In this case, because both characteristics are required to be met, the Group.combinationMethod element has a value of “all-of”.

The characteristic of being a member of the Enrolled Group for QUARTET USA Trial can be described with a .code element representing “member of” and a .value[x] element representing “ the Enrolled Group for QUARTET USA Trial”.

The corresponding JSON for this characteristic is:

    {
      "code" : {
        "text" : "Member of"
      },
      "valueReference" : {
        "reference" : "Group/372797",
        "type" : "Group",
        "display" : "Enrolled Group for QUARTET USA Trial"
      },
      "exclude" : false,
      "description" : "Enrolled in QUARTET USA Trial"
    }

The characteristic of being assigned to candesartan 8 mg once daily can be described with a .code element representing “assigned to” and a .value[x] element representing “candesartan 8 mg once daily”. Because the candesartan intervention is represented with a Dosage datatype, an ActivityDefinition Resource was selected for its expression.

The corresponding JSON for this characteristic is:

    {
      "code" : {
        "text" : "Assigned to"
      },
      "valueReference" : {
        "reference" : "ActivityDefinition/375181",
        "type" : "ActivityDefinition",
        "display" : "Candesartan 8 mg once daily"
      },
      "exclude" : false,
      "description" : "Assigned to Control group (candesartan 8 mg once daily)"
    }


