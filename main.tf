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
    image   =   "cut2thechase:0.1"
    name    =   "cut2thechase"
    restart = "always"
    volumes {
        container_path  =   "/usr/share/nginx/html"
        host_path       =   "/C/Users/GPow/stash/webapp_terraform/cut2thechase/html"
    }
    ports {
        internal    =   80
        external    =   80
    }
}