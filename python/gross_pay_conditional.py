
hours_str = input("Enter Hours:")
rate_per_hour_str = input("Enter Rate per Hour:")

hours = float(hours_str)
rate_per_hour = float(rate_per_hour_str)

if hours<=40:
    gross_pay = hours * rate_per_hour
    print(gross_pay)
else:
    gross_pay = (40 * rate_per_hour) + ((hours - 40)*(rate_per_hour*1.5))
    print(gross_pay)
