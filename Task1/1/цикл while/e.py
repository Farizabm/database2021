n= int(input())
i = 0
cnt=0
while i<n:
    if 2**i<n:
        cnt+=1
    else:
        break
    i+=1
print(cnt)
        
