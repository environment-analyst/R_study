# R function 
# 사용자 정의 함수----

myfunc <- function(){
  print('Hello, World!')
}

myfunc()

# 인수를 받아서 전달----

sum <- function(x,y){
  x+y
}

sum(1,2)

# 인수에 기본값 설정----
pow <- function(x,y=2){
  x^y
}

pow(3)
pow(3,4)

# return----
sum <- function(x,y){
  return(x+y)
}
sum(2,3)


# 결과를 벡터(or 리스트)에 저장하여, 여러 값을 동시에 반환할 수 있음
math <- function(x,y){
  add <- x+y
  sub <- x-y
  mul <- x*y
  div <- x/y
  c(addition = add,subtraction = sub, multiplication = mul, division = div)
}

math(3,4)

# 아래 myfunc 함수는 생략부호(...)를 사용하여, 모든 인수를 수용할 수 있음----
myfunc <-  function(x, ...){
  print(x)
  summary(...)
  
}

v <- 1:10

myfunc("summary of v:",v)

# 사용자 정의 함수 작성 예제----
#  R 함수 정의

R <-  function(x1,x2){
  y <- x1^2 + x2^2
  return(y)
}

f(x1=c(1,2),x2=c(3,4))
# f의 결과는 2개 출력 : 10, 20

# 히스토그램과 상자그림을 그리는 함수----

# R 함수 정의

normal_hist <-  function(m,s,n) {
  x <-  rnorm(n, mean=m, sd=s)
  hist(x, main=paste0("N(",m,",",s^2,")"))
}
# 모편균이 m이고 모표준편차가 s인 정규분포에서 난수 n개를 생성하여 
# 히스토그램과 상자그림을 그리는 함수

normal_hist(m=5,s=3,n=100)
