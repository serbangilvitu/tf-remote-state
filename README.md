# tf-remote-state
Terraform Remote State Configuration

## AWS - using an S3 Backend

### Init
```terraform init```

### Plan
```terraform plan -var s3_bucket=<bucket-name> -var aws_region=<aws-region> -var s3_bucket_tags='{Name="Terraform Remote State", Environment="Dev"}' -out=tfplan -input=false```

### Apply
For example: s3_bucket=tf-test-20180406 aws_region=eu-west-1
The list of tags can be customized as required.

```terraform apply "tfplan"```
