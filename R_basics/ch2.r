d <- 101:200

print(d)
print(d[10])
print(d[(length(d)-10):length(d)])
print(d[seq(2,100,2)])

d.20 <- d[1:20]
print(d.20)
print(d.20[-5])
print(d.20[-c(5,7,9)])

cat("-------------------------------------------\n")

d <- c(1,4,3,7,8)
cat(2*d, "\n", d-5, "\n", 3*d+4, "\n")

x <- c(1,2,3)
y <- c(4,5)
print(c(x,y))
# z <- c(x,y)

x <- c(1,2,3)
y <- c(4,5,6)
print(x+y)
# z <- x + y

cat("-------------------------------------------\n")

# sum()  mean()  median()  max(),min()  var()  sd()  sort()  range()  length()
x <- seq(1,100,3)
print(sum(x))           # 합
print(sum(2*x))         # 2배 합
print(length(x))        # 갯수
print(mean(x[1:20]))    # 1번째부터 20번째까지 평균
print(max(x))           # 최댓값
print(min(x))           # 최솟값
print(sort(x, decreasing = T)) # 내림차순
print(median(x))        # 중앙값
print(sum(x)/length(x)) # 합/갯수

cat("-------------------------------------------\n")

v1 <- c(4,2,3,1,6,10,8,9)

print(sort(x = v1, decreasing=TRUE))
print(sort(v1, FALSE))
print(sort(v1, T))

cat("-------------------------------------------\n")

d1 <- 1:50
d2 <- 51:100

print(d1)
print(d2)
cat(d1+d2, "\n", d2-d1, "\n", d1*d2, "\n", d2/d1, "\n")
cat(sum(d1), sum(d2), "\n")
cat(max(d2), min(d2), "\n")
cat(mean(d2), mean(d1), mean(d2) - mean(d1), "\n")
print(sort(d1,T))
d3 <- c(sort(d1,T)[1:10],sort(d2,T)[1:10])
print(d3)

cat("-------------------------------------------\n")

d <- c(1,2,3,4,5,6,7,8,9)

print(d>=5)                 
print(d[d>5])     
print(sum(d>5))     # 5보다 큰 값의 개수 출력 - TRUE 값만 더함
print(sum(d[d>5]))  # 5 보다 큰 값의 합계를 출력
print(d==5) 

condi <- d > 5 & d < 8  # 조건을 변수에 저장
print(d[condi])         # 조건에 맞는 값 선택

cat("-------------------------------------------\n")

v1 <- 51:90

print(v1[v1<60])                        # v1 에서  60 보다 작은 수 들을 보이시오
print(sum(v1<70))                       # v1 에서  70 보다 작은 수 들은 몇개인지 보이시오
print(sum(v1[v1>65]))                   # v1 에서  65 보다 큰 수들의 합을 보이시오
condi <- v1 > 60 & v1 < 73              # v1 에서  60보다 크고 73 보다 작은 수들을 보이시오
print(v1[condi])
condi <- v1 < 65 | v1 > 80              # v1 에서  65 보다 작거나 80 보다 큰 수들을 보이시오
print(v1[condi])
condi <- v1 %% 7 == 3                   # v1 에서  7로 나눈 나머지가 3 인 숫자들만 보이시오
print(v1[condi])
print(sum(v1[v1%%2==0]))                # v1 에서  짝수들의 합계를 보이시오
condi <- (v1 %% 2 == 1) | v1 > 80       # v1 에서  홀수이거나 80 보다 큰 수를 보이시오
print(v1[condi])
condi <- (v1 %% 3 == 0) & (v1 %% 5 == 0)    # v1 에서  3과 5의 공배수를 보이시오
print(v1[condi])

# 조건에 만족하는 요소가 없으면 integer(0)을 출력

cat("-------------------------------------------\n")

# 함수 사용법
help(sum) # 함수 이름 알 때
? sum
help.search("average")  # 함수 이름 모를 때
