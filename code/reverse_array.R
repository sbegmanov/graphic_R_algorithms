# Initial i = 0 and then swap the first element arrays[i] with last element
# arrays[length - i - 1]
# Repeat until index of middle i == length / 2

# Define reverse function
my_reverse <- function(arrays) {
  length_arr <- length(arrays)
  middle <- as.integer(length_arr / 2)
  
  for(i in 1:middle) {
    temp <- arrays[i]
    arrays[i] <- arrays[length_arr - i + 1]
    arrays[length_arr - i + 1] <- temp
  }
  
  return(arrays)
}

# Main function
reversed_array <- function() {
  
  scores <- c(50, 60, 70, 80, 90)
  reversed_scores <- my_reverse(scores)
  cat(paste(reversed_scores, collapse = ", "))
}

# Run main
reversed_array()
