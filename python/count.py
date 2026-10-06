marks = [45, 67, 89, 32, 76, 91, 55]

average = sum(marks) / len(marks)

count = 0
for mark in marks:
    if mark > average:
        count += 1

print("Average:", average)
print("Students above average:", count)