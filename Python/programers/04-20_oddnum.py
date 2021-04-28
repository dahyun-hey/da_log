# # 프로그래머스:짝수와 홀수

# def solution(num):
#     if num % 2 == 0:
#         return "Even"
#     elif num % 2 == 1:
#         return "Odd"

# print(solution(4))

#프로그래머스 : 자릿수 더하기
#출제 의도 인트랑 스트링


def solution(n): #solution함수에 n이들어가는 것을 반환해줄게 
#n 이 이 함수의 주인공!
    answer = 0 #반환값의 초기설정
    for i in n:
        i = int(i)
        answer += i
    return answer
    
temp = input()
n = input() #실행순서1번
print(solution(n)) #실행순서2번 : 리턴값이 튀어나옴





