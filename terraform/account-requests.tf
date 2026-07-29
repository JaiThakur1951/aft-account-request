module "account_request_01" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "noc+infraacc9@writerinformation.com"
    AccountName               = "Infrastructure-Acc9"
    ManagedOrganizationalUnit = "Infrastructure-OU" 
    SSOUserEmail              = "noc+infraacc9@writerinformation.com"
    SSOUserFirstName          = "Infrastructure"
    SSOUserLastName           = "Acc9"
  }

  account_tags = {
    "ABC:Owner"       = "noc+infraacc9@writerinformation.com"
    "ABC:Division"    = "CDS"
    "ABC:Environment" = "Testing"
    "ABC:CostCenter"  = "400062"
    "ABC:Vended"      = "true"
    "ABC:DivCode"     = "111"
    "ABC:BUCode"      = "AFT009"
    "ABC:Project"     = "459789"
  }

  change_management_parameters = {
    change_requested_by = "AWS Control Tower Lab Infrastructure Account 9"
    change_reason       = "Learn AWS Control Tower Account Factory for Terraform (AFT) - Infrastructure 9"
  }

  custom_fields = {
    custom1 = "a"
    custom2 = "b"
  }

  account_customizations_name = "Infrastructure"
}
