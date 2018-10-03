#### Keilsohn
#### Standard Error, Confidence Internval, Z and T-test



### Determine Confidence Intervals
L1<-length(df_94$Len)
M1<-mean(df_94$Len)
SE1<-sd(df_94$Len)/sqrt(L1) ## Calculates standard error
t.test(df_94$Len)


### Process second set of stats
shapiro.test(koi$WT)
bartlett.test(koi$WT)### This doesn't work with only one sample

# t test
t.test(koi$WT,mu = 290)


### Run tests for normality
shapiro.test(cat$LocA)
shapiro.test(cat$LocB)

# Run Bartlet's
CAT<-stack(cat)
bartlett.test(CAT)

### Run a Mann-Whitney U test
wilcox.test(cat$LocA,cat$LocB, paired = F)


### Run normality tests
shapiro.test(fish$small)
shapiro.test(fish$large)

### Bartlett's
FISH<-stack(fish)
bartlett.test(FISH)

### Run the Mann-Whitney test
wilcox.test(fish$small,fish$large, paired = F)

### Run normality tests
shapiro.test(copper$Untreated)
shapiro.test(copper$Exposed)

### Bartlett's
COPPER<-stack(copper)
bartlett.test(COPPER)

### Run the Mann-Whitney test
wilcox.test(copper$Exposed,copper$Untreated, alternative = c("less"), paired = F)

### Run normality tests
shapiro.test(turkey$Before)
shapiro.test(turkey$After)
shapiro.test(turkey$diff)

### Bartlett's
TURKEY<-stack(turkey)
bartlett.test(TURKEY)

### Run a paired t-test
t.test(turkey$Before,turkey$After,paired = T)
