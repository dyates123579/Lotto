#Statistical Evaluation of Lottery Numbers
MM <- read.csv("MM.csv")

i <- 1

AllNum <- as.integer()

for(num in MM$Winning.Numbers){
  AllNum[i+0] <- as.integer(substr(num,1,2))
  AllNum[i+1] <- as.integer(substr(num,4,5))
  AllNum[i+2] <- as.integer(substr(num,7,8))
  AllNum[i+3] <- as.integer(substr(num,10,11))
  AllNum[i+4] <- as.integer(substr(num,13,14))
  i <- i + 5
}

CountNum <- array(0,dim=75)

for(num in MM$Winning.Numbers){
  CountNum[as.integer(substr(num,1,2))] <- CountNum[as.integer(substr(num,1,2))]+1
  CountNum[as.integer(substr(num,4,5))] <- CountNum[as.integer(substr(num,4,5))]+1
  CountNum[as.integer(substr(num,7,8))] <- CountNum[as.integer(substr(num,7,8))]+1
  CountNum[as.integer(substr(num,10,11))] <- CountNum[as.integer(substr(num,10,11))]+1
  CountNum[as.integer(substr(num,13,14))] <- CountNum[as.integer(substr(num,13,14))]+1
}

MostFreq <- 1

i <- 1

for(Ball in CountNum){
  if(Ball>CountNum[MostFreq]){
    MostFreq <- i
  }
  i <- i + 1
}

print(paste("The number",
            as.character(MostFreq),
            "appears",
            as.character(CountNum[MostFreq]),
            "times."))