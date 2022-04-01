n= int(input())
i = 0
while i<n:
    if 2**i>n:
        print("NO")
        break
    if 2**i==n:
        print("YES")
        break
    i+=1
