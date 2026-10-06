marks = 42
if marks >= 40:
    print("Pass")
else:
    print("Fail")




score = 81
if score >= 75:
    print("A")
elif score >= 60:
    print("B")
elif score >= 40:
    print("C")
else:
    print("F")



salary = 56000
if salary >= 80000:
    print("Senior")
elif salary >= 50000:
    print("Mid")
elif salary >= 25000:
    print("Junior")
else:
    print("Trainee")




actual = 95000
target = 100000
if actual >= target:
    print("Green")
elif actual >= 0.90 * target:
    print("Amber")
else:
    print("Red")



status = "paid"
if status == "pending":
    print("Wait for payment")
elif status == "paid":
    print("Pack items")
elif status == "shipped":
    print("Hand to courier")
elif status == "delivered":
    print("Close ticket")
else:
    print("Unknown status")




city = "Mumbai"
spend = 18000
returned = False
metros = ("Mumbai", "Delhi", "Chennai", "Kolkata")
if returned:
    print("Exclude")
else:
    if spend >= 15000 and city in metros:
        print("Metro VIP")
    elif spend >= 15000:
        print("VIP")
    else:
        print("Standard")