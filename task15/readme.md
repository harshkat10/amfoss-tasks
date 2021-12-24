# euler1
```T=int(input())
for i in range(T):
    N=int(input())
    a=(N-1)//3
    b=(N-1)//5
    c=(N-1)//15
    ans=(a*(a*3+3)/2)+(b*(b*5+5)/2)-(c*(c*15+15)/2)
    print(int(ans))
```
# euler2
```for i in range(int(input())):
    N=int(input())
    f,s=5,8
    sum=10
    while N>f+s:
        third=f+s
        if third%2==0:
            sum+=third
        f,s=s,third
    print(sum)
```
# euler3
```from math import sqrt
for t in range(int(input())):
    l=[]
    n=int(input())
    while n % 2 == 0:
        l.append(2),
        n = n // 2 
    for i in range(3,int(sqrt(n))+1,2):
        while (n % i == 0):
            l.append(i)
            n = n // i
    if n > 2:
        l.append(n)
    print(max(l))
    ```
