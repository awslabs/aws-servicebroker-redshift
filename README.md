# Redshift-APB

### Plans:
Amazon Redshift - Custom
Amazon Redshift - Production

### Prerequisites:
#### IAM resources: ####
#### These need to already exist within the AWS account the service broker resources are going to be created in. 
OpenShift will need to authenticate to an AWS account and have the required permissions to create and manage resources.
In order to authenticate to the AWS account an IAM user information will be required. 
http://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_access-keys.html

AWS CloudFormation will make use of a IAM service role used to launch the required resources.
This role must have the required permissions to launch the expected resouces, the role needs to be able to be assumed by the CloudFormation service.
http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-iam-servicerole.html

### Use case expectations:

### Retained resources:
Resources retained within the AWS account should this plan be removed.

* No resources are detained for this broker.
