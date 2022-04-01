import math
n= int(input())
for i in range(1,int(math.sqrt(n))+1):
    if i*i <=n:
        print(i*i)
