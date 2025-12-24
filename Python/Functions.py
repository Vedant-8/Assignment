# Parameters and arguments
def greet(name):
    print(f"Hello, {name}")

greet("Vedant")

# Return 
def add(a, b):
    return a + b

result = add(5, 3)
print(result)

# *Args and **Kwargs
def total_sum(*args):
    return sum(args)

print(total_sum(1, 2, 3, 4))


def student_info(**kwargs):
    for key, value in kwargs.items():
        print(key, ":", value)

student_info(name="Vedant", age=21, course="Python")