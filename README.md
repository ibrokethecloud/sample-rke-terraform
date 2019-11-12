# sample-rke-terraform

Sample terraform code to provision a RKE cluster.

### Dependencies:
* Terraform version > 0.12 
* RKE 

Needs terraform version >= 0.12 to utilise the templatefile functionality.

### Objective
The code uses provisions multiple compute nodes and then extracts the IP address for the same,
and passes them to a templatefile function.

This templatefile is used to render a RKE cluster.yaml.

A *null_resource* is then used to perform **rke up**.

The generated kube_config and rke state file are read back my the terraform and stored in output variables.

This allows these objects to be stored in the terraform state. Once this is done a local copy is no longer required.

A user wishing to adminster the cluster or perform rke management operations needs to run `terraform output` to extract the config files.

### To Do:
* Modularise the code
* Provisioners for AWS, Azure and GCP.