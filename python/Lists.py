monthly_sales = [120000, 135000, 110000, 148000]
print(monthly_sales)
print(monthly_sales[0])
print(monthly_sales[-1])
print(monthly_sales[0:2])
print(len(monthly_sales))



products = ["Pen", "Pencil", "Eraser"]
products.insert(1, "Marker")
print(products)
products.remove("Pencil")
print(products)
last = products.pop()
print(last)
print(products)



sales = [300, 100, 500, 200, 400]
sales.sort()
print(sales)
sales.reverse()
print(sales)



monthly_sales = [120000, 135000, 110000, 148000]
monthly_sales.append(160000)
print(monthly_sales)
print(sum(monthly_sales))
print(max(monthly_sales))
print(min(monthly_sales))
print(148000 in monthly_sales)



sales = [10, 20, 30, 40]
above_25 = [s for s in sales if s > 25]
print(above_25)