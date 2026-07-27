module "account_request_01" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "noc+sandboxacc2@writerinformation.com"
    AccountName               = "Sandbox-Acc2"
    ManagedOrganizationalUnit = "Sandbox" 
    SSOUserEmail              = "noc+sandboxacc2@writerinformation.com"
    SSOUserFirstName          = "Sandbox"
    SSOUserLastName           = "Acc2"
  }

  account_tags = {
    "ABC:Owner"       = "noc+sandboxacc2@writerinformation.com"
    "ABC:Division"    = "CDS"
    "ABC:Environment" = "Testing"
    "ABC:CostCenter"  = "400059"
    "ABC:Vended"      = "true"
    "ABC:DivCode"     = "103"
    "ABC:BUCode"      = "AFT003"
    "ABC:Project"     = "123456"
  }

  change_management_parameters = {
    change_requested_by = "AWS Control Tower Lab Sandbox Account"
    change_reason       = "Learn AWS Control Tower Account Factory for Terraform (AFT) - Sandbox"
  }

  custom_fields = {
    custom1 = "a"
    custom2 = "b"
  }

  account_customizations_name = "Sandbox"
}
