module "vpc" {
  source    = "./modules/vpc"
  projectId = var.projectId
  region    = var.region
  vpcName   = var.vpcName
}

module "subnet-gke" {
  source                          = "./modules/subnet-gke"
  region                          = var.region
  gkeNetwork                      = var.gkeNetwork
  gkeSubnetName                   = var.gkeSubnetName
  gkeIpCidrRange                  = var.gkeIpCidrRange
  gkeSecondaryIpRangeNamePods     = var.gkeSecondaryIpRangeNamePods
  gkeSecondaryIpRangeNameServices = var.gkeSecondaryIpRangeNameServices
  gkeIpCidrRangePods              = var.gkeIpCidrRangePods
  gkeIpCidrRangeServices          = var.gkeIpCidrRangeServices

}

module "gke" {
  source                     = "./modules/gke"
  gkeName                    = var.gkeName
  gkeLocation                = var.gkeLocation
  minMasterVersion           = var.minMasterVersion
  masterIpv4CidrBlock        = var.masterIpv4CidrBlock
  networkName                = var.networkName
  subnetworkName             = var.subnetworkName
  clusterSecondaryRangeName  = var.clusterSecondaryRangeName
  servicesSecondaryRangeName = var.servicesSecondaryRangeName
  nodePoolName               = var.nodePoolName
  nodeVersion                = var.nodeVersion
  nodeCount                  = var.nodeCount
  nodePreemptible            = var.nodePreemptible
  machineTypeNode            = var.machineTypeNode
  diskSizeNode               = var.diskSizeNode
  diskTypeNode               = var.diskTypeNode
}

module "subnet-vm" {
  source          = "./modules/subnet-vm"
  subnetVmName    = var.subnetVmName
  ipCidrRangeVm   = var.ipCidrRangeVm
  subnetVmRegion  = var.subnetVmRegion
  networkSubnetVm = var.networkSubnetVm
}

module "vm" {
  source        = "./modules/vm"
  diskVmCount   = var.diskVmCount
  diskVmType    = var.diskVmType
  diskVmZone    = var.diskVmZone
  diskVmSize    = var.diskVmSize
  vmCount       = var.vmCount
  vmMachineType = var.vmMachineType
  vmZone        = var.vmZone
  vmImageBoot   = var.vmImageBoot
  vmNetwork     = var.vmNetwork
  vmSubnetwork  = var.vmSubnetwork
}