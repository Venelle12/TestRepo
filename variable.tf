variable "ami_id" {
    type = map(string)
    default = {
      "prd" = "ami-0ed9277fb7eb570c9"
      "stg" = "ami-0ed9277fb7eb570c9"
      "dev" = "ami-061ac2e015473fbe2" # us-east-1 Rocky 8 Linux ami and testing
    }

}
 variable "region" {
     type = string
     default = "us-east-1"

 }

 variable "type_instance" {
     type = map(string)
     default = {
       "prd" = "t2.micro"
       "stg" = "t2.micro"
       "dev" = "t2.micro"
     }

 }

 variable "terraform_Env" {
     type = string

 }
variable "mandatory_tags" {
    type = map(map(string))
    default = {
      "prd" = {
        "Env" = "prd"
      },
      "stg" = {
          "Env" = "stg"
      }
      "dev" = {
          "Env" = "dev"
      }
    }

}
