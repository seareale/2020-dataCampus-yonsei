# 1차원 : vector
# 2차원 : matrix(모두 데이터 타입 동일), data.frame

z <- matrix(1:20, nrow=4, ncol=5)
print(z)

z2 <- matrix(1:20, nrow=4, ncol=5, byrow=T)
print(z2)

x <- 1:4
y <- 5:8
m1 <- cbind(x,y)
m2 <- rbind(x,y)
print(m1)
print(m2)

print(z[2,3])
print(z[2,])
print(z[,3])

print(rownames(z))
print(colnames(z))
rownames(z) <- c("row1","row2","row3","row4")
colnames(z) <- c("col1","col2","col3","col4","col5")
print(rownames(z))
print(colnames(z))

print(z["row1",])
print(z[,"col1"])

cat("-------------------------------------------\n")

m <- c(10, 40, 60, 20)
f <- c(21, 60, 70, 30)
score <- cbind(m,f)
print(score)

colnames(score) <- c("male", "female")
print(score)

print(score[2,])

print(score[,"female"])

print(score[3,2])

cat("-------------------------------------------\n")

city <- c("Seoul","Tokyo","Washington") 
rank <- c(1,3,2) 
city.info <- data.frame(city, rank)
print(city.info)

print(iris) 
# Sepal.Length,Sepal.Width : 꽃받침 길이, 폭
# Petal.Length,Petal.Width  : 꽃잎 길이, 폭
# Species : 종(種)

print(is.data.frame(iris)) # 객체가 data.frame 인지 확인
print(iris[,"Species"])    # 결과가 vector ,   iris[,5] 와 동일 
print(iris$Species)        # 결과가 vector (matrix 에서는 안됨)
print(iris["Species"])     # 결과가 150x1 data frame

print(iris[,c(1:2)])              # 앞의 2개 컬럼 데이터 보기
print(iris[,c(1,3,5)])
print(iris[,c("Sepal.Length","Species")])
print(iris[1:50,])
print(iris[1:50,c(1,3)])

print(dim(iris))    # 행과 열의 수 보이기
print(nrow(iris))   # 행의 수 보이기
print(ncol(iris))        # 열의 수 보이기
print(names(iris))     # 컬럼이름 보이기, colnames() 와 동일
print(head(iris))        # 데이터셋의 앞부분 일부 보기
print(tail(iris))        # 데이터셋의 뒷부분 일부 보기

print(str(iris))           # 데이터셋 요약 보기
print(unique(iris[,5]))    # 종의 종류 보기 (중복 제거)
print(table(iris[,"Species"])) # 품종의 종류별 instance count

print(colSums(iris[,-5]))      # 열별 합계
print(colMeans(iris[,-5]))     # 열별 평균
print(rowSums(iris[,-5]))      # 행별 합계
print(rowMeans(iris[,-5]))     # 행별 평균

cat("-------------------------------------------\n")

z <- matrix(1:20, nrow=4, ncol=5)
print(z)
print(t(z))            # 행과열 방향 변환

IR.1 <- subset(iris, Species=="setosa")
print(IR.1)
IR.2 <- subset(iris, Sepal.Length>5.0 & 
    Sepal.Width>4.0)
print(IR.2)

cat("-------------------------------------------\n")

a <- matrix(1:20,4,5)
b <- matrix(21:40,4,5)
print(a)
print(b)
print(a+b)
print(b-a)
print(b/a)
print(a*b)

# 자료구조의 확인
print(class(iris))
print(class(state.x77)) # 미국 50개주에 대한 통계데이터
print(is.matrix(iris))
print(is.data.frame(iris))

iris.m <- as.matrix(iris[,1:4]) # iris[,-5]
print(head(iris.m))
print(class(iris.m))

st <- data.frame(state.x77)
print(head(st))
print(class(st))

# pairs(x, ...)
# barplot(height, ...)

cat("-------------------------------------------\n")

st <- data.frame(state.x77)
print(st)
print(colnames(st))
print(rownames(st))
print(dim(st))
print(str(st))
print(rowSums(st))
print(rowMeans(st))
print(colSums(st))
print(colMeans(st))
print(st["Florida",])
###################################
print(st[,"Income"])
print(st["Texas","Area"])
print(st["Ohio",c("Population","Income")])
print(subset(st, Population >= 5000))  # print(st["Population">=5000])
print(subset(st, Income >= 4500)[,c("Population", "Income","Area")]) # st["Income">4500,c("Population","Income","Area")]
print(nrow(subset(st, Income >= 4500))) # table(st["Income"]>4500)
print(subset(st, Area >= 100000 & Frost >=120))
# condi <- "Area">100000&"Frost">120
# st[condi]

print(subset(st, Area >= 100000 | Frost >=120))
x <- colMeans(subset(st, Illiteracy >= 2.0)["Income"])
print(x)
# st["Illiteracy" > 2.0,"Income"]
# a <- st["Illiteracy" > 2.0,"Income"]
# mean(a)

y <- colMeans(subset(st, Illiteracy < 2.0)["Income"])
print(y-x)
# b <- st["Illiteracy" < 2.0,"Income"]
# mean(b)
# mean(a)-mean(b)

print(rownames(st[which.max(st$Life.Exp),])) #print(max(st[,"Life.Exp"]))
print(subset(st, Income > st["Pennsylvania","Income"])) # st[,"Income">st["Pennsylvania","Income"]]
# subset(st, st$Income > st["Pennsylvania","Income"])
cat("-------------------------------------------\n")

setwd("C:/.../bigjob_campus/R_basics/Rworks") # \ 가 아니라 / 사용
mydata <- read.csv("test.csv", header = TRUE)
print(mydata)
print(class(mydata))

mynew <- mydata[,c(2,3)]
write.csv(mynew, "kid_new.csv", 
                 row.names=F, quote=F)

# 파일 여는 방법
# 1 폴더 지정
#   setwd("C:/Rwork")
#   mydata <- read.csv("test.csv", header = TRUE)
# 2 경로 지정
#   mydata <- read.csv("C:/Rwork/test.csv", header = TRUE)
# 3 탐색기 열기
#   mydata <- read.csv(file.choose(), header = TRUE)

# 한글깨짐 -> UTF-8
# 인코딩 옵션 추가
#   mydata <- read.csv("test.csv", header = TRUE, encoding="utf-8") # euc-kr

tmp <- data.frame(state.x77)
write.csv(subset(tmp,Income>=5000), "rich_state.csv")

ds <- read.csv("rich_state.csv", header=T)
print(ds)

cat("-------------------------------------------\n")

# List 
# 벡터와 비슷하나 벡터와 달리 여러 자료형의 데이터를 섞어서 저장 할 수 있다. 
# (심지어 벡터나, data frame 등도 원소로 저장 가능)
member <- list(name='kim',address='pusan',tel='010-1234-5678', age=20, married=FALSE)
print(member)

print(member[1])
print(member[[1]])       #list 에서 요소값을 불러올때 [[]]
print(member$name)


# factor
# 역시 vector 와 유사한 자료구조.
# 문자형 변수로서 특정 종류의 값만을 가질 수 있는 데이터 타입
# ex) 혈액형

blood.type <- factor(c("A", "A", "AB", "O", "B"))
print(blood.type)
print(is.factor(blood.type))

# level 순서대로 숫자 변환
print(as.numeric(blood.type))

cat("-------------------------------------------\n")

## 패키지
# (1) 그 함수가 포함된 package 를 install  (한번만 하면 된다) - install.packages("TSA") 
# (2) package 를 불러온다 (library, require 함수 이용)
# (3) 원하는 함수를 사용한다.

# 패키지 사용 예시
# install.packages("ggplot2")
library(ggplot2) # 패키지 불러오기

scatter <- ggplot(data=iris, aes(x = Sepal.Length, y = Sepal.Width)) 
print(scatter + geom_point(aes(color=Species, shape=Species)) +
  xlab("Sepal Length") +  ylab("Sepal Width") +
  ggtitle("Sepal Length-Width"))

# matrix, data frame 편리하게 보기
View(iris)