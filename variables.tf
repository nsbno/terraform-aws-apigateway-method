variable "api_id" {
  type = "string"
}

variable "api_resource_id" {
  type = "string"
}

variable "method" {
  type = "string"
}

variable "lambda" {
  type = "string"
}

variable "authorization" {
  type = "string"
}

variable "authorizer_id" {
  type = "string"
  default = ""
}

variable "authorization_scopes" {
  type = "list"
  default = []
}

variable "api_key_required" {
  type = "string"
  default = "false"
}

variable "request_template" {
  type = "string"
  default = "{}"
}

variable "request_model" {
  type    = "string"
  default = "Empty"
}

variable "response_model" {
  type    = "string"
  default = "Empty"
}

variable "request_validator_id" {
  type    = "string"
  default = ""
}

variable "request_parameters" {
  type    = "map"
  default = {}
}

variable "error_template" {
  default = <<EOF
#set ($errorMessageObj = $util.parseJson($input.path('$.errorMessage')) {
  "message" : "$errorMessageObj.message"
}
EOF
}

