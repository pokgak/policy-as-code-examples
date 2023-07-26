package main

default output := false

allow {
    input.principal.uid.type == "PhotoApp::User",
    input.principal.uid.id == "alice",
}