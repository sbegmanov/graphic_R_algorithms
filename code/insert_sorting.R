# Take an unsorted new element in the array, compare it with the already sorted 
# element before, insert the element to the right position if the element is 
# smaller than the sorted element.

# Define an insertion sort function
my_sort <- function(arrays) {
  
  length_arr <- length(arrays)
  
  for(i in 2:length_arr){         # R is 1-based, so start from 2
    
    insert_element <- arrays[i]   # take unsorted new element
    insert_position <- i          # insertion position
    
    # shift larger elements to the right
    j <- i -1
    while(j >= 1 && insert_element < arrays[j]) {
      
      arrays[j + 1] <- arrays[j]
      insert_position <- j
      j <- j - 1
    }
    
    arrays[insert_position] <- insert_element # place element
  }
  
  return(arrays)
}

# Main function
insert_sorting <- function() {
  
  scores <- c(80, 70, 60, 50, 95)
  sorted_scores <- my_sort(scores)
  cat(paste(sorted_scores, collapse = ", "))
}

# Run main
insert_sorting()

