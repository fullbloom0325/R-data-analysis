#수업 2주차

name=c("김철수","성춘향","홍길동","김영희","강민지","고은지","김성욱","김유진",
       "이보름","안정아","조세호")
hwp=c(50,55,60,65,70,75,80,85,90,95,100)
excel = c(99,96,93,90,87,84,81,78,75,72,69)
ppt = c(79,89,99,79,89,99,79,89,99,79,89)
sw = c(98,95,93,91,89,98,95,93,91,89,98)
f_ex = data.frame(name, hwp, excel, ppt, sw)
f_ex

f_ex$name # 생성한 프레임에서 name 속성값 출력
f_ex[1,] # 생성한 프레임에서 1행값 출력
f_ex[,2] # 생성한 프레임에서 1행값 출력
f_ex[f_ex$name=="강민지",] # 생성한 프레임에서 강민지 정보 추출
f_ex[f_ex$name=="조세호",c(1,2,4)]
f_ex[f_ex$name=="조세호",c("name","hwp","sw")]
#C:\Users\82107\Desktop\데이터 분석\R
getwd()
setwd("C:/Users/82107/Desktop/데이터 분석/R") #\\\를 //로 바꿔준다.

install.packages("readxl")
library(readxl)

df_excel_exam = read_excel("excel-exam.xlsx")
df_excel_exam

df_csv_exam=read.csv("excel-exam.csv")
df_csv_exam #CSV파일로 저장

#####데이터프레임에서 유용한 함수#####
data(cars);cars
head(cars)
#그냥 speed 혹은 dist 라는 변수를 부르면 에러남 
speed; dist
cars$speed ; cars$speed

attach(cars)# 앞으로 변수명에 별도의$ 붙이지 않아도 됨
speed; dist
# 다른 변수가 있어서 cars라는 데이터프레임을 변경하려면 
#detach 사용함
detach(cars) ; speed; dist

#with 함수 : attach 대신 임시로 쓸수있는 함수
mean(cars$speed) ; max(cars$speed)
with(cars,mean(speed))
with(cars, c(mean(speed),max(speed))) #여러개 쓰고싶을때 ()

#subset : 데이터 프레임에서 일부분 추출할 때 아주 유용
subset(cars,speed>20)
cars[cars$speed>20,]#[행,열]if 문이다. 
attach(cars)
cars[speed>20,]
#####################
subset(cars, speed>20, select = c(dist)) #subset 중요
cars[speed>20,c("dist")]
cars[speed>20,c(1,2)]

#dist 변수를 빼고 생각하는 방법
subset(cars, speed>20,select=-c(dist))
cars[speed>20,-c(2)]

#######################
no = c(1,2,3)
name=c("김대한","이민국","우나라")
hwp=c(95,89,78)

#A라는 데이터프레임 생성
A=data.frame(NO=no, NAME=name,HWP=hwp)

no=c(1,2,4)
name=c("김대한","이민국","고조선")
excem=c(85,96,100)

#B라는 데이터프레임 생성
B=data.frame(NO=no,NAME=name,EXCEL=excel)

cbind(A,B) #bind중요
rbind(A,B)
# HWP와 EXCEL이 일치하지 않음

rownames(A);rownames(B) #rowname,colname중요
colnames(A);colnames(B)

#C라는 데이터셋을 카피해서 colnames를 통일시킴
C=B
colnames(C)=c("NO","NAME","HWP")
rbind(A,C)

merge(A,B) #merge 중요
merge(A,B, by="NO")
D = merge(A,B,by="NO") ; colnames(D)
merge(A,B,by=c("NO","NAME"))

merge(A,B, by=c("NO", "NAME"),all=T)
#all = T를 씀으로 모든 것을 머지할 수 있음

#aggregate 함부로 연산할 수 없음
testDF <-  data.frame(
  v1 = c(1,1,1,1,2,2,2,2),
  v2 = c(3,4,3,4,3,4,3,4))
by1 <- c("red","blue","red","blue","red","blue","red","blue")
by2 <- c("m","m","m","m","f","f","f","f")
dt = data.frame(testDF ,by1,by2)


a1 = apply(testDF, 1, sum)
a2 = apply(testDF, 1, mean)
df = data.frame(dt,a1,a2)

#v1과 v2변수에 대해 by1과by2 구분에 의해 평균구하기
aggregate(cbind(v1,v2)~by1+by2,dt,mean)
aggregate(.~by1+by2, dt,mean)

df_excel_exam = read_excel("excel-exam.xlsx")
df_excel_exam
