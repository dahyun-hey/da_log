
a = [1,2,3,4]
b = [-1,-2,0,0]

# c = 0
# for i,j in zip(range(len(a)+1),range(len(b)+1)):
#     c = a[i-1] * b[j-1]
#     c+=c
# print(c)

answer = 0
for i in range(len(a)):
    i = a[i]*b[i]
    answer += i
print(answer)