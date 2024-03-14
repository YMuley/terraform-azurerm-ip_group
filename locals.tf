locals {
  ip_group = {for ip_group in var.ip_group_list : ip_group.name => ip_group}
}