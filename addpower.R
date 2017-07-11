library(pwr)
p.t.two <- pwr.t.test(d=0.3, power=0.8, type="two.sample", alternative="two.sided")
plot(p.t.two)
plot(p.t.two, xlab="sample size per group")




library(GWAS.PC)

emat.case<-matrix(c(1,0,0,0,1,0,0,0,1),nrow=3,byrow=T)
emat.ctrl<-matrix(c(1,0,0,0,1,0,0,0,1),nrow=3,byrow=T)


alpha = 5e-8
r = 1.2 
pA=0.01
ncase=15000
nctrl=95000
ncase=42000
nctrl=350000 
pD=0.15



ncase=15000
nctrl=95000
p.1 <- numeric()
rr <- (101:170)/100
for (r in rr){
p.1 <- c(p.1,Power.single(alpha=alpha,r=r,pA=pA,ncase=ncase,nctrl=nctrl,pD=pD,
             emat1=emat.case,type="ndiff",moi="m"))
}
d.5 <- data.frame(effectsize=rr,power=p.1)

ncase=42000
nctrl=350000
p.2 <- numeric()
rr <- (101:170)/100
for (r in rr){
p.2 <- c(p.2,Power.single(alpha=alpha,r=r,pA=pA,ncase=ncase,nctrl=nctrl,pD=pD,
             emat1=emat.case,type="ndiff",moi="m"))
}
d.6 <- data.frame(effectsize=rr,power=p.2)

pA=0.05
ncase=15000
nctrl=95000
p.1 <- numeric()
rr <- (101:170)/100
for (r in rr){
p.1 <- c(p.1,Power.single(alpha=alpha,r=r,pA=pA,ncase=ncase,nctrl=nctrl,pD=pD,
             emat1=emat.case,type="ndiff",moi="m"))
}
d.3 <- data.frame(effectsize=rr,power=p.1)

ncase=42000
nctrl=350000
p.2 <- numeric()
rr <- (101:170)/100
for (r in rr){
p.2 <- c(p.2,Power.single(alpha=alpha,r=r,pA=pA,ncase=ncase,nctrl=nctrl,pD=pD,
             emat1=emat.case,type="ndiff",moi="m"))
}
d.4 <- data.frame(effectsize=rr,power=p.2)

pA=0.1
ncase=15000
nctrl=95000
p.1 <- numeric()
rr <- (101:170)/100
for (r in rr){
p.1 <- c(p.1,Power.single(alpha=alpha,r=r,pA=pA,ncase=ncase,nctrl=nctrl,pD=pD,
             emat1=emat.case,type="ndiff",moi="m"))
}
d.1 <- data.frame(effectsize=rr,power=p.1)

ncase=42000
nctrl=350000
p.2 <- numeric()
rr <- (101:170)/100
for (r in rr){
p.2 <- c(p.2,Power.single(alpha=alpha,r=r,pA=pA,ncase=ncase,nctrl=nctrl,pD=pD,
             emat1=emat.case,type="ndiff",moi="m"))
}
d.2 <- data.frame(effectsize=rr,power=p.2)



library(RColorBrewer)
cols <- brewer.pal(12,"Set1")[1:6]


x11(height=8,width=10)

pdf("power.pdf",height=6,width=10)

layout(matrix(c(1,2),nrow=1))
par(mar=c(4,4,4,0))

plot(smooth.spline(d.1),type="l",xlab="effect size",ylab=expression('test power = 1 - '*beta),col=cols[1])
lines(smooth.spline(d.2),type="l",col=cols[2])
lines(smooth.spline(d.3),type="l",col=cols[3])
lines(smooth.spline(d.4),type="l",col=cols[4])
lines(smooth.spline(d.5),type="l",col=cols[5])
lines(smooth.spline(d.6),type="l",col=cols[6])

par(mar=c(4,4,4,0))
plot(1,type="n",axes=F,xlab="",ylab="")
legend("topleft","alpha=5e-8;\ndisease prevalence=0.15;\nmodel=additive;\ntest=chisq",bty = "n")
legend("left",c(
"Ncase=15000; Nctrl=42000; MAF=0.1; ",
"Ncase=42000; Nctrl=350000; MAF=0.1; ",
"Ncase=15000; Nctrl=42000; MAF=0.05; ",
"Ncase=42000; Nctrl=350000; MAF=0.05; ",
"Ncase=15000; Nctrl=42000; MAF=0.01; ",
"Ncase=42000; Nctrl=350000; MAF=0.01; "),lty = 1,col=cols,bty = "n")
dev.off()

















			 
