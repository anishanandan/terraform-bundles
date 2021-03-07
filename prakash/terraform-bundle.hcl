terraform {

	version = "0.14.3"
}
providers {
	aws = {
		versions = ["~>3.23"]
	}
	archive = {
		versions = ["~>2.0.0"]
	}
	external = {
		versions = ["2.0.0"]
	}
	http = {
		versions = ["~>2.0.0"]
	}
	local = {
		versions = ["~>2.0.0"]
	}
	null = {
		versions = ["~>3.0.0"]
	}
	random = {
		versions = ["~>3.0.1"]
	}
	template = {
		versions = ["~>2.2.0"]
	}
	tfe = {
		versions = ["~>0.24.0"]
	}
	time = {
		versions = ["~>0.6"]
	}
	tls = {
		versions = ["~>3.0.0"]
	}
#	bitbucket = {
#		versions = ["~>1.1.0"]
#	}
	docker = {
		source = "kreuzwerker/docker"
		versions = ["~>2.11.0"]
	}
	panos = {
		source = "PaloAltoNetworks/panos"
		versions = ["~>1.6.3"]
	}
	venafi = {
		source = "venafi/venafi"
		versions = ["~>0.11.1"]
	}

}
