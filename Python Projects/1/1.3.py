a = int(input("Введите 1 для нахождения массы, 2 для объема, 3 для плотности "))
if a==1:
    v = int(input("Введите объем "))
    p = int(input("Введите плотность "))
    print("Масса рана ", v * p)
elif a==2:
    p = int(input("Введите плотность "))
    m = int(input("Введите массу "))
    print("Объем равен ", m / p)
else:
    v = int(input("Введите объем "))
    m = int(input("Введите массу "))
    print("Плотность равна ", m/v)