#/bin/sh
aws cloudformation create-stack \
    --template-body file://zookeeper.json \
    --stack-name KAFKAZOO1 \
    --capabilities CAPABILITY_IAM \
    --parameters \
	ParameterKey=AccessKeyId,ParameterValue=$AWS_ID \
	ParameterKey=SecretKey,ParameterValue=$AWS_SECRET \
        ParameterKey=KeyName,ParameterValue=kafka \
        ParameterKey=ExhibitorS3Bucket,ParameterValue=cjo-kafka-exhibitor \
        ParameterKey=ExhibitorS3Region,ParameterValue=eu-west-1 \
        ParameterKey=ExhibitorS3Prefix,ParameterValue=KAFKA1 \
        ParameterKey=VpcId,ParameterValue=vpc-171ad470 \
        ParameterKey=Subnets,ParameterValue='subnet-e43f35bc' \
        ParameterKey=AdminSecurityGroup,ParameterValue=sg-f9122d80
