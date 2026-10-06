from datetime import datetime

order_dates = [
    "2026-09-05",
    "2026-09-15",
    "2026-10-02"
]

september_count = 0

for date_string in order_dates:
    order_date = datetime.strptime(date_string, "%Y-%m-%d")

    if order_date.year == 2026 and order_date.month == 9:
        september_count += 1

print("Orders in September 2026:", september_count)