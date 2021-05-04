#프로그래머스:핸드폰 번호 가리기
#1번 i에 들어오는 문자를 별로찍기
def solution(s):
    answer = ""
    for i in range(len(s)-4): 
            i = "*"
            answer += str(i)
    j = s[-4:]
    answer = str(answer) + j
    return answer
f = '0207'
print(solution(f))
     
    #나는 *을 찍다가 뒤에 숫자가 4개만 남으면, 네개를 그냥 숫자로 반환하고 싶다.

#다른사람의 풀이
def hide_numbers(s):
    return "*"*(len(s)-4) + s[-4:]

print("결과 : " + hide_numbers('01033334444'));