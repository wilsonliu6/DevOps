
resource "aws_emr_cluster" "wba-qa-loadtest-emr" {
  name                 = "${var.emr_name}"
  release_label        = "${var.emr_release_label}"
  master_instance_type = "${var.emr_master_instance_type}"
  core_instance_type   = "${var.emr_core_instance_type}"
  core_instance_count  = "${var.emr_core_instance_count}" #Default 1
  log_uri              = "${var.emr_log_uri}"
  applications         = "${var.emr_applications}"

  ec2_attributes {
    key_name                          = "${var.ec2_attr_key_name}" #presto-cluster
    subnet_id                         = "${var.ec2_attr_subnet_id}"
    emr_managed_master_security_group = "${var.ec2_attr_emr_managed_master_security_group}"
    emr_managed_slave_security_group  = "${var.ec2_attr_emr_managed_slave_security_group}"
    instance_profile                  = "${var.ec2_attr_instance_profile}"
  }

  bootstrap_action {
    name = "Bootstrap action"
    path = "s3://XXXXXXXXX.sh"
  }

  #configurations = ""
  service_role = "${var.emr_service_role}"
  #visible_to_all_users = true #Default true
  tags = "${var.emr_tag}"

  ##################################### provisioner #######################################
  provisioner "local-exec" {
    command = "XXXXXXXXX"
  }
}
