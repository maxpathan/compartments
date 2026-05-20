  compartments = {
    "project1" = {
      name     = "Project1"
      description = "first project"
      parent_key  = null # Created directly under the tenancy root
    },
    "project2" = {
      name        = "Project2"
      description = "second project"
      parent_key  = null # Nested inside the Production compartment
    },
    "project2nw" = {
      name        = "network"
      description = "P2 Network"
      parent_key  = "project2"
    },
    "project1nw" = {
      name        = "network"
      description = "P1 Network"
      parent_key  = "project1"
    }
  }

## OCI provider configuration 

tenancy_ocid     = "ocid1.tenancy.oc1..aaaaaaaakxo6z7qpps2xdwdeu2xwwder2bj6ul7kicueqlw56qlzapc6733a" # Tenancy OCID
user_ocid        = "ocid1.user.oc1..aaaaaaaayzjl7lyc7c27s3unv26svb24tis34cyvkxmttmzaw4c25fkmmfoa"    # User OCID
fingerprint      = "48:c5:cf:81:0e:8a:8d:a7:f1:14:25:ca:7a:1a:e9:ba"                                 # User fingerprint
private_key_path = "/Users/mazhar/CloudTraining/keys/hatfield87.pem"                                 # Local path to private API key
region           = "uk-london-1"                                                                     # Region where resources will be deployed
