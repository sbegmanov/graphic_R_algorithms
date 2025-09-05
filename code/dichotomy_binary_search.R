#   Find the index position of a given value from an already ordered array.
# 1. Initialize the lowest index low=0 , the highest index high=scores.length-1
# 2. Find the searchValue of the middle index mid=(low+high)/2 scores[mid]
# 3. Compare the scores[mid] with searchValue
# If the scores[mid]==searchValue print current mid index,
# If scores[mid]>searchValue that the searchValue will be found between
# low and mid-1
# 4. And so on. Repeat step 3 until you find searchValue or low>=high to
# terminate the loop.

# Define a binary search function
binary_search <- function(arrays, search_value) {
  low <- 1
  high <- length(arrays)
  mid <- 0
  
  while(low <= high) {
    mid <- as.integer((low + high) %/% 2)  # integer division
    
    if(arrays[mid] == search_value) {
      return(mid)                          # return index (1-based in R)
    } else if (arrays[mid] < search_value) {
      low <- mid + 1
    } else {
      high <- mid - 1
    }
  }
  return(-1)                               # not found
}

dbinary_search <- function() {
  
  scores <- c(30, 40, 50, 70, 85, 90, 100)
  
  search_value <- 40
  position <- binary_search(scores, search_value)
  cat(search_value, "position:", position, "\n")
  
  cat("---------------------------------\n")
  
  search_value <- 90
  position <- binary_search(scores, search_value)
  cat(search_value, "position:", position, "\n")
}

# Run main
dbinary_search()















