with open('answer.txt', 'r') as f:
    rows = f.readlines()
    cnt = 0
    for row in rows:
        cnt += int(row.rstrip())

print(cnt)