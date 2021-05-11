#프로그래머스 수박수
#숫자를 넣었을때 그길이 만큼의 
def solution(n):
    answer = ''
    w = '수'
    m = '박'
    n = list(map(int,str(n))) 
    for i  in n:
        if n%2 == 0:
            

        elif n%2 == 1:
            answer = w+m
        
        return answer

solution(4) 

