import matplotlib.pyplot as plt

names = ["Asha", "Rahul", "Priya", "Arun"]
salary = [30000, 45000, 35000, 50000]

plt.bar(names, salary)
plt.xlabel("Employees")
plt.ylabel("Salary")
plt.title("Employee Salary")
plt.show()