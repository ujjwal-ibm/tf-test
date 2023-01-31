provider ibm {
    region = var.REGION
}
variable REGION{
    type        = string
    description = "the region to use the provider for"
}