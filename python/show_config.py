import json

with open("config.json", "r") as file:
    config = json.load(file)

print("Host:", config["host"])
print("User:", config["user"])
print("Database:", config["database"])

password_set = config["password"] != "YOUR_PASSWORD_HERE"
print("Password set:", "yes" if password_set else "no")