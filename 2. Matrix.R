MATRICES

matrix(1:12,nrow=3, ncol=4)
matrix(1:12,nrow=3)
matrix(1:3,nrow=3, ncol=4)

diag(1:3)
1:5%o%1:5

b<-rnorm(10)
b<1
b[b<1]
b[-1/2<=b<=1]

matrix(1:12, 3,4)
matrix( rnorm(12) 3,4)

matrix(1:12, 3)
matrix(1:3, nrow=3, ncol=4)
matrix(1:12, nrow=3, byrow=TRUE)

diag(3)

diag(1:3)

1:5
a<- 1:5
b<-1:5
a%b
a o b
a 0 b
a%o%b

outer(1:3, 1:4,"+")

c<-matrix(c(1:8,10))
c
b<-matrix(c(1:8,10),3,3)
b
c<-c(1,2,3)
c
b%*%c
b*ct(b)
b
t(b)
det(b)
diag(b)

solve(b)

h<- matrix(c(1,2,3,4,2,6,-3,-1,-3), nrow=3, ncol=3)
h
c<-t(h)
c
p<- matrix(c(1,2,3,4,5,6,7,8), 2,4)
p
s<-matrix(seq(-1,1,2), nrow=15,ncol=10,byrow=TRUE)
s
s*-1
a<- matrix(c(1,1,1, 0,0,0, 0,0,0 ,0,0,0, 0,0,0),5,3, byrow=TRUE)
a
b<-matrix(c( 0,0,0,1,1,1, 0,0,0 ,0,0,0, 0,0,0),5,3, byrow=TRUE) 
b          
c<--matrix(c( 0,0,0,0,0,0,1,1,1,0,0,0,0,0,0),5,3, byrow=TRUE) 
c
rbind(a,b,c)
a<-matrix(1:9,3,3,byrow=TRUE)
a
t(a)
1:4%o%1:2
1:9%o%1:9
P<-matrix(c("a+2b+3c+4d+5e","2a+3b+4c+5d+e","3a+4b+5c+d+2e", "4a+5b+C+2d+3e", "5a+b+2c+3d+4e"),5,1)
g<-matrix(data(a,b,c,d,e,a,b,c,d,e,a,b,c,d,e,a,b,c,d,e,a,b,c,d,e),5,5)

a<-matrix(c("a","b","c","d","e"),1,5)
a
b<- matrix(c(1,2,3,4,5),nrow=5,ncol=1)
b
a %*% b
a*b
a<-matrix(c(1,2,3,4,5,2,3,4,5,1,3,4,5,1,2,4,5,1,2,3,5,1,2,3,4), 5,5, byrow=TRUE)
a
b<- matrix(c(-5,2,5,10,11), 5,1)
b
round(solve(a, b), 5)