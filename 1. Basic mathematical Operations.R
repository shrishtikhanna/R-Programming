x<-c*10,1,3,5,7)
1/x
6+9
x<-15
5*x
x<-2
2*x
x<- c(2,5,8,9,11)
x*2
sum*(x-mean(x))^2

before<-c(78,72,78,79,105)
after<-c(67,65,79,70,93)
p<- before-after
p
1:10
-2:10
9:5
seq(from=2, to=6, by=1)
seq(2,6,1)
rep(5,3)
rep(2:5,each=3)
x<-c(5,6,7,8,9)
x[3]
x[c(2,3,5)]
x[1:3]
x[2:5]
x<- c("abcd","efgh")
i<- c(3,1,1,2,1)
letters
letters(x[1],3:1)
?Letters
rnorm(10)
x<-rnorm(10)
x
x>1
([x],x>1)
x[x<1]
x[-1/2:1]
b<- x*-1
[x]*-1
g<- c("Hello","How are you","Lovely to meet you", 42)
g
g[-3]
c(g[1:2],"Goodbye")
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
c%*%x
