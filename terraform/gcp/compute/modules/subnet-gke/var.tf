variable "region" {
 type = string
}

variable "gkeIpCidrRange" {
  type = string
}

variable "gkeSecondaryIpRangeNamePods" {
  type = string
}

variable "gkeSecondaryIpRangeNameServices" {
  type = string
}

variable "gkeIpCidrRangePods" {
  type = string
}

variable "gkeIpCidrRangeServices" {
  type = string
}

variable "gkeSubnetName" {
  type = string
}

variable "gkeNetwork" {
  type = string
}