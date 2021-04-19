num1 = int(input('1번째 숫자를 넣어주세요. '))
num2 = int(input('2번째 숫자를 넣어주세요. '))
num3 = int(input('3번째 숫자를 넣어주세요. '))

if(num1>num2)^(num1>num3):
    if(num2>num3):
        print('Max = ' + str(num1))
    else:
        print('min = ' + str(num2)) 
        
if(num2>num1)^(num2>num3):
    if(num1>num3):
        print('Max = ' + str(num2))
    else:
        print('min = ' + str(num3))
if(num3>num2)^(num3>num1):
    if(num2>num1):
        print('Max = ' + str(num1))
    else:
        print('min = ' + str(num2))  
