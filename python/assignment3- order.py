status = "shipped"
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