
hours_str = input("Enter Hours:")
try:
    hours = float(hours_str)
except:
    hours = -1

rate_per_hour_str = input("Enter Rate per Hour:")
try:
    rate_per_hour = float(rate_per_hour_str)
except:
    rate_per_hour = -1

if hours > 0 and rate_per_hour > 0:
    if hours<=40:
        gross_pay = hours * rate_per_hour
        print(gross_pay)
    else:
        gross_pay = (40 * rate_per_hour) + ((hours - 40)*(rate_per_hour*1.5))
        print(gross_pay)
else:
    print("not a number")
