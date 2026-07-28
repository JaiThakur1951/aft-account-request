module "account_request_01" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "noc+infraacc8@writerinformation.com"
    AccountName               = "Infrastructure-Acc8"
    ManagedOrganizationalUnit = "Infrastructure-OU" 
    SSOUserEmail              = "noc+infraacc8@writerinformation.com"
    SSOUserFirstName          = "Infrastructure"
    SSOUserLastName           = "Acc8"
  }

  account_tags = {
    "ABC:Owner"       = "noc+infraacc8@writerinformation.com"
    "ABC:Division"    = "CDS"
    "ABC:Environment" = "Testing"
    "ABC:CostCenter"  = "400061"
    "ABC:Vended"      = "true"
    "ABC:DivCode"     = "110"
    "ABC:BUCode"      = "AFT008"
    "ABC:Project"     = "459789"
  }

  change_management_parameters = {
    change_requested_by = "AWS Control Tower Lab Infrastructure Account 8"
    change_reason       = "Learn AWS Control Tower Account Factory for Terraform (AFT) - Infrastructure 8"
  }

  custom_fields = {
    custom1 = "a"
    custom2 = "b"
  }

  account_customizations_name = "Infrastructure"
}
