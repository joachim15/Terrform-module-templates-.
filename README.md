# Terrform-module-templates-.


##Create Ec2 instances ,Eip and assign new key_pair in case non is present.

STEP 1. Clone the repo.

STEP 2. vi modules/ec2_template/vars.tf to import your values.

STEP 3. vi modules/ec2_template/main.tf to specify instant name .

STEP 4  cd modules/aws-ec2/ . Is not secure to save your AWS_SECRET_ACCESS_KEY and AWS_ACCESS_KEY_ID in provider.tf file but you can import or store them in the vault.
         command to import =export AWS_ACCESS_KEY_ID=""
                            export AWS_SECRET_ACCESS_KEY=""
                            export AWS_DEFAULT_REGION="us-east-1"

STEP 4. RUN - terraform init, terraform fmt , terraform plan and terraform apply.

