import math

units = 130
pack_size = 8

boxes_needed = math.ceil(units / pack_size)
leftover_units = units % pack_size

print("Boxes needed:", boxes_needed)
print("Leftover units:", leftover_units)