# # #백준_나머지
# # A, B, C = map(int, input().split())
# # print((A+B)%C)
# # print(((A%C) + (B%C))%C)
# # print((A*B)%C)
# # print(((A%C) * (B%C))%C)

# #백준_리본_별찍기
# while문 이용
# level = int(input())
# height = 9

# while level < height+1:
#     print('*' *(level-4) + ' '*(height-level) + ' '*(height-level) + '*' *(level-4)) 
#     level += 1

# level = 5
# height = 9  
# while level < height+1:
#     print('*'*(height-level) + ' '*(level-4) + ' '*(level-4) + '*'*(height-level)) 
#     level += 1

# #for문 이용
# level = int(input())
# height = 2*level-1
# for i in range(level,height+1):
#         print('*' *(i-4) + ' '*(height-i) + ' '*(height-i) + '*' *(i-4)) 
# for j in range(level,height+1):
#         print('*'*(height-j) + ' '*(j-4) + ' '*(j-4) + '*'*(height-j))
# #백준_정답
# level = int(input())
# for i in range(1,level):
#     print('*'*i +' '*2*(level-i) +'*'*i )
# for i in range(level,0,-1): #n부터 0까지 1씩 감소시키기
#     print('*'*i +' '*2*(level-i) +'*'*i )

level = int(input())
for i in range(level,0):
        print(' '* (5-i) + '*' * (i-1))