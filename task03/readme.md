# Solutions

## The game I must lose
wrong answer, will update if i figure it out
```
n,m=map(int,input().split())
count=0
l=[]
for i in range(1,m+1):
    if n%2==0 and i%2!=0:
        count=count+1
        l.append(i)
    else:
        continue
print(count, end='\n')
for j in l:
    print(j, end=" ")
```
## Lisa and shelves
wrong answer, will update if i figure it out
```
n=int(input())
l=[]
for i in range(1,n+1):
    if n%i==0:
        l.append(i)
    else:
        continue
print(len(l))
```
