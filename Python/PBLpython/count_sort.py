import random

length = int(input('리스트의 길이 입력: '))
listA = []
cntA = 0
while cntA < length:#입력한 길이만큼 랜덤값을 가진 리스트생성
    data = random.randint(1, length)
    listA.append(data)
    cntA += 1
print(listA, end=' ')

maxA = max(listA)#최대,최소값 변수 지정 -> 나오지않은 값은 세지 않기 위해서
minA = min(listA)

listC = []
cntC = 0
while cntC < maxA: #최댓값만큼 0을 채운 리스트 생성
    listC.append(0)
    cntC += 1

print(listC)

for i in range(1, maxA+1): #listA의 랜덤값을  0부터 최대값까지 찾아서 카운트
    search = listA.count(i)
    listC[i-1] = search

print(listA, end = ' ')
print(listC)
print()
print('카운트 리스트 완성')
listB =[]
while listC.count(0) < len(listC): 
    for i in listC:
        if i != 0: #listC 값에서 0이 아니면
            for j in range(i): #해당 값의 갯수만큼 listB에 추구
                index_value = listC.index(i)
                listB.append(index_value + 1)
        listC[index_value] = 0 #listC가 0으로 가득차면 탈출!
        print(listA ,listC ,listB)