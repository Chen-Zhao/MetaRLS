sim_fisher <- function(n,e,p){n=round(n/2); a=n*p*e/(1-p+p*e);b=n-a;c=n*p;d=n*(1-p); d =cbind(c(a,b),c(c,d)); fisher.test(d); }
sim_fisher(1000,e=1.5,p=0.1)

sim_chi <- function(n,e,p){n=round(n/2);  a=n*p*e/(1-p+p*e);b=n-a;c=n*p;d=n*(1-p); d =cbind(c(a,b),c(c,d)); chisq.test(d); }

sim_chi_n1n2 <- function(case,control,e,p){a=case*p*e/(1-p+p*e);b=case-a;c=control*p;d=control*(1-p); d =cbind(c(a,b),c(c,d)); chisq.test(d); }


p.value <- sapply(c(100,1000,10000,100000,300000),function(n,e,p){
   sim_chi(n,e,p)$p.value
},e=1.2,p=0.1)
p.value
p.value <- sapply(c(100,1000,10000,100000,300000),function(n,e,p){
   sim_chi(n,e,p)$p.value
},e=1.1,p=0.1)
p.value

d <- read.delim("test.nature.s1.txt",stringsAsFactors=F)
p.100k <- apply(d,1,function(x){
   sim_chi(100000,exp(abs(x[2])),ifelse(x[1]>0.5,1-x[1],x[1]))$p.value
})
p.300k <- apply(d,1,function(x){
   sim_chi(300000,exp(abs(x[2])),ifelse(x[1]>0.5,1-x[1],x[1]))$p.value
})
p.1000k <- apply(d,1,function(x){
   sim_chi(1000000,exp(abs(x[2])),ifelse(x[1]>0.5,1-x[1],x[1]))$p.value
})
p.2500k <- apply(d,1,function(x){
   sim_chi(2500000,exp(abs(x[2])),ifelse(x[1]>0.5,1-x[1],x[1]))$p.value
})

# study1. rs9320913: 0.483	0.106	4.19×10−9
# study2. rs9320913: 0.48	0.024	2.46E-19

sim_chi(2500000,exp(0.106),0.483)$p.value
sim_chi(500000,exp(0.106),0.483)$p.value

test.nature.s1.txt

FrequencyA1	Effect size
0.18	0.019
0.37	0.017
0.09	0.035
0.24	-0.017
0.41	-0.016
0.21	0.020
0.59	0.015
0.72	0.017
0.15	0.020
0.33	0.016
0.12	0.022
0.59	0.015
0.64	-0.017
0.84	-0.020
0.29	-0.018
0.46	-0.018
0.27	-0.017
0.39	0.027
0.59	-0.016
0.63	0.016
0.46	-0.016
0.63	-0.015
0.40	-0.016
0.17	-0.022
0.05	0.034
0.96	0.048
0.32	0.025
0.57	0.024
0.95	0.036
0.64	-0.016
0.52	-0.015
0.66	0.016
0.67	-0.016
0.90	0.024
0.60	-0.015
0.31	0.018
0.17	0.019
0.50	0.015
0.61	-0.017
0.39	-0.015
0.18	0.021
0.68	0.016
0.78	0.017
0.69	0.016
0.67	-0.017
0.48	0.024
0.75	0.017
0.04	-0.037
0.51	0.014
0.53	0.016
0.27	0.017
0.80	0.020
0.34	-0.017
0.46	-0.016
0.55	-0.016
0.59	-0.023
0.45	0.015
0.46	-0.015
0.66	0.018
0.40	-0.015
0.63	0.015
0.61	0.017
0.67	-0.020
0.62	0.015
0.51	0.014
0.21	0.023
0.72	0.024
0.61	0.018
0.75	-0.018
0.26	-0.019
0.81	0.025
0.34	-0.016
0.39	0.015
0.74	-0.018


