def Xor(x,y):
    if x==1 and y==0 or x==0 and y==1:
        return 1
    else:
        return 0
arr = list(map(int, input().split()))
a=0
b=0
for i in range(len(arr)):
    a=arr[0]
    b=arr[1]
    
print(Xor(a,b))
