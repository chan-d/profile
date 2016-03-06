User.destroy_all

user_data = {
	name: "Danny",
	email: "chan@danny.com",
	password: "kuma"
}

User.create(user_data)