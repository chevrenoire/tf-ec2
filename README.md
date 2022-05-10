### Variables
| variable name | description | type | default | required |
|--- | --- | :---: | :---: | :---: |
| name | unique name or identifier | string | no | yes | 
| environment | environment name | string | no | yes |
| region | aws region | string | no | yes | 
| vpc_id | VPC ID | string | no | yes |
| public_dns_zone | Public facing DNS zone (ex: example.com) | string | no | yes |
| private_dns_zone | private DNS zone (ex: us-east-1.example.com) | string | no | yes | 
| ami_owner | the id of the ami owner | list | no | yes |
| ami_version_path | full path of the ami (ex: `ubuntu/images/hvm-ssd/ubuntu-xenial-20.04-amd64-server-*`) | list | no | yes |
| icount | number of instances to build | string | no | yes | 
| root_volume_size | size of root disk | string | no | yes |
| key_name | name of the ssh key | string | no | yes | 
| ssh_sg_id | id of security group for ssh access (if using an existing sg) | string | no | yes |
| root_volume_size | size of the root volume | string | no | yes |
| tags_environment | environment (ex: production, staging) | string | no | yes |
| tags_service | name of the service | string | no | yes |
| tags_role | name of the role | string | no | yes |

