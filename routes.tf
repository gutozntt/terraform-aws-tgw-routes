data "aws_route_tables" "vpc_rts" {
  vpc_id = var.vpc_id
}

data "aws_vpc" "vpc" {
  id = var.vpc_id
}

locals {
  all_routes = setproduct(tolist(data.aws_route_tables.vpc_rts.ids), var.destination_cidr_blocks)

  map_routes = [
    for pair in local.all_routes : {
      route_table_id = pair[0]
      cidr_block     = pair[1]
    }
  ]
}

resource "aws_route" "vpc_rts" {
  for_each = {
    for pair in local.map_routes : "${pair.route_table_id}_${pair.cidr_block}" => pair
  }
  route_table_id         = each.value["route_table_id"]
  destination_cidr_block = each.value["cidr_block"]
  transit_gateway_id     = var.tgw_id
}
