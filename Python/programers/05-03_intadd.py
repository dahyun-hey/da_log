#프로그래머스:두 정수 사이의 합
def solution(a,b):
   
    if b>a:
        answer = 0
        for i in range(a,b+1):
            answer+=i
    elif a>b:
        answer = 0
        for i in range(b,a+1):
            answer+=i 
    else:
        answer = a
    return(answer)

print(solution(2,3))



##다른사람의 풀이
def adder(a, b):
    # 함수를 완성하세요
    if a > b: a, b = b, a

    return sum(range(a,b+1))

# 아래는 테스트로 출력해 보기 위한 코드입니다.
print( adder(3, 5))