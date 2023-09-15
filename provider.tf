terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.16.0"
    }
  }
}

provider "aws" {
  region     = "us-east-1"
  access_key = "AKIARAZOXYDNASTP3X4R"
  secret_key = "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"
}

resource "aws_key_pair" "key-tf" {
  key_name   = "key-tf"
  public_key = file("${path.module}/id_rsa.pub")
  }
  ##### path.module kay karta wo simple tumher jo module hai on ko perint karta hai
  output "keyname" {
    value = "${aws_key_pair.key-tf.key_name}"
  }