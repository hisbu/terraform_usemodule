resource "aws_key_pair" "keymodule" {
  key_name    = "keymodule"
  public_key  = file(var.PATH_TO_PUBLIC_KEY)
}