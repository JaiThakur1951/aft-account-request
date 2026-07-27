module "account_request_01" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "noc+infraacc2@writerinformation.com"
    AccountName               = "Infrastructure-Acc2"
    ManagedOrganizationalUnit = "Infrastructure-OU" 
    SSOUserEmail              = "noc+infraacc2@writerinformation.com"
    SSOUserFirstName          = "Infrastructure"
    SSOUserLastName           = "Acc2"
  }

  account_tags = {
    "ABC:Owner"       = "noc+infraacc2@writerinformation.com"
    "ABC:Division"    = "CDS"
    "ABC:Environment" = "Testing"
    "ABC:CostCenter"  = "400057"
    "ABC:Vended"      = "true"
    "ABC:DivCode"     = "105"
    "ABC:BUCode"      = "AFT005"
    "ABC:Project"     = "456789"
  }

  change_management_parameters = {
    change_requested_by = "AWS Control Tower Lab Infrastructure Account 2"
    change_reason       = "Learn AWS Control Tower Account Factory for Terraform (AFT) - Infrastructure 2"
  }

  custom_fields = {
    custom1 = "a"
    custom2 = "b"
  }

  account_customizations_name = "Infrastructure"
}
