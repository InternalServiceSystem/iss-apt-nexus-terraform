# internal.murawsky.net Nexus Configuration

This repository allows nexus to be configured to proxy many remote repositories. It uses the [terraform-nexus-ubuntu-repo-manager](https://github.com/InternalServiceSystem/terraform-nexus-ubuntu-repo-manager) module which helps to support this for ubuntu distributions.

## Setup

* You need the nexus terraform plugin. Download it from [datadrivers/terraform-provider-nexus](https://github.com/datadrivers/terraform-provider-nexus) and extract it to you `~/terraform.d/plugins` directory.
* Copy the `./terraform/terraform.tfvars.example` file to `./terraformterraform.tfvars` and edit to suit your environment.
* Configure a backend as desired
* Configure your desired ubuntu modules. Examples are included for bionic and eoan.
* Run `terraform plan` and `terraform apply` and enjoy your new proxy-repos.

## Related Projects

* [ISS - The Internal Services System](https://github.com/derekmurawsky/ISS) - My implementation of traefik for my home network.
* [terraform-nexus-ubuntu-repo-manager](https://github.com/InternalServiceSystem/terraform-nexus-ubuntu-repo-manager) - A module I built to make managing ubuntu repos in nexus easier.
* [internal-nexus](https://github.com/derekmurawsky/internal-nexus) - A nexus container implementation for use with the ISS.

## TODO

* Add raspbian support? Or separate module?
