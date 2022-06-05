
# Write a function that, given a the amount of bitcoins bought, the price at
# which they had been bought and the current price, calculates the current
# profit or loss if they were to be fully sold.
# Show that the function works by printing the results for the following values:
# Bought 5 BTC at 30000 £/BTC, current price 60000 £/bitcoins
#   expected result: 150000£ (profit)
# Bought 2.5 BTC at 55200 £/BTC, current price 46000 £/bitcoins
#   expected result: -23000£ (loss)

def profits_losses(amount, buy_price, sell_price):
    return (amount * sell_price) - (amount * buy_price)

def get_string(profits_or_losses):
    if profits_or_losses > 0:
        profits_losses_string = "profit"
    else:
        profits_losses_string = "loss"
    return profits_losses_string

profits_or_losses = profits_losses(5, 30000, 60000)
profits_losses_string = get_string(profits_or_losses)
print(f"£ {profits_or_losses} ({profits_losses_string})")

profits_or_losses = profits_losses(2.5, 55200, 46000)
profits_losses_string = get_string(profits_or_losses)
print(f"£ {profits_or_losses} ({profits_losses_string})")
