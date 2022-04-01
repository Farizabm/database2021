n = int(input())
cnt=0
arr = list(map(int, input().split()))
for i in range(len(arr)):
    if arr[i]>0:
     cnt+=1
print(cnt)     
