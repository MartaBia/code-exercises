
def compute_pay(h, rph):
    if h <= 40:
        pay = h * rph
    else:
        pay = (40 * rph) + ((h - 40) * (rph * 1.5))
    return pay

# --------------------------------------------------

hours_str = input("Enter hours: ")
rate_per_hour_str = input("Enter Rate per Hour: ")

hours = float(hours_str)
rate_per_hour = float(rate_per_hour_str)

gross_pay = compute_pay(hours, rate_per_hour)
print("Pay", gross_pay)
