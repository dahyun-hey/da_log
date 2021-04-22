#백준 11718번 그대로 출력하기
while True:
    try:
        print(input())
    except EOFError:
        break
# -------------------------------
import sys
for line in sys.stdin:
    print(line, end='')
