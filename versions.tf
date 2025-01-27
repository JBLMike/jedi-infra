terraform {
  required_providers {
    ovh = {
      source = "ovh/ovh"
      version = "~> 0.15"
    }
    openstack = {
      source = "terraform-provider-openstack/openstack"
      version = "~> 1.40"
    }
    google = {
      source  = "hashicorp/google"
      version = "~> 3.0"
    }
    kubernetes = {
      source = "hashicorp/kubernetes"
      version = "~> 2.0"
    }
    helm = {
      source = "hashicorp/helm"
      version = "~> 2.0"
    }
  }
  required_version = ">= 0.13"
}
