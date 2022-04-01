def double_power(x,y):
    cnt=x**y
    return cnt
arr = list(map(int, input().split()))
a=0
b=0
for i in range(len(arr)):
    a=arr[0]
    b=arr[1]
    
print(double_power(a,b))
