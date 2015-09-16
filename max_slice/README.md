# Max Slice Exercise

**Task:**  
Create a `max_slice` method that takes an array of integers and returns the slice with the largest sum of elements.

**Examples:**
* `max_slice([1,2,3]) => [1,2,3]`
* `max_slice([1,-2,3]) => [3]`
* `max_slice([1,-1,3,4]) => [3,4]`
* `max_slice([-1,-2,-3]) => [-1]`

**Solution:**  
As negative values are the only integers that can reduce the sum of the array we can split the array and isolate the negatives. It is then possible to iterate through and return the slice that has the maximum sum.  

1. Use `slice_before` to slice the array before any element that is less than zero. Store the resulting enumerator in a variable. For this exercise we can think of this enumerator as an array of arrays (our slices).
2. Iterate through the arrays with `map`, use `slice_when` on each array to slice when any element is less than zero. Now the array of slices is within two arrays, so we `flatten(1)` to make the next iteration easier.
3. Use `max_by` to iterate through the array of slices and return the slice that has the largest sum.
