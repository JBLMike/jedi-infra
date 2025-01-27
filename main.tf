// OVH provider
provider "ovh" {
  endpoint           = var.ovh_endpoint
  application_key    = var.ovh_application_key
  application_secret = var.ovh_application_secret
  consumer_key       = var.ovh_consumer_key
}

// OpenStack provider
provider "openstack" {
  auth_url    = var.os_auth_url
  region      = var.os_region
  tenant_name = var.os_tenant
  user_name   = var.os_username
  password    = var.os_password
}

// Google Cloud provider
provider "google" {
  credentials = var.gcp_credentials
  project     = var.gcp_project_id
  region      = var.gcp_region
}

// Kubernetes provider
provider "kubernetes" {
  host                   = var.k8s_host
  client_certificate     = base64decode(var.k8s_client_cert)
  client_key             = base64decode(var.k8s_client_key)
  cluster_ca_certificate = base64decode(var.k8s_ca_cert)
}

// Helm provider
provider "helm" {
  kubernetes {
    host                   = var.k8s_host
    client_certificate     = base64decode(var.k8s_client_cert)
    client_key             = base64decode(var.k8s_client_key)
    cluster_ca_certificate = base64decode(var.k8s_ca_cert)
  }
}
