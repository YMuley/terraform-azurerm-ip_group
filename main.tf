# --------- Ip_group ------------
resource "azurerm_ip_group" "ip_group" {
  for_each            = local.ip_group
  name                = each.value.ip_group_name
  resource_group_name = each.value.resource_group_name
  location            = each.value.location
  cidrs               = each.value.cidrs
  tags                = each.value.tags
}
