module "rg" {
  source = "../../Modules/Rg"

  rg_name  = var.rg_name
  location = var.location
}