# Try-except
try:
    x = int("abc")
except ValueError:
    print("Conversion failed")

# Else-finally 
try:
    num = int("10")
except ValueError:
    print("Error occurred")
else:
    print("Conversion successful:", num)
finally:
    print("Execution completed")

# Raise
def check_age(age):
    if age < 0:
        raise ValueError("Age cannot be negative")
    return age

print(check_age(21))
