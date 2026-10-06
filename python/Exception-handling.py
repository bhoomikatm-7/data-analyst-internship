text = "N/A"
try:
    price = int(text)
    print("Price is", price)
except ValueError:
    print("Could not convert:", text)
    price = None

print("Continuing with price =", price)



raw_quantities = ["2", "5", "", "3", "ten"]
clean = []
skipped = 0
for item in raw_quantities:
    try:
        clean.append(int(item))
    except ValueError:
        skipped += 1
print("Clean quantities:", clean)
print("Rows skipped:", skipped)
print("Total units:", sum(clean))



values = ["100", "bad"]
for text in values:
    print("Input:", text)
    try:
        number = int(text)
    except ValueError:
        print("except: cannot convert")
    else:
        print("else: converted to", number)
    finally:
        print("finally: next row")
    print()




    def safe_average(total, count):
    try:
        average = total / count
    except ZeroDivisionError:
        print("count cannot be 0")
        return None
    else:
        print("average computed")
        return average
    finally:
        print("function finished")
print(safe_average(500, 5))
print(safe_average(500, 0))


samples = [
    ("qty", "4", "total", "200"),
    ("qty", "0", "total", "200"),
    ("qty", "two", "total", "200"),
]
for qty_key, qty_val, total_key, total_val in samples:
    row = {qty_key: qty_val, total_key: total_val}
    try:
        qty = int(row["qty"])
        total = int(row["total"])
        print("Unit price:", total / qty)
    except ValueError:
        print("Bad number in row:", row)
    except ZeroDivisionError:
        print("Quantity is 0 in row:", row)
    except KeyError as err:
        print("Missing column:", err)



        orders = [
    {"qty": "2", "price": "100"},
    {"qty": "0", "price": "100"},
    {"qty": "x", "price": "100"},
    {"price": "100"},
]

for order in orders:
    try:
        qty = int(order["qty"])
        price = int(order["price"])
        total = qty * price
        print("Line total:", total)

    except ValueError:
        print("Invalid number:", order)

    except ZeroDivisionError:
        print("Quantity cannot be zero:", order)

    except KeyError as err:
        print("Missing column:", err)





csv_column = ["1200", "N/A", "2500", "", "1800"]

amounts = []

for cell in csv_column:
    try:
        amounts.append(float(cell))
    except ValueError:
        print("Skipping bad amount:", repr(cell))

print("Valid amounts:", amounts)
print("Mean of valid amounts:", sum(amounts) / len(amounts))