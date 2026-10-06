with open("products.txt", "r") as file:
    products = [line.strip() for line in file]

print(products)