module "account_request_01" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "noc+infraacc11@writerinformation.com"
    AccountName               = "Infrastructure-Acc11"
    ManagedOrganizationalUnit = "Infrastructure-OU" 
    SSOUserEmail              = "noc+infraacc11@writerinformation.com"
    SSOUserFirstName          = "Infrastructure"
    SSOUserLastName           = "Acc11"
  }

  account_tags = {
    "ABC:Owner"       = "noc+infraacc11@writerinformation.com"
    "ABC:Division"    = "CDS"
    "ABC:Environment" = "Testing"
    "ABC:CostCenter"  = "400069"
    "ABC:Vended"      = "true"
    "ABC:DivCode"     = "112"
    "ABC:BUCode"      = "AFT011"
    "ABC:Project"     = "459789"
  }

  change_management_parameters = {
    change_requested_by = "AWS Control Tower Lab Infrastructure Account 11"
    change_reason       = "Learn AWS Control Tower Account Factory for Terraform (AFT) - Infrastructure 11"
  }

  custom_fields = {
    custom1 = "a"
    custom2 = "b"
  }

  account_customizations_name = "Infrastructure"
}
