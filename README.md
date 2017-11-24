# Amazon RedShift for the AWS Service Broker
Provision, manage and connect to [Amazon RedShift](https://aws.amazon.com/redshift/).

## Prerequisites

**IAM resources** - See the [AWS Service Broker Requirements](https://github.com/awslabs/aws-servicebroker-documentation/blob/master/Overview.md#requirements) for details
**VPC** - A VPC ID will be requested during launch, A VPC with unused CIDR space is required as the plan will create the required subnets.

## Plans

### redshift-custom
Exposes all available parameters for the MySQL RDS engine.

### redshift-prod
Best practice RedShift plan for production by setting the following parameters:

    DBName: automatic
    MasterUsername: master
    MasterUserPassword: automatic
    AllowVersionUpgrade: false
    PortNumber: 15439
    NumberOfAvailabilityZones: 2
    AvailabilityZones: automatic
    CidrSize: 27
    CidrBlocks: automatic
    BackupRetentionPeriod: 35
    ClusterType: multi-node
    LogBucketName: ''
    StorageEncrypted: true

## Retained resources

No resources are retained. The RedShift cluster, data and all associated resources will be fully removed if the Service Instance is deleted.

## Resources

[Getting Started With OCP and the AWS Service Broker](https://github.com/awslabs/aws-servicebroker-documentation/blob/master/getting-started.md)  
[AWS Service Broker Overview](https://github.com/awslabs/aws-servicebroker-documentation/blob/master/Overview.md)  
[FAQ](https://github.com/awslabs/aws-servicebroker-documentation/blob/master/FAQ.md)  
[Troubleshooting](https://github.com/awslabs/aws-servicebroker-documentation/blob/master/Troubleshooting.md)  

## License

This library is licensed under the Apache 2.0 License.