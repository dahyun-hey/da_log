#프로그래머스:내림차순 정렬

def solution(n):
    s_list = list(map(int,str(n)))
    #n이라는 정수를 내림차순 하기위해서는 한글자한글자로 찢어 문자열로 봐야한다.
    #문자열로 한글자씩 찢은뒤 내림차순 정렬을 위해 정수형태로 리스트에 저장해준다.
    s_list.sort(reverse=True)#int형의 리스트를 내림차순 정렬해준다.

    answer = '' #문자형인 변수를 생성하고 싶을때는 ''을 써주자.
    for i in s_list:#여기서 S_list에 정수가 들어있어서 i의 데이터 타입은int 이다 
        answer+=str(i)#int+str은 오류가 나므로, 리스트의 값을 그대로 뽑기위해 i의 데이터타입을  str로 바꿔준다
    return answer

print(solution(118372))


