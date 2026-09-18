# Simple Bill Calculator
# This program asks the user for the price and quantity of an item,
# then calculates and displays the total cost.

# 1. Ask the user for the price of one item and the quantity
price_input = input("Enter the price of one item: ")
quantity_input = input("Enter the quantity you want: ")

# 2. Convert the string values to numbers (float for price, int for quantity)
price = float(price_input)
quantity = int(quantity_input)

# 3. Calculate the total
total = price * quantity

# 4. Print a friendly summary using an f-string
print(f"\n{quantity} items at {price:.2f} each = {total:.2f}")