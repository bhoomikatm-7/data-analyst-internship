cities = {"Chennai", "Pune", "Chennai", "Bangalore"}
print(cities)
print(len(cities))


a = {1, 2, 3, 4}
b = {3, 4, 5, 6}
print(a.union(b))
print(a.intersection(b))
print(a.difference(b))


cities = {"Bangalore", "Chennai", "Pune"}
cities.add("Hyderabad")
print(cities)
cities.remove("Pune")
print(cities)