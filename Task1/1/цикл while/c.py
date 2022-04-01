import math
n =int(input())
i = 0
while i<int(math.sqrt(n))+1:
    if 2**i >n:
        break
    if 2**i<=n:
        print(2**i,end=' ')
    i+=1
