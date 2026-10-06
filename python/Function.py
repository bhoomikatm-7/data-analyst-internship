def print_intern_banner():
    print("Bhoomika T M")
    print("MCA Data Analyst Intern")
    print("Python Functions - Chapter 09")
print_intern_banner()



def calculate_total(price, quantity):
    return price * quantity
price = 100
quantity = 3
total = calculate_total(price, quantity)
print("Price:", price)
print("Quantity:", quantity)
print("Total:", total)




def calculate_total(price, quantity):
    return price * quantity
def apply_discount(amount, rate=0.05):
    return amount * (1 - rate)
def apply_gst(amount, rate=0.18):
    return amount * rate
price = 499
quantity = 2
subtotal = calculate_total(price=price, quantity=quantity)
discounted = apply_discount(subtotal)
gst = apply_gst(discounted)
grand_total = discounted + gst
print("Subtotal:", subtotal)
print("After Discount:", discounted)
print("GST:", gst)
print("Grand Total:", grand_total)




def invoice_parts(price, quantity, discount_rate=0.0, gst_rate=0.18):
    subtotal = price * quantity
    discount = subtotal * discount_rate
    amount_after_discount = subtotal - discount
    gst = amount_after_discount * gst_rate
    grand_total = amount_after_discount + gst
    return subtotal, discount, gst, grand_total
subtotal, discount, gst, grand_total = invoice_parts(200, 3, 0.1)
print("Subtotal:", subtotal)
print("Discount:", discount)
print("GST:", gst)
print("Grand Total:", grand_total)




def clean_amount(text):
    return float(text.strip())
amount = clean_amount(" 12.5 ")
print("Cleaned amount:", amount)
# This is safer because the function uses the value passed to it
# instead of depending on a global variable.




def total_sales(*args):
    return sum(args)
print(total_sales(10, 20, 30))
print(total_sales(5, 5))



def show_details(**kwargs):
    print(kwargs)
show_details(name="Bhoomika", course="MCA", role="Data Analyst Intern")