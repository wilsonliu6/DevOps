################### aws redshift related variables ###################
variable "redshift_cluster_identifier" {
  default = "XXXXXXXXX"
}
variable "redshift_node_type" {
  default = "ds2.xlarge"
}
variable "redshift_cluster_type" {
  default = "multi-node" #multi-node,single-node
}
variable "redshift_number_of_nodes" {
  default = 8
}

################### aws emr related variables ###################
variable "emr_name" {
  default = "XXXXXXXXX"
}
variable "emr_master_instance_type" {
  default = "r3.2xlarge"
}
variable "emr_core_instance_type" {
  default = "r3.2xlarge"
}
variable "emr_core_instance_count" {
  default = 6#The core instance count is the total nodes' (both master and slaves) count, so if you want to have 1 slave node, you should set 2 here
}
variable "emr_log_uri" {
  default = "s3://XXXXXXXXX/"
}
variable "ec2_attr_key_name" {
  default = "spark-cluster"
}
variable "emr_applications" {
  default = ["Ganglia", "Hive", "Presto-sandbox", "Spark", "Zeppelin-sandbox"]
}
variable "emr_tag" {
  type = "map"
  default =   {
    Name        = "XXXXXXXXX"
    Environment = "XXXXXXXXX"
    Project     = "XXXXXXXXX"
    Owner       = "XXXXXXXXX"
  }
}


################### aws secret related variables ###################
variable "access_key" {
  default = "XXXXXXXXX"
}
variable "secret_key" {
  default = "XXXXXXXXX"
}
variable "region" {
  default = "us-east-1"
}

################### aws redshift common values ###################
variable "redshift_database_name" {
  default = "XXXXXXXXX"
}
variable "redshift_master_password" {  
  default = "XXXXXXXXX"
}
variable "redshift_master_username" {
  default = "XXXXXXXXX"
}
variable "redshift_vpc_security_group_ids" {
  default = ["XXXXXXXXX", "XXXXXXXXX"]
}
variable "redshift_cluster_subnet_group_name" {
  default = "XXXXXXXXX"
}
variable "redshift_availability_zone" {
  default = "us-east-1a"
}
variable "redshift_preferred_maintenance_window" {
  default = "wed:19:00-wed:19:30"
}
variable "redshift_automated_snapshot_retention_period" {
  default = 7
}
variable "redshift_port" {
  default = "5439"
}
variable "redshift_encrypted" {
  default = false
}
variable "redshift_enhanced_vpc_routing" {
  default = false
}


################### aws emr comman values ###################
variable "emr_release_label" {
  default = "emr-5.0.0"
}
variable "emr_service_role" {
  default = "XXXXXXXXX"
}
variable "ec2_attr_subnet_id" {
  default = "XXXXXXXXX"
}
variable "ec2_attr_emr_managed_master_security_group" {
  default = "XXXXXXXXX"
}
variable "ec2_attr_emr_managed_slave_security_group" {
  default = "XXXXXXXXX"
}
variable "ec2_attr_instance_profile" {
  default = "XXXXXXXXX"
}
