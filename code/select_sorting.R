# Select the smallest one of the remaining unsorted elements in the array,
# inserting the one that has been sorted before.

# Define a selection sort function
my_sort <- function(arrays) {
  length_arr <- length(arrays)
  
  for(i in 1:(length_arr - 1)) {
    min_index <- i
    min_value <- arrays[min_index]
    
    for(j in i:(length_arr - 1)) {
      if(min_value > arrays[j + 1]) {
        min_value <- arrays[j + 1]
        min_index <- j + 1
      }
    }
    
    # Swap if needed
    if(i != min_index) {
      temp <- arrays[i]
      arrays[i] <- arrays[min_index]
      arrays[min_index] <- temp
    }
  }
  
  return(arrays)
}

# Main function
select_sorting <- function(){
  
  scores <- c(60, 80, 95, 50, 70)
  sorted_scores <- my_sort(scores)
  cat(paste(sorted_scores, collapse = ", "))
}

# Run main
select_sorting()
