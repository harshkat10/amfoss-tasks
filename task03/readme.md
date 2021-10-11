# Hackerrank username
Harshith ;  hrsh5051@gmail.com

# Solutions

## Lisa and shelves

n=int(input())<br>
l=[]<br>
for i in range(1,n+1):<br>
&nbsp;&nbsp;&nbsp;&nbsp;if n%i==0:<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;l.append(i)<br>
&nbsp;&nbsp;&nbsp;&nbsp;else:<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;continue<br>
print(len(l))<br>
