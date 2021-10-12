# Solutions

## The game I must lose
n,m=map(int,input().split())<br>
count=0<br>
l=[]<br>
for i in range(1,m+1):<br>
&nbsp;&nbsp;&nbsp;&nbsp;if n%2==0 and i%2!=0:<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;count=count+1<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;l.append(i)<br>
&nbsp;&nbsp;&nbsp;&nbsp;else:<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;continue<br>
print(count, end='\n')<br>
for j in l:<br>
&nbsp;&nbsp;&nbsp;&nbsp;print(j, end=" ")<br>

## Lisa and shelves
n=int(input())<br>
c=0<br>
for i in range(1,n+1):<br>
&nbsp;&nbsp;&nbsp;&nbsp;if n%i==0:<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;c=c+1<br>
&nbsp;&nbsp;&nbsp;&nbsp;else:<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;continue<br>
print(len(l))<br>
