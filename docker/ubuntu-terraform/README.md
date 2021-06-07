# [cloudveto.com](https://cloudveto.com)
## This image was built on ubuntu-20.04 with awscli-v1, tfswitch for terraform, ansible 2.9, istio-1.10.0 and kubectl
## Location [https://hub.docker.com/r/ubuntuk8s/ubuntu-terraform](https://hub.docker.com/r/ubuntuk8s/ubuntu-terraform)
### To pull this image use below command
```
docker pull ubuntuk8s/ubuntu-terraform:latest
```
### How to use terraform?
### Run tfswich just before terraform init.
```
tfswitch 0.15.2
terraform init
```