average = 1500

with open("aov_report.txt", "w") as file:
    file.write("AOV Report\n")
    file.write("Date: 2026-09-09\n")
    file.write(f"Average: {average}\n")

with open("aov_report.txt", "r") as file:
    print(file.read())