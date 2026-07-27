module "account_request_01" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "noc+infraacc1@writerinformation.com"
    AccountName               = "Infrastructure-Acc1"
    ManagedOrganizationalUnit = "Infrastructure-OU" 
    SSOUserEmail              = "noc+infraacc1@writerinformation.com"
    SSOUserFirstName          = "Infrastructure"
    SSOUserLastName           = "Acc1"
  }

  account_tags = {
    "ABC:Owner"       = "noc+infraacc1@writerinformation.com"
    "ABC:Division"    = "CDS"
    "ABC:Environment" = "Testing"
    "ABC:CostCenter"  = "400059"
    "ABC:Vended"      = "true"
    "ABC:DivCode"     = "103"
    "ABC:BUCode"      = "AFT002"
    "ABC:Project"     = "123456"
  }

  change_management_parameters = {
    change_requested_by = "AWS Control Tower Lab Infra Account"
    change_reason       = "Learn AWS Control Tower Account Factory for Terraform (AFT) - Infrastructure"
  }

  custom_fields = {
    custom1 = "a"
    custom2 = "b"
  }

  account_customizations_name = "Infrastructure"
}
