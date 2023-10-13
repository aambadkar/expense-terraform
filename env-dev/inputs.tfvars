env = "dev"

vpc_cidr = "10.0.0.0/16"
public_subnets = ["10.0.0.0/24","10.0.1.0/24"]
private_subnets = ["10.0.2.0/24","10.0.3.0/24"]
azs = ["us-east-1a","us-east-1b"]

default_vpc_id = "vpc-0749d59ec18f461fb"
account_no = "865190527461"
default_vpc_cidr = "172.31.0.0/16"
default_route_table_id = "rtb-05b65bf10436b33b7"
bastion_node_cidr = ["172.31.20.33/32"]
desired_capacity = 1
max_size = 1
min_size = 1
instance_class = "db.t3.medium"
prometheus_cidr = ["172.31.16.223/32"]
