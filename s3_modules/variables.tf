variable "name" {
    type = string
    description = "Bucket Name"
  
}

variable "website" {
    type = map(string)
    default = {}

  
}