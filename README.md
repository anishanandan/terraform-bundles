Use the command below to clone a specific branch:

You should clone and build from the tag relating to the version of Terraform you plan to use. For example, use the v0.12 tag to build a version of terraform-bundle compatible with Terraform v0.12*.
v0.13 tag to build a version of terraform-bundle compatible with Terraform v0.13* and so on

# git clone -b v0.12 https://github.com/hashicorp/terraform.git

# cd terraform

Verify that you are on right branch

# git branch

Make sure you have GO package installed

If not install GO from the below URL

https://golang.org/

Then 

# cd terraform

# go install .

to get the GO env path use the command below

# go env GOPATH

Then, Install terraform bundle using the command below

# go install ./tools/terraform-bundle


You need to create Terraform-bundle.hcl  keep it in any location and run the below command. 



# go env GOPATH


Copy the path from the above command for linux:

Path/bin/terraform-bundle package -os=linux -arch=amd64 terraform-bundle.hcl

Copy the path from the above command for windows:

Path/bin/terraform-bundle package -os=windows -arch=amd64 terraform-bundle.hcl

Copy the path from the above command for MAC:

Path/bin/terraform-bundle package -os=darwin -arch=amd64 terraform-bundle.hcl


Terraform-bundle.hcl


terraform{
    
    version ="0.13.5"
}
providers {
    aws = {
        versions =["3.23"]
    }
     archive = {
        versions =["2.0.0"]
    }
     external = {
        versions =["2.0.0"]
    }
     http = {
        versions =["2.0.0"]
    }
     local = {
        versions =["2.0.0"]
    }
     null = {
        versions =["3.0.0"]
    }
     random = {
        versions =["3.0.1"]
    }
     template = {
        versions =["2.2.0"]
    }
     tfe = {
        versions =["0.24.0"]
    }
    time = {
        versions =["0.6"]
    }
    tls = {
        versions =["3.0.0"]
    }
    bitbucket = {
        versions =["1.2"]
    }
    docker = {
        versions =["2.11.0"]
    }
    panos = {
        versions =["1.6.3"]
    }
    venafi = {
        versions =["0.11.1"]
    }

}


Windows server bundle testing:

Login to the testbox. You need to have admin access before proceeding with the below steps. Please work with desktop team to get the admin access.


Go to the folder C:/Program Files/ and copy the terraform bundles.


Folder structure should be:

C:\Users\gbuama\Hashicorp Terraform 0.14.3\plugins\providers\registry.terraform.io\hashicorp


Set path: 

Use the below command to set the path. If it’s not working because of path limit, try adding it manually to the environment variables.


SetX path "%path%;C:\Program Files\Apache\apache-maven-3.6.1\bin"

Use the below command to set the path for the session:

set PATH=%PATH%;C:\Program Files\Hashicorp Terraform 0.14.3

Create terraform.rc file under :

C:\Users\gbuama\AppData\Roaming


Terraform.rc


provider_installation {
  filesystem_mirror {
    path    = "C:/Program Files/Hashicorp Terraform 0.14.3/plugins/providers"
    include = ["registry.terraform.io/*/*"]
  }
}


For testing create the below main.tf file and 
main.tf and run  it.


terraform {
  required_providers {
    random = {
      source = "hashicorp/random"
      version = "3.0.1"
    }
  }
}a

resource "random_id" "server" {
  byte_length = 8
}

output "random" {
  value = random_id.server.id
}
