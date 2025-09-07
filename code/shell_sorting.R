# An efficient insertion sort.
# The array is grouped according to a certain increment of subscripts, and the
# insertion of each group is sorted. As the increment decreases gradually until
# the increment is 1, the whole data is grouped and sorted.

# Swap function
swap <- function(array, a, b){
  array[a] <- array[a] + array[b]
  array[b] <- array[a] - array[b]
  array[a] <- array[a] - array[b]
  return(array)
}

# Shell sort function
shell_sort <- function(array) {
  length_arr <- length(array)
  gap <- as.integer(length_arr / 2)
  
  while(gap > 0) {
    for(i in gap:(length_arr - 1)) {  # R index starts at 1
      j <- i + 1                      # adjust because R is 1-based
      while(j - gap >= 1 && array[j] < array[j - gap]) {
        array <- swap(array, j, j - gap)
        j <- j - gap
      }
    }
    gap <- as.integer(gap / 2)
  }
  return(array)
}

# Main function
shell_sorting <- function(){
  scores <- c(9, 6, 5, 8, 0, 7, 4, 3, 1, 2)
  sorted_scores <- shell_sort(scores)
  cat(paste(sorted_scores, collapse = ", "))
}

# Run main
shell_sorting()
