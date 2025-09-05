# Compare arrays[i] with arrays[i + 1] , if arrays[i] > arrays[i + 1] are exchanged.
# So continue until the last number, arrays[length] is the maximum.


# Define a custom max function
my_max <- function(arrays) {
  length_arr <- length(arrays)
  
  for (i in 1:(length_arr - 1)) {
    
    if(arrays[i] > arrays[i + 1]) {
      temp <- arrays[i]
      arrays[i] <- arrays[i + 1]
      arrays[i + 1] <- temp
    }
  }
  
  maxValue <- arrays[length_arr]
  return(maxValue)
}

# Main function
max_value <- function() {
  
  scores <- c(60, 50, 95, 80, 70)
  maxValue <- my_max(scores)
  print(paste("Max Value = ", maxValue))
}

# Run main
max_value()
