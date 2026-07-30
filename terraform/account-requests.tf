module "account_request_01" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "noc+infraacc10@writerinformation.com"
    AccountName               = "Infrastructure-Acc10"
    ManagedOrganizationalUnit = "Infrastructure-OU" 
    SSOUserEmail              = "noc+infraacc10@writerinformation.com"
    SSOUserFirstName          = "Infrastructure"
    SSOUserLastName           = "Acc10"
  }

  account_tags = {
    "ABC:Owner"       = "noc+infraacc10@writerinformation.com"
    "ABC:Division"    = "CDS"
    "ABC:Environment" = "Testing"
    "ABC:CostCenter"  = "400063"
    "ABC:Vended"      = "true"
    "ABC:DivCode"     = "111"
    "ABC:BUCode"      = "AFT010"
    "ABC:Project"     = "459789"
  }

  change_management_parameters = {
    change_requested_by = "AWS Control Tower Lab Infrastructure Account 10"
    change_reason       = "Learn AWS Control Tower Account Factory for Terraform (AFT) - Infrastructure 10"
  }

  custom_fields = {
    custom1 = "a"
    custom2 = "b"
  }

  account_customizations_name = "Infrastructure"
}
