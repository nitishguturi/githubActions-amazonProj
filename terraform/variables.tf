variable "resourcegroupname" {
    description = "name of resource group"
    type = string
    default = "gitRG"
}

variable "location" {
    description = "name of location"
    type = string
    default = "canadacentral"
}

variable "appserviceplan" {
    description = "name of appservice"
    type = string
    default = "gitappserviceplan"
}

variable "webappname" {
    description = "name of webapp"
    type = string
    default = "gitprojaspdotnet9765"
}