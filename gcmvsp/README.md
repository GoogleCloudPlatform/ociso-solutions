
# Google Cloud Minimum Viable Secure Platform (GCMVSP)

This repository contains sample code to implement the set of terraform policies recommended by GMVSP.
This repository assumes you're already familiar with the [Organisation Policy Service](https://docs.cloud.google.com/resource-manager/docs/organization-policy/overview#violations).

## Where to apply organization policies

We recommend that new organizations should apply the full set of policies before creating other resources on Google Cloud. This creates a guardrail that resources cannot be created in violation of the organization policies.

For existing Google Cloud customers that have already created resources, implementing policies at the organization node can be risky, and might have existing resources in violation of the policy. In this scenario, we recommend that you use a combination of the following strategies: 
 - [Test organization policy changes with Policy Simulator](https://docs.cloud.google.com/policy-intelligence/docs/test-organization-policies)
 - [Create an organization policy in dry-run mode](https://docs.cloud.google.com/resource-manager/docs/organization-policy/dry-run-policy)
 - For legacy policies that don't support Policy Simulator or dry-run mode, enforce policies gradually by apply to a non-critical project or folder first to assess potential violations.

## Quickstart

To deploy the Infrastructure-as-Code (IaC) resources using terraform, perform the follow steps:

1. Decide where in the [resource hierarchy](https://docs.cloud.google.com/resource-manager/docs/cloud-platform-resource-hierarchy) (organization, folder, or project) you will apply organization policies. 

1. This example code is deployed through Terraform using your own user identity. Your user identity needs the following [IAM Roles](https://cloud.google.com/iam/docs/roles-overview) on your organization, folder, or project:

   - Organization Policy Admin

1. To deploy the solution from this repository using an online terminal with software and authentication preconfigured, use [Cloud Shell](https://shell.cloud.google.com/?show=ide%2Cterminal).
   Alternatively, to deploy this repository using a local terminal:

   - [install](https://cloud.google.com/sdk/docs/install) and [initialize](https://cloud.google.com/sdk/docs/initializing) the gcloud CLI
   - [install Terraform](https://developer.hashicorp.com/terraform/tutorials/gcp-get-started/install-cli)
   - [install the Git CLI](https://github.com/git-guides/install-git)

1. In Cloud Shell or your preferred terminal, clone this repository:

   ```sh
   git clone https://github.com/GoogleCloudPlatform/ociso-solutions.git
   ```

1. Navigate to the directory for the GCMVSP solution:

   ```sh
   cd <YOUR_REPOSITORY>/gcmvsp
   ```

   Where `<YOUR_REPOSITORY>` is the path to the directory where you cloned this repository.

1. Create a terraform.tfvars file with the following variables:

   | Terraform variables         | Description                                                                                           |
   | --------------------------- | ----------------------------------------------------------------------------------------------------- |
   | parent_id                  | The ID of your your Google Cloud organization, folder, or project in the format organizations/123456789, folders/123456789, or projects/project-id.  |

1. Initialize Terraform:

   ```sh
   terraform init
   ```

1. Review the proposed changes and apply them:

   ```sh
   terraform apply
   ```