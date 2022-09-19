a=3;b=5;c=7
a+b
ls()
ls.str()
rm(list=ls())
mode(a)
new_var = c(1.2,3,4,5,6,7,8,9,10)
new_var = c(1:10)
new_var = seq(1,10)
new_var = seq(1,10,by = 2)
var4=c(5,2,9,6,1)
min(var4)
c='A';mode(c)
var = c('a','b','c','d','e','f') ;var
var4 = "LOVE" ; nchar(var4);length(var4)
var2 = "Everybody Loves You"
toupper(var2);tolower(var2)
gsub('loves', 'hates',var2)
gsub('Loves', 'hates',var2)
substring(var2,1,6)
substring(var2,6)
strsplit(var2,"")
strsplit(var2,'o')
var = c("1","2","3","4","5")
num = c(1,2,3,4,5)
mode(var) ; mode(num)
mode(var)='numeric'
var
var = c(83,42,31,99,76,57)
mean(var) ; sum(var) ; min(var) ; max(var)
ceiling(6.46) ; floor(6.46); round(6.46) ; round(8.94);round(0.5353,2)
#round (~,2) 에서 2는 소수점 반올림 자릿수를 결정

for(i in 1:10) {
  print(i)
}
sum = 0
x= c(1,3,5,7,9)
for(i in x) {
  sum=sum+i
}
print(sum)

sum=0
for(i in 1:100){
  sum=sum+i
}
print(sum)

sum=0 ; i=1
while(i <=10){
  sum=sum+i
  i=i+1
}
print(sum)

id=c()
sum1=c()
sum=0
for(i in 1:5){
  sum=sum+i
  id=c(id,i)

  sum1=c(sum1,sum)
}
r = cbind(id,sum1)
r
sum=0
x=seq(1,10)
for(i in x){
  if(i %%2==0) 
    next
  sum=sum+i 
}
print(sum)

sum1=0;sum2=0
for(i in 1:100){
  if (i %% 2 !=0){
    sum1=sum1+i
    
  }
  else
    sum2=sum2+i
}
cat('홀수합',sum1,'짝수합',sum2,'전체',sum1+sum2)


sum1=0;sum2=0
for(i in 2001:3001){
  if (i %% 2 !=0){
    sum1=sum1+i
    
  }
  else
    sum2=sum2+i
}
cat('홀수합',sum1,'짝수합',sum2,'전체',sum1+sum2)

x=seq(2001,3001,3)
sum1=0;sum2=0
for(i in x){
  if (i %% 2 !=0){
    sum1=sum1+i
    
  }
  else
    sum2=sum2+i
}
cat('홀수합',sum1,'짝수합',sum2,'전체',sum1+sum2)

