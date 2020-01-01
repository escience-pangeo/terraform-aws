# terraform-aws
create infrastructure on aws for jupyterhub

This repo uses [GitHub Actions](https://help.github.com/en/actions/automating-your-workflow-with-github-actions/about-github-actions) to deploy infrastructure on AWS. Credentials and remote S3 terraform state configuration are stored as encrypted Github Repo Secrets. Pull requests run a variety of checks. Approved pull requests on the master branch run 'terraform apply'.


To destroy infrastructure created in this repo:
https://github.com/hashicorp/terraform-github-actions/pull/77
