count = 1
total = 0

# BUG: The while loop was missing a colon (:) at the end, which causes a SyntaxError. Fixed by adding ':'.
# BUG: The condition was 'count < 5', which stops the loop at 4. Changed to 'count <= 5' so it includes 5 and sums to 15.
while count <= 5:
    total = total + count
    count = count + 1

# BUG: You cannot add a string and an integer together using '+'. Fixed by converting the integer 'total' to a string using str(total).
print("Sum of 1 to 5 is: " + str(total))