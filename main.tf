locals {
  tags = {
      Environment         = var.Environment
      Operating_System    = var.Operating_System
      Application         = var.Application
      Project_ID          = var.Project_ID
      Business_Owner      = var.Business_Owner
      Start_Up            = var.Start_Up
      Shut_Down           = var.Shut_Down
      Backup              = var.Backup
      Retention           = var.Retention
      Database            = var.Database
      L1_Technical_Owner  = var.L1_Technical_Owner
      L2_Technical_Owner  = var.L2_Technical_Owner
      Date_in_Service     = var.Date_in_Service
      Cost_Center         = var.Cost_Center
      SNOW_RITM           = var.SNOW_RITM
      Division            = var.Division
      Functions           = var.Function
      DR_Grouping         = var.DR_Grouping
      AWS_Service         = var.AWS_Service
      AWX_Template        = var.awx_template_tag
      ITLT_Owner          = var.ITLT_Owner
      L3_IT_Owner         = var.L3_IT_Owner
    } 

  asgtags = [for k, v in local.tags : {
      "key"                 = k
      "value"               = v
      "propagate_at_launch" = true
    }]
}