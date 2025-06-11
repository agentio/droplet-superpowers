data_dir  = "/opt/nomad/data"
bind_addr = "0.0.0.0"

server {
  enabled          = true
  bootstrap_expect = 1
  heartbeat_grace  = "1m"
}

client {
  enabled = true
  servers = ["127.0.0.1"]

  host_volume "io" {
    path = "/srv/nomad/io"
    read_only = false
  }
}

