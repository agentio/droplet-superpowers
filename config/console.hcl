serve "nomad" {
  name    = "Nomad"
  port    = 9009
  backend = "127.0.0.1:4646"
  atproto_auth {
    handles = ["timburks.me"]
  }
}

host "nomad.noted.at" {
  name    = "Nomad"
  backend = "serving:nomad"
  atproto {
    name   = "Nomad"
    scopes = ["atproto"]
  }
}

