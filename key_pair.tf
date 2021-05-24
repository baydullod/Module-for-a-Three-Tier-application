resource "tls_private_key" "mykey" {
 algorithm  = "RSA"
}
resource "aws_key_pair" "generated_key" {
 key_name   = "london_key"
 public_key = tls_private_key.mykey.public_key_openssh 
 depends_on = [
  tls_private_key.mykey
 ]
}
resource "local_file" "key-file" {
 content    = tls_private_key.mykey.private_key_pem
 filename   = "london_key.pem"
}