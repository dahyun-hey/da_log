a = [1,2,3,4]
b = [0, 0,0,0]

c = 0
for i,j in zip(range(len(a)+1),range(len(b)+1)):
    c = a[i-1] * b[j-1]
    c+=c
print(c)