########################
##  AWS Tag Variables ##
########################


##Mandatory tags##
variable "Application" {
  default = ""
  nullable = false

  validation {
    condition     = var.Application != ""
    error_message = "The Application must not be empty."
  }
}

variable "Division" {
  type = string
  description = "The Division defines the from the IFF BU's "
  default = ""
  nullable = false

  validation {
    condition     = contains([
      "Scent",
      "Nourish",
      "Health_Biosciences",
      "Pharma_Solutions",
      "Shared_Services"

    ], var.Division)
    error_message = "The Division must be one of the predefined value."
  }
}

variable "Function" {
  type = string
  description = "The Function defines the from the IFF Functions "
  default = ""
  nullable = false

  validation {
    condition = contains([
      "Finance",
      "Information_Technology",
      "Human_Resources",
      "IR_CorpComm",
      "Legal",
      "Operations",
      "Research_Development",
      "Manufacturing",
      "Quality_Management",
      "Marketing_Sales",
      "Procurement",
      "Plant_Maintenance",
      "Logistics"
    ], var.Function)
    error_message = "The Function must be one of the predefined values."
  }
}

variable "Environment" {
  type = string
  description = "The Environment that the resources are being deployed"
  default = ""
  nullable = false

  validation {
    condition     = var.Environment != ""
    error_message = "The Environment must not be empty."
  }
}

variable "L1_Technical_Owner" {
  type = string
  description = "The L1_Technical_Owner's email address"
  default = ""
  nullable = false

  validation {
    condition     = var.L1_Technical_Owner != ""
    error_message = "The L1_Technical_Owner must not be empty."
  }
}

variable "L2_Technical_Owner" {
  type = string
  description = "The L2_Technical_Owner's email address"
  default = ""
  nullable = false

  validation {
    condition     = var.L2_Technical_Owner != ""
    error_message = "The L2_Technical_Owner must not be empty."
  }
}

variable "L3_IT_Owner" {
  type = string
  description = "The L3_IT_Owner's email address"
  default = ""
  nullable = false

  validation {
    condition     = var.L3_IT_Owner != ""
    error_message = "The L3_IT_Owner must not be empty."
  }
}

variable "ITLT_Owner" {
  type = string
  description = "The ITLT_Owner's email address"
  
  validation {
    condition = contains([
      "lauren.dana@iff.com",
      "kangan.gogia@iff.com",
      "richard.kronengold@iff.com",
      "drew.riegler@iff.com",
      "al.mujtaba@iff.com",
      "matthew.ridgewell@iff.com",
      "rich.j.puskarich@iff.com",
      "krish.sridhar@iff.com",
      "moin.haque@iff.com",
      "sreeni.pattabiraman@iff.com",
      "ramon.domingo@iff.com",
      "onno.schippers@iff.com"
    ], var.ITLT_Owner)
    error_message = "The ITLT_Owner must be one of the predefined email addresses."
  }
}


##Optional tags##

variable "Business_Owner" {
  default = ""
}

variable "DR_Grouping" {
  default = ""
}



variable "AWS_Service" {
  default = ""
}

variable "Backup" {
  default = "7"
}

variable "Retention" {
  default = "30"
}

variable "Shut_Down" {
  default = "0"
}

variable "Start_Up" {
  default = ""
}

variable "Operating_System" {
  default = ""
}

variable "Database" {
  default = ""
}

variable "Date_in_Service" {
  default = ""
}

variable "Cost_Center" {
  default = ""
}

variable "Project_ID" {
  default = ""
}

variable "SNOW_RITM" {
  default = ""
}


##AWX template = G8awx###

variable "awx_template_tag" {
  default = ""
}

