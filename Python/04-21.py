# #프로그래머스:문자열을 정수로 바꾸기
# def solution(s) :
#     answer = 0
#     if (0<len(s) and len(s)<6):
#         answer = int(s)
#     return answer

# #프로그래머스:서울에서 김서방 찾기
# seoul = ["Jane", "Kim"]
# def solution(seoul):
#     x = 0
#     for i in seoul:
#         if i == "Kim":
#             answer = "김서방은" + str(x) + "에 있다" 
#             answer = '김서방은 {0}에 있다.'.format(x)
#         else:
#             x += 1
#     return answer

# solution(seoul)
# print(solution(seoul))

#김서방 찾기에 format함수 사용해보기
# seoul = ["Jane","Kim"]
# def solution(seoul):
#     answer = "김서방은{}에 있다".format(seoul.index("Kim"))
#     return answer
# print(solution(seoul))