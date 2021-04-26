# # #점프 투 파이선:리스트
# ##리스트의 사용방법
# # odd = [1, 3, 5, 7, 9]
# # print(odd)

# a = []
# print(a)
# b =[1, 2, 3]
# print(b)
# c = ['Neo','Technology','City','NCT']
# print(c)
# d =[1, 2, 'nct','dream']
# print(d)
# e = [1, 2, ['nct','dream']]
# print(e)

##리스트의 인덱싱과 슬라이싱
# print(c[0]+c[1])
# print(c[-4])
# a = [1, 2, 3, ['a', 'b', 'c']]
# print(a[0])
# print(a[-1])
# print(a[3])
# print(a[-1][0])
# print(a[-2])

# a = [1, 2, ['a', 'b', ['Life', 'is']]]
# print(a[2][2][0])

##리스트의 슬라이싱
# a = [1, 2 , 3, 4, 5]
# print(a[0:2])
# print(a[1:3])

# a = '12345'
# print(a[0:2])

# a = [1, 2, 3, ['a','b','c'],4,5]
# print(a[3][:2])

# #리스트 더하기
a = [1, 2, 3]
b = [4, 5, 6]
# print(a + b)
# print(a*3)
# print(len(a))

# print(str(a[0]) +"hi") #a[0]자체는 int로 인식, hi는 str으로 인식
# print(type(a[0]))

#리스트의 수정과 삭제
# a[2] = 4
# print(a)
# del a[1]#1번째의 요솟값을 삭제
# print(a)
# a[2] = 5#수정이라서 1번째 다음 2번째는 안됨

#리스트의 요소 추가
a =[1, 2, 3]

