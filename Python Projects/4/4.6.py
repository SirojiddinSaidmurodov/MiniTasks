from random import randint
a = int(input('Введите количество проверяемых чисел '))
list1 = [randint(20, 100) for x in range(a)]
print(list1)
chet = 0
nech = 0
for i in range(a):
    if list1[a-1] % 2 == 0:
        chet += 1
    else:
        nech += 1
print(chet,nech)