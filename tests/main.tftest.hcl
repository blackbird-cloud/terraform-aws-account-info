mock_provider "aws" {
  mock_data "aws_organizations_organization" {
    defaults = {
      roots = [{ id = "r-abcd" }]
    }
  }
}

run "plan" {
  command = plan
}
