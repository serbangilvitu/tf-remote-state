# tf-remote-state
Terraform Remote State Configuration

## AWS - using an S3 Backend

### Init
```terraform init```

### Plan
```terraform plan -var s3_bucket=<bucket-name> -var aws_region=<aws-region> -var s3_bucket_tags='{Name="Terraform Remote State", Environment="Dev"}' -out=tfplan -input=false```

For example: _s3_bucket=tf-test-20180406_ and  _aws_region=eu-west-1_

The list of tags can be customized as required.

### Apply

```terraform apply "tfplan"```
