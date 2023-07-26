package main

default allow := false

# allow stacey to view all photos in her account
allow {
	input.principal.type == "User"
	input.principal.id == "stacey"
	input.action == "viewPhoto"
	input.resource.account == "stacey"
}

# allow admin to view vacationPhoto.jpq in any account
allow {
	input.principal.type == "User"
	input.principal.id == "admin"
	input.action == "viewPhoto"
	input.resource.id = "vacationPhoto.jpg"
}
