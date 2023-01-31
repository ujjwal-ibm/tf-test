data ibm_is_image this {
 name = "ibm-ubuntu-20-04-5-minimal-amd64-1"
}

output ibm_is_image {
    value = data.ibm_is_image.this.crn
}