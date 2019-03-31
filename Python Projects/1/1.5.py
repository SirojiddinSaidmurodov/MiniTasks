import math

a = int(input("Введите длину первого катета "))
b = int(input("Введите длину второго катета "))
print("Гипотенуза равна", math.sqrt((a ** 2) + (b ** 2)))
print("Периметр равен", a + b + math.sqrt((a ** 2) + (b ** 2)))
print("Площадь равна", a * b / 2)
