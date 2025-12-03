See [Understanding the Group Resource](group.html) for additional information. The ExposureGroup Profile is named ‘ExposureGroup’ rather than ‘InterventionGroup’ because it may be used in observational research as well as interventional research. When describing interventional research, such as a clinical trial, the exposures are often called interventions.

An example from the QUARTET USA trial will be described here and can be viewed at [QUARTET USA Trial Quadpill group](Group-375175.html).

The concepts needed to describe the intervention group for the QUARTET USA trial include:

1. The group is an ‘actual’ group of people.
2. The group has 32 members.
3. The group membership criteria is defined as meeting both of 2 characteristics:
   a. Being a member of the Enrolled Group for QUARTET USA Trial
   b. Assigned to Quadpill Intervention

We start by creating a FHIR Group Resource with an ExposureGroup Profile. This instance of Group Resource is being used to define the actual group, either with a quantity or a list of members, therefore the Group.membership element has a value of “enumerated”. For an enumerated Group, a Group.type element is required, and the Group.type element has a value of “person”.

The Group.quantity element has an unsignedInt datatype (allowing integer values without a negative sign) because it is for a simple count of group members. The Group.quantity element has a value of 32 in this example.

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

The characteristic of being assigned to Quadpill intervention can be described with a .code element representing “assigned to” and a .value[x] element representing “Quadpill intervention”. Because the Quadpill intervention is represented with a Dosage datatype, an ActivityDefinition Resource was selected for its expression.

The corresponding JSON for this characteristic is:

      {
        "code" : {
          "text" : "Assigned to"
        },
        "valueReference" : {
          "reference" : "ActivityDefinition/375159",
          "type" : "ActivityDefinition",
          "display" : "Quadpill once daily"
        },
        "exclude" : false,
        "description" : "Assigned to Quadpill Intervention"
      }