monthly = [110, 90, 130]
total = 0
for s in monthly:
    total += s
print(total)



monthly = [100, 200, 150]
avg = 0
for s in monthly:
    avg += s
avg = avg / len(monthly)
count = 0
for s in monthly:
    if s > avg:
        count += 1
print(avg)
print(count)



sales = [50, None, 70, None, 80]
missing = 0
for s in sales:
    if s is None:
        missing += 1
        continue
    print(s)
print("Missing:", missing)


daily_stock = [8, 5, 0, 4]
for day, stock in enumerate(daily_stock, start=1):
    if stock == 0:
        print("Stock-out on day", day)
        break



units = 23
boxes = 0
while units >= 5:
    units -= 5
    boxes += 1
print("Boxes:", boxes)
print("Leftover:", units)



category = "electronics"
amount = 2000

if amount <= 0:
    print("Invalid amount")
else:
    if category == "food":
        rate = 0.05
    elif category == "electronics":
        rate = 0.18
    else:
        rate = 0.12
    tax = amount * rate
    print(tax)
    print(amount + tax)



for region in ["South", "North"]:
for product in ["Pen", "Ink"]:
    print(region + "-" + product)



    names = ["Asha", "Bala", "Chitra"]
present = [True, False, True]
for i in range(len(names)):
    if not present[i]:
        pass
    else:
        print("Include", names[i])
print("List complete")