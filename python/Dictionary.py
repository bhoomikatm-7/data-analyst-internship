employee = {
    "id": 101,
    "name": "Bhoomika",
    "department": "Analytics",
    "salary": 25000
}
print(employee["name"])
print(employee["department"])
print(employee["salary"])



customer = {
    "name": "Ravi",
    "city": "Bangalore"
}
print(customer.get("city"))
print(customer.get("phone", "Missing"))


customer = {
    "name": "Alok",
    "city": "Mumbai"
}
customer["city"] = "Navi Mumbai"
print(customer["city"])



customer = {
    "name": "Meera",
    "address": {
        "city": "Hyderabad",
        "pin": "500001"
    }
}
print(customer["name"])
print(customer["address"]["city"])
print(customer["address"]["pin"])


employee = {
    "name": "Kavya",
    "salary": 47000,
    "department": "Analytics"
}
print(employee.keys())
print(employee.values())
for key, value in employee.items():
    print(key, ":", value)