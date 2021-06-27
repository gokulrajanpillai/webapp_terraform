terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "2.13.0"
    }
  }
}

provider "docker" {
  host = "npipe:////.//pipe//docker_engine"
}

resource "docker_container" "test_container" {
    image   =   "test"
    name    =   "test_app"
    restart = "always"
    volumes {
        container_path  =   "/test_app"
        host_path       =   "/C/Users/GPow/stash/webapp_terraform"
        read_only       =   false
    }
    ports {
        internal    =   8080
        external    =   8090
    }
}