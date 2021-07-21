module "autoscaling" {
  source      = "./modules/autoscaling"
  namespace   = var.namespace
  ssh_keypair = var.ssh_keypair
  vpc         = module.networking.vpc #Input arguments for the autoscaling module set by other module's output. 
  sg          = module.netowrking.sg
  db_config   = module.database.db_config
}

module "database" {
  source    = "./modules/database"
  namespace = var.namespace
  vpc       = module.networking.vpc #Data bubbles up from networking module and trickles down into Db module.
  sg        = module.networking.sg
}

module "networking" {
  source    = "./modules/networking"
  namespace = var.namespace
}



