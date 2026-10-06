import statistics

visits = [120, 150, 130, 200, 180, 160, 140]

mean = statistics.mean(visits)
median = statistics.median(visits)

print("Mean:", mean)
print("Median:", median)
print("Median is more useful here because it is less affected by unusually high or low website visits.")