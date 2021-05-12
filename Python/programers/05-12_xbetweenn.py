#오늘의 프로그래머스:x만큼 간격이 있는 n개의 숫자

def solution (x,n) :
    answer=[]
    for i  in range(1,n+1): 
        answer.appendi*x
    
    return answer

print(solution(2,5))
#===================================
#다른사람의 풀이
def number_generator(x, n):
    # 함수를 완성하세요
    return [i * x + x for i in range(n)]
print(number_generator(2, 5))