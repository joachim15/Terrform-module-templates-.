


#Create aws instance with existing key_pair., just specify the  key_pair name in the vars.tf file.


resource "aws_instance" "ec2_template" {
  ami       = "ami-00e87074e52e6c9f9"
  instance_type = var.instance_type
   count         = var.instance_count
  key_name      = var.key_name
  tags= {
    Name = var.terraform_instance[count.index]
  }
}



# To create instances without an existing , follow the steps below to provision a new keypair.
 
1. Run ssh-keygen -f tf_ec2_key (NB: replace tf_ec2_key with named you intend to give your key_pair). This command will generate your ssh-key and saved it as "tf_ec2_key.pub"
2. cat tf_ec2_key and copy the public_key.
3. vim vars.tf and paste  ssh-key as default for variable "public_key" .or you can also refer the file instead of pasting the content.

resource "aws_key_pair" "tf_ec2_key" {
  key_name = var.key_name
  public_key = var.public_key
   count = "${length(var.key_pair_names)}"
}



# Create elastic ips and attach them to number instances you specified in vars.tf under instant_count. 

resource "aws_eip" "eip_manager" {
    instance   = "${element(aws_instance.ec2_template.*.id,count.index)}"
    count = "${var.manager_count}"
    vpc = true
    }
