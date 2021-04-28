#프로그래머스: 가운데 글자 가져오기
#단어 s의 가운데 글자를 반환하는 함수, solution을 만들어 보세요. 단어의 길이가 짝수라면 가운데 두글자를 반환하면 됩니다.

def solution(s):
    for i in range(len(s)+1):
        if len(s)%2 == 0:
            a = s[int(len(s)/2)-1] + s[int(len(s)/2)]
        elif len(s)%2 == 1:
            a = s[int(len(s)/2+0.5)-1]
    return a

s = "asdfasdf"
print(solution(s))