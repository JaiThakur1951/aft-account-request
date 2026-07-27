module "account_request_01" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "noc+infraacc5@writerinformation.com"
    AccountName               = "Infrastructure-Acc5"
    ManagedOrganizationalUnit = "Infrastructure-OU" 
    SSOUserEmail              = "noc+infraacc5@writerinformation.com"
    SSOUserFirstName          = "Infrastructure"
    SSOUserLastName           = "Acc5"
  }

  account_tags = {
    "ABC:Owner"       = "noc+infraacc5@writerinformation.com"
    "ABC:Division"    = "CDS"
    "ABC:Environment" = "Testing"
    "ABC:CostCenter"  = "400060"
    "ABC:Vended"      = "true"
    "ABC:DivCode"     = "107"
    "ABC:BUCode"      = "AFT006"
    "ABC:Project"     = "459789"
  }

  change_management_parameters = {
    change_requested_by = "AWS Control Tower Lab Infrastructure Account 5"
    change_reason       = "Learn AWS Control Tower Account Factory for Terraform (AFT) - Infrastructure 5"
  }

  custom_fields = {
    custom1 = "a"
    custom2 = "b"
  }

  account_customizations_name = "Infrastructure"
}
