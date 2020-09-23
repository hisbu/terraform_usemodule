module "myec2Instance" {
    source = "github.com/hisbu/terraformEc2Module"

    INSTANCE_COUNT      = 3
    NAME                = "webserver"

    AMI_ID              = var.AWS_AMIS[var.AWS_REGION]
    INSTANCE_TYPE       = var.AWS_INSTANCE_TYPE
    SUBNET_ID           = "subnet-ba3393dc"
    SECURITY_GROUPS_ID  = ["sg-02db9c6fc089da642"]
    KEY_NAME            = aws_key_pair.keymodule.key_name
}