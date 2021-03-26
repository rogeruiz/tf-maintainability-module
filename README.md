# A testing ground for TF module maintainability

This repo leverages a couple of different open-source projects to try to create
a maintainable way to author Terraform modules across projects. It can be hard
to create maintainable modules within a single project. This difficulty can be
compounded when Terraform modules are trying to support multiple IaaS providers
as well.

Let's mitigate the issue by standardizing on linting, tagging, labeling, and
contract testing modules and enforcing those ideas.

Currently, this project leverages the following tools:

- https://github.com/cloudposse/terraform-terraform-label
- (buggy) https://github.com/thazelart/terraform-validator
- https://github.com/terraform-linters/tflint

