
def solution(arr,divisor):
    answer = []
    for i  in arr:
        if i % divisor == 0:
            answer.append(i)
    if (answer == []):#나는 if에서 나누어 떨어지는 값이 하나도 없을때 -1을 리스트에 넣는걸 하고 싶다.    
        answer = [-1]
    return(sorted(answer))

print(solution([5,2,1],5))

