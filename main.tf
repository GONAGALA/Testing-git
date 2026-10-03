
module "rg" {
  source     = "../R-module"
  r-name     = "sumanth"
  r-location = "south india"
}



module "vnet" {

  source     = "../V-module"
  vnet-name  = "vnet1"
  v-location = module.rg.r-location
  ip-address = ["10.0.0.0/16"]
  r-name     = module.rg.r-name
  subnet     = "subn1"
  address    = ["10.0.1.0/24"]

}

module "pip" {

  source      = "../pip-module"
  ipname      = "ipname"
  r-name      = module.rg.r-name
  ip-location = module.rg.r-location

}



module "nic" {

  source       = "../module.nic"
  nicname      = "N-name"
  nic-location = module.rg.r-location
  r-name       = module.rg.r-name
  sub-id       = module.vnet.sub
  public-ip    = module.pip.pip


}


module "nsg" {
    source = "../module.nsg"
    nsgname = "nsg1"
    nsglocation = module.rg.r-location
    r-name      = module.rg.r-name
    sbnet  = module.vnet.sub
   
}


module "vm"  {
    source  = "../module.vm"
    vmname = "vm1"
    vm-location = module.rg.r-location
    r-name = module.rg.r-name
    size  = "standard_B2als_v2"
    user    = "sumanth"
    pass    = "auto@123"
    nic-id  = module.nic.nic
}