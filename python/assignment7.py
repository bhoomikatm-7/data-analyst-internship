import json

employees = [
    {"id": 1, "name": "Anita", "dept": "HR"},
    {"id": 2, "name": "Rahul", "dept": "IT"},
    {"id": 3, "name": "Sara", "dept": "Finance"}
]

with open("employees.json", "w") as file:
    json.dump(employees, file, indent=4)

with open("employees.json", "r") as file:
    data = json.load(file)

for employee in data:
    print(employee["name"])