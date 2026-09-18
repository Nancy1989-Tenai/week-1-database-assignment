# Do not change these numbers
scores = [72, 45, 90, 61, 38]

# Initialize counters and total
pass_count = 0
fail_count = 0
total_score = 0

# 1. Use a for loop to go through every score
for score in scores:
    # 2. Use if / elif / else to work out a grade
    if score >= 80:
        grade = "A"
    elif score >= 70:
        grade = "B"
    elif score >= 50:
        grade = "C"
    else:
        grade = "F"
        
    # 3. Print each score with its grade
    print(f"Score: {score} - Grade: {grade}")
    
    # 4. Count passes and fails
    if score >= 50:
        pass_count += 1
    else:
        fail_count += 1
        
    # Add to total for average calculation
    total_score += score

# Calculate average
average = total_score / len(scores)

# 4 & 5. Print the final counts and average
print(f"\nNumber passed: {pass_count}")
print(f"Number failed: {fail_count}")
print(f"Average score: {round(average, 1)}")