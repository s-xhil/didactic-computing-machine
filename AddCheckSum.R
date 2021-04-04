# This code can be used to generate a vector of any size
v <- sample(0:9, size = 7, replace = TRUE) 

# add checksum if divisible by 10 (can change value to any number you desire)
check <- 10 - sum(v) %% 10
checkSumV <- c(v, check)

# if divisible by 10 print the following:

if ((sum(checkSumV) %% 10) == 0) {
  print("checks out")
} else {
  print("doesnt check out")
}

# This code can be used to corrupt a checksum vector:
e <- sample(c(1, rep(0, 7)))*sample(c(1,-1)) 
checkSumV <- checkSumV + e