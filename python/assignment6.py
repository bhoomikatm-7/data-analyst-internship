import csv

with open("customers.csv", "w", newline="") as file:
    writer = csv.writer(file)
    writer.writerow(["id", "name", "city"])
    writer.writerow([1, "Anita", "Pune"])
    writer.writerow([2, "Rahul", "Delhi"])
    writer.writerow([3, "Sara", "Pune"])
    writer.writerow([4, "Vikram", "Chennai"])

with open("customers.csv", "r") as file:
    reader = csv.DictReader(file)
    pune_count = sum(1 for row in reader if row["city"] == "Pune")

with open("pune_count.txt", "w") as file:
    file.write(str(pune_count))

print("Customers in Pune:", pune_count)