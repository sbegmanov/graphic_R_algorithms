# Compare arrays[j] with arrays[j + 1] , if arrays[j] > arrays[j + 1] are exchanged. 
# Remaining elements repeat this process, until sorting is completed.

# Define a bubble sort function
my_sort <- function(arrays) {
  length_arr <- length(arrays)
  
  for(i in 1:(length_arr - 1)) {
    for(j in 1:(length_arr - i)) {
      if(arrays[j] > arrays[j + 1]) {
        #swap
        temp <- arrays[j]
        arrays[j] <- arrays[j + 1]
        arrays[j + 1] <- temp
      }
    }
  }
  return(arrays)
}

bubble_sorting_main <- function(){
  scores <- c(60, 50, 95, 80, 70)
  sorted_scores <- my_sort(scores)
  # Print with commas
  cat(paste(sorted_scores, collapse = ","))
}

bubble_sorting_main()
