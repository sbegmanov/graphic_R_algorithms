# Initial value minIndex=1, j = 1. Compare arrays[minIndex] with arrays[j]
# if arrays[minIndex] > arrays[j] then minIndex=j, j++ else j++. continue
# until the last number, arrays[minIndex] is the Min Value.

# Define a custom min function
my_min <- function(arrays) {
  minIndex <- 1  # R is 1-based indexing
  length_arr <- length(arrays)
  
  for(j in 1:length_arr) {
    if(arrays[minIndex] > arrays[j]) {
      minIndex <- j
    }
  }
  
  return(arrays[minIndex])
}

# Main function
minimum_value <- function(){
  
  scores <- c(60, 80, 95, 50, 70, 45)
  minValue <- my_min(scores)
  print(paste("Min Value = ", minValue))
}

# Run main
minimum_value()
