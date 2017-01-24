
resource "aws_redshift_cluster" "XXXXXXXXX" {
  cluster_identifier = "${var.redshift_cluster_identifier}"
  database_name = "${var.redshift_database_name}"
  node_type = "${var.redshift_node_type}" #dc1.large, dc1.8xlarge, ds1.xlarge, ds1.8xlarge, ds2.xlarge, ds2.8xlarge
  cluster_type = "${var.redshift_cluster_type}" #multi-node,single-node
  master_password = "${var.redshift_master_password}"
  master_username = "${var.redshift_master_username}"
  #cluster_security_groups = "" #
  vpc_security_group_ids = "${var.redshift_vpc_security_group_ids}"
  cluster_subnet_group_name = "${var.redshift_cluster_subnet_group_name}"
  availability_zone = "${var.redshift_availability_zone}"
  preferred_maintenance_window = "${var.redshift_preferred_maintenance_window}"
  #cluster_parameter_group_name = "nonprod-wlm"
  automated_snapshot_retention_period = "${var.redshift_automated_snapshot_retention_period}"
  port = "${var.redshift_port}" #Default port is 5439
  #cluster_version = "1.0.1115"
  #allow_version_upgrade = "" #Default is true
  number_of_nodes = "${var.redshift_number_of_nodes}" #Default is 1
  #publicly_accessible = "" #Default is true.
  encrypted = "${var.redshift_encrypted}"
  enhanced_vpc_routing = "${var.redshift_enhanced_vpc_routing}"
  #kms_key_id = ""
  #elastic_ip = ""
  #skip_final_snapshot = ""#Default is true
  #final_snapshot_identifier = ""
  #snapshot_identifier = ""
  #snapshot_cluster_identifier = ""
  #iam_roles = ""
  #enable_logging = "" #Defaults to false
  #bucket_name = "" #(Optional, required when enable_logging is true)
  #s3_key_prefix = ""
  #tags = ""
}